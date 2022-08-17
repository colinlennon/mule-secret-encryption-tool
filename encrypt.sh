#!/bin/bash
if [ ${{ github.event.inputs.secret-1 }} -ne "" ]
then
  java -cp secure-properties-tool.jar com.mulesoft.tools.SecurePropertiesTool \
  string \
  encrypt \
  AES \
  CBC \
  ${{ secrets.ENCRYPTION_KEY }} \
  ${{ github.event.inputs.secret-1 }}
fi
