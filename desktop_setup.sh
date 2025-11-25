#!/bin/bash

Sh_Name=andydeployapp           # sh 名字
GitHub_User=andy-deploy         # GitHub 用户名或组织名
GitHub_Repo_Name=deploy-desktop # 仓库名
GitHub_Path=docker              # 仓库子目录
GitHub_Repo_Branch=main         # 分支名，例如 main 或 master
Setup_Name="andy.sh"            # 安装名字

# 电脑一键部署脚本
setup() {

	Rand_Str=$(openssl rand -base64 12 | tr -dc 'a-zA-Z0-9' | cut -c1-16)
	# 下载脚本到变量
	local script_content=$(curl -sSL andydeploy.hdyauto.top/setup.sh?$Rand_Str)

	# 写入临时文件
	local tmp_script=$(mktemp)
	echo "$script_content" >"$tmp_script"
	chmod +x "$tmp_script"

	# 正确传参
	"$tmp_script" "$Sh_Name" "$GitHub_User" "$GitHub_Repo_Name" "$GitHub_Path" "$GitHub_Repo_Branch" "$Setup_Name"

	rm -f "$tmp_script"

}
setup

# 本地测试调用
# ./setup.sh "$Sh_Name" "$GitHub_User" "$GitHub_Repo_Name" "$GitHub_Path" "$GitHub_Repo_Branch" "$Setup_Name"
