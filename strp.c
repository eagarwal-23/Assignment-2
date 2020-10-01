/* *******************************************************************
 *  Name:    Eesha Agarwal
 *  NetID:   eagarwal
 *  Precept: P08
 *  Filename: strp.c
 *
 *  Description: Implements a string module with string-handling
 *  functions; specifically functions corresponding to strlen, strcpy,
 *  strcat, strcmp, and strstr from the standard string library.
 ******************************************************************* */

#include "str.h"
#include <stdio.h>
#include <ctype.h>
#include <assert.h>

/* Returns the length of the input string strArray. */
size_t Str_getLength(const char *strArray) {
   const char *strEnd;

   assert(strArray != NULL);
   strEnd = strArray;

   /* Counting the number of elements in the array
      before the null terminating character. */
   while (*strEnd != '\0') {
      strEnd++;
   }

   return (size_t)(strEnd - strArray);
}

/* Copies the source string, strArraySource, into the
   destination string, strArrayDest, and returns the
   destination string. */
char *Str_copy(char *strArrayDest,
               const char *strArraySource) {
   char *destEnd;
   const char *srcEnd;

   assert(strArrayDest != NULL);
   assert(strArraySource != NULL);

   /* Running a loop for the length of strArraySource
      and copying all elements to corresponding indices
      in strArryDest. */
   for (destEnd = strArrayDest, srcEnd = strArraySource;
        *srcEnd != '\0'; destEnd++, srcEnd++) {
      *destEnd = *srcEnd;
   }

   *destEnd = '\0';

   return strArrayDest;
}

/* Appends a copy of the source string, strArraySource,
   to the destination string, strArrayDest, and returns
   the destination string. */
char *Str_concat(char *strArrayDest,
                 const char *strArraySource) {
   char *destEnd;
   const char *srcEnd;

   assert(strArrayDest != NULL);
   assert(strArraySource != NULL);

   /* Moving the destination array pointer to the end of
      the existing string. */
   for (destEnd = strArrayDest; *destEnd != '\0';
        destEnd++) {
   }

   /* For the length of the source string, copying over
      all the characters in the source string to the
      destination string, beginning at the position of the
      null terminating character in the destination string. */
   for(srcEnd = strArraySource; *srcEnd != '\0';
       srcEnd++, destEnd++) {
      *destEnd = *srcEnd;
   }

   /* Appending a null terminating character to the newly
      concatenated destination string. */
   *destEnd = '\0';

   return strArrayDest;
}

/* Compares the two input strings, strArrayThis and strArrayThat,
   to determine which is lexicographically greater. Returns 0 if
   both are equal, a value greater than 0 if strArrayThis is
   lexicographically greater, and a value lesser than 0 if
   strArrayThat is lexicographically greater. */
int Str_compare(const char *strArrayThis,
                const char *strArrayThat) {
   const char *thisEnd;
   const char *thatEnd;

   assert(strArrayThis != NULL);
   assert(strArrayThat != NULL);

   /* Running a loop for minimum of length of the two strings. */
   for (thisEnd = strArrayThis, thatEnd = strArrayThat;
        *thisEnd != '\0' && *thatEnd != '\0';
        thisEnd++, thatEnd++) {

      /* Comparing character at corresponding indices, if not matching
         return their difference. */
      if (*thisEnd != *thatEnd) {
         return (int)(*thisEnd - *thatEnd);
      }
   }

   /* If strArrayThis terminated first, returning -1 since strArrayThat
      must be lexicographically greater. */
   if (*thisEnd == '\0' && *thatEnd != '\0') {
      return -1;
   }

   /* If strArrayThat terminated first, returning 1 since strArrayThis
      must be lexicographically greater. */
   else if (*thisEnd != '\0' && *thatEnd == '\0') {
      return 1;
   }

   return 0;
}

/* Locates the first instance of strArrayPattern in strArrayString
   and returns a pointer to the beginning of that instance. If not
   found, returns a null pointer. If strArrayPattern is an empty
   string, the function returns strArrayString. */
char *Str_search(const char *strArrayString,
                 const char *strArrayPattern) {
   const char *stringEnd;
   const char *patternEnd;
   int patternLength = 0;
   int stringLength = 0;

   assert(strArrayString != NULL);
   assert(strArrayPattern != NULL);

   stringEnd = strArrayString;
   patternEnd = strArrayPattern;

   /* If strArrayPattern is an empty string, return strArrayString. */
   if (*patternEnd == '\0') {
      return (char*) strArrayString;
   }

   /* Running the loop while both strings have not terminated. */
   for (;*stringEnd != '\0' && *patternEnd != '\0';
        stringEnd++, stringLength++) {

      /* If characters at given indices are equal, incrementing
         pointer for pattern string to compare next character, and
         variable keeping track of total length of pattern (to avoid
         multiple traversals of string by calling Str_getLength). */
      if (*stringEnd == *patternEnd) {
         patternEnd++;
         patternLength++;
      }

      /* If not equal, resetting pointer for pattern to beginning of
         pattern and length of pattern to 0; backtracking string
         pointer and variable keeping track of length of string
         traversed by the number of characters matched so far. */
      else {
         stringEnd = stringEnd - patternLength;
         stringLength = stringLength - patternLength;
         patternEnd = strArrayPattern;
         patternLength = 0;
      }
   }

   /* If end of pattern was reached and all characters matched,
      returning the index of the beginning of the substring in
      strArrayString by subtracting from the number of total
      characters matched in strArrayString the length of the pattern. */

   if (*patternEnd == '\0') {
      return (char*) strArrayString + stringLength - patternLength;
   }

   return NULL;
}
