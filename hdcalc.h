/*
 * File:   hdcalc.h
 * Author: lfuso
 * From: https://github.com/LeoFuso/edcalc
 *
 * Created on 2017-11-28
 */


#ifndef HDCALC_H_
#define HDCALC_H_

#include <math.h>
#include <stddef.h>

double dnaive(const double *x,const double *y, size_t n);
double dhypot(const double *x,const double *y, size_t n);
double dfast(const double *x,const double *y, size_t n);

#endif //HDCALC_H_