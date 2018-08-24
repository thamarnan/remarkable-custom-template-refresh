#!/bin/bash

#md5sum of templates.json version 1.4.0.7
original_md5=0e7d0b7175e8d99028e0b66756f27f08
original_file="templates.json.original"
current_file="templates.json"

if [ `md5sum  templates.json | awk {'print $1'}` = $original_md5 ]; then
    echo "[INFO] found factory codex 1.4.0.7 templates.json"
    echo "[INFO] Backing up to templates.json.factory"
    cp templates.json templates.json.factory
    cp templates.json templates.json.original
else


    cp templates.json templates.json.original
fi
#   echo "[INFO] Modified version temlates.json.. backing with date"
#   you can comment this section below out if you dont need to backup everytime the script run
today=`date +%Y-%m-%d-%H_%M_%S`
cp templates.json templates_$today.json

lastlinen=`expr $(wc -l templates.json.original | awk '{print $1}') - 2`
sed -n "1,$lastlinen p" templates.json.original > templates.json

for templatefile in *.png ; do
#   echo $templatefile
    name="${templatefile%.*}"
    ext="${templatefile##*.}"

    #Check if this is in factory list
    grep -w "$name" $original_file > /dev/null
    if [ $? -eq '0' ]
    then
    A="original"
    #echo "[INFO] $templatefile is in $original_file skipped"
 else
   echo "[INFO] $templatefile is new."
    # Appending custom list

    printf "\n\t,{">> $current_file
    printf "\t\t\"name\": \"%s\",\n" "$name"  >> $current_file
    printf "\t\t\"filename\": \"%s\",\n" "$name"  >> $current_file
    printf "\t\t\"iconCode\": \"%s\",\n" "\\ue9fe"  >> $current_file

    #Adding landscape = true if LS is in the name (case sensitive)
    if [[ $name = *"LS"* ]]; then
        printf "\t\t\"landscape\": \"%s\",\n" "true"  >> $current_file
    fi

    #Tagging to custom cateogry
    printf "\t\t\"categories\": [\n"  >> $current_file
        printf "\t\t\t\"Custom\"\n"  >> $current_file
    printf "\t\t]\n"  >> $current_file
    printf "\t}"  >> $current_file
    
    fi
done

printf "\n\t]\n"  >> $current_file
printf "}\t\n"  >> $current_file

echo "Restarting application service"
systemctl restart xochitl
