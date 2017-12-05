/*
 * File:   edcalc.c
 * Author: lfuso
 * From: https://github.com/LeoFuso/edcalc
 *
 * Created on 2017-11-30
 */

#pragma once

#include <glob.h>
#include <immintrin.h>
#include <math.h>


double euclidean_sse(const double *x, const double *y, size_t dim);
double euclidean_naive(const double *x,const double *y, size_t n);

