FROM openrasp/php7.2

MAINTAINER OpenRASP <ext_yunfenxi@baidu.com>

ENV install_url https://packages.baidu.com/app/moodle-v3.5.1.tar.gz
ENV install_url_bin https://packages.baidu.com/app/moodledata-v3.5.1-bin.tar.gz
ENV install_path /var/www/html

RUN yum install -y php71-php-zip

COPY install-package.tar.gz /tmp/

# 下载 
RUN cd /tmp \
	&& curl "$install_url" -o package.tar.gz \
	&& tar -zxf package.tar.gz -C "$install_path" \
	&& rm -f package.tar.gz \
	&& tar -zxf install-package.tar.gz -C "$install_path" \
	&& rm -f install-package.tar.gz \
	&& chmod 777 -R "$install_path" \
	&& curl "$install_url_bin" -o datapackage.tar.gz \
	&& tar -zxf datapackage.tar.gz -C "$install_path"/../ \
	&& chmod 777 -R "$install_path"/../moodledata


# 拷贝数据库文件
COPY database.sql /root/

# 更新启动脚本
COPY start.sh /root/
