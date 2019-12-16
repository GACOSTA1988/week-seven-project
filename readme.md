# Anagrams and Antigrams

#### This application allows you to enter words or phranses and will check to see if they're anagrams or antigrams.

#### By George Acosta

## Specifications

1. This program will check if two words are anagrams.
2. This program will account for the possibility that words might have different cases but should still be anagrams.
3. This program will check if inputed words contain a vowel.
4. This program will check if words are antigrams.
5. This program will check all the above specs for multiple words.


## TDD SPECS
1. Test should return "These words are anagrams" if words are anagrams.

* FAIL
* EX INPUT: tea, eaters
* EX OUTPUT: These words are not anagrams

* PASS
* EX INPUT: tea, eat
* EX OUTPUT: These words are anagrams"

2. Test should return "These phrases are anagrams" if words are anagrams

* FAIL
* EX INPUT: rock, Rack rocks root
* EX OUTPUT: These words are not anagrams

* PASS
* EX INPUT: "School master","The classroom."
* EX OUTPUT: "These words are anagrams"


3. Test should correctly account for the possibility that words might have different cases but should still be anagrams

* FAIL
* EX INPUT: eats, tea
* EX OUTPUT: These words are not anagrams

* PASS
* EX INPUT: eat, tea
* EX OUTPUT: These words are anagrams

4. Test should creturns "These are antigrams" if both words are valid

* FAIL
* EX INPUT: eat, Tea
* EX OUTPUT: These words are anagrams

* PASS
* EX INPUT: hi, bed
* EX OUTPUT: These words are antigrams

5. Test should return "both are words" if both words are valid

* FAIL
* EX INPUT: kkkt, Ttt
* EX OUTPUT: neither of these are words

* PASS
* EX INPUT: cat, bed
* EX OUTPUT: both are words

6. Test should returns "only one word is valid" if one word are valid

* FAIL
* EX INPUT: kkkt, ty
* EX OUTPUT: neither of these are words

* PASS
* EX INPUT: cat, tttt
* EX OUTPUT: only one word is valid

6. Test should returns "neither of these are words" if neither words are valid

* FAIL
* EX INPUT: cat, tttt
* EX OUTPUT: only one word is valid


* PASS
* EX INPUT: kkkt, ty
* EX OUTPUT: neither of these are words

## Setup/Installation Requirements

* Clone portfolio this repository
* Open with browser of console


## Technologies Used

1. RSPEC
2. PRY


### License

Copyright (c) 2016 **_George Acosta_**
