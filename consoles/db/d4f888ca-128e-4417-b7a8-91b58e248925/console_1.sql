select trs.id,bbe.id,trs.rule_code,trs.biz_entity_code,bbe.biz_entity_name bizEntityName,bbe.vat_entity_name vatEntityName,
       trs.opp_entity_code,trs.trade_subject,trs.trade_role,trs.status,trs.review_status,trs.start_time,trs.end_time,
       trs.maintain_name from trade_role_setting trs left join base_biz_entity bbe on trs.biz_entity_code = bbe.biz_entity_code