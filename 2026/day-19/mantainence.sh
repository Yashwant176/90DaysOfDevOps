```bash

#!/bin/bash

log_file="/home/deeplinux/myapp-prac-logs/maintenance.log"
DATE=$(date '+%Y-%m-%d %H:%M::%S')

source_dir=$1
log_dir="/var/log/nginx"
src_dir="/home/deeplinux/my-scripts/data"
backup_dir="/home/deeplinux/my-scripts/backups"

echo "[ ${DATE} ] Started Maintenance ...." >> "${log_file}"

#Run log rotation script

/home/deeplinux/my-scripts/scripts-batch-10/log_rotate.sh "${src_dir}" >> "${log_file}" 2>&1

#Run backup script

/home/deeplinux/my-scripts/scripts-batch-10/backup.sh "${src_dir}" "${backup_dir}" >> "${log_file}" 2>&1

DATE_END=$(date '+%Y-%m-%d %H:%M:%S')
echo "[ ${DATE_END} ] Maintenance Completed.... " >> "${log_file}"
echo "------------------------------------------" >> "${log_file}"
echo "Script run successfully, check log file for details: ${log_file}"

```
