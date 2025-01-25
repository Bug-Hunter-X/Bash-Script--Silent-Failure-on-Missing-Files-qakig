# Bash Script Bug: Silent Failure on Missing Files

This repository demonstrates a common error in shell scripting: failing silently when attempting to process a file that does not exist.

The `bug.sh` script iterates through a list of files. If a file is missing, the script continues without reporting an error, which can lead to unexpected behavior and difficult debugging.

The `bugSolution.sh` script provides a corrected version that includes error handling to check if the file exists before processing it.