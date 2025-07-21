#!/bin/bash

# 彩色输出函数
log() {
  echo -e "\033[1;32m[INFO]\033[0m $1"
}

error() {
  echo -e "\033[1;31m[ERROR]\033[0m $1" >&2
}

# 检测系统架构
get_arch() {
  case $(uname -m) in
    arm64) echo "arm64" ;;
    x86_64) echo "x86_64" ;;
    *) echo "unknown" ;;
  esac
}

# 检查命令是否存在
command_exists() {
  command -v "$1" >/dev/null 2>&1
}