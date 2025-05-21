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