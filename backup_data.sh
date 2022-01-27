#!/bin/bash
####################################
#
# Backup data to ~/file_backup directory script.
#
####################################

# What to backup. 
backup_files="$1"
echo "$backup_files"
# Where to backup to.
dest=~/file_backup/

# Create archive filename.
d=$(date +%Y-%m-%d)
hostname=$(hostname -s)
archive_file="$hostname-$d.tgz"

# Print start status message.
echo "Backing up $backup_files to $dest/$archive_file"
date
echo

# Backup the files using tar.
tar czfP $dest$archive_file $backup_files

# Print end status message.
echo
echo "Backup finished"
date

# Long listing of files in $dest to check file sizes.
ls -lh $dest

