/*
 * File:   edcalc.c
 * Author: lfuso
 * From: https://github.com/LeoFuso/edcalc
 *
 * Created on 2017-11-28
 */

#include "hdcalc.h"

double fdist(double P, double Q);

double dnaive(const double *x,const double *y, size_t n)
{
    double result = 0;
    double x1,x2,y1,y2 = 0;

    for (int i = 0; i < n; i+=2)
    {
        x1 = x[i];
        y1 = y[i];
        x2 = x[i + 1];
        y2 = y[i + 1];
        result += sqrt((x1 - x2)*(x1 - x2) + (y1 - y2)*(y1 - y2));
    }

    return result;
}

double dhypot(const double *x,const double *y, size_t n)
{
    double result = 0;
    double x1,x2,y1,y2 = 0;
    for (int i = 0; i < n; i+=2) {
        x1 = x[i];
        y1 = y[i];
        x2 = x[i + 1];
        y2 = y[i + 1];
        result += hypot(x1 - x2, y1 - y2);
    }
    return result;
}

double dfast(const double *x,const double *y, size_t n)
{
    double result = 0;
    double x1,x2,y1,y2 = 0;
    for (int i = 0; i < n; i+=2) {
        x1 = x[i];
        y1 = y[i];
        x2 = x[i + 1];
        y2 = y[i + 1];
        result += fdist(x1 - x2, y1 - y2);
    }
    return result;
}

double fdist(double P, double Q)
{
/* A reasonably robust method of calculating `sqrt(P*P + Q*Q)'
 *
 * Transliterated from _More Programming Pearls, Confessions of a Coder_
 * by Jon Bentley, pg. 156.
 */

    double R;
    int i;

    P = fabs(P);
    Q = fabs(Q);

    if (P<Q) {
        R = P;
        P = Q;
        Q = R;
    }

/* The book has this as:
 *  if P = 0.0 return Q; # in AWK
 * However, this makes no sense to me - we've just insured that P>=Q, so
 * P==0 only if Q==0;  OTOH, if Q==0, then distance == P...
 */
    if ( Q == 0.0 )
        return P;

    for (i=0;i<3;i++) {
        R = Q / P;
        R = R * R;
        R = R / (4.0 + R);
        P = P + 2.0 * R * P;
        Q = Q * R;
    }
    return P;
}