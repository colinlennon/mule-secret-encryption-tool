#!/bin/bash
SECRET_1=""
SECRET_2=""
SECRET_3=""
SECRET_4=""
SECRET_5=""
ENCRYPTION_KEY=$1
if [[ "$2" != "blank" ]]
then
  SECRET_1=$(java -cp secure-properties-tool.jar com.mulesoft.tools.SecurePropertiesTool string encrypt AES CBC $ENCRYPTION_KEY $2)
fi
if [[ "$3" != "blank" ]]
then
  SECRET_2=$(java -cp secure-properties-tool.jar com.mulesoft.tools.SecurePropertiesTool string encrypt AES CBC $ENCRYPTION_KEY $3)
fi
if [[ "$4" != "blank" ]]
then
  SECRET_3=$(java -cp secure-properties-tool.jar com.mulesoft.tools.SecurePropertiesTool string encrypt AES CBC $ENCRYPTION_KEY $4)
fi
if [[ "$5" != "blank" ]]
then
  SECRET_4=$(java -cp secure-properties-tool.jar com.mulesoft.tools.SecurePropertiesTool string encrypt AES CBC $ENCRYPTION_KEY $5)
fi
if [[ "$6" != "blank" ]]
then
  SECRET_5=$(java -cp secure-properties-tool.jar com.mulesoft.tools.SecurePropertiesTool string encrypt AES CBC $ENCRYPTION_KEY $6)
fi

echo "Secret 1: $SECRET_1"
echo "Secret 2: $SECRET_2"
echo "Secret 3: $SECRET_3"
echo "Secret 4: $SECRET_4"
echo "Secret 5: $SECRET_5"
