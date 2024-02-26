#!/bin/bash

# 初始化标志位
test_error_flag=false

# 解析命令行选项
while [[ "$#" -gt 0 ]]; do
  case "$1" in
    --option)
      if [ "$#" -lt 2 ]; then
        echo "Missing argument for --option"
        exit 1
      fi
      shift
      if [[ "$1" == "test-error" ]]; then
        test_error_flag=true
      else
        echo "Invalid option argument: $1"
        exit 1
      fi
      ;;
    *)
      echo "Invalid option: $1"
      exit 1
      ;;
  esac
  shift
done

# 根据标志位执行相应的语句
if [ "$test_error_flag" = true ]; then
    echo "Executing alternative statement for test-error..."
    ./build/target/read-file ./test-files/to-read-1.txt ./test-files/to-read-2.txt ./test-files/to-read-4.txt
    # 在这里执行你想要的语句
    # 例如：
    # echo "Performing error test..."
    # ./alternative_command
else
    echo "Executing default statement..."
    ./build/target/read-file ./test-files/to-read-1.txt ./test-files/to-read-2.txt ./test-files/to-read-3.txt
    # 在这里执行默认的语句
    # 例如：
    # ./default_command
fi

