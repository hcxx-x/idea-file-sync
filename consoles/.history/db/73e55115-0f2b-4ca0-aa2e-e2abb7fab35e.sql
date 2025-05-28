select count(1) from d16_t_gl_balances where com_code='06' and recogn_flag is not null  and recogn_flag !='INIT';
;-- -. . -..- - / . -. - .-. -.--
select count(1) from d16_t_gl_balances where com_code='06' and recogn_flag is not null  and recogn_flag !='I';