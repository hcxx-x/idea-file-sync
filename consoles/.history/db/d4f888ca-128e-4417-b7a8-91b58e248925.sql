alter table trade_role_setting add column status varchar(16) default null comment '状态（要结合启停时间判断）;Normal-正常；Closed-停用' after trade_role;
;-- -. . -..- - / . -. - .-. -.--
select * from d16_t_gl_balances where com_code='01' and inter_code in ('02','06');
;-- -. . -..- - / . -. - .-. -.--
select * from d16_t_gl_balances where com_code='01' and inter_code in ('02','06') limit 1;