function convert() {

    variable_file="$1"
    source ${variable_file}
    variable_keys=($(awk -F= '$2!=""{print $1}' ${variable_file} | awk '{print $2}'))
    

    converted_file=$2
    content=`cat ${converted_file}`
    
    for i in "${variable_keys[@]}"
      do
         :
        re='$''{'$i'}'
        echo $content/${!i}/$re
        echo $re=${!i}
    done

    echo ${content}
    echo ------------------------
    echo converted done!
}

convert $1 $2
