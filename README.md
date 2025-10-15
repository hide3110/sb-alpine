## 预览

![preview](预览.png)

# Snell 

这个 Bash 脚本可以帮助你快速部署 Snell 代理服务器。
## 一键脚本自定义
自定义端口参数如：SNELL_PORT=65432，密钥如：SNELL_PSK=TlfRkj6fSQhAGSM5ib79，使用时请自行定义此参数！
```bash
SNELL_PORT=65432 SNELL_PSK=TlfRkj6fSQhAGSM5ib79 bash <(curl -Ls https://raw.githubusercontent.com/hide3110/Snell/main/Snell.sh)
```
```
export SNELL_PORT=65432 SNELL_PSK=TlfRkj6fSQhAGSM5ib79 && wget -q https://raw.githubusercontent.com/hide3110/Snell/main/Snell.sh -O Snell.sh && chmod +x Snell.sh && ./Snell.sh
```
## 一键脚本参数随机
```bash
wget -q https://raw.githubusercontent.com/hide3110/Snell/main/Snell.sh -O Snell.sh && chmod +x Snell.sh && ./Snell.sh
```
```
curl -sS -o Snell.sh https://raw.githubusercontent.com/hide3110/Snell/main/Snell.sh && chmod +x Snell.sh && ./Snell.sh
```


## 详细说明

- 执行脚本即可自动部署 Snell 代理服务器。
- 脚本会自动生成随机端口和预共享密钥（PSK），并配置在 Snell 服务器中。
- 执行完脚本后，你会得到服务器的 IP 地址、端口号、PSK 等相关信息。


