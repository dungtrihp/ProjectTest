#!/usr/bin/env bash

#find ./common -name '*.json' -exec cp --parents -prv '{}' ./cbex_models ';'

#find cbex_models/models -name '*.json' -exec cp --parents -arv '{}' ./common/ ';'


find cbex_models/common |
  while read fsource; do
    replace="."
    dsource="${fsource/"cbex_models"/$replace}"

    if [ -d "$dsource" ]; then
      echo  "$dsource :folder is exist"

    elif [ -f "$dsource" ]; then
      cp -v "$fsource" "$dsource"
    else
      echo $dsource
      if [ -d "$fsource" ]; then
        mkdir "$dsource"
        echo "create folder $dsource"
      else
        cp -v "$fsource" "$dsource"
      fi
    fi
  done

#cp -v ./cbex_models/model-config.json ./server/model-config.json


#find cbex_models -name '*.json' |
#  while read fname; do
#    replace="."
#    newdir="${fname/"cbex_models"/$replace}"
#
#  done
