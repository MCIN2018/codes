#!/bin/bash

array1=(20 17 14 1 2 3 4 5 6 7 8 9)
array2=(5 7 9 11 1 3 13 15 17)

echo array1

cat sitemap.txt|awk 'BEGIN {print "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<urlset>"}{print "<url>\n<loc>"$0"</loc>\n<lastmod>2014-07-18</lastmod>\n<changefreq>always</changefreq>\n</url>"}END{print "</urlset>"}'

