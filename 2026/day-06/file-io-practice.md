# File Read & Write Practice (Linux)

## File Created
- File name: notes.txt

---

## Commands Practiced

### touch notes.txt
- Created an empty text file

### echo "This is line 1" > notes.txt
- Wrote the first line to the file using output redirection

### echo "This is line 2" >> notes.txt
- Appended a second line to the file

### echo "This is line 3" | tee -a notes.txt
- Displayed the text and appended it to the file at the same time

---

## Reading the File

### cat notes.txt
- Displayed the full contents of the file

### head -n 2 notes.txt
- Displayed the first two lines of the file

### tail -n 2 notes.txt
- Displayed the last two lines of the file

---

## Observation
- File read and write operations worked as expected
- Redirection and tee are useful for logs and configs
