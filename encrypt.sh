#!/bin/bash
SECRET_1=""
SECRET_2=""
SECRET_3=""
SECRET_4=""
SECRET_5=""
ENCRYPTION_KEY=${{ secrets.ENCRYPTION_KEY }}
if [ $1 != "" ]
then
  SECRET_1=$(java -cp secure-properties-tool.jar com.mulesoft.tools.SecurePropertiesTool string encrypt AES CBC $ENCRYPTION_KEY $1)
fi
if [ $2 != "" ]
then
  java -cp secure-properties-tool.jar com.mulesoft.tools.SecurePropertiesTool \
  string \
  encrypt \
  AES \
  CBC \
  ${{ secrets.ENCRYPTION_KEY }} \
  $2
fi
if [ $3 != "" ]
then
  java -cp secure-properties-tool.jar com.mulesoft.tools.SecurePropertiesTool \
  string \
  encrypt \
  AES \
  CBC \
  ${{ secrets.ENCRYPTION_KEY }} \
  $3
fi
if [ $4 != "" ]
then
  java -cp secure-properties-tool.jar com.mulesoft.tools.SecurePropertiesTool \
  string \
  encrypt \
  AES \
  CBC \
  ${{ secrets.ENCRYPTION_KEY }} \
  $4
fi
if [ $5 != "" ]
then
  java -cp secure-properties-tool.jar com.mulesoft.tools.SecurePropertiesTool \
  string \
  encrypt \
  AES \
  CBC \
  ${{ secrets.ENCRYPTION_KEY }} \
  $5
fi

echo "Secret 1: $SECRET_1"
echo "Secret 2: $SECRET_1"
echo "Secret 3: $SECRET_1"
echo "Secret 4: $SECRET_1"
echo "Secret 5: $SECRET_1"
