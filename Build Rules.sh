#!/bin/bash
#echo "$CURRENT_ARCH" >> ~/Desktop/archs.txt

if [ $CURRENT_ARCH == "arm64" ]; then
    echo "current is arm" >> ~/Desktop/archs.txt
    xcrun clang -O3 -arch arm64 ${INPUT_FILE_PATH} -c -o ${SCRIPT_OUTPUT_FILE_0} #compile for ARM
elif [ $CURRENT_ARCH == "x86_64" ]; then
    echo "current is intel" >> ~/Desktop/archs.txt
    xcrun clang -arch x86_64 ${INPUT_FILE_PATH} -c -o ${SCRIPT_OUTPUT_FILE_0} #compile for x86
fi
