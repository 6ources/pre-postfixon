#!/bin/bash
echo "
     \      ,
     l\   ,/
._   \`|] /j
 \`\\, \|f7 _,/\'                                   |    ,---.o
   \"\`=,k/,x-\'   ,---.,---.,---.   ,---.,---.,---.|--- |__. ..  ,,---.,---.
    ,z/fY-=-     |   ||    |---'---|   ||   |\`---.|    |    | >< |   ||   |
  -\'\" .y \\      |---'\`    \`---'   |---'\`---'\`---'\`---'\`    \`'  \`\`---'\`   '
       '   \     |                 |                                       "

printf "[+] what should i do?---\n"
printf "[+] prefix? press \"1\"\n"
printf "[+] postfix? press \"2\"\n"
read -p "[+] your choice: " choose
read -p '[+] type the string to add: ' string
read -p '[+] input file name with extension! (if not in the working dir then specify the path properly with name): ' file
read -p "[+] output file name with extension: " output
if [[ $choose = 1 ]]
then
  while read -r line
 do
  echo "${string}$line"
 done <$file > $output
 cat $output
elif [[ $choose = 2 ]]
then
 while read -r line
 do
  echo "$line${string}"
 done <$file > $output
 cat $output
else
  echo "wrong input! run it again"
fi


#$m0k3y
