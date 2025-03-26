INSERT INTO `prescription`.`hospital` (`id`, `hospital_code`, `hospital_name`, `channel_code`, `mobile`, `address`, `receive_default_address`, `package_price`) VALUES (9, '009', '昆明市妇幼保健院', '430734', '', '', 0, 1.50);
;-- -. . -..- - / . -. - .-. -.--
SELECT id,hospital_code,hospital_name,mch_id,secret_key,private_key,public_key,pay_public_key,version,day_limit,create_time,creator_id,update_time,updater_id FROM merchant_info WHERE (hospital_code = 009);
;-- -. . -..- - / . -. - .-. -.--
SELECT id,hospital_code,hospital_name,mch_id,secret_key,private_key,public_key,pay_public_key,version,day_limit,create_time,creator_id,update_time,updater_id FROM merchant_info WHERE (hospital_code = '009');