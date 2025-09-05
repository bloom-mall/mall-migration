-- V6__Insert_test_data.sql
-- 电商平台测试数据插入脚本

-- 1. 插入商品分类数据
INSERT INTO product_category (id, parent_id, name, level, sort_order, icon, description, status, is_deleted, create_time, update_time, create_by, update_by)
VALUES
  (1, 0, '电子产品', 1, 1, '/icons/electronics.png', '各类电子产品', 1, 0, NOW(), NOW(), 'admin', 'admin'),
  (2, 1, '手机', 2, 1, '/icons/phone.png', '智能手机', 1, 0, NOW(), NOW(), 'admin', 'admin'),
  (3, 1, '电脑', 2, 2, '/icons/computer.png', '笔记本电脑和平板电脑', 1, 0, NOW(), NOW(), 'admin', 'admin'),
  (4, 2, '华为手机', 3, 1, '/icons/huawei.png', '华为品牌手机', 1, 0, NOW(), NOW(), 'admin', 'admin'),
  (5, 2, '苹果手机', 3, 2, '/icons/apple.png', '苹果品牌手机', 1, 0, NOW(), NOW(), 'admin', 'admin'),
  (6, 3, '笔记本电脑', 3, 1, '/icons/laptop.png', '便携式笔记本电脑', 1, 0, NOW(), NOW(), 'admin', 'admin'),
  (7, 0, '服装鞋帽', 1, 2, '/icons/clothing.png', '各类服装和鞋帽', 1, 0, NOW(), NOW(), 'admin', 'admin'),
  (8, 7, '男装', 2, 1, '/icons/men.png', '男士服装', 1, 0, NOW(), NOW(), 'admin', 'admin'),
  (9, 7, '女装', 2, 2, '/icons/women.png', '女士服装', 1, 0, NOW(), NOW(), 'admin', 'admin'),
  -- 新增分类
  (10, 1, '智能家居', 2, 3, '/icons/smart-home.png', '智能家电设备', 1, 0, NOW(), NOW(), 'admin', 'admin'),
  (11, 10, '智能音箱', 3, 1, '/icons/speaker.png', '智能语音音箱', 1, 0, NOW(), NOW(), 'admin', 'admin'),
  (12, 10, '智能手表', 3, 2, '/icons/watch.png', '智能穿戴设备', 1, 0, NOW(), NOW(), 'admin', 'admin'),
  (13, 7, '鞋靴', 2, 3, '/icons/shoes.png', '各类鞋靴产品', 1, 0, NOW(), NOW(), 'admin', 'admin'),
  (14, 13, '运动鞋', 3, 1, '/icons/sports-shoes.png', '运动休闲鞋', 1, 0, NOW(), NOW(), 'admin', 'admin'),
  (15, 13, '正装鞋', 3, 2, '/icons/formal-shoes.png', '商务正装鞋', 1, 0, NOW(), NOW(), 'admin', 'admin'),
  (16, 0, '美妆护肤', 1, 3, '/icons/beauty.png', '美妆和护肤产品', 1, 0, NOW(), NOW(), 'admin', 'admin'),
  (17, 16, '面部护理', 2, 1, '/icons/face-care.png', '面部护理产品', 1, 0, NOW(), NOW(), 'admin', 'admin'),
  (18, 16, '彩妆', 2, 2, '/icons/makeup.png', '彩妆产品', 1, 0, NOW(), NOW(), 'admin', 'admin');

