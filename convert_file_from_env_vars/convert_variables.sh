function convert() {

    variable_file=$1

    #import variables
    source $variable_file
    variable_keys=($(awk -F= '$2!=""{print $1}' ${variable_file} | awk '{print $2}'))
    
    #import file
    replace_file=$2
    replaced_file=$3

    #begin replacement
    cp $replace_file $replaced_file
    for i in "${variable_keys[@]}"
      do
         :
		 value=${!i}
        echo replace $i with value: $value
	sed -i "s/\${$i}/${value//\//\\\/}/g" $replaced_file
    done
	
    echo ------------------------
    echo converted done!
}

convert $1 $2 $3
