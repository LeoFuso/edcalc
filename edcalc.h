/*
 * File:   edcalc.h
 * Author: lfuso
 * From: https://github.com/LeoFuso/edcalc
 *
 * Created on 2017-11-28
 */

#pragma once

#include <math.h>
#include <stddef.h>

double dnaive(const double *x,const double *y, size_t n);
double dhypot(const double *x,const double *y, size_t n);
double dfast(const double *x,const double *y, size_t n);