-- 2. 插入商品数据
INSERT INTO product (id, category_id, name, main_picture, status, is_hot, is_new, is_recommend, is_deleted, create_time, update_time, create_by, update_by)
VALUES
  (1, 4, '华为 Mate 60 Pro', '/images/huawei-mate-60-pro.jpg', 1, 1, 1, 1, 0, NOW(), NOW(), 'admin', 'admin'),
  (2, 5, 'iPhone 15 Pro', '/images/iphone-15-pro.jpg', 1, 1, 1, 1, 0, NOW(), NOW(), 'admin', 'admin'),
  (3, 6, 'MacBook Pro 16英寸', '/images/macbook-pro.jpg', 1, 0, 1, 1, 0, NOW(), NOW(), 'admin', 'admin'),
  (4, 8, '纯棉男士T恤', '/images/men-tshirt.jpg', 1, 0, 0, 0, 0, NOW(), NOW(), 'admin', 'admin'),
  (5, 9, '夏季连衣裙', '/images/women-dress.jpg', 1, 0, 1, 0, 0, NOW(), NOW(), 'admin', 'admin'),
  -- 新增商品
  (6, 11, '小米 AI 音箱 Pro', '/images/xiaomi-speaker.jpg', 1, 0, 1, 0, 0, NOW(), NOW(), 'admin', 'admin'),
  (7, 11, '华为 Sound X', '/images/huawei-sound.jpg', 1, 0, 0, 1, 0, NOW(), NOW(), 'admin', 'admin'),
  (8, 12, 'Apple Watch Series 9', '/images/apple-watch.jpg', 1, 1, 1, 1, 0, NOW(), NOW(), 'admin', 'admin'),
  (9, 14, 'Nike Air Max', '/images/nike-airmax.jpg', 1, 1, 0, 1, 0, NOW(), NOW(), 'admin', 'admin'),
  (10, 15, 'Clarks 正装皮鞋', '/images/clarks-shoes.jpg', 1, 0, 1, 0, 0, NOW(), NOW(), 'admin', 'admin'),
  (11, 17, '兰蔻小黑瓶精华', '/images/lancome-serum.jpg', 1, 1, 1, 1, 0, NOW(), NOW(), 'admin', 'admin'),
  (12, 18, '迪奥999口红', '/images/dior-lipstick.jpg', 1, 1, 0, 1, 0, NOW(), NOW(), 'admin', 'admin');

-- 3. 插入商品属性分组数据
INSERT INTO product_attribute_group (id, product_id, name, sort, create_time, update_time, create_by, update_by)
VALUES
  (1, 1, '基本信息', 1, NOW(), NOW(), 'admin', 'admin'),
  (2, 1, '配置信息', 2, NOW(), NOW(), 'admin', 'admin'),
  (3, 2, '基本信息', 1, NOW(), NOW(), 'admin', 'admin'),
  (4, 3, '规格参数', 1, NOW(), NOW(), 'admin', 'admin'),
  (5, 4, '商品属性', 1, NOW(), NOW(), 'admin', 'admin'),
  -- 新增商品属性分组
  (6, 5, '商品属性', 1, NOW(), NOW(), 'admin', 'admin'),
  (7, 6, '基本信息', 1, NOW(), NOW(), 'admin', 'admin'),
  (8, 6, '功能参数', 2, NOW(), NOW(), 'admin', 'admin'),
  (9, 7, '基本信息', 1, NOW(), NOW(), 'admin', 'admin'),
  (10, 7, '音频参数', 2, NOW(), NOW(), 'admin', 'admin'),
  (11, 8, '基本信息', 1, NOW(), NOW(), 'admin', 'admin'),
  (12, 8, '配置信息', 2, NOW(), NOW(), 'admin', 'admin'),
  (13, 9, '商品属性', 1, NOW(), NOW(), 'admin', 'admin'),
  (14, 10, '商品属性', 1, NOW(), NOW(), 'admin', 'admin'),
  (15, 11, '商品属性', 1, NOW(), NOW(), 'admin', 'admin'),
  (16, 12, '商品属性', 1, NOW(), NOW(), 'admin', 'admin');

