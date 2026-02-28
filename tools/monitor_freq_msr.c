#define _GNU_SOURCE
#include <stdint.h>
#include <unistd.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <errno.h>

#define MSR_APERF            0xE8
#define MSR_MPERF            0xE7
#define MSR_PLATFORM_INFO    0xCE

static inline uint64_t rdmsr(int fd, off_t msr)
{
    uint64_t v;
    if (__builtin_expect(pread(fd, &v, sizeof(v), msr) != sizeof(v), 0)) {
        perror("pread");
        exit(1);
    }
    return v;
}

int main(int argc, char **argv)
{
    int cpu = 0;
    int interval_ms = 1000;

    if (argc > 1) cpu = atoi(argv[1]);
    if (argc > 2) interval_ms = atoi(argv[2]);

    char path[64];
    snprintf(path, sizeof(path), "/dev/cpu/%d/msr", cpu);

    int fd = open(path, O_RDONLY | O_CLOEXEC);
    if (fd < 0) {
        perror(path);
        return 1;
    }

    /* Read base frequency */
    uint64_t plat = rdmsr(fd, MSR_PLATFORM_INFO);
    int base_ratio = (plat >> 8) & 0xff;
    double base_freq_mhz = base_ratio * 100.0;

    uint64_t aperf0 = rdmsr(fd, MSR_APERF);
    uint64_t mperf0 = rdmsr(fd, MSR_MPERF);

    struct timespec ts = { interval_ms / 1000,
                           (interval_ms % 1000) * 1000000L };

    for (;;) {
        nanosleep(&ts, NULL);

        uint64_t aperf1 = rdmsr(fd, MSR_APERF);
        uint64_t mperf1 = rdmsr(fd, MSR_MPERF);

        uint64_t da = aperf1 - aperf0;
        uint64_t dm = mperf1 - mperf0;

        double freq = (dm == 0) ? 0.0 : base_freq_mhz * ((double)da / dm);

        /* single write, no formatting overhead explosion */
        printf("cpu%d: %.1f MHz\n", cpu, freq);

        aperf0 = aperf1;
        mperf0 = mperf1;
    }
}

