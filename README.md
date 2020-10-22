# yaoqishan
 基于JAVA的远程视频会议系统-mysql版

 源码来自：https://gitee.com/javaex/yaoqishan#only_comment_project  如有侵权，请联系删除。

前言：这是从网上下载来的一个开源视频网站（含管理后台）项目；经本人改造，将sql server数据库改为mysql，包括解决maven打包的一些问题，该项目直接以打war包的形式来发布。

项目介绍
1、第一款面向大众的java版的视频管理系统。
2、基于JAVA的远程视频会议系统理论上可以制作任何类型的视频网站。

软件架构
前端：javaex
后端：ssm
数据库：mysql
编译器：idea
JDK：1.8
tomcat：tomcat8

前台页面直接访问：http://localhost:8080/

后台登录入口：http://localhost:8080/admin/login.action
用户名：admin
密码:111111



## 如何部署？

### 第一步：下拉项目

打开`gitBash`在需要的地方，执行`git clone git@github.com:lazyTimes/yaoqishan.git`

### 第二步：安装idea

网上教程大把的，这里略过

### 第三步：导入项目：

idea打开，导入项目，在选择的时候切换选择maven，个人的idea版本为`2019.3.3`不同版本有差别。

![](https://gitee.com/lazyTimes/imageReposity/raw/master/img/20201022195303.png)

### 第四步：部署tomcat

1. 部署tomcat的时候，记得使用下面这个`exploded`

![](https://gitee.com/lazyTimes/imageReposity/raw/master/img/20201022195435.png)

2. 然后启动项目，我选择的是`tomcat8`的最新版本

### 第五步 运行项目：

如果运行之后，出现404,先不要慌，看下`target`目录的内容对不对，如果不对，说明部署有问题：

查看一下idea中`Modules`这里是不是爆红，如果是需要重新定位到你项目对应的`webapp`，再次运行，webapp的内容就部署到tomcat了，这时候启动打开`localhost:8080`，基本页面就正常了

![](https://gitee.com/lazyTimes/imageReposity/raw/master/img/20201022195926.png)

### 补充一下：

记得运行一下`sql`，不需要手动建库，直接运行sql文件就可以了

有问题及时提出来，欢迎一起讨论