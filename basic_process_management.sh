# A simple shell script to list all running processes, then prompt you to kill or prioritize specific processes.
echo "This is a list of all running processes"
ps -e
processes = $(ps -e)
echo "Let me know if you want to kill or prioritize any process"
echo "To kill enter 'k' or to prioritize enter 'p':"
read decision
if [ "$decision" == "k" ]; then
    echo "I understand you want to kill a process"
    echo "Please enter the PID of the process you want to kill"
    read PID
    echo "OK"
elif [ "$decision" == "p" ]; then
    echo "I understand you want to prioritize a process"
else
    echo "Invalid entry"
fi
exit 0