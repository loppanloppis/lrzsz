#include <stdlib.h>
#include <stdio.h>
#include <errno.h>
#include <limits.h>
#include "xbin.h"

unsigned long
xstrtoul(const char *s, int base)
{
    char *end;
    unsigned long r;

    errno = 0;
    r = strtoul(s, &end, base);
    if (errno || *end) {
        fprintf(stderr, "Invalid unsigned integer: %s\n", s);
        exit(1);
    }

    return r;
}

long
xstrtol(const char *s, int base)
{
    char *end;
    long r;

    errno = 0;
    r = strtol(s, &end, base);
    if (errno || *end) {
        fprintf(stderr, "Invalid signed integer: %s\n", s);
        exit(1);
    }

    return r;
}


void parse_long_options(int argc, char **argv, const char *module) {
    // Stub: Do nothing, or log if needed
    (void)argc;
    (void)argv;
    (void)module;
}
