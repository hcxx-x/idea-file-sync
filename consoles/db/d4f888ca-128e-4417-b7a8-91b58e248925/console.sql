alter table trade_role_setting
    add column status varchar(16) default null comment '状态（要结合启停时间判断）;Normal-正常；Closed-停用' after trade_role;


select *
from d16_t_gl_balances
where com_code = '01'
  and inter_code in ('02', '06')
limit 1;


select *
from trade_role_setting trs
         left join base_biz_entity bbe on trs.biz_entity_code = bbe.biz_entity_code



SELECT id,
       product_code,
       product_name,
       product_first_category,
       product_sec_category,
       product_third_category,
       product_type,
       production_entity,
       product_line,
       trade_subject,
       maintain_name,
       create_time,
       update_time
FROM base_product_line
WHERE (product_code IS NOT NULL and product_code <> '')



select count(1)
from d16_t_gl_balances
where com_code = '06'
  and recogn_flag = 'I'


select currentPeriodCount, currentPeriodCount - lastPeriodCount as increment
from (
         (select count(distinct inter_entity_code) as currentPeriodCount
          from report_trade_detail
          where period_name between '2020-01' and '2020-06'
            and biz_entity_code = '01'
            and revenue_operating != 0) as t1 ,

         (select count(distinct inter_entity_code) as lastPeriodCount
          from report_trade_detail
          where period_name between '2020-01' and '2020-05'
            and biz_entity_code = '01'
            and revenue_operating != 0) as t2
         )

