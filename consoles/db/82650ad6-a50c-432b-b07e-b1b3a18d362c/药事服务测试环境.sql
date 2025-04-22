SELECT id,hospital_code,hospital_name,mch_id,secret_key,private_key,public_key,pay_public_key,version,day_limit,create_time,creator_id,update_time,updater_id FROM merchant_info WHERE (hospital_code = '009')

select (@i:=@i+1) as rownum from DUAL, (select @i:=100) as init;