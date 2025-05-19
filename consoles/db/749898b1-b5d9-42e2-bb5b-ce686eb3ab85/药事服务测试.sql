select * from hospital;
-- 1001,1002 省中，sz 市中


select * from prescription_info pi where pi.hospital_code like '1001%' order by id desc;

-- 重置处方 市中   张测试数据
update prescription_info set commit=0,auto_fill=null,customer_id=null,delivery_type=null,delivery_status=null,pay_status=0
                         ,create_time='2099-01-01'
                         where recipe_code in ('20250429029','20250429027');

select * from prescription_info where recipe_code in ('20250429029','20250429027');
-- 省中  张测试数据
update prescription_info set commit=0,auto_fill=null,customer_id=null,delivery_type=null,delivery_status=null,pay_status=0
                           ,create_time='2099-01-01'
where bill_id in ('20240614005');

select * from prescription_info where bill_id in ('20240614005');

-- 妇幼  李测试数据
update prescription_info set commit=0,auto_fill=null,customer_id=null,delivery_type=null,delivery_status=null,pay_status=0
                           ,create_time='2099-01-01'
where bill_id in ('20250429020','20250429021')
