```bash

#!/bin/bash


#Exit immediately if cmnd fails

set -e

log_dir="$1"


#Validate argument

if [ -z "${log_dir}" ];then

        echo "Usage: $0 <path to log dir>"
        exit 1
fi

if [ ! -d "${log_dir}" ];then

        echo "ERROR: Directory doesn't exists..."
        exit 1
fi

echo
echo "------------Started log rotation in ${log_dir}----------------"
echo

compress(){

        #compress_count=$(find "${log_dir}" -type f -name "*.log" -mtime +7 | wc -l)

        log_compress=($(find "${log_dir}" -type f -name "*.log" -mtime +7))

        compress_count="${#log_compress[@]}"
        echo "***************Compressing Logs******************"

        if [ "${#log_compress[@]}" -gt 0 ];then

                gzip "${log_compress[@]}"
        fi

        echo "Compressed files:${compress_count}"

}

delete(){

        delete_count=$(find "${log_dir}" -type f -name "*.gz" -mtime +30 | wc -l)

        find "${log_dir}" -type f -name "*.gz" -mtime +30 -delete

        echo "*****************Deleting .gz files*********************"

        echo "Deleted files:${delete_count}"

}

compress
delete

echo "---------Log rotation completed successfully----------"

```
