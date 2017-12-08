/*
 * File:   edcalc.c
 * Author: lfuso
 * From: https://github.com/LeoFuso/edcalc
 *
 * Created on 2017-11-30
 */

#ifndef EDCALC_H_
#define EDCALC_H_

#include <glob.h>
#include <immintrin.h>
#include <math.h>


double euclidean_naive(const double *x,const double *y, size_t n);

double euclidean_128d(const double *x, const double *y, size_t n);
double euclidean_256d(const double *x,const double *y, size_t n);

#endif //EDCALC_H_