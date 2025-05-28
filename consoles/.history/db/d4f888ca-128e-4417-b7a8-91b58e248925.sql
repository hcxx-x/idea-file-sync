alter table trade_role_setting add column status varchar(16) default null comment '状态（要结合启停时间判断）;Normal-正常；Closed-停用' after trade_role;
;-- -. . -..- - / . -. - .-. -.--
select * from d16_t_gl_balances where com_code='01' and inter_code in ('02','06');
;-- -. . -..- - / . -. - .-. -.--
select * from d16_t_gl_balances where com_code='01' and inter_code in ('02','06') limit 1;
;-- -. . -..- - / . -. - .-. -.--
select trs.id,trs.rule_code,trs.biz_entity_code,bbe.biz_entity_name bizEntityName,bbe.vat_entity_name vatEntityName,
        trs.opp_entity_code,trs.trade_subject,trs.trade_role,trs.status,trs.review_status,trs.start_time,trs.end_time,
        trs.maintain_name
        from trade_role_setting trs left join base_biz_entity bbe on trs.biz_entity_code = bbe.biz_entity_code;
;-- -. . -..- - / . -. - .-. -.--
select trs.id,bbe.id,trs.rule_code,trs.biz_entity_code,bbe.biz_entity_name bizEntityName,bbe.vat_entity_name vatEntityName,
        trs.opp_entity_code,trs.trade_subject,trs.trade_role,trs.status,trs.review_status,trs.start_time,trs.end_time,
        trs.maintain_name;
;-- -. . -..- - / . -. - .-. -.--
select trs.id,bbe.id,trs.rule_code,trs.biz_entity_code,bbe.biz_entity_name bizEntityName,bbe.vat_entity_name vatEntityName,
        trs.opp_entity_code,trs.trade_subject,trs.trade_role,trs.status,trs.review_status,trs.start_time,trs.end_time,
        trs.maintain_name
        from trade_role_setting trs left join base_biz_entity bbe on trs.biz_entity_code = bbe.biz_entity_code;
;-- -. . -..- - / . -. - .-. -.--
select * from trade_role_setting trs left join base_biz_entity bbe on trs.biz_entity_code = bbe.biz_entity_code;
;-- -. . -..- - / . -. - .-. -.--
select trs.id,bbe.id,trs.rule_code,trs.biz_entity_code,bbe.biz_entity_name bizEntityName,bbe.vat_entity_name vatEntityName,
       trs.opp_entity_code,trs.trade_subject,trs.trade_role,trs.status,trs.review_status,trs.start_time,trs.end_time,
       trs.maintain_name from trade_role_setting trs left join base_biz_entity bbe on trs.biz_entity_code = bbe.biz_entity_code;
;-- -. . -..- - / . -. - .-. -.--
SELECT id,product_code,product_name,product_first_category,product_sec_category,product_third_category,product_type,production_entity,product_line,trade_subject,maintain_name,create_time,update_time FROM base_product_line WHERE (product_code IS NOT NULL OR product_code <> '');
;-- -. . -..- - / . -. - .-. -.--
SELECT id,product_code,product_name,product_first_category,product_sec_category,product_third_category,product_type,production_entity,product_line,trade_subject,maintain_name,create_time,update_time FROM base_product_line WHERE (product_code IS NOT NULL and product_code <> '');
;-- -. . -..- - / . -. - .-. -.--
select count(1) from d16_t_gl_balances where com_code='06' and recogn_flag is not null  and recogn_flag !='I';
;-- -. . -..- - / . -. - .-. -.--
select count(1) from d16_t_gl_balances where com_code='06' and  recogn_flag ='I';