/*
    数据库类型：
        关系型数据库（表存储）: sqlite    db2  mysql   oracle access sqlServer 
        非关系型数据库（key--value）：mongdb  redis  memcache
*/



--- 查看当前用户  ---
select user

--- 退出mysql ---
quit;
exit;

--- 创建账号 ---
---  指定某个ip ---
119.3.39.119
create user 'wjp'@'119.3.39.119';
create user 'wjp'@'119.3.39.%';  ---%指定网段---

--- 所有ip（机器）都能访问 ---
create user 'wjp'@'%';

---远程登录指令---
mysql -u root -p 123456 -h ip;

---查看某个证号权限---
show grants for '用户名'@'ip';

---给账号授权---
grant all on *.* to '用户名'@'%';
flush privileges; ---刷新权限---

---创建账号并授权---
grant all on *.* to 'bruce'@'%' identified by '123456'


/*
    SQL 结构查询语言 分成三类
        1、DDL   数据库定义语言：数据库，数据表，视图，索引，存储过程，比如：create  drop  alter(修改)
        2、DML   数据库操纵语言：插入数据 insert  删除 delete  更新 update  查询 select
        3、DCL   数据库控制语言：控制用户的访问权限 grant revoke
*/

---创建一个数据库---
create database 'db1' charset utf8;
show databases;
---修改---
alter database 'db1' charset gbk;
---删除---
drop database 'db1';


--- 操作表 ---
use db1;
create table 'tb1'(id int,name char);
show tables;
alter table 'tb1' modify 'name' char(3)
alter table 'tb1' change 'name' 'username' char(2);
drop table 'tb1';
