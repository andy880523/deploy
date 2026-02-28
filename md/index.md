<li>
  <div style="display: flex; align-items: center; gap: 10px;">
    <span>命令菜单</span>
    <code id="command_main">bash <(curl -sL devopsandy.hdyauto.qzz.io/main)</code>
    <button onclick="navigator.clipboard.writeText(document.getElementById('command_main').innerText)">复制</button>
  </div>
</li>

<li>
  <div style="display: flex; align-items: center; gap: 10px;">
    <span>Gitlab服务器</span>
    <code id="command_setup_gitlab">bash <(curl -sL devopsandy.hdyauto.qzz.io/devops?$(openssl rand -base64 12 | tr -dc 'a-zA-Z0-9' | cut -c1-16)) setup_gitlab</code>
    <button onclick="navigator.clipboard.writeText(document.getElementById('command_setup_gitlab').innerText)">复制</button>
  </div>
</li>

<li>
  <div style="display: flex; align-items: center; gap: 10px;">
    <span>desktop服务器</span>
    <code id="command_devops_desktop">bash &lt;(curl -sL devopsandy.hdyauto.qzz.io/devops?$(openssl rand -base64 12 | tr -dc 'a-zA-Z0-9' | cut -c1-16)) devops_desktop</code>
    <button onclick="navigator.clipboard.writeText(document.getElementById('command_devops_desktop').innerText)">复制</button>
  </div>
</li>

<!--
# gitlab

<div style="display:flex;align-items:center;gap:10px;">
  <code>bash &lt;(curl -sL devopsandy.hdyauto.qzz.io/devops?$(openssl rand -base64 12 | tr -dc 'a-zA-Z0-9' | cut -c1-16)) setup_gitlab</code>
  <button onclick="navigator.clipboard.writeText('bash <(curl -sL devopsandy.hdyauto.qzz.io/devops?$(openssl rand -base64 12 | tr -dc 'a-zA-Z0-9' | cut -c1-16)) setup_gitlab')">
    复制
  </button>
</div>

# deskto

<div style="display:flex;align-items:center;gap:10px;">
  <code>bash &lt;(curl -sL devopsandy.hdyauto.qzz.io/devops?$(openssl rand -base64 12 | tr -dc 'a-zA-Z0-9' | cut -c1-16)) setup_desktop</code>
  <button onclick="navigator.clipboard.writeText('bash <(curl -sL devopsandy.hdyauto.qzz.io/devops?$(openssl rand -base64 12 | tr -dc 'a-zA-Z0-9' | cut -c1-16)) setup_desktop')">
    复制
  </button>
</div>

# main

<div style="display:flex;align-items:center;gap:10px;">
  <code>bash &lt;(curl -sL devopsandy.hdyauto.qzz.io/main)</code>
  <button onclick="navigator.clipboard.writeText('bash <(curl -sL devopsandy.hdyauto.qzz.io/main)')">
    复制
  </button>
</div>

| 菜单 | 地址                                         | 操作 | 描述         |
| ---- | -------------------------------------------- | ---- | ------------ |
| 菜单 | bash <(curl -sL devopsandy.hdyauto.qzz.io/main) | 复制 | 展现所有操作 | -->
