#!/bin/bash

echo "Enter the number of value to be print: "
read n

for ((i=1; i<=n;i++))
do
   for ((j=1;j<=i;j++))
   do
      echo -n "$j "
   done
   echo
done
	
