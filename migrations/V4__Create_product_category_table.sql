CREATE TABLE `product_category`
(
    `id`          bigint      NOT NULL AUTO_INCREMENT COMMENT '分类ID',
    `parent_id`   bigint               DEFAULT 0 COMMENT '父分类ID，0表示一级分类',
    `name`        varchar(64) NOT NULL COMMENT '分类名称',
    `level`       tinyint     NOT NULL DEFAULT 1 COMMENT '分类层级：1-一级分类，2-二级分类，3-三级分类',
    `sort_order`  int         NOT NULL DEFAULT 0 COMMENT '排序权重，数值越小越靠前',
    `icon`        varchar(255)         DEFAULT NULL COMMENT '分类图标',
    `description` varchar(500)         DEFAULT NULL COMMENT '分类描述',
    `status`      tinyint     NOT NULL DEFAULT 1 COMMENT '状态：0-禁用，1-启用',
    `is_deleted`  tinyint     NOT NULL DEFAULT 0 COMMENT '是否删除：0-未删除，1-已删除',
    `create_time` datetime    NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    `update_time` datetime    NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
    `create_by`   varchar(64)          DEFAULT NULL COMMENT '创建人',
    `update_by`   varchar(64)          DEFAULT NULL COMMENT '更新人',
    PRIMARY KEY (`id`),
    KEY `idx_parent_id` (`parent_id`),
    KEY `idx_level` (`level`),
    KEY `idx_sort_order` (`sort_order`),
    KEY `idx_status` (`status`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_unicode_ci COMMENT ='商品分类表';
