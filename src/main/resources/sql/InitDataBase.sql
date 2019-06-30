CREATE DATABASE IF NOT EXISTS pandora_01 DEFAULT CHARSET utf8 COLLATE utf8_general_ci;
USE pandora_01;

-- 测试表
CREATE TABLE t_test
(
    id         INT(11) NOT NULL AUTO_INCREMENT,
    name       VARCHAR(128) DEFAULT NULL COMMENT '姓名',
    phone      VARCHAR(128) DEFAULT NULL COMMENT '手机号',
    status     TINYINT(4)   DEFAULT NULL COMMENT '状态 1：正常 3：删除',
    createTime TIMESTAMP DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    updateTime TIMESTAMP DEFAULT current_timestamp ON UPDATE current_timestamp COMMENT '更新时间',
    PRIMARY KEY (id)
) ENGINE = InnoDB DEFAULT CHARSET = utf8 COMMENT '测试表';