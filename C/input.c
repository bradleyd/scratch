/*
 * =====================================================================================
 *
 *       Filename:  input.c
 *
 *    Description:  testing an example i saw
 *
 *        Version:  1.0
 *        Created:  04/22/2014 09:19:53
 *       Revision:  none
 *       Compiler:  gcc
 *
 *         Author:  YOUR NAME (), 
 *   Organization:  
 *
 * =====================================================================================
 */
#include <stdlib.h>
#include <stdio.h>

main()
{
  int i;
  int *pi = &i;
  scanf("%d", pi);
  printf("%d\n", *pi+5);
}
