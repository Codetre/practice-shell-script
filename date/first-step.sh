#!/bin/zsh

# GMT(Greenwich Mean Time)
# UTC: Coordinated Universal Time. 
# England: UTC+0, Korea: UTC+9
# Unix epoch timestamp: measure elapsed (milli)seconds from 1970-01-01:00:00:00
# Timezone

echo "\n-- date without any opt"
date

echo "\n-- date with format specified"
date '+%Y-%m-%d %l:%M %p'
