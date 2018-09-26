## 环境说明

* 镜像src/moodle/3.5.1

  * 账号/密码：admin/qweQWE123!@#

  * 特殊说明

    * 如果需要使用非dockerip或非80端口访问，在根目录下config.php文件中修改$CFG->wwwroot为对应的 域名:端口

## Moodle 命令执行漏洞【CVE-2018-14630】

测试镜像

* src/moodle/3.5.1

影响版本

* Moodle 3.5 ~ 3.5.1, 3.4 ~ 3.4.4, 3.1 ~ 3.1.13

参考链接

* [Remote Code Execution via PHP unserialize in Moodle open-source learning platform](https://seclists.org/fulldisclosure/2018/Sep/28)

Poc

访问url

```
http://127.0.0.1/question/import.php?courseid=2
```

使用管理员账号登陆，上传CVE-2018-14630目录下的exp.xml，格式选择Moodle XML格式，访问以下链接返回200则利用成功

```
http://127.0.0.1/success
```

