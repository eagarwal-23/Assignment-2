/* *******************************************************************
 *  Name:    Eesha Agarwal
 *  NetID:   eagarwal
 *  Precept: P08
 *  Filename: str.h
 *
 *  Description: Interface file for String module.
 ******************************************************************* */

#ifndef StrP_H
#define StrP_H

#include <stdlib.h>

/*--------------------------------------------------------------------*/

/* Returns the length of the input string strArray. */
size_t Str_getLength(const char *strArray);

/*--------------------------------------------------------------------*/

/* Copies the source string, strArraySource, into the destination
   string, strArrayDest, and returns the destination string. */
char *Str_copy(char *strArrayDest, const char *strArraySource);

/*--------------------------------------------------------------------*/

/* Appends a copy of the source string, strArraySource, to the
   destination string, strArrayDest, and returns the destination
   string. */
char *Str_concat(char *strArrayDest, const char *strArraySource);

/*--------------------------------------------------------------------*/

/* Compares the two input strings, strArrayThis and strArrayThat, to
   determine which is lexicographically greater. Returns 0 if both are
   equal, a value greater than 0 if strArrayThis is lexicographically
   greater, and a value lesser than 0 if strArrayThat is
   lexicographically greater. */
int Str_compare(const char *strArrayThis, const char *strArrayThat);

/*--------------------------------------------------------------------*/

/* Locates the first instance of strArrayPattern in strArrayString and
   returns a pointer to the beginning of that instance. If not found,
   returns a null pointer. If strArrayPattern is an empty string, the
   function returns strArrayString. */
char *Str_search(const char *strArrayString,
                 const char *strArrayPattern);

/*--------------------------------------------------------------------*/

#endif
