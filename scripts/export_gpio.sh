#!/bin/bash
#if [ $# -ne 2 ]; then
#    echo "Usage: $0 <start_value> <end_value>"
#    exit 1
#fi

start="$2"
end=$(("$2" + "$3" - 1))
echo $start
echo $end

# Using a for loop to iterate from start to end
for ((i=$2;i<=$end;i++))
do
  echo "$i" > /sys/class/gpio/export
done
