# 数据库初始化

-- 创建库
create database if not exists user_center;

-- 切换库
use user_center;

# 用户表
create table user
(
    username     varchar(256)                       null comment '用户昵称',
    id           bigint auto_increment comment 'id'
        primary key,
    userAccount  varchar(256)                       null comment '账号',
    avatarUrl    varchar(1024)                      null comment '用户头像',
    gender       tinyint                            null comment '性别',
    userPassword varchar(512)                       not null comment '密码',
    phone        varchar(128)                       null comment '电话',
    email        varchar(512)                       null comment '邮箱',
    userStatus   int      default 0                 not null comment '状态 0 - 正常',
    createTime   datetime default CURRENT_TIMESTAMP null comment '创建时间',
    updateTime   datetime default CURRENT_TIMESTAMP null on update CURRENT_TIMESTAMP,
    isDelete     tinyint  default 0                 not null comment '是否删除',
    userRole     int      default 0                 not null comment '用户角色 0 - 普通用户 1 - 管理员',
    userCode   varchar(512)                       null comment '员工编号'
)
    comment '用户';

# 导入示例用户
INSERT INTO user_center.user (username, userAccount, avatarUrl, gender, userPassword, phone, email, userStatus, createTime, updateTime, isDelete, userRole, userCode) VALUES ('鱼皮', 'yupi', 'https://himg.bdimg.com/sys/portraitn/item/public.1.e137c1ac.yS1WqOXfSWEasOYJ2-0pvQ', null, 'b0dd3697a192885d7c055db46155b26a', null, null, 0, '2023-08-06 14:14:22', '2023-08-06 14:39:37', 0, 1, '1');
INSERT INTO user_center.user (username, id, userAccount, avatarUrl, gender, userPassword, phone, email, userStatus, createTime, updateTime, isDelete, userRole, userCode) VALUES ('feifan', 11, 'feifan', 'https://my-website-assets-1323233637.cos.ap-guangzhou.myqcloud.com/imgs/QQ%E5%A4%B4%E5%83%8F.jpg', 0, 'b0dd3697a192885d7c055db46155b26a', '11122223333', '66666666@qq.com', 0, '2024-07-05 00:17:43', '2024-07-05 14:34:56', 0, 1, '982');
INSERT INTO user_center.user (username, id, userAccount, avatarUrl, gender, userPassword, phone, email, userStatus, createTime, updateTime, isDelete, userRole, userCode) VALUES (null, 12, 'Biden', null, null, 'b0dd3697a192885d7c055db46155b26a', null, null, 0, '2024-07-05 16:11:09', '2024-07-05 16:30:24', 0, 0, '53');
INSERT INTO user_center.user (username, id, userAccount, avatarUrl, gender, userPassword, phone, email, userStatus, createTime, updateTime, isDelete, userRole, userCode) VALUES (null, 13, 'Trump', null, null, 'b0dd3697a192885d7c055db46155b26a', null, null, 0, '2024-07-05 16:12:51', '2024-07-05 16:30:24', 0, 0, '410');
INSERT INTO user_center.user (username, id, userAccount, avatarUrl, gender, userPassword, phone, email, userStatus, createTime, updateTime, isDelete, userRole, userCode) VALUES (null, 14, 'zhangsan', null, null, 'b0dd3697a192885d7c055db46155b26a', null, null, 0, '2024-07-08 21:21:21', '2024-07-12 08:20:04', 1, 0, '661');
INSERT INTO user_center.user (username, id, userAccount, avatarUrl, gender, userPassword, phone, email, userStatus, createTime, updateTime, isDelete, userRole, userCode) VALUES (null, 15, 'jackey', null, null, 'b0dd3697a192885d7c055db46155b26a', null, null, 0, '2024-07-08 21:25:09', '2024-07-08 21:30:08', 0, 0, '777');
INSERT INTO user_center.user (username, id, userAccount, avatarUrl, gender, userPassword, phone, email, userStatus, createTime, updateTime, isDelete, userRole, userCode) VALUES (null, 16, 'fhosahjfdioas', null, null, 'b0dd3697a192885d7c055db46155b26a', null, null, 0, '2024-07-11 05:44:36', '2024-07-12 08:16:01', 1, 0, '885');
INSERT INTO user_center.user (username, id, userAccount, avatarUrl, gender, userPassword, phone, email, userStatus, createTime, updateTime, isDelete, userRole, userCode) VALUES (null, 17, 'dddddd', null, null, 'b0dd3697a192885d7c055db46155b26a', null, null, 0, '2024-07-11 05:44:47', '2024-07-12 07:46:20', 1, 0, '928');
INSERT INTO user_center.user (username, id, userAccount, avatarUrl, gender, userPassword, phone, email, userStatus, createTime, updateTime, isDelete, userRole, userCode) VALUES (null, 18, 'aaaa', null, null, 'b0dd3697a192885d7c055db46155b26a', null, null, 0, '2024-07-11 05:45:27', '2024-07-12 07:47:51', 1, 1, '882');
INSERT INTO user_center.user (username, id, userAccount, avatarUrl, gender, userPassword, phone, email, userStatus, createTime, updateTime, isDelete, userRole, userCode) VALUES (null, 19, 'dgiusadfhgiu', null, null, 'b0dd3697a192885d7c055db46155b26a', null, null, 0, '2024-07-12 08:32:50', '2024-07-12 10:41:40', 1, 0, '819');
INSERT INTO user_center.user (username, id, userAccount, avatarUrl, gender, userPassword, phone, email, userStatus, createTime, updateTime, isDelete, userRole, userCode) VALUES ('dogYupi', 20, '123', 'https://636f-codenav-8grj8px727565176-1256524210.tcb.qcloud.la/img/logo.png', 0, 'xxx', '123', '456', 0, '2024-07-13 07:43:24', '2024-07-13 07:43:24', 0, 0, null);
