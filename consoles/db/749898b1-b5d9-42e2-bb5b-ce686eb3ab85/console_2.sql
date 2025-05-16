select * from hospital;
-- 1001,1002 省中，sz 市中


select * from prescription_info pi where pi.hospital_code='SZ' order by id desc;

-- 重置处方   张测试数据
update prescription_info set commit=0,auto_fill=null,customer_id=null,delivery_type=null,delivery_status=null,pay_status=0
                         ,create_time=now()
                         where recipe_code in ('20250429029','20250429027')