-- 4. 插入商品属性数据
INSERT INTO product_attribute (id, name, group_id, product_id, sort, create_time, update_time, create_by, update_by)
VALUES
  (1, '品牌', 1, 1, 1, NOW(), NOW(), 'admin', 'admin'),
  (2, '型号', 1, 1, 2, NOW(), NOW(), 'admin', 'admin'),
  (3, '颜色', 2, 1, 1, NOW(), NOW(), 'admin', 'admin'),
  (4, '内存', 2, 1, 2, NOW(), NOW(), 'admin', 'admin'),
  (5, '品牌', 3, 2, 1, NOW(), NOW(), 'admin', 'admin'),
  (6, '型号', 3, 2, 2, NOW(), NOW(), 'admin', 'admin'),
  (7, '颜色', 3, 2, 3, NOW(), NOW(), 'admin', 'admin'),
  (8, '处理器', 4, 3, 1, NOW(), NOW(), 'admin', 'admin'),
  (9, '内存', 4, 3, 2, NOW(), NOW(), 'admin', 'admin'),
  (10, '硬盘容量', 4, 3, 3, NOW(), NOW(), 'admin', 'admin'),
  (11, '材质', 5, 4, 1, NOW(), NOW(), 'admin', 'admin'),
  (12, '尺码', 5, 4, 2, NOW(), NOW(), 'admin', 'admin'),
  (13, '颜色', 5, 4, 3, NOW(), NOW(), 'admin', 'admin'),
  -- 新增商品属性
  (14, '款式', 6, 5, 1, NOW(), NOW(), 'admin', 'admin'),
  (15, '尺码', 6, 5, 2, NOW(), NOW(), 'admin', 'admin'),
  (16, '品牌', 7, 6, 1, NOW(), NOW(), 'admin', 'admin'),
  (17, '型号', 7, 6, 2, NOW(), NOW(), 'admin', 'admin'),
  (18, '颜色', 8, 6, 1, NOW(), NOW(), 'admin', 'admin'),
  (19, '音质', 8, 6, 2, NOW(), NOW(), 'admin', 'admin'),
  (20, '品牌', 9, 7, 1, NOW(), NOW(), 'admin', 'admin'),
  (21, '型号', 9, 7, 2, NOW(), NOW(), 'admin', 'admin'),
  (22, '颜色', 10, 7, 1, NOW(), NOW(), 'admin', 'admin'),
  (23, '声道', 10, 7, 2, NOW(), NOW(), 'admin', 'admin'),
  (24, '品牌', 11, 8, 1, NOW(), NOW(), 'admin', 'admin'),
  (25, '型号', 11, 8, 2, NOW(), NOW(), 'admin', 'admin'),
  (26, '表壳材质', 12, 8, 1, NOW(), NOW(), 'admin', 'admin'),
  (27, '表带材质', 12, 8, 2, NOW(), NOW(), 'admin', 'admin'),
  (28, '尺寸', 12, 8, 3, NOW(), NOW(), 'admin', 'admin'),
  (29, '品牌', 13, 9, 1, NOW(), NOW(), 'admin', 'admin'),
  (30, '款式', 13, 9, 2, NOW(), NOW(), 'admin', 'admin'),
  (31, '尺码', 13, 9, 3, NOW(), NOW(), 'admin', 'admin'),
  (32, '颜色', 13, 9, 4, NOW(), NOW(), 'admin', 'admin'),
  (33, '品牌', 14, 10, 1, NOW(), NOW(), 'admin', 'admin'),
  (34, '款式', 14, 10, 2, NOW(), NOW(), 'admin', 'admin'),
  (35, '尺码', 14, 10, 3, NOW(), NOW(), 'admin', 'admin'),
  (36, '材质', 14, 10, 4, NOW(), NOW(), 'admin', 'admin'),
  (37, '品牌', 15, 11, 1, NOW(), NOW(), 'admin', 'admin'),
  (38, '规格', 15, 11, 2, NOW(), NOW(), 'admin', 'admin'),
  (39, '适用肤质', 15, 11, 3, NOW(), NOW(), 'admin', 'admin'),
  (40, '品牌', 16, 12, 1, NOW(), NOW(), 'admin', 'admin'),
  (41, '色号', 16, 12, 2, NOW(), NOW(), 'admin', 'admin'),
  (42, '质地', 16, 12, 3, NOW(), NOW(), 'admin', 'admin');

