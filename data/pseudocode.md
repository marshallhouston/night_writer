english to braille - Translator
"a"   "ab"  "A"     "AB"
0.    0.0.  ..0.    ..0...0.
..    ..0.  ....    ......0.
..    ....  .0..    .0...0..



FOR A SINGLE LOWERCASE
- we need a translate class
- we need a method that starts to do the translation
-  
1. input in the english character 
2. identify if it's lowercase or uppercase (1 lowercase)
3. find the value associated with the key
4. put the first two braille characters on line 1
5. go to a new line
6. put the next two braille characters on line 2
7. go to a new line
8. put the final two braille characters on line 3


FOR TWO LOWERCASE
1. input the english characters
2. identify if it's lowercase or uppercase (2 lowercase)
3. find the value associated with the first key
4. print the first two braille characters on line 1
5. find the value associated with the second key
6. print the first two braille characters on line 1 right next to the values associated with first key
7. go back to key 1. print the next two braille characters on line 2
8. go back to key 2. print the next two braille characters on line 2
9. go back to key 1. print the next two braille characters on line 3
10. go back to key 2. print the next two braille characters on line 3.

FOR ONE UPPERCASE
1. input the english characters
2. identify if it's lowercase or uppercase (1 upper)
3. find the shift symbol: print the first two braille characters on line 1
4. find the values associated with key 1.
5. print the first two braille characters on line 1
6. go back to shift symbol: print next two braille characters on line 2
7. go back to key 1: print next two braille characters on line 2
8. go back to shift symbol: print next two braille characters on line 3
9. go back to key 1: print out next two braille characters on line 3

FOR TWO UPPERCASE
1. input characters
2. identify if lowercase or uppercase (2 upper)
3. find shift symbol: print first two on line 1
4. find value for key 1: print first two on line 1
5. find shift symbol: print first two on line 1
6. find value for key 2: print first two on line 1
7. find shift symbol: print next two on line 2
8. find value for key 1: print next two on line 2
9. find shift symbol value: print next two on line 2
10. find value for key 2: print next two on line 2
11
