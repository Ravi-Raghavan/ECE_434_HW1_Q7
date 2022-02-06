#!/bin/bash
if [[ -f "logFile.txt" ]]
then
        > logFile.txt;
fi

if [[ -f "outFile.txt" ]]
then
        > outFile.txt;
fi

i=0;
lines=0;
for file in "$@"
do
        linesInFile="$(wc -l < $file)";
        lines=$((lines+linesInFile));
	echo -e "\n\n=========== Currently Processing File #$((i+1))===========\n\n" | tee -a logFile.txt;
        echo -e "\n\nThere are $linesInFile lines in $file \n\n" | tee -a logFile.txt;
        i=$((i+1));
        echo -e "So far, we have processed a total of $i Files \n\n" | tee -a logFile.txt;
        echo -e "So far, In these $i Files, there have been a total of $lines Lines \n\n" | tee -a logFile.txt;
        echo -e "The contents of $file will now be printed \n\n" | tee -a logFile.txt;
        cat "$file" | tee -a outFile.txt logFile.txt;
	echo -e "\n" | tee -a outFile.txt logFile.txt;
        echo -e "\n\nThe contents of all $i files we have processed so far will now appear on the console \n\n" | tee -a logFile.txt;
        cat outFile.txt | tee -a logFile.txt;


done

echo -e "\n\n=========== Final Results of Program ===========" | tee -a logFile.txt;
echo -e "\n\nWe have finished processing a total of $i Files\n\n" | tee -a logFile.txt;
echo -e "As our final result, the total number of lines across all $i Files is $lines\n\n" | tee -a logFile.txt;
echo -e "The contents of all the $i files we have processed will now appear on the console \n\n" | tee -a logFile.txt;
cat outFile.txt | tee -a logFile.txt;

echo -e "\n\nProgram Finished! \n\n" | tee -a logFile.txt;
