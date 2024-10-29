#!/bin/sh

# Default
comment="# "

# Pattern match
case $1 in
   "go"|"java"|"typescript"|"javascript"|"c"|"cpp")
      comment="// "
      ;;
   "lua")
      comment="-- "
      ;;
   "python"|"sh")
      comment="# "
      ;;
   "html"|"svelte")
      comment=""
      prefix="<!--"
      suffix="-->"
      ;;
esac

dist_line="======================================================================"

test "$prefix" = "" || echo $prefix
echo "${comment}$dist_line"
echo "${comment}Author: meisto"
echo "${comment}Creation Date: $(date)"
echo "${comment}Description: -"
echo "${comment}$dist_line"
test "$suffix" = "" || echo $suffix

