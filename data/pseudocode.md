english to braille - Translator
"a"   "ab"  "A"     "AB"
0.    0.0.  ..0.    ..0...0.
..    ..0.  ....    ......0.
..    ....  .0..    .0...0..

TO DO
1. write tests for the Night_Write class
2. write code that passes these tests



Night_Write
1. open and read message.txt ARGV[0] using FileReader
2. save information as @reader and use it to pass to Translator
3. new instance of Translator that will translate the information read in FileReader
4. use translator methods to take the text and make it into an array of braille characters
5. create a new instance of Printer to take the translated braille characters and assign them to lines
6. print the first 80 characters, add a new line, and keep going until it's finished
7. pass that information to FileWriter so that it can write to the new file



now we have an array of all the braille characters
- give line_1 the first element
- give line_2 the second element
- give line_3 the third element
- loop back and keep going
- after all the elements, add a new line character to the end of line_1 and line_2
- print the lines out (line_1, line_2, line_3)
















- we need a print class that takes the array of braille characters and prints it onto specific lines
* receive input (array of translated_braille characters from Translator class)
* assign characters to a line
* print line_1 and add a new line character to the end
* print line_2 and add a new line character to the end
* print line_3.
* save information because it needs to be passed to FileWriter to output to ARGV[1]

- we need a translate class to translate the strings from the file into the corresponding braille characters
* receive input (text from FileReader ARGV[0])
* turn input into an array of characters
* iterate through characters to find the associated values
* collect these braille values into an array. flatten(1) to make sure these are on the same level.

******error with the translate class and the uppercase.... if it uses the upper case, we

1) Failure:
TranslatorTest#test_find_value_of_one_uppercase_letter [test/translator_test.rb:56]:
--- expected
+++ actual
@@ -1 +1 @@
-[["..", "..", ".0"], ["0.", "..", ".."]]
+[[["..", "..", ".0"], ["0.", "..", ".."]]]

flatten won't work because it messes up the lowercase letters.

combined translate/print. decision to break out these two classes because they have two separate functions

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
