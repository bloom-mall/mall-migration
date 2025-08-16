CREATE TABLE `product`
(
    `id`           bigint       NOT NULL AUTO_INCREMENT COMMENT '商品ID',
    `category_id`  bigint       NOT NULL COMMENT '分类ID',
    `name`         varchar(128) NOT NULL COMMENT '商品名称',
    `main_picture` varchar(200)          DEFAULT NULL COMMENT '商品主图',
    `status`       tinyint      NOT NULL DEFAULT 1 COMMENT '状态：0-下架，1-上架',
    `is_hot`       tinyint      NOT NULL DEFAULT 0 COMMENT '是否热销：0-否，1-是',
    `is_new`       tinyint      NOT NULL DEFAULT 0 COMMENT '是否新品：0-否，1-是',
    `is_recommend` tinyint      NOT NULL DEFAULT 0 COMMENT '是否推荐：0-否，1-是',
    `is_deleted`   tinyint      NOT NULL DEFAULT 0 COMMENT '是否删除：0-未删除，1-已删除',
    `create_time`  datetime     NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    `update_time`  datetime     NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
    `create_by`    varchar(64)           DEFAULT NULL COMMENT '创建人',
    `update_by`    varchar(64)           DEFAULT NULL COMMENT '更新人',
    PRIMARY KEY (`id`),
    KEY `idx_category_id` (`category_id`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_unicode_ci COMMENT ='商品表';