-- 5. 插入商品SKU数据
INSERT INTO product_sku (id, product_id, name, attribute_ids, price, stock, status, create_time, update_time, create_by, update_by)
VALUES
  -- 华为 Mate 60 Pro 的 SKU - 增加更多SKU组合
  (1, 1, '华为 Mate 60 Pro 黑色 12+512GB', '3:黑色,4:12+512GB', 6999.00, 100, 1, NOW(), NOW(), 'admin', 'admin'),
  (2, 1, '华为 Mate 60 Pro 白色 12+256GB', '3:白色,4:12+256GB', 6499.00, 150, 1, NOW(), NOW(), 'admin', 'admin'),
  (3, 1, '华为 Mate 60 Pro 紫色 12+512GB', '3:紫色,4:12+512GB', 6999.00, 80, 1, NOW(), NOW(), 'admin', 'admin'),
  (4, 1, '华为 Mate 60 Pro 绿色 12+256GB', '3:绿色,4:12+256GB', 6499.00, 120, 1, NOW(), NOW(), 'admin', 'admin'),
  (5, 1, '华为 Mate 60 Pro 黑色 8+256GB', '3:黑色,4:8+256GB', 5999.00, 90, 1, NOW(), NOW(), 'admin', 'admin'),
  (6, 1, '华为 Mate 60 Pro 紫色 8+256GB', '3:紫色,4:8+256GB', 5999.00, 70, 1, NOW(), NOW(), 'admin', 'admin'),
  (7, 1, '华为 Mate 60 Pro 白色 16+1TB', '3:白色,4:16+1TB', 8499.00, 60, 1, NOW(), NOW(), 'admin', 'admin'),

  -- iPhone 15 Pro 的 SKU - 增加更多SKU组合
  (8, 2, 'iPhone 15 Pro 暗紫色 128GB', '7:暗紫色,6:128GB', 7999.00, 200, 1, NOW(), NOW(), 'admin', 'admin'),
  (9, 2, 'iPhone 15 Pro 深空黑 256GB', '7:深空黑,6:256GB', 8799.00, 120, 1, NOW(), NOW(), 'admin', 'admin'),
  (10, 2, 'iPhone 15 Pro 银色 512GB', '7:银色,6:512GB', 9999.00, 90, 1, NOW(), NOW(), 'admin', 'admin'),
  (11, 2, 'iPhone 15 Pro 金色 128GB', '7:金色,6:128GB', 7999.00, 180, 1, NOW(), NOW(), 'admin', 'admin'),
  (12, 2, 'iPhone 15 Pro 暗紫色 256GB', '7:暗紫色,6:256GB', 8799.00, 150, 1, NOW(), NOW(), 'admin', 'admin'),
  (13, 2, 'iPhone 15 Pro 深空黑 512GB', '7:深空黑,6:512GB', 9999.00, 110, 1, NOW(), NOW(), 'admin', 'admin'),
  (14, 2, 'iPhone 15 Pro 银色 1TB', '7:银色,6:1TB', 11999.00, 80, 1, NOW(), NOW(), 'admin', 'admin'),
  (15, 2, 'iPhone 15 Pro 金色 1TB', '7:金色,6:1TB', 11999.00, 70, 1, NOW(), NOW(), 'admin', 'admin'),

  -- MacBook Pro 16英寸 的 SKU - 增加更多SKU组合
  (16, 3, 'MacBook Pro M3 Pro 16GB 512GB', '8:M3 Pro,9:16GB,10:512GB', 13999.00, 50, 1, NOW(), NOW(), 'admin', 'admin'),
  (17, 3, 'MacBook Pro M3 Max 32GB 1TB', '8:M3 Max,9:32GB,10:1TB', 21999.00, 30, 1, NOW(), NOW(), 'admin', 'admin'),
  (18, 3, 'MacBook Pro M3 Pro 16GB 1TB', '8:M3 Pro,9:16GB,10:1TB', 15999.00, 60, 1, NOW(), NOW(), 'admin', 'admin'),
  (19, 3, 'MacBook Pro M3 Pro 32GB 1TB', '8:M3 Pro,9:32GB,10:1TB', 17999.00, 40, 1, NOW(), NOW(), 'admin', 'admin'),
  (20, 3, 'MacBook Pro M3 Max 32GB 512GB', '8:M3 Max,9:32GB,10:512GB', 19999.00, 45, 1, NOW(), NOW(), 'admin', 'admin'),
  (21, 3, 'MacBook Pro M3 Max 64GB 2TB', '8:M3 Max,9:64GB,10:2TB', 28999.00, 25, 1, NOW(), NOW(), 'admin', 'admin'),

  -- 纯棉男士T恤 的 SKU - 增加更多SKU组合
  (22, 4, '纯棉男士T恤 白色 M码', '11:纯棉,12:M码,13:白色', 99.00, 500, 1, NOW(), NOW(), 'admin', 'admin'),
  (23, 4, '纯棉男士T恤 黑色 L码', '11:纯棉,12:L码,13:黑色', 99.00, 400, 1, NOW(), NOW(), 'admin', 'admin'),
  (24, 4, '纯棉男士T恤 蓝色 XL码', '11:纯棉,12:XL码,13:蓝色', 99.00, 300, 1, NOW(), NOW(), 'admin', 'admin'),
  (25, 4, '纯棉男士T恤 灰色 S码', '11:纯棉,12:S码,13:灰色', 99.00, 350, 1, NOW(), NOW(), 'admin', 'admin'),
  (26, 4, '纯棉男士T恤 红色 M码', '11:纯棉,12:M码,13:红色', 99.00, 450, 1, NOW(), NOW(), 'admin', 'admin'),
  (27, 4, '纯棉男士T恤 绿色 L码', '11:纯棉,12:L码,13:绿色', 99.00, 380, 1, NOW(), NOW(), 'admin', 'admin'),
  (28, 4, '纯棉男士T恤 紫色 XL码', '11:纯棉,12:XL码,13:紫色', 99.00, 280, 1, NOW(), NOW(), 'admin', 'admin'),
  (29, 4, '纯棉男士T恤 黑色 XXL码', '11:纯棉,12:XXL码,13:黑色', 99.00, 250, 1, NOW(), NOW(), 'admin', 'admin'),
  (30, 4, '纯棉男士T恤 白色 S码', '11:纯棉,12:S码,13:白色', 99.00, 420, 1, NOW(), NOW(), 'admin', 'admin'),

  -- 夏季连衣裙 的 SKU - 增加更多SKU组合
  (31, 5, '夏季连衣裙 碎花 S码', '14:碎花,15:S码', 199.00, 200, 1, NOW(), NOW(), 'admin', 'admin'),
  (32, 5, '夏季连衣裙 纯色 M码', '14:纯色,15:M码', 199.00, 150, 1, NOW(), NOW(), 'admin', 'admin'),
  (33, 5, '夏季连衣裙 波点 S码', '14:波点,15:S码', 199.00, 180, 1, NOW(), NOW(), 'admin', 'admin'),
  (34, 5, '夏季连衣裙 条纹 M码', '14:条纹,15:M码', 199.00, 160, 1, NOW(), NOW(), 'admin', 'admin'),
  (35, 5, '夏季连衣裙 碎花 L码', '14:碎花,15:L码', 199.00, 190, 1, NOW(), NOW(), 'admin', 'admin'),
  (36, 5, '夏季连衣裙 纯色 L码', '14:纯色,15:L码', 199.00, 140, 1, NOW(), NOW(), 'admin', 'admin'),
  (37, 5, '夏季连衣裙 波点 XL码', '14:波点,15:XL码', 199.00, 130, 1, NOW(), NOW(), 'admin', 'admin'),
  (38, 5, '夏季连衣裙 条纹 XL码', '14:条纹,15:XL码', 199.00, 120, 1, NOW(), NOW(), 'admin', 'admin'),

  -- 小米 AI 音箱 Pro 的 SKU
  (39, 6, '小米 AI 音箱 Pro 白色 标准版', '18:白色,19:标准版', 299.00, 300, 1, NOW(), NOW(), 'admin', 'admin'),
  (40, 6, '小米 AI 音箱 Pro 黑色 标准版', '18:黑色,19:标准版', 299.00, 280, 1, NOW(), NOW(), 'admin', 'admin'),
  (41, 6, '小米 AI 音箱 Pro 白色 高音质版', '18:白色,19:高音质版', 399.00, 250, 1, NOW(), NOW(), 'admin', 'admin'),
  (42, 6, '小米 AI 音箱 Pro 黑色 高音质版', '18:黑色,19:高音质版', 399.00, 230, 1, NOW(), NOW(), 'admin', 'admin'),

  -- 华为 Sound X 的 SKU
  (43, 7, '华为 Sound X 红色 立体声', '22:红色,23:立体声', 1999.00, 120, 1, NOW(), NOW(), 'admin', 'admin'),
  (44, 7, '华为 Sound X 蓝色 立体声', '22:蓝色,23:立体声', 1999.00, 110, 1, NOW(), NOW(), 'admin', 'admin'),
  (45, 7, '华为 Sound X 黑色 环绕声', '22:黑色,23:环绕声', 2499.00, 90, 1, NOW(), NOW(), 'admin', 'admin'),
  (46, 7, '华为 Sound X 白色 环绕声', '22:白色,23:环绕声', 2499.00, 80, 1, NOW(), NOW(), 'admin', 'admin'),

  -- Apple Watch Series 9 的 SKU - 丰富的SKU组合
  (47, 8, 'Apple Watch Series 9 铝金属 运动表带 41mm', '26:铝金属,27:运动表带,28:41mm', 3199.00, 180, 1, NOW(), NOW(), 'admin', 'admin'),
  (48, 8, 'Apple Watch Series 9 铝金属 运动表带 45mm', '26:铝金属,27:运动表带,28:45mm', 3499.00, 170, 1, NOW(), NOW(), 'admin', 'admin'),
  (49, 8, 'Apple Watch Series 9 不锈钢 米兰尼斯表带 41mm', '26:不锈钢,27:米兰尼斯表带,28:41mm', 4999.00, 100, 1, NOW(), NOW(), 'admin', 'admin'),
  (50, 8, 'Apple Watch Series 9 不锈钢 米兰尼斯表带 45mm', '26:不锈钢,27:米兰尼斯表带,28:45mm', 5299.00, 90, 1, NOW(), NOW(), 'admin', 'admin'),
  (51, 8, 'Apple Watch Series 9 钛金属 运动表带 41mm', '26:钛金属,27:运动表带,28:41mm', 5999.00, 80, 1, NOW(), NOW(), 'admin', 'admin'),
  (52, 8, 'Apple Watch Series 9 钛金属 运动表带 45mm', '26:钛金属,27:运动表带,28:45mm', 6299.00, 70, 1, NOW(), NOW(), 'admin', 'admin'),
  (53, 8, 'Apple Watch Series 9 铝金属 编织单圈表带 41mm', '26:铝金属,27:编织单圈表带,28:41mm', 3499.00, 150, 1, NOW(), NOW(), 'admin', 'admin'),
  (54, 8, 'Apple Watch Series 9 铝金属 编织单圈表带 45mm', '26:铝金属,27:编织单圈表带,28:45mm', 3799.00, 140, 1, NOW(), NOW(), 'admin', 'admin'),
  (55, 8, 'Apple Watch Series 9 不锈钢 链式表带 41mm', '26:不锈钢,27:链式表带,28:41mm', 6299.00, 60, 1, NOW(), NOW(), 'admin', 'admin'),
  (56, 8, 'Apple Watch Series 9 不锈钢 链式表带 45mm', '26:不锈钢,27:链式表带,28:45mm', 6599.00, 50, 1, NOW(), NOW(), 'admin', 'admin'),

  -- Nike Air Max 的 SKU
  (57, 9, 'Nike Air Max 气垫 40码 黑色', '30:气垫,31:40码,32:黑色', 899.00, 220, 1, NOW(), NOW(), 'admin', 'admin'),
  (58, 9, 'Nike Air Max 气垫 41码 白色', '30:气垫,31:41码,32:白色', 899.00, 210, 1, NOW(), NOW(), 'admin', 'admin'),
  (59, 9, 'Nike Air Max 气垫 42码 红色', '30:气垫,31:42码,32:红色', 899.00, 200, 1, NOW(), NOW(), 'admin', 'admin'),
  (60, 9, 'Nike Air Max 气垫 43码 蓝色', '30:气垫,31:43码,32:蓝色', 899.00, 190, 1, NOW(), NOW(), 'admin', 'admin'),
  (61, 9, 'Nike Air Max 气垫 44码 黑色', '30:气垫,31:44码,32:黑色', 899.00, 180, 1, NOW(), NOW(), 'admin', 'admin'),
  (62, 9, 'Nike Air Max 休闲 40码 灰色', '30:休闲,31:40码,32:灰色', 799.00, 230, 1, NOW(), NOW(), 'admin', 'admin'),
  (63, 9, 'Nike Air Max 休闲 42码 白色', '30:休闲,31:42码,32:白色', 799.00, 210, 1, NOW(), NOW(), 'admin', 'admin'),

  -- Clarks 正装皮鞋 的 SKU
  (64, 10, 'Clarks 正装皮鞋 商务款 40码 牛皮', '34:商务款,35:40码,36:牛皮', 1299.00, 150, 1, NOW(), NOW(), 'admin', 'admin'),
  (65, 10, 'Clarks 正装皮鞋 商务款 41码 牛皮', '34:商务款,35:41码,36:牛皮', 1299.00, 140, 1, NOW(), NOW(), 'admin', 'admin'),
  (66, 10, 'Clarks 正装皮鞋 牛津款 42码 牛皮', '34:牛津款,35:42码,36:牛皮', 1499.00, 130, 1, NOW(), NOW(), 'admin', 'admin'),
  (67, 10, 'Clarks 正装皮鞋 牛津款 43码 牛皮', '34:牛津款,35:43码,36:牛皮', 1499.00, 120, 1, NOW(), NOW(), 'admin', 'admin'),
  (68, 10, 'Clarks 正装皮鞋 德比款 41码 羊皮', '34:德比款,35:41码,36:羊皮', 1699.00, 100, 1, NOW(), NOW(), 'admin', 'admin'),
  (69, 10, 'Clarks 正装皮鞋 德比款 42码 羊皮', '34:德比款,35:42码,36:羊皮', 1699.00, 90, 1, NOW(), NOW(), 'admin', 'admin'),

  -- 兰蔻小黑瓶精华 的 SKU
  (70, 11, '兰蔻小黑瓶精华 30ml 所有肤质', '38:30ml,39:所有肤质', 1080.00, 180, 1, NOW(), NOW(), 'admin', 'admin'),
  (71, 11, '兰蔻小黑瓶精华 50ml 所有肤质', '38:50ml,39:所有肤质', 1720.00, 160, 1, NOW(), NOW(), 'admin', 'admin'),
  (72, 11, '兰蔻小黑瓶精华 75ml 所有肤质', '38:75ml,39:所有肤质', 2280.00, 140, 1, NOW(), NOW(), 'admin', 'admin'),
  (73, 11, '兰蔻小黑瓶精华 30ml 敏感肤质', '38:30ml,39:敏感肤质', 1080.00, 150, 1, NOW(), NOW(), 'admin', 'admin'),
  (74, 11, '兰蔻小黑瓶精华 50ml 敏感肤质', '38:50ml,39:敏感肤质', 1720.00, 130, 1, NOW(), NOW(), 'admin', 'admin'),

  -- 迪奥999口红 的 SKU
  (75, 12, '迪奥999口红 滋润版 正红色', '41:正红色,42:滋润版', 380.00, 500, 1, NOW(), NOW(), 'admin', 'admin'),
  (76, 12, '迪奥999口红 哑光版 正红色', '41:正红色,42:哑光版', 380.00, 480, 1, NOW(), NOW(), 'admin', 'admin'),
  (77, 12, '迪奥999口红 丝绒版 正红色', '41:正红色,42:丝绒版', 380.00, 460, 1, NOW(), NOW(), 'admin', 'admin'),
  (78, 12, '迪奥999口红 滋润版 经典红', '41:经典红,42:滋润版', 380.00, 440, 1, NOW(), NOW(), 'admin', 'admin'),
  (79, 12, '迪奥999口红 哑光版 经典红', '41:经典红,42:哑光版', 380.00, 420, 1, NOW(), NOW(), 'admin', 'admin'),
  (80, 12, '迪奥999口红 丝绒版 经典红', '41:经典红,42:丝绒版', 380.00, 400, 1, NOW(), NOW(), 'admin', 'admin'),
  (81, 12, '迪奥999口红 滋润版 复古红', '41:复古红,42:滋润版', 380.00, 380, 1, NOW(), NOW(), 'admin', 'admin'),
  (82, 12, '迪奥999口红 哑光版 复古红', '41:复古红,42:哑光版', 380.00, 360, 1, NOW(), NOW(), 'admin', 'admin');