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

# Check if fastq-dump is installed and available for use
if ! command -v fastq-dump &> /dev/null
then
  echo "Please make sure fastq-dump is installed and can be used" > /dev/stderr
  exit 1
fi

# Reading from file with one SRA number on one line
while IFS= read -r line
do
  # Call SRA Toolkit to fetch from database
  echo "Getting data for $1..."
  fastq-dump "$line"
done < "$1"
