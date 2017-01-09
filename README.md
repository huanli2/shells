# shells
add shell files witch provide little and common functions

## convert_file_from_env_vars
* 功能说明
```
将指定sh文件中的环境变量值替换到另一份文件的变量名中
```
* 文件说明
```
convert_variables.sh 脚本文件
variables.sh 示例sh文件，写入待填充环境变量值的文件
yml_replace.yml 示例文件，环境变量值需要替换的脚本文件
yml_replaced.yml 示例文件，转换过的值的目标文件
```
* 调用方式
```
bash convert_variables.sh ${variables_file.sh} ${need_to_replace_file} ${destination_file}
```
* 示例运行方式
```
bash convert_variables.sh variables.sh yml_replace.yml yml_replaced.yml
运行完后检查yml_replaced.yml文件中的环境变量是否都已写入正确的环境变量值
```
