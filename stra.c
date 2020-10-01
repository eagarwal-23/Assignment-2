/* *******************************************************************
 *  Name:    Eesha Agarwal
 *  NetID:   eagarwal
 *  Precept: P08
 *  Filename: stra.c
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
size_t Str_getLength(const char strArray[]) {
   size_t length = 0;

   /* Ensuring that the input parameter is  not null. */
   assert(strArray != NULL);

   /* Counting the number of elements in the array
      before the null terminating character. */
   while (strArray[length] != '\0') {
      length++;
   }
   return length;
}

/* Copies the source string, strArraySource, into the
   destination string, strArrayDest, and returns the
   destination string. */
char *Str_copy(char strArrayDest[],
               const char strArraySource[]) {
   size_t index = 0;

   /* Ensuring that the input parameters are not null. */
   assert(strArrayDest != NULL);
   assert(strArraySource != NULL);
   /* Running a loop for the length of strArraySource
      and copying all elements to corresponding indices
      in strArrayDest. */
   while (strArraySource[index] != '\0') {
      strArrayDest[index] = strArraySource[index];
      index++;
   }

   strArrayDest[index] = '\0';

   return strArrayDest;
}

/* Appends a copy of the source string, strArraySource,
   to the destination string, strArrayDest, and returns
   the destination string. */
char *Str_concat(char strArrayDest[],
                 const char strArraySource[]) {
   size_t srcIndex = 0;
   size_t destIndex = 0;
   
   /* Ensuring that the input parameters are not null. */
   assert(strArrayDest != NULL);
   assert(strArraySource != NULL);

   /* Moving the destination array index to the end of
      the existing string. */
   while (strArrayDest[destIndex] != '\0') {
      destIndex++;
   }

   /* For the length of the source string, copying over
      all the characters in the source string to the
      destination string, beginning at the position of the
      null terminating character in the destination string. */
   while (strArraySource[srcIndex] != '\0') {
      strArrayDest[destIndex] = strArraySource[srcIndex];

      srcIndex++;
      destIndex++;
   }

   strArrayDest[destIndex] = '\0';

   return strArrayDest;
}

/* Compares the two input strings, strArrayThis and strArrayThat,
   to determine which is lexicographically greater. Returns 0 if
   both are equal, a value greater than 0 if strArrayThis is
   lexicographically greater, and a value lesser than 0 if
   strArrayThat is lexicographically greater. */
int Str_compare(const char strArrayThis[],
                const char strArrayThat[]) {
   size_t index = 0;

   /* Ensuring that the input parameters are not null. */
   assert(strArrayThis != NULL);
   assert(strArrayThat != NULL);

   /* Running a loop for minimum of length of the two strings. */
   while (strArrayThis[index] != '\0' &&
          strArrayThat[index] != '\0') {

      /* Comparing character at corresponding indices, if not matching
         return their difference. */
      if (strArrayThis[index] != strArrayThat[index]) {
         return (int)(strArrayThis[index] - strArrayThat[index]);
      }
      index++;
   }

   /* If strArrayThis terminated first, returning -1 since strArrayThat
      must be lexicographically greater. */
   if (strArrayThis[index] == '\0'
       && strArrayThat[index] != '\0') {
      return -1;
   }
  /* If strArrayThat terminated first, returning 1 since
     strArrayThis must be lexicographically greater. */
   else if (strArrayThis[index] != '\0'
              && strArrayThat[index] == '\0') {
      return 1;
   }

   /* Else both are equal, return 0. */
   return 0;
}

/* Locates the first instance of strArrayPattern in strArrayString
   and returns a pointer to the beginning of that instance. If not
   found, returns a null pointer. If strArrayPattern is an empty
   string, the function returns strArrayString. */
char *Str_search(const char strArrayString[],
                 const char strArrayPattern[]) {
   size_t indexP = 0;
   size_t indexS = 0;

   /* Ensuring that the input parameters are not null. */
   assert(strArrayString != NULL);
   assert(strArrayPattern != NULL);

   /* If strArrayPattern is an empty string, return strArrayString. */
   if (strArrayPattern[indexP] == '\0') {
      return (char*) strArrayString;
   }

   /* Running the loop while both strings have not terminated.
      Incrementing the index for strArrayString. */
   while (strArrayString[indexS] != '\0' &&
          strArrayPattern[indexP] != '\0') {

      /* If characters at given indices are equal, incrementing
         index of pattern to compare next character. */
      if (strArrayString[indexS] == strArrayPattern[indexP]) {
         indexP++;
      }

      /* If not equal, resetting index of pattern to 0 and backtracking
         index of string by number of characters matched so far. */
      else {
         indexS = indexS - indexP;
         indexP = 0;
      }

      indexS++;
   }

   /* If end of pattern was reached and all characters matched,
      returning the index of the beginning of the substring in
      strArrayString by subtracting from the number of total
      characters matched in strArrayString the length of the
      pattern. */
   if (strArrayPattern[indexP] == '\0') {
      return (char*) strArrayString + indexS - indexP;
   }

   return NULL;
}
