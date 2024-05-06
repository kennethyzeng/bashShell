#1 replace a word in a text file 
-i flag is used to edit the file in place
The g flag stands for global, which means replace all occurrences on each line.

sed -i 's/old_word/new_word/g' example.txt   

maybe also use > temp.txt && mv temp.txt data.txt

#2 replace a specific line in text file 
The .* pattern matches the entire line.
5 specifies the line number you want to replace. Replace 5 with the actual line number you want to modify.

sed -i '5s/.*/new_line_content/' example.txt

complete example replace line 5; it work
cat data.txt | sed '5s/.*/This is the new line content/' > temp.txt && mv temp.txt data.txt

example of replace all words after = in specific line of text file 
 def updateTextFileInfo(self,fileName,infoToUpdate,linenumber):   
        """to fetch parameter data at specific line of the file"""
        shellCmd="cat {0} | sed '{2}s/=.*/{1}/' > temp.txt && mv temp.txt {0}&& sleep 1".format(fileName,"="+infoToUpdate,linenumber)
        result=subprocess.run(shellCmd, shell=True, capture_output=True, text=True)

Note: 
.*    => whole line 
=.*   =>matches any characters after = on each line; it will include = 
\(=[^ ]*\).*/\1    =>To replace all words after = in a line using sed while keeping the = sign unchanged,
    \(=[^ ]*\) is a capture group in the regular expression that matches the = sign followed by zero or more non-space characters.
    \1 in the replacement text refers to the matched capture group, which includes the = sign.
    new_content is the replacement text you want to use after the = sign.