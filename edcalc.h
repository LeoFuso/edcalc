/*
 * File:   edcalc.h
 * Author: lfuso
 * From: https://github.com/LeoFuso/edcalc
 *
 * Created on 2017-11-28
 */

#pragma once

#include <math.h>

static inline double dnaive(const double *x,const double *y, int n);
static inline double dhypot(const double *x,const double *y, int n);
static inline double dfast(const double *x,const double *y, int n);