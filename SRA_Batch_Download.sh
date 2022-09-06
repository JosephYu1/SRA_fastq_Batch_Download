#!/bin/bash
# File Name:    SRA_Batch_Download.sh
# Description:  This will be the script for batch download from SRA using the SRA toolkit
# Author:       Joseph Yu
# Date Created: 9-2-2022
# Project:      Rhesus_PrediXcan

if [[ $# -ne 1 ]]
then
  echo "usage: SRA_Batch_Download.sh [ file ]" > /dev/stderr
fi

if ! [ -r $1 ]
then
  echo "$1 is not readable"
fi
