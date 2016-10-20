#!/bin/bash

for file in $(find ./rules/ -maxdepth 1 -type f); do
  aws configservice put-config-rule --config-rule file://$file
done
