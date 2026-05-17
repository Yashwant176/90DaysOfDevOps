```bash

#!/bin/bash


DATE="$(date +%Y-%m-%d)"
REPORT_FILE="log_report_${DATE}.txt"

#Taking path to log file as cmd-line argument

log_file="$1"
if [ $# -ne 1 ];then
        echo "ERROR:No argumnet provided - <path to log file>"
        exit 1
fi

if [ ! -f "${log_file}" ];then
        echo "ERROR: File doesn't exists"
        exit 1
fi


error_count=$(grep -Ec "ERROR|Failed" "${log_file}")
echo "Total error count: ${error_count}"



critical=$(grep -n "CRITICAL" "${log_file}")
echo "----------Lines containing CRITICAL events-----------"
echo "${critical}"


top_errors=$(grep "ERROR" "${log_file}" | awk '{$1=$2=$3="";print}' | sort | uniq -c | sort -rn | head -5)
echo "----------Top ERROR Messages------------"
echo "${top_errors}"


{
        echo "--------------------------------"
        echo "         LOG ANALYSIS REPORT          "
        echo "--------------------------------"
        echo "Date of analysis: $(date)"
        echo "Log file name: ${log_file}"
        echo "Total lines: $(wc -l < "${log_file}")"
        echo "Error count: ${error_count}"
        echo ""
        echo "-------------Top Error Messages-------------"
        echo "${top_errors}"
        echo ""
        echo "-----------List of critical events------------"
        echo "${critical}"
} > "${REPORT_FILE}"

echo ""
echo "Report  generated: ${REPORT_FILE}"


ARCHIVE_DIR="archive"
mkdir -p "${ARCHIVE_DIR}"
mv "${log_file}" "$ARCHIVE_DIR/"
echo "Log file moved to ${ARCHIVE_DIR}"


```
