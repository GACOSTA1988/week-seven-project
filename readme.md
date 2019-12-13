# Anagrams and Antigrams

#### This application allows you to enter your age and will return your age based on a different planets solar years, 11-8-19 current version.

#### By George Acosta

## Specifications

1. This program will check if two words are anagrams.
2. This program will account for the possibility that words might have different cases but should still be anagrams.
3. This program will check if inputed words contain a vowel.
4. This program will check if words are antigrams.
5. This program will check all the above specs for multiple words.


## TDD SPECS
1. Test should correctly check if two words are anagrams

* FAIL
* EX INPUT: rock, rack
* EX OUTPUT: These words are not anagrams

* PASS
* EX INPUT: rock, rock
* EX OUTPUT: These words are anagrams"

2. Test should correctly account for the possibility that words might have different cases but should still be anagrams

* FAIL
* EX INPUT: rock, Rack
* EX OUTPUT: These words are not anagrams

* PASS
* EX INPUT: rock, Rock
* EX OUTPUT: These words are anagrams


3. Test should correctly account for the possibility that words might have different cases but should still be anagrams

* FAIL
* EX INPUT: eats, tea
* EX OUTPUT: These words are not anagrams

* PASS
* EX INPUT: eat, tea
* EX OUTPUT: These words are anagrams


## Setup/Installation Requirements

* Clone portfolio this repository
* Open with browser of console


## Technologies Used

1. RSPEC
2. PRY


### License

Copyright (c) 2016 **_George Acosta_**
