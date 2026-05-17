```bash
#!/bin/bash


source_dir=$1
backup_dir=$2
DATE=$(date '+%Y-%m-%d')
archive_name="backup-$DATE.tar.gz"

#Validating arguments

if [ -z "${source_dir}" ] || [ -z "${backup_dir}" ];then

        echo "Usage: $0 <path to source dir> <path to backup dir>"
        exit 1
fi

#Check source exists or not

if [ ! -d "${source_dir}" ];then

        echo "ERROR: Source directory doesn't exists: ${source_dir}"
        exit 1
fi

#Create backup directory if doesn't exists

mkdir -p "${backup_dir}"

#Create archives

tar -cvzf "${backup_dir}/${archive_name}" -C "${source_dir}" .

#Verify archive creation

if [ ! -f "${backup_dir}/${archive_name}" ];then

        echo "ERROR: Backup archive not created"
        exit 1
fi

#Get file size

file_size=$(du -h "${backup_dir}/${archive_name}")

echo "Backup created successfuly"
echo "Archive: ${archive_name}"
echo "Size: ${file_size}"

#Delete backups older tahn 14 days

find "${backup_dir}" -type f -name "backup-*.tar.gz" -mtime +14 -delete

echo "Old backups cleaned (Older than 14 days)"
```
