#!/bin/bash

saved_path="/mnt/g/SteamLibrary/steamapps/common/PalServer/Pal/Saved"
backup_dirname="backup"
backup_path=$saved_path/$backup_dirname
backup_path_with_date=$backup_path/$(date +%Y%m%d)
file_name="palserver_backup_"$(date +%Y%m%d_%H%M%S)
keep_days=30

# if you want to put all zip files in one folder
# you can replace $backup_path_with_date to $backup_path
cd $saved_path
mkdir -pv $backup_path_with_date
zip -rq $backup_path_with_date/$file_name SaveGames Config
zip -d $backup_path_with_date/$file_name Config/CrashReportClient/\*

# delete old files and folders from keep_days ago. if you need
find $backup_path/* -type f -name \*.zip -ctime +$keep_days -exec rm -f {} \;
find $backup_path/* -type d -ctime +$keep_days -exec rm -rf {} \;