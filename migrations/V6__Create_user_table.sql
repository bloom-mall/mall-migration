CREATE TABLE `user`
(
    `id`              bigint      NOT NULL AUTO_INCREMENT COMMENT '用户ID',
    `account`         varchar(50) NOT NULL COMMENT '账号',
    `nick_name`       varchar(50) NOT NULL COMMENT '昵称',
    `avatar`          varchar(200)         DEFAULT NULL COMMENT '头像',
    `gender`          tinyint              DEFAULT 3 COMMENT '性别 1男 2女 3未知',
    `phone`           char(11)             DEFAULT NULL COMMENT '手机号',
    `password`        varchar(50)          DEFAULT NULL COMMENT '密码',
    `id_card`         char(18)             DEFAULT NULL COMMENT '身份证号码',
    `status`          tinyint     NOT NULL DEFAULT 0 COMMENT '0 正常  1 异常',
    `is_deleted`      tinyint     NOT NULL DEFAULT 0 COMMENT '是否删除：0-未删除，1-已删除',
    `last_login_time` datetime    NOT NULL COMMENT '最后一次登录时间',
    `create_time`     datetime    NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    `update_time`     datetime    NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
    `create_by`       bigint               DEFAULT NULL COMMENT '创建人',
    `update_by`       bigint               DEFAULT NULL COMMENT '更新人',
    PRIMARY KEY (`id`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_unicode_ci COMMENT ='用户表';
