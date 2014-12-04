#!/bin/bash

for d in */; do
  d=$(echo $d | sed "s/\///")
  rm $d/*-averages.log
  for file in $(find $d -name "*metrics*"); do
    averageRss=$(awk -F ',' '{ print $2 }' $file \
      | awk '{ if (NR > 1) print $0  }' \
      | awk '{ total += $0; count++ } END { print total/count/1024/1024 }')

    averageSwap=$(awk -F ',' '{ print $6 }' $file \
      | awk '{ if (NR > 1) print $0  }' \
      | awk '{ total += $0; count++ } END { print total/count/1024/1024 }')
    echo $file - $averageRss Mb >> $d/rss-averages.log
    echo $file - $averageSwap Mb >> $d/swap-averages.log
  done
done
