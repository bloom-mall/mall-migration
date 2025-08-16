CREATE TABLE `product_attribute_value` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '属性值ID',
  `product_id` bigint NOT NULL COMMENT '商品ID',
  `attribute_id` bigint NOT NULL COMMENT '属性ID',
  `value` varchar(255) NOT NULL COMMENT '属性值',
  `is_deleted` tinyint NOT NULL DEFAULT 0 COMMENT '是否删除：0-未删除，1-已删除',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `idx_product_id` (`product_id`),
  KEY `idx_attribute_id` (`attribute_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='商品属性值表';
