#!/bin/sh

find_resources_basenames() {
  find resources -type f -exec basename {} \;
}

filter_resource_basenames() {
  find_resources_basenames |egrep -v -e '\.md' -e '\.DS_Store'
}

map_resources_to_occurrence_count() {
  for resource in $(filter_resource_basenames); do
    count=`grep -R ${resource} *|wc -l|sed 's/ //g'`
    echo "$count:$resource"
  done
}

find_zero_occurring_resources() {
  for pair in $(map_resources_to_occurrence_count); do
    #echo $pair
    count=`echo $pair |cut -d : -f1`
    if [ $count -lt 1 ]; then
      echo $pair |cut -d : -f2
    fi
  done
}

find_zero_occurring_resources
