CREATE TABLE `product_sku`
(
    `id`            bigint         NOT NULL AUTO_INCREMENT COMMENT 'SKU ID',
    `product_id`    bigint         NOT NULL COMMENT '商品ID',
    `name`          varchar(200)   NOT NULL COMMENT 'SKU名称',
    `attribute_ids` varchar(255)            DEFAULT NULL COMMENT '商品属性列表',
    `price`         decimal(10, 2) NOT NULL COMMENT '价格',
    `stock`         int            NOT NULL DEFAULT 0 COMMENT '库存数量',
    `status`        tinyint        NOT NULL DEFAULT 1 COMMENT '状态：0-下架，1-上架，2-预售',
    `create_time`   datetime       NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    `update_time`   datetime       NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
    `create_by`     varchar(64)             DEFAULT NULL COMMENT '创建人',
    `update_by`     varchar(64)             DEFAULT NULL COMMENT '更新人',
    PRIMARY KEY (`id`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_unicode_ci COMMENT ='商品SKU表';
