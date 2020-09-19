read -r -p "Please specify file name" spec_file
git add $spec_file
echo $(git status)
read -r -p "Do you wish to continue (Y/N)" response
if [ "$response" = "Y"]; then
    read -r -p "Please specify commit message" message
    $(git commit -m "$message")
elif [ "$response" = "N" ]; then
    exit 1
else
    echo "Please only enter Y or N"
fi
