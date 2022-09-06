#!/bin/bash
# File Name:    SRA_Batch_Download.sh
# Description:  This will be the script for batch download from SRA using the SRA toolkit
# Author:       Joseph Yu
# Date Created: 9-2-2022
# Project:      Rhesus_PrediXcan

# Check for valid argument numbers
if [[ $# -ne 1 ]]
then
  echo "usage: SRA_Batch_Download.sh [ file ]" > /dev/stderr
fi

# Check for file read permissions
if ! [ -r "$1" ]
then
  echo "$1 is not readable" > /dev/stderr
fi

# Reading from file with one SRA number on one line
while IFS= read -r line
do
  # Call SRA Toolkit to fetch from database
  echo -n "Getting data for $1..."

  echo "Done!"
done < "$1"
