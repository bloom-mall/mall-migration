CREATE TABLE `product_attribute_group`
(
    `id`          bigint      NOT NULL AUTO_INCREMENT COMMENT '分组ID',
    `product_id`  bigint      NOT NULL COMMENT '商品ID',
    `name`        varchar(20) NOT NULL COMMENT '分组名',
    `sort`        smallint    NOT NULL DEFAULT 0 COMMENT '排序',
    `create_time` datetime    NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    `update_time` datetime    NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
    `create_by`   varchar(64)          DEFAULT NULL COMMENT '创建人',
    `update_by`   varchar(64)          DEFAULT NULL COMMENT '更新人',
    PRIMARY KEY (`id`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_unicode_ci COMMENT ='商品属性分组表';
