#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Sat Jan 18 14:10:06 2020

@author: jasonlee_1
"""

def binomial_rv(n, x, p):
    '''
    Returns the probability of x successes given n trials with probability of success p
    '''
    def n_choose_x(n, x):
        def factorial(n):
            k = 1
            for i in range(n):
                k = k * (i + 1)
            return k
        n_factorial = factorial(n)
        x_factorial = factorial(x)
        nx_factorial = factorial(n - x)
        return n_factorial / (nx_factorial * x_factorial)
    C = n_choose_x(n, x)
    return C * p**x * (1 - p) ** (n - x)

binomial_rv(n, x, p)