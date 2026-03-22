docker rm -f firefox
docker run -d \
--name=firefox \
-p 5800:5800 \
-v $(pwd)/firefox1:/config:rw \
-e LANG='zh.UTF-8' \
-e VNC_PASSWORD='firefox1234' \
-e TZ=Asia/Shanghai \
registry.cn-hangzhou.aliyuncs.com/jiro-jlzhang/common:jlesage-firefox-v25.04.1.font
