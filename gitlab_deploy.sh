#!/bin/bash

Sh_Name=andydeployapp          # sh 名字
GitHub_User=andy-deploy        # GitHub 用户名或组织名
GitHub_Repo_Name=deploy-gitlab # 仓库名
GitHub_Path=docker             # 仓库子目录
GitHub_Repo_Branch=main        # 分支名，例如 main 或 master
Install_Dir=/home/deploy       # 安装名字


# ======= 安装目录处理 =======
# 如果 Install_Dir 是绝对路径且不可写，改成用户目录
if [[ "$Install_Dir" == /* ]]; then
	# 如果无法写入根目录
	if [ ! -w "$Install_Dir" ]; then
		Install_Dir="$HOME/$(basename "$Install_Dir")"
	fi
else
	Install_Dir="$HOME/$Install_Dir"
fi

# 电脑一键部署脚本
setup() {

	Rand_Str=$(openssl rand -base64 12 | tr -dc 'a-zA-Z0-9' | cut -c1-16)
	# 下载脚本到变量
	local script_content=$(curl -sSL andydeploy.hdyauto.top/deploy.sh?$Rand_Str)

	# 写入临时文件
	local tmp_script=$(mktemp)
	echo "$script_content" >"$tmp_script"
	chmod +x "$tmp_script"

	# 正确传参
	"$tmp_script" "$Sh_Name" "$GitHub_User" "$GitHub_Repo_Name" "$GitHub_Path" "$GitHub_Repo_Branch" "$Install_Dir"

	rm -f "$tmp_script"

}
setup

# ./deploy.sh "$Sh_Name" "$GitHub_User" "$GitHub_Repo_Name" "$GitHub_Path" "$GitHub_Repo_Branch" "$Install_Dir"
