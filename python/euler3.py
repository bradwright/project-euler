#!/usr/bin/env python
"""
Project Euler problem 3

The prime factors of 13195 are 5, 7, 13 and 29
What is the largest prime factor of the number 600851475143?
"""

# this is based on:
# http://en.wikipedia.org/wiki/Sieve_of_Eratosthenes
def prime_factors(number):
    # return a list of factors of number

    # start with 2, since we know 1 and number are factors
    current = 2
    # we'll lower the number all the time
    while number >= (current * current):
        # this is a factor
        if number % current == 0:
            # we know this succeeded, so reduce the potential
            # dataset. This must be a prime.
            number = number / current
        else:
            # increment and try again
            current = current + 1
    # return the remaining number, which is the highest prime
    return number

print prime_factors(600851475143)
