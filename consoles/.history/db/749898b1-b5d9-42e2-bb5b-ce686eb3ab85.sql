SELECT id,
       bill_id,
       recipe_code,
       department_name,
       pick_up_no,
       hospital_code,
       hospital_name,
       health_card_no,
       patient_name,
       prescription_time,
       remark,
       commit,
       auto_fill,
       recipient_tel,
       customer_id,
       delivery_type,
       delivery_status,
       state_id,
       qr_code,
       qr_code_sign_for,
       add_ice_bag,
       is_push_delivery,
       create_time,
       update_time,
       pick_up_tel,
       belong,
       arrived_hospital_time,
       recipient_code,
       reminded_pick_up,
       commit_time,
       decoction_money,
       pay_status,
       total_package_paste,
       boil_type,
       carry_type
FROM prescription_info
WHERE (customer_id = '1673884108486930566' AND commit = true) and recipe_code='20250429017';
;-- -. . -..- - / . -. - .-. -.--
SELECT md_user_id,
       nick_name,
       name,
       phone,
       md_group_id,
       source_type,
       existing_integral,
       surplus_money,
       pay_integral,
       total_integral,
       order_amount,
       order_total_money,
       vip_grade,
       last_login_time,
       del_flag,
       created_time,
       source_created_time,
       source_id,
       mailbox,
       id_card,
       gender,
       birthday,
       base_creator,
       base_last_modifier,
       base_application_id,
       base_org_id,
       md_other_user_id,
       once_token,
       employee_number,
       freeze_integral,
       open_id,
       user_type,
       login_name,
       subaccount,
       dept_name,
       dept_id,
       verification_code,
       oa_once_token,
       black_flag,
       org_id,
       last_order_time,
       ncc_org_id,
       ncc_dept_id,
       ncc_type,
       second_phone
FROM md_user
WHERE (phone = '13625655981' AND source_type = 8;
;-- -. . -..- - / . -. - .-. -.--
create index idx_phone on md_user(phone);
;-- -. . -..- - / . -. - .-. -.--
SELECT md_user_id,
       nick_name,
       name,
       phone,
       md_group_id,
       source_type,
       existing_integral,
       surplus_money,
       pay_integral,
       total_integral,
       order_amount,
       order_total_money,
       vip_grade,
       last_login_time,
       del_flag,
       created_time,
       source_created_time,
       source_id,
       mailbox,
       id_card,
       gender,
       birthday,
       base_creator,
       base_last_modifier,
       base_application_id,
       base_org_id,
       md_other_user_id,
       once_token,
       employee_number,
       freeze_integral,
       open_id,
       user_type,
       login_name,
       subaccount,
       dept_name,
       dept_id,
       verification_code,
       oa_once_token,
       black_flag,
       org_id,
       last_order_time,
       ncc_org_id,
       ncc_dept_id,
       ncc_type,
       second_phone
FROM md_user
WHERE (phone = '13625655981' AND source_type = 8);
;-- -. . -..- - / . -. - .-. -.--
explain SELECT phone
FROM md_user
WHERE (phone = '13625655981' AND source_type = 8);
;-- -. . -..- - / . -. - .-. -.--
SELECT phone
FROM md_user
WHERE (phone = '13625655981' AND source_type = 8);
;-- -. . -..- - / . -. - .-. -.--
select * from prescription_info pi where pi.hospital_code=1001 order by id desc;
;-- -. . -..- - / . -. - .-. -.--
select * from prescription_info pi where pi.hospital_code='sz' order by id desc;
;-- -. . -..- - / . -. - .-. -.--
select * from hospital;
;-- -. . -..- - / . -. - .-. -.--
update prescription_info set commit=0,auto_fill=null,customer_id=null,delivery_type=null,delivery_status=null,pay_status=0
                         where recipe_code in ('20250429029','20250429027');
;-- -. . -..- - / . -. - .-. -.--
update prescription_info set commit=0,auto_fill=null,customer_id=null,delivery_type=null,delivery_status=null,pay_status=0
                         ,create_time=now()
                         where recipe_code in ('20250429029','20250429027');
;-- -. . -..- - / . -. - .-. -.--
select * from prescription_info pi where pi.hospital_code='SZ' order by id desc;