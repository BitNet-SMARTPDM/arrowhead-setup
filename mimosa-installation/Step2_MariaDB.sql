-- MariaDB #2 Script to create foreign keys.
--
--
--  ALTER TABLE enterprise_type ADD CONSTRAINT FK1261 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
-- ;
  ALTER TABLE enterprise_type ADD CONSTRAINT FK1262 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
--  ALTER TABLE enterprise_type ADD CONSTRAINT FK1286 FOREIGN KEY(ent_db_site,ent_db_id) REFERENCES site_database(db_site,db_id)
-- ;
  ALTER TABLE enterprise ADD CONSTRAINT FK1276 FOREIGN KEY(ent_db_site,ent_db_id,ent_type_code) REFERENCES enterprise_type(ent_db_site,ent_db_id,ent_type_code)
 ;
--  ALTER TABLE enterprise ADD CONSTRAINT FK1259 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
-- ;
  ALTER TABLE enterprise ADD CONSTRAINT FK1260 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
--  ALTER TABLE site_type ADD CONSTRAINT FK1270 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
-- ;
  ALTER TABLE site_type ADD CONSTRAINT FK1271 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
--  ALTER TABLE site_type ADD CONSTRAINT FK1287 FOREIGN KEY(st_db_site,st_db_id) REFERENCES site_database(db_site,db_id)
-- ;
  ALTER TABLE site_type_child ADD CONSTRAINT FK1272 FOREIGN KEY(st_db_site,st_db_id,st_type_code) REFERENCES site_type(st_db_site,st_db_id,st_type_code)
 ;
  ALTER TABLE site_type_child ADD CONSTRAINT FK1273 FOREIGN KEY(child_st_db_site,child_st_db_id,child_st_type_code) REFERENCES site_type(st_db_site,st_db_id,st_type_code)
 ;
--  ALTER TABLE site_type_child ADD CONSTRAINT FK1274 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
-- ;
  ALTER TABLE site_type_child ADD CONSTRAINT FK1275 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE site ADD CONSTRAINT FK1266 FOREIGN KEY(st_db_site,st_db_id,st_type_code) REFERENCES site_type(st_db_site,st_db_id,st_type_code)
 ;
  ALTER TABLE site ADD CONSTRAINT FK1267 FOREIGN KEY(enterprise_id) REFERENCES enterprise(enterprise_id)
 ;
--  ALTER TABLE site ADD CONSTRAINT FK1268 FOREIGN KEY(segment_site,segment_id) REFERENCES segment(segment_site,segment_id)
-- ;
  ALTER TABLE site ADD CONSTRAINT FK920 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
--  ALTER TABLE site_database ADD CONSTRAINT FK1269 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
-- ;
  ALTER TABLE site_database ADD CONSTRAINT FK921 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE site_database ADD CONSTRAINT FK922 FOREIGN KEY(db_site) REFERENCES site(site_code)
 ;
  ALTER TABLE manufacturer ADD CONSTRAINT FK355 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE manufacturer ADD CONSTRAINT FK356 FOREIGN KEY(mf_db_site,mf_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE manufacturer ADD CONSTRAINT FK357 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE segment_type ADD CONSTRAINT FK697 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE segment_type ADD CONSTRAINT FK698 FOREIGN KEY(sg_db_site,sg_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE segment_type ADD CONSTRAINT FK699 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE segment_type_child ADD CONSTRAINT FK700 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE segment_type_child ADD CONSTRAINT FK701 FOREIGN KEY(sg_db_site,sg_db_id,sg_type_code) REFERENCES segment_type(sg_db_site,sg_db_id,sg_type_code)
 ;
  ALTER TABLE segment_type_child ADD CONSTRAINT FK702 FOREIGN KEY(child_sg_db_site,child_sg_db_id,child_sg_type_code) REFERENCES segment_type(sg_db_site,sg_db_id,sg_type_code)
 ;
  ALTER TABLE segment_type_child ADD CONSTRAINT FK703 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE segment ADD CONSTRAINT FK655 FOREIGN KEY(segment_site) REFERENCES site(site_code)
 ;
  ALTER TABLE segment ADD CONSTRAINT FK1658 FOREIGN KEY(cs_type_db_site,cs_type_db_id,cs_type_code) REFERENCES criticality_scale_type(cs_type_db_site,cs_type_db_id,cs_type_code)
 ;
  ALTER TABLE segment ADD CONSTRAINT FK653 FOREIGN KEY(sg_db_site,sg_db_id,sg_type_code) REFERENCES segment_type(sg_db_site,sg_db_id,sg_type_code)
 ;
  ALTER TABLE segment ADD CONSTRAINT FK656 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE segment ADD CONSTRAINT FK654 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE purchase_cond_type ADD CONSTRAINT FK604 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE purchase_cond_type ADD CONSTRAINT FK605 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE purchase_cond_type ADD CONSTRAINT FK606 FOREIGN KEY(pc_db_site,pc_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE as_readiness_type ADD CONSTRAINT FK131 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE as_readiness_type ADD CONSTRAINT FK132 FOREIGN KEY(asr_db_site,asr_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE as_readiness_type ADD CONSTRAINT FK133 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE mloc_calc_type ADD CONSTRAINT FK435 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE mloc_calc_type ADD CONSTRAINT FK436 FOREIGN KEY(mc_db_site,mc_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE mloc_calc_type ADD CONSTRAINT FK437 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE segment_child ADD CONSTRAINT FK662 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE segment_child ADD CONSTRAINT FK663 FOREIGN KEY(segment_site,segment_id) REFERENCES segment(segment_site,segment_id)
 ;
  ALTER TABLE segment_child ADD CONSTRAINT FK664 FOREIGN KEY(child_sg_site,child_sg_id) REFERENCES segment(segment_site,segment_id)
 ;
  ALTER TABLE segment_child ADD CONSTRAINT FK665 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE ref_unit_type ADD CONSTRAINT FK629 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE ref_unit_type ADD CONSTRAINT FK630 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE eng_unit_type ADD CONSTRAINT FK339 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE eng_unit_type ADD CONSTRAINT FK340 FOREIGN KEY(ru_type_code) REFERENCES ref_unit_type(ru_type_code)
 ;
  ALTER TABLE eng_unit_type ADD CONSTRAINT FK341 FOREIGN KEY(eu_db_site,eu_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE eng_unit_type ADD CONSTRAINT FK342 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE eng_unit_enum ADD CONSTRAINT FK336 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE eng_unit_enum ADD CONSTRAINT FK337 FOREIGN KEY(eu_db_site,eu_db_id,eu_type_code) REFERENCES eng_unit_type(eu_db_site,eu_db_id,eu_type_code)
 ;
  ALTER TABLE eng_unit_enum ADD CONSTRAINT FK338 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE sg_num_dat_type ADD CONSTRAINT FK772 FOREIGN KEY(default_ru_type) REFERENCES ref_unit_type(ru_type_code)
 ;
  ALTER TABLE sg_num_dat_type ADD CONSTRAINT FK773 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE sg_num_dat_type ADD CONSTRAINT FK774 FOREIGN KEY(sn_db_site,sn_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE sg_num_dat_type ADD CONSTRAINT FK775 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE sg_chr_dat_type ADD CONSTRAINT FK709 FOREIGN KEY(default_ru_type) REFERENCES ref_unit_type(ru_type_code)
 ;
  ALTER TABLE sg_chr_dat_type ADD CONSTRAINT FK710 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE sg_chr_dat_type ADD CONSTRAINT FK711 FOREIGN KEY(sc_db_site,sc_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE sg_chr_dat_type ADD CONSTRAINT FK712 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE segment_num_data ADD CONSTRAINT FK692 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE segment_num_data ADD CONSTRAINT FK693 FOREIGN KEY(segment_site,segment_id) REFERENCES segment(segment_site,segment_id)
 ;
  ALTER TABLE segment_num_data ADD CONSTRAINT FK694 FOREIGN KEY(sn_db_site,sn_db_id,sn_type_code) REFERENCES sg_num_dat_type(sn_db_site,sn_db_id,sn_type_code)
 ;
  ALTER TABLE segment_num_data ADD CONSTRAINT FK695 FOREIGN KEY(eu_db_site,eu_db_id,eu_type_code) REFERENCES eng_unit_type(eu_db_site,eu_db_id,eu_type_code)
 ;
  ALTER TABLE segment_num_data ADD CONSTRAINT FK696 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE segment_chr_data ADD CONSTRAINT FK666 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE segment_chr_data ADD CONSTRAINT FK667 FOREIGN KEY(segment_site,segment_id) REFERENCES segment(segment_site,segment_id)
 ;
  ALTER TABLE segment_chr_data ADD CONSTRAINT FK668 FOREIGN KEY(sc_db_site,sc_db_id,sc_type_code) REFERENCES sg_chr_dat_type(sc_db_site,sc_db_id,sc_type_code)
 ;
  ALTER TABLE segment_chr_data ADD CONSTRAINT FK669 FOREIGN KEY(eu_db_site,eu_db_id,eu_type_code) REFERENCES eng_unit_type(eu_db_site,eu_db_id,eu_type_code)
 ;
  ALTER TABLE segment_chr_data ADD CONSTRAINT FK670 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE sg_as_event_type ADD CONSTRAINT FK706 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE sg_as_event_type ADD CONSTRAINT FK707 FOREIGN KEY(ev_db_site,ev_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE sg_as_event_type ADD CONSTRAINT FK708 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE segment_event ADD CONSTRAINT FK671 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE segment_event ADD CONSTRAINT FK672 FOREIGN KEY(segment_site,segment_id) REFERENCES segment(segment_site,segment_id)
 ;
  ALTER TABLE segment_event ADD CONSTRAINT FK673 FOREIGN KEY(ev_db_site,ev_db_id,event_type_code) REFERENCES sg_as_event_type(ev_db_site,ev_db_id,event_type_code)
 ;
  ALTER TABLE segment_event ADD CONSTRAINT FK674 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE asset_type ADD CONSTRAINT FK287 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE asset_type ADD CONSTRAINT FK288 FOREIGN KEY(as_db_site,as_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE asset_type ADD CONSTRAINT FK289 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE asset_type_child ADD CONSTRAINT FK290 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE asset_type_child ADD CONSTRAINT FK291 FOREIGN KEY(child_as_db_site,child_as_db_id,child_as_type_code) REFERENCES asset_type(as_db_site,as_db_id,as_type_code)
 ;
  ALTER TABLE asset_type_child ADD CONSTRAINT FK292 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE asset_type_child ADD CONSTRAINT FK293 FOREIGN KEY(as_db_site,as_db_id,as_type_code) REFERENCES asset_type(as_db_site,as_db_id,as_type_code)
 ;
  ALTER TABLE model ADD CONSTRAINT FK467 FOREIGN KEY(mf_db_site,mf_db_id,manuf_code) REFERENCES manufacturer(mf_db_site,mf_db_id,manuf_code)
 ;
  ALTER TABLE model ADD CONSTRAINT FK468 FOREIGN KEY(as_db_site,as_db_id,as_type_code) REFERENCES asset_type(as_db_site,as_db_id,as_type_code)
 ;
  ALTER TABLE model ADD CONSTRAINT FK1430 FOREIGN KEY(segment_site,segment_id) REFERENCES segment(segment_site,segment_id)
 ;
  ALTER TABLE model ADD CONSTRAINT FK469 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE model ADD CONSTRAINT FK470 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE model_child ADD CONSTRAINT FK476 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE model_child ADD CONSTRAINT FK477 FOREIGN KEY(model_db_site,model_db_id,model_id) REFERENCES model(model_db_site,model_db_id,model_id)
 ;
  ALTER TABLE model_child ADD CONSTRAINT FK478 FOREIGN KEY(child_model_db_site,child_model_db_id,child_model_id) REFERENCES model(model_db_site,model_db_id,model_id)
 ;
  ALTER TABLE model_child ADD CONSTRAINT FK479 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE as_num_dat_type ADD CONSTRAINT FK88 FOREIGN KEY(default_ru_type) REFERENCES ref_unit_type(ru_type_code)
 ;
  ALTER TABLE as_num_dat_type ADD CONSTRAINT FK89 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE as_num_dat_type ADD CONSTRAINT FK90 FOREIGN KEY(an_db_site,an_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE as_num_dat_type ADD CONSTRAINT FK91 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE as_chr_dat_type ADD CONSTRAINT FK25 FOREIGN KEY(default_ru_type) REFERENCES ref_unit_type(ru_type_code)
 ;
  ALTER TABLE as_chr_dat_type ADD CONSTRAINT FK26 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE as_chr_dat_type ADD CONSTRAINT FK27 FOREIGN KEY(ac_db_site,ac_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE as_chr_dat_type ADD CONSTRAINT FK28 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE model_num_data ADD CONSTRAINT FK511 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE model_num_data ADD CONSTRAINT FK512 FOREIGN KEY(model_db_site,model_db_id,model_id) REFERENCES model(model_db_site,model_db_id,model_id)
 ;
  ALTER TABLE model_num_data ADD CONSTRAINT FK513 FOREIGN KEY(an_db_site,an_db_id,an_type_code) REFERENCES as_num_dat_type(an_db_site,an_db_id,an_type_code)
 ;
  ALTER TABLE model_num_data ADD CONSTRAINT FK514 FOREIGN KEY(eu_db_site,eu_db_id,eu_type_code) REFERENCES eng_unit_type(eu_db_site,eu_db_id,eu_type_code)
 ;
  ALTER TABLE model_num_data ADD CONSTRAINT FK515 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE model_chr_data ADD CONSTRAINT FK480 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE model_chr_data ADD CONSTRAINT FK481 FOREIGN KEY(model_db_site,model_db_id,model_id) REFERENCES model(model_db_site,model_db_id,model_id)
 ;
  ALTER TABLE model_chr_data ADD CONSTRAINT FK482 FOREIGN KEY(ac_db_site,ac_db_id,ac_type_code) REFERENCES as_chr_dat_type(ac_db_site,ac_db_id,ac_type_code)
 ;
  ALTER TABLE model_chr_data ADD CONSTRAINT FK483 FOREIGN KEY(eu_db_site,eu_db_id,eu_type_code) REFERENCES eng_unit_type(eu_db_site,eu_db_id,eu_type_code)
 ;
  ALTER TABLE model_chr_data ADD CONSTRAINT FK484 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE asset ADD CONSTRAINT FK232 FOREIGN KEY(as_db_site,as_db_id,as_type_code) REFERENCES asset_type(as_db_site,as_db_id,as_type_code)
 ;
  ALTER TABLE asset ADD CONSTRAINT FK1431 FOREIGN KEY(mf_db_site,mf_db_id,manuf_code) REFERENCES manufacturer(mf_db_site,mf_db_id,manuf_code)
 ;
  ALTER TABLE asset ADD CONSTRAINT FK233 FOREIGN KEY(model_db_site,model_db_id,model_id) REFERENCES model(model_db_site,model_db_id,model_id)
 ;
  ALTER TABLE asset ADD CONSTRAINT FK234 FOREIGN KEY(asr_db_site,asr_db_id,asr_type_code) REFERENCES as_readiness_type(asr_db_site,asr_db_id,asr_type_code)
 ;
  ALTER TABLE asset ADD CONSTRAINT FK1463 FOREIGN KEY(segment_site,segment_id) REFERENCES segment(segment_site,segment_id)
 ;
  ALTER TABLE asset ADD CONSTRAINT FK2069 FOREIGN KEY(cs_type_db_site,cs_type_db_id,cs_type_code) REFERENCES criticality_scale_type(cs_type_db_site,cs_type_db_id,cs_type_code)
 ;
  ALTER TABLE asset ADD CONSTRAINT FK235 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE asset ADD CONSTRAINT FK236 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE asset ADD CONSTRAINT FK237 FOREIGN KEY(asset_org_site) REFERENCES site(site_code)
 ;
  ALTER TABLE asset_child ADD CONSTRAINT FK243 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE asset_child ADD CONSTRAINT FK244 FOREIGN KEY(asset_org_site,asset_id) REFERENCES asset(asset_org_site,asset_id)
 ;
  ALTER TABLE asset_child ADD CONSTRAINT FK245 FOREIGN KEY(child_as_site,child_as_id) REFERENCES asset(asset_org_site,asset_id)
 ;
  ALTER TABLE asset_child ADD CONSTRAINT FK246 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE asset_num_data ADD CONSTRAINT FK272 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE asset_num_data ADD CONSTRAINT FK273 FOREIGN KEY(asset_org_site,asset_id) REFERENCES asset(asset_org_site,asset_id)
 ;
  ALTER TABLE asset_num_data ADD CONSTRAINT FK274 FOREIGN KEY(an_db_site,an_db_id,an_type_code) REFERENCES as_num_dat_type(an_db_site,an_db_id,an_type_code)
 ;
  ALTER TABLE asset_num_data ADD CONSTRAINT FK275 FOREIGN KEY(eu_db_site,eu_db_id,eu_type_code) REFERENCES eng_unit_type(eu_db_site,eu_db_id,eu_type_code)
 ;
  ALTER TABLE asset_num_data ADD CONSTRAINT FK1390 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE asset_chr_data ADD CONSTRAINT FK247 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE asset_chr_data ADD CONSTRAINT FK248 FOREIGN KEY(asset_org_site,asset_id) REFERENCES asset(asset_org_site,asset_id)
 ;
  ALTER TABLE asset_chr_data ADD CONSTRAINT FK249 FOREIGN KEY(ac_db_site,ac_db_id,ac_type_code) REFERENCES as_chr_dat_type(ac_db_site,ac_db_id,ac_type_code)
 ;
  ALTER TABLE asset_chr_data ADD CONSTRAINT FK250 FOREIGN KEY(eu_db_site,eu_db_id,eu_type_code) REFERENCES eng_unit_type(eu_db_site,eu_db_id,eu_type_code)
 ;
  ALTER TABLE asset_chr_data ADD CONSTRAINT FK1389 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE asset_event ADD CONSTRAINT FK251 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE asset_event ADD CONSTRAINT FK252 FOREIGN KEY(asset_org_site,asset_id) REFERENCES asset(asset_org_site,asset_id)
 ;
  ALTER TABLE asset_event ADD CONSTRAINT FK253 FOREIGN KEY(ev_db_site,ev_db_id,event_type_code) REFERENCES sg_as_event_type(ev_db_site,ev_db_id,event_type_code)
 ;
  ALTER TABLE asset_event ADD CONSTRAINT FK254 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE asset_on_segment ADD CONSTRAINT FK276 FOREIGN KEY(segment_site,segment_id) REFERENCES segment(segment_site,segment_id)
 ;
  ALTER TABLE asset_on_segment ADD CONSTRAINT FK277 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE asset_on_segment ADD CONSTRAINT FK278 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE asset_on_segment ADD CONSTRAINT FK279 FOREIGN KEY(asset_org_site,asset_id) REFERENCES asset(asset_org_site,asset_id)
 ;
  ALTER TABLE asset_on_segment ADD CONSTRAINT FK2071 FOREIGN KEY(installed_by_agent_site,installed_by_agent_id) REFERENCES agent(org_agent_site,agent_id)
 ;
  ALTER TABLE asset_on_segment ADD CONSTRAINT FK2072 FOREIGN KEY(removed_by_agent_site,removed_by_agent_id) REFERENCES agent(org_agent_site,agent_id)
 ;
  ALTER TABLE asset_owner ADD CONSTRAINT FK280 FOREIGN KEY(purch_from_site) REFERENCES site(site_code)
 ;
  ALTER TABLE asset_owner ADD CONSTRAINT FK281 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE asset_owner ADD CONSTRAINT FK282 FOREIGN KEY(sold_to_site) REFERENCES site(site_code)
 ;
  ALTER TABLE asset_owner ADD CONSTRAINT FK283 FOREIGN KEY(asset_org_site,asset_id) REFERENCES asset(asset_org_site,asset_id)
 ;
  ALTER TABLE asset_owner ADD CONSTRAINT FK284 FOREIGN KEY(pc_db_site,pc_db_id,pc_type_code) REFERENCES purchase_cond_type(pc_db_site,pc_db_id,pc_type_code)
 ;
  ALTER TABLE asset_owner ADD CONSTRAINT FK285 FOREIGN KEY(asr_db_site,asr_db_id,asr_type_code) REFERENCES as_readiness_type(asr_db_site,asr_db_id,asr_type_code)
 ;
  ALTER TABLE asset_owner ADD CONSTRAINT FK286 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE meas_loc_type ADD CONSTRAINT FK379 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE meas_loc_type ADD CONSTRAINT FK380 FOREIGN KEY(ml_db_site,ml_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE meas_loc_type ADD CONSTRAINT FK381 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE data_source_type ADD CONSTRAINT FK329 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE data_source_type ADD CONSTRAINT FK330 FOREIGN KEY(ds_db_site,ds_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE data_source_type ADD CONSTRAINT FK331 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE trans_type ADD CONSTRAINT FK1085 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE trans_type ADD CONSTRAINT FK1086 FOREIGN KEY(tr_db_site,tr_db_id,tr_type_code) REFERENCES asset_type(as_db_site,as_db_id,as_type_code)
 ;
  ALTER TABLE trans_type ADD CONSTRAINT FK1087 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE tr_axis_dir_type ADD CONSTRAINT FK1082 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE tr_axis_dir_type ADD CONSTRAINT FK1083 FOREIGN KEY(ta_db_site,ta_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE tr_axis_dir_type ADD CONSTRAINT FK1084 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE meas_location ADD CONSTRAINT FK382 FOREIGN KEY(asset_org_site,asset_id) REFERENCES asset(asset_org_site,asset_id)
 ;
  ALTER TABLE meas_location ADD CONSTRAINT FK383 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE meas_location ADD CONSTRAINT FK384 FOREIGN KEY(ds_db_site,ds_db_id,ds_type_code) REFERENCES data_source_type(ds_db_site,ds_db_id,ds_type_code)
 ;
  ALTER TABLE meas_location ADD CONSTRAINT FK385 FOREIGN KEY(tr_db_site,tr_db_id,tr_type_code) REFERENCES trans_type(tr_db_site,tr_db_id,tr_type_code)
 ;
  ALTER TABLE meas_location ADD CONSTRAINT FK386 FOREIGN KEY(ta_db_site,ta_db_id,ta_type_code) REFERENCES tr_axis_dir_type(ta_db_site,ta_db_id,ta_type_code)
 ;
  ALTER TABLE meas_location ADD CONSTRAINT FK387 FOREIGN KEY(mc_db_site,mc_db_id,mc_type_code) REFERENCES mloc_calc_type(mc_db_site,mc_db_id,mc_type_code)
 ;
  ALTER TABLE meas_location ADD CONSTRAINT FK2108 FOREIGN KEY(ml_eu_db_site,ml_eu_db_id,ml_eu_type_code) REFERENCES eng_unit_type(eu_db_site,eu_db_id,eu_type_code)
 ;
  ALTER TABLE meas_location ADD CONSTRAINT FK388 FOREIGN KEY(int_eu_db_site,int_eu_db_id,int_eu_type_code) REFERENCES eng_unit_type(eu_db_site,eu_db_id,eu_type_code)
 ;
  ALTER TABLE meas_location ADD CONSTRAINT FK389 FOREIGN KEY(dur_eu_db_site,dur_eu_db_id,dur_eu_type_code) REFERENCES eng_unit_type(eu_db_site,eu_db_id,eu_type_code)
 ;
  ALTER TABLE meas_location ADD CONSTRAINT FK390 FOREIGN KEY(ml_db_site,ml_db_id,ml_type_code) REFERENCES meas_loc_type(ml_db_site,ml_db_id,ml_type_code)
 ;
  ALTER TABLE meas_location ADD CONSTRAINT FK1256 FOREIGN KEY(meas_loc_site) REFERENCES site(site_code)
 ;
  ALTER TABLE meas_location ADD CONSTRAINT FK1257 FOREIGN KEY(segment_site,segment_id) REFERENCES segment(segment_site,segment_id)
 ;
  ALTER TABLE meas_location ADD CONSTRAINT FK1258 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE ordered_list ADD CONSTRAINT FK581 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE ordered_list ADD CONSTRAINT FK582 FOREIGN KEY(ord_list_db_site,ord_list_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE ordered_list ADD CONSTRAINT FK583 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE meas_loc_list ADD CONSTRAINT FK375 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE meas_loc_list ADD CONSTRAINT FK376 FOREIGN KEY(ord_list_db_site,ord_list_db_id,ord_list_id) REFERENCES ordered_list(ord_list_db_site,ord_list_db_id,ord_list_id)
 ;
  ALTER TABLE meas_loc_list ADD CONSTRAINT FK377 FOREIGN KEY(meas_loc_site,meas_loc_id) REFERENCES meas_location(meas_loc_site,meas_loc_id)
 ;
  ALTER TABLE meas_loc_list ADD CONSTRAINT FK378 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE mloc_unit_list ADD CONSTRAINT FK462 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE mloc_unit_list ADD CONSTRAINT FK463 FOREIGN KEY(ord_list_db_site,ord_list_db_id,ord_list_id) REFERENCES ordered_list(ord_list_db_site,ord_list_db_id,ord_list_id)
 ;
  ALTER TABLE mloc_unit_list ADD CONSTRAINT FK464 FOREIGN KEY(meas_loc_site,meas_loc_id) REFERENCES meas_location(meas_loc_site,meas_loc_id)
 ;
  ALTER TABLE mloc_unit_list ADD CONSTRAINT FK465 FOREIGN KEY(eu_db_site,eu_db_id,eu_type_code) REFERENCES eng_unit_type(eu_db_site,eu_db_id,eu_type_code)
 ;
  ALTER TABLE mloc_unit_list ADD CONSTRAINT FK466 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE data_source ADD CONSTRAINT FK326 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE data_source ADD CONSTRAINT FK327 FOREIGN KEY(ds_db_site,ds_db_id,ds_type_code) REFERENCES data_source_type(ds_db_site,ds_db_id,ds_type_code)
 ;
  ALTER TABLE data_source ADD CONSTRAINT FK328 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE transducer ADD CONSTRAINT FK1088 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE transducer ADD CONSTRAINT FK1089 FOREIGN KEY(tr_asset_site,tr_asset_id) REFERENCES asset(asset_org_site,asset_id)
 ;
  ALTER TABLE transducer ADD CONSTRAINT FK1090 FOREIGN KEY(tr_db_site,tr_db_id,tr_type_code) REFERENCES trans_type(tr_db_site,tr_db_id,tr_type_code)
 ;
  ALTER TABLE transducer ADD CONSTRAINT FK1091 FOREIGN KEY(out_eu_db_site,out_eu_db_id,out_eu_type_code) REFERENCES eng_unit_type(eu_db_site,eu_db_id,eu_type_code)
 ;
  ALTER TABLE transducer ADD CONSTRAINT FK1092 FOREIGN KEY(per_eu_db_site,per_eu_db_id,per_eu_type_code) REFERENCES eng_unit_type(eu_db_site,eu_db_id,eu_type_code)
 ;
  ALTER TABLE transducer ADD CONSTRAINT FK1093 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE data_qual_type ADD CONSTRAINT FK324 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE data_qual_type ADD CONSTRAINT FK325 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE meas_event ADD CONSTRAINT FK358 FOREIGN KEY(asset_org_site,asset_id) REFERENCES asset(asset_org_site,asset_id)
 ;
  ALTER TABLE meas_event ADD CONSTRAINT FK359 FOREIGN KEY(dqual_type_code) REFERENCES data_qual_type(dqual_type_code)
 ;
  ALTER TABLE meas_event ADD CONSTRAINT FK360 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE meas_event ADD CONSTRAINT FK361 FOREIGN KEY(meas_loc_site,meas_loc_id) REFERENCES meas_location(meas_loc_site,meas_loc_id)
 ;
  ALTER TABLE meas_event ADD CONSTRAINT FK362 FOREIGN KEY(ds_asset_site,ds_asset_id) REFERENCES data_source(ds_asset_site,ds_asset_id)
 ;
  ALTER TABLE meas_event ADD CONSTRAINT FK363 FOREIGN KEY(tr_asset_site,tr_asset_id) REFERENCES transducer(tr_asset_site,tr_asset_id)
 ;
  ALTER TABLE meas_event ADD CONSTRAINT FK364 FOREIGN KEY(ml_db_site,ml_db_id,ml_type_code) REFERENCES meas_loc_type(ml_db_site,ml_db_id,ml_type_code)
 ;
  ALTER TABLE meas_event ADD CONSTRAINT FK365 FOREIGN KEY(mc_db_site,mc_db_id,mc_type_code) REFERENCES mloc_calc_type(mc_db_site,mc_db_id,mc_type_code)
 ;
  ALTER TABLE meas_event ADD CONSTRAINT FK366 FOREIGN KEY(dur_eu_db_site,dur_eu_db_id,dur_eu_type_code) REFERENCES eng_unit_type(eu_db_site,eu_db_id,eu_type_code)
 ;
  ALTER TABLE meas_event ADD CONSTRAINT FK367 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE meas_event_assoc ADD CONSTRAINT FK368 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE meas_event_assoc ADD CONSTRAINT FK369 FOREIGN KEY(meas_loc_site,meas_loc_id,gmt_event) REFERENCES meas_event(meas_loc_site,meas_loc_id,gmt_event)
 ;
  ALTER TABLE meas_event_assoc ADD CONSTRAINT FK370 FOREIGN KEY(related_mloc_site,related_mloc_id,related_gmt_event) REFERENCES meas_event(meas_loc_site,meas_loc_id,gmt_event)
 ;
  ALTER TABLE meas_event_assoc ADD CONSTRAINT FK371 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE meas_event_rem ADD CONSTRAINT FK372 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE meas_event_rem ADD CONSTRAINT FK373 FOREIGN KEY(meas_loc_site,meas_loc_id,gmt_event) REFERENCES meas_event(meas_loc_site,meas_loc_id,gmt_event)
 ;
  ALTER TABLE meas_event_rem ADD CONSTRAINT FK374 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE mevent_num_data ADD CONSTRAINT FK418 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE mevent_num_data ADD CONSTRAINT FK419 FOREIGN KEY(meas_loc_site,meas_loc_id,gmt_event) REFERENCES meas_event(meas_loc_site,meas_loc_id,gmt_event)
 ;
  ALTER TABLE mevent_num_data ADD CONSTRAINT FK420 FOREIGN KEY(eu_db_site,eu_db_id,eu_type_code) REFERENCES eng_unit_type(eu_db_site,eu_db_id,eu_type_code)
 ;
  ALTER TABLE mevent_num_data ADD CONSTRAINT FK1394 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE mevent_chr_data ADD CONSTRAINT FK413 FOREIGN KEY(meas_loc_site,meas_loc_id,gmt_event) REFERENCES meas_event(meas_loc_site,meas_loc_id,gmt_event)
 ;
  ALTER TABLE mevent_chr_data ADD CONSTRAINT FK414 FOREIGN KEY(eu_db_site,eu_db_id,eu_type_code) REFERENCES eng_unit_type(eu_db_site,eu_db_id,eu_type_code)
 ;
  ALTER TABLE mevent_chr_data ADD CONSTRAINT FK415 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE mevent_chr_data ADD CONSTRAINT FK1391 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE severity_level_type ADD CONSTRAINT FK1397 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE severity_level_type ADD CONSTRAINT FK1398 FOREIGN KEY(severity_lev_db_site,severity_lev_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE severity_level_type ADD CONSTRAINT FK1399 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE alarm_type ADD CONSTRAINT FK22 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE alarm_type ADD CONSTRAINT FK23 FOREIGN KEY(al_db_site,al_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE alarm_type ADD CONSTRAINT FK1406 FOREIGN KEY(severity_lev_db_site,severity_lev_db_id,severity_lev_type_code) REFERENCES severity_level_type(severity_lev_db_site,severity_lev_db_id,severity_lev_type_code)
 ;
  ALTER TABLE alarm_type ADD CONSTRAINT FK24 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE num_alarm_reg ADD CONSTRAINT FK1715 FOREIGN KEY(alarm_db_site,alarm_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE num_alarm_reg ADD CONSTRAINT FK2109 FOREIGN KEY(meas_loc_site,meas_loc_id) REFERENCES meas_location(meas_loc_site,meas_loc_id)
 ;
  ALTER TABLE num_alarm_reg ADD CONSTRAINT FK543 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE num_alarm_reg ADD CONSTRAINT FK545 FOREIGN KEY(al_db_site,al_db_id,al_type_code) REFERENCES alarm_type(al_db_site,al_db_id,al_type_code)
 ;
  ALTER TABLE num_alarm_reg ADD CONSTRAINT FK546 FOREIGN KEY(eu_db_site,eu_db_id,eu_type_code) REFERENCES eng_unit_type(eu_db_site,eu_db_id,eu_type_code)
 ;
  ALTER TABLE num_alarm_reg ADD CONSTRAINT FK1228 FOREIGN KEY(ml_db_site,ml_db_id,ml_type_code) REFERENCES meas_loc_type(ml_db_site,ml_db_id,ml_type_code)
 ;
  ALTER TABLE num_alarm_reg ADD CONSTRAINT FK1229 FOREIGN KEY(mc_db_site,mc_db_id,mc_type_code) REFERENCES mloc_calc_type(mc_db_site,mc_db_id,mc_type_code)
 ;
  ALTER TABLE num_alarm_reg ADD CONSTRAINT FK1395 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE agent_type ADD CONSTRAINT FK16 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE agent_type ADD CONSTRAINT FK17 FOREIGN KEY(agent_db_site,agent_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE agent_type ADD CONSTRAINT FK18 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE agent ADD CONSTRAINT FK1 FOREIGN KEY(agent_db_site,agent_db_id,agent_type_code) REFERENCES agent_type(agent_db_site,agent_db_id,agent_type_code)
 ;
  ALTER TABLE agent ADD CONSTRAINT FK1633 FOREIGN KEY(asset_org_site,asset_id) REFERENCES asset(asset_org_site,asset_id)
 ;
  ALTER TABLE agent ADD CONSTRAINT FK2 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE agent ADD CONSTRAINT FK3 FOREIGN KEY(org_agent_site) REFERENCES site(site_code)
 ;
  ALTER TABLE agent ADD CONSTRAINT FK4 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE src_detect_type ADD CONSTRAINT FK1033 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE src_detect_type ADD CONSTRAINT FK1034 FOREIGN KEY(src_dt_db_site,src_dt_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE src_detect_type ADD CONSTRAINT FK1035 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE post_scaling_type ADD CONSTRAINT FK599 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE post_scaling_type ADD CONSTRAINT FK600 FOREIGN KEY(pst_sc_db_site,pst_sc_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE post_scaling_type ADD CONSTRAINT FK601 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE mevent_num_alarm ADD CONSTRAINT FK416 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE mevent_num_alarm ADD CONSTRAINT FK417 FOREIGN KEY(al_db_site,al_db_id,al_type_code) REFERENCES alarm_type(al_db_site,al_db_id,al_type_code)
 ;
  ALTER TABLE mevent_num_alarm ADD CONSTRAINT FK1392 FOREIGN KEY(meas_loc_site,meas_loc_id,gmt_event,eu_db_site,eu_db_id,eu_type_code) REFERENCES mevent_num_data(meas_loc_site,meas_loc_id,gmt_event,eu_db_site,eu_db_id,eu_type_code)
 ;
  ALTER TABLE mevent_num_alarm ADD CONSTRAINT FK1393 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE num_al_assoc_reg ADD CONSTRAINT FK539 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE num_al_assoc_reg ADD CONSTRAINT FK540 FOREIGN KEY(alarm_db_site,alarm_db_id,al_meas_loc_site,al_meas_loc_id,al_ordering_seq) REFERENCES num_alarm_reg(alarm_db_site,alarm_db_id,meas_loc_site,meas_loc_id,ordering_seq)
 ;
  ALTER TABLE num_al_assoc_reg ADD CONSTRAINT FK541 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE num_al_assoc_reg ADD CONSTRAINT FK542 FOREIGN KEY(meas_loc_site,meas_loc_id,gmt_event,eu_db_site,eu_db_id,eu_type_code,al_db_site,al_db_id,al_type_code) REFERENCES mevent_num_alarm(meas_loc_site,meas_loc_id,gmt_event,eu_db_site,eu_db_id,eu_type_code,al_db_site,al_db_id,al_type_code)
 ;
  ALTER TABLE spa_alarm_reg ADD CONSTRAINT FK1025 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE spa_alarm_reg ADD CONSTRAINT FK1026 FOREIGN KEY(alarm_db_site,alarm_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE spa_alarm_reg ADD CONSTRAINT FK1027 FOREIGN KEY(meas_loc_site,meas_loc_id) REFERENCES meas_location(meas_loc_site,meas_loc_id)
 ;
  ALTER TABLE spa_alarm_reg ADD CONSTRAINT FK1028 FOREIGN KEY(al_db_site,al_db_id,al_type_code) REFERENCES alarm_type(al_db_site,al_db_id,al_type_code)
 ;
  ALTER TABLE spa_alarm_reg ADD CONSTRAINT FK1029 FOREIGN KEY(eu_db_site,eu_db_id,eu_type_code) REFERENCES eng_unit_type(eu_db_site,eu_db_id,eu_type_code)
 ;
  ALTER TABLE spa_alarm_reg ADD CONSTRAINT FK1030 FOREIGN KEY(pst_sc_db_site,pst_sc_db_id,pst_sc_type_code) REFERENCES post_scaling_type(pst_sc_db_site,pst_sc_db_id,pst_sc_type_code)
 ;
  ALTER TABLE spa_alarm_reg ADD CONSTRAINT FK1031 FOREIGN KEY(src_dt_db_site,src_dt_db_id,src_dt_type_code) REFERENCES src_detect_type(src_dt_db_site,src_dt_db_id,src_dt_type_code)
 ;
  ALTER TABLE spa_alarm_reg ADD CONSTRAINT FK1032 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE spa_alarm_reg ADD CONSTRAINT FK1230 FOREIGN KEY(ml_db_site,ml_db_id,ml_type_code) REFERENCES meas_loc_type(ml_db_site,ml_db_id,ml_type_code)
 ;
  ALTER TABLE spa_alarm_reg ADD CONSTRAINT FK1231 FOREIGN KEY(mc_db_site,mc_db_id,mc_type_code) REFERENCES mloc_calc_type(mc_db_site,mc_db_id,mc_type_code)
 ;
  ALTER TABLE signal_proc_type ADD CONSTRAINT FK917 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE signal_proc_type ADD CONSTRAINT FK918 FOREIGN KEY(sp_db_site,sp_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE signal_proc_type ADD CONSTRAINT FK919 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE signal_proc_blk ADD CONSTRAINT FK913 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE signal_proc_blk ADD CONSTRAINT FK914 FOREIGN KEY(sp_blk_db_site,sp_blk_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE signal_proc_blk ADD CONSTRAINT FK915 FOREIGN KEY(sp_db_site,sp_db_id,sp_type_code) REFERENCES signal_proc_type(sp_db_site,sp_db_id,sp_type_code)
 ;
  ALTER TABLE signal_proc_blk ADD CONSTRAINT FK916 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE sp_num_dat_type ADD CONSTRAINT FK990 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE sp_num_dat_type ADD CONSTRAINT FK991 FOREIGN KEY(spn_db_site,spn_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE sp_num_dat_type ADD CONSTRAINT FK992 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE sp_blk_num_data ADD CONSTRAINT FK949 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE sp_blk_num_data ADD CONSTRAINT FK950 FOREIGN KEY(sp_blk_db_site,sp_blk_db_id,sp_block_id) REFERENCES signal_proc_blk(sp_blk_db_site,sp_blk_db_id,sp_block_id)
 ;
  ALTER TABLE sp_blk_num_data ADD CONSTRAINT FK951 FOREIGN KEY(spn_db_site,spn_db_id,spn_type_code) REFERENCES sp_num_dat_type(spn_db_site,spn_db_id,spn_type_code)
 ;
  ALTER TABLE sp_blk_num_data ADD CONSTRAINT FK952 FOREIGN KEY(eu_db_site,eu_db_id,eu_type_code) REFERENCES eng_unit_type(eu_db_site,eu_db_id,eu_type_code)
 ;
  ALTER TABLE sp_blk_num_data ADD CONSTRAINT FK953 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE sp_stream_type ADD CONSTRAINT FK1001 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE sp_stream_type ADD CONSTRAINT FK1002 FOREIGN KEY(sps_type_db_site,sps_type_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE sp_stream_type ADD CONSTRAINT FK1003 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE sp_stream ADD CONSTRAINT FK993 FOREIGN KEY(sp_str_db_site,sp_str_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE sp_stream ADD CONSTRAINT FK994 FOREIGN KEY(sps_type_db_site,sps_type_db_id,sps_type_code) REFERENCES sp_stream_type(sps_type_db_site,sps_type_db_id,sps_type_code)
 ;
  ALTER TABLE sp_stream ADD CONSTRAINT FK995 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE sp_stream ADD CONSTRAINT FK996 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE sp_stream_block ADD CONSTRAINT FK997 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE sp_stream_block ADD CONSTRAINT FK998 FOREIGN KEY(sp_str_db_site,sp_str_db_id,sp_stream_id) REFERENCES sp_stream(sp_str_db_site,sp_str_db_id,sp_stream_id)
 ;
  ALTER TABLE sp_stream_block ADD CONSTRAINT FK999 FOREIGN KEY(sp_blk_db_site,sp_blk_db_id,sp_block_id) REFERENCES signal_proc_blk(sp_blk_db_site,sp_blk_db_id,sp_block_id)
 ;
  ALTER TABLE sp_stream_block ADD CONSTRAINT FK1000 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE average_type ADD CONSTRAINT FK300 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE average_type ADD CONSTRAINT FK301 FOREIGN KEY(ave_db_site,ave_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE average_type ADD CONSTRAINT FK302 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE ave_weight_type ADD CONSTRAINT FK297 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE ave_weight_type ADD CONSTRAINT FK298 FOREIGN KEY(ave_wt_db_site,ave_wt_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE ave_weight_type ADD CONSTRAINT FK299 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE ave_synch_type ADD CONSTRAINT FK294 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE ave_synch_type ADD CONSTRAINT FK295 FOREIGN KEY(ave_sy_db_site,ave_sy_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE ave_synch_type ADD CONSTRAINT FK296 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE sp_ampl_data ADD CONSTRAINT FK936 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE sp_ampl_data ADD CONSTRAINT FK937 FOREIGN KEY(meas_loc_site,meas_loc_id,gmt_event) REFERENCES meas_event(meas_loc_site,meas_loc_id,gmt_event)
 ;
  ALTER TABLE sp_ampl_data ADD CONSTRAINT FK938 FOREIGN KEY(eu_db_site,eu_db_id,eu_type_code) REFERENCES eng_unit_type(eu_db_site,eu_db_id,eu_type_code)
 ;
  ALTER TABLE sp_ampl_data ADD CONSTRAINT FK939 FOREIGN KEY(pst_sc_db_site,pst_sc_db_id,pst_sc_type_code) REFERENCES post_scaling_type(pst_sc_db_site,pst_sc_db_id,pst_sc_type_code)
 ;
  ALTER TABLE sp_ampl_data ADD CONSTRAINT FK940 FOREIGN KEY(src_dt_db_site,src_dt_db_id,src_dt_type_code) REFERENCES src_detect_type(src_dt_db_site,src_dt_db_id,src_dt_type_code)
 ;
  ALTER TABLE sp_ampl_data ADD CONSTRAINT FK941 FOREIGN KEY(sp_str_db_site,sp_str_db_id,sp_stream_id) REFERENCES sp_stream(sp_str_db_site,sp_str_db_id,sp_stream_id)
 ;
  ALTER TABLE sp_ampl_data ADD CONSTRAINT FK942 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE sp_ampl_alarm ADD CONSTRAINT FK931 FOREIGN KEY(org_agent_site,agent_id) REFERENCES agent(org_agent_site,agent_id)
 ;
  ALTER TABLE sp_ampl_alarm ADD CONSTRAINT FK932 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE sp_ampl_alarm ADD CONSTRAINT FK933 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE sp_ampl_alarm ADD CONSTRAINT FK934 FOREIGN KEY(meas_loc_site,meas_loc_id,gmt_event,ordering_seq) REFERENCES sp_ampl_data(meas_loc_site,meas_loc_id,gmt_event,ordering_seq)
 ;
  ALTER TABLE sp_ampl_alarm ADD CONSTRAINT FK935 FOREIGN KEY(al_db_site,al_db_id,al_type_code) REFERENCES alarm_type(al_db_site,al_db_id,al_type_code)
 ;
  ALTER TABLE spa_al_assoc_reg ADD CONSTRAINT FK1021 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE spa_al_assoc_reg ADD CONSTRAINT FK1022 FOREIGN KEY(meas_loc_site,meas_loc_id,gmt_event,ordering_seq,al_db_site,al_db_id,al_type_code) REFERENCES sp_ampl_alarm(meas_loc_site,meas_loc_id,gmt_event,ordering_seq,al_db_site,al_db_id,al_type_code)
 ;
  ALTER TABLE spa_al_assoc_reg ADD CONSTRAINT FK1023 FOREIGN KEY(alarm_db_site,alarm_db_id,al_meas_loc_site,al_meas_loc_id,al_ordering_seq) REFERENCES spa_alarm_reg(alarm_db_site,alarm_db_id,meas_loc_site,meas_loc_id,ordering_seq)
 ;
  ALTER TABLE spa_al_assoc_reg ADD CONSTRAINT FK1024 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE window_type ADD CONSTRAINT FK1094 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE window_type ADD CONSTRAINT FK1095 FOREIGN KEY(win_db_site,win_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE window_type ADD CONSTRAINT FK1096 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE sp_fft_data ADD CONSTRAINT FK971 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE sp_fft_data ADD CONSTRAINT FK972 FOREIGN KEY(pst_sc_db_site,pst_sc_db_id,pst_sc_type_code) REFERENCES post_scaling_type(pst_sc_db_site,pst_sc_db_id,pst_sc_type_code)
 ;
  ALTER TABLE sp_fft_data ADD CONSTRAINT FK973 FOREIGN KEY(win_db_site,win_db_id,win_type_code) REFERENCES window_type(win_db_site,win_db_id,win_type_code)
 ;
  ALTER TABLE sp_fft_data ADD CONSTRAINT FK974 FOREIGN KEY(ave_db_site,ave_db_id,ave_type_code) REFERENCES average_type(ave_db_site,ave_db_id,ave_type_code)
 ;
  ALTER TABLE sp_fft_data ADD CONSTRAINT FK975 FOREIGN KEY(ave_wt_db_site,ave_wt_db_id,ave_wt_type_code) REFERENCES ave_weight_type(ave_wt_db_site,ave_wt_db_id,ave_wt_type_code)
 ;
  ALTER TABLE sp_fft_data ADD CONSTRAINT FK976 FOREIGN KEY(ave_sy_db_site,ave_sy_db_id,ave_sy_type_code) REFERENCES ave_synch_type(ave_sy_db_site,ave_sy_db_id,ave_sy_type_code)
 ;
  ALTER TABLE sp_fft_data ADD CONSTRAINT FK977 FOREIGN KEY(sp_str_db_site,sp_str_db_id,sp_stream_id) REFERENCES sp_stream(sp_str_db_site,sp_str_db_id,sp_stream_id)
 ;
  ALTER TABLE sp_fft_data ADD CONSTRAINT FK978 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE sp_fft_data ADD CONSTRAINT FK979 FOREIGN KEY(meas_loc_site,meas_loc_id,gmt_event) REFERENCES meas_event(meas_loc_site,meas_loc_id,gmt_event)
 ;
  ALTER TABLE sp_fft_data ADD CONSTRAINT FK980 FOREIGN KEY(eu_db_site,eu_db_id,eu_type_code) REFERENCES eng_unit_type(eu_db_site,eu_db_id,eu_type_code)
 ;
  ALTER TABLE sp_time_data ADD CONSTRAINT FK1004 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE sp_time_data ADD CONSTRAINT FK1005 FOREIGN KEY(meas_loc_site,meas_loc_id,gmt_event) REFERENCES meas_event(meas_loc_site,meas_loc_id,gmt_event)
 ;
  ALTER TABLE sp_time_data ADD CONSTRAINT FK1006 FOREIGN KEY(eu_db_site,eu_db_id,eu_type_code) REFERENCES eng_unit_type(eu_db_site,eu_db_id,eu_type_code)
 ;
  ALTER TABLE sp_time_data ADD CONSTRAINT FK1007 FOREIGN KEY(win_db_site,win_db_id,win_type_code) REFERENCES window_type(win_db_site,win_db_id,win_type_code)
 ;
  ALTER TABLE sp_time_data ADD CONSTRAINT FK1008 FOREIGN KEY(ave_db_site,ave_db_id,ave_type_code) REFERENCES average_type(ave_db_site,ave_db_id,ave_type_code)
 ;
  ALTER TABLE sp_time_data ADD CONSTRAINT FK1009 FOREIGN KEY(ave_wt_db_site,ave_wt_db_id,ave_wt_type_code) REFERENCES ave_weight_type(ave_wt_db_site,ave_wt_db_id,ave_wt_type_code)
 ;
  ALTER TABLE sp_time_data ADD CONSTRAINT FK1010 FOREIGN KEY(ave_sy_db_site,ave_sy_db_id,ave_sy_type_code) REFERENCES ave_synch_type(ave_sy_db_site,ave_sy_db_id,ave_sy_type_code)
 ;
  ALTER TABLE sp_time_data ADD CONSTRAINT FK1011 FOREIGN KEY(sp_str_db_site,sp_str_db_id,sp_stream_id) REFERENCES sp_stream(sp_str_db_site,sp_str_db_id,sp_stream_id)
 ;
  ALTER TABLE sp_time_data ADD CONSTRAINT FK1012 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE sp_cpb_data ADD CONSTRAINT FK954 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE sp_cpb_data ADD CONSTRAINT FK955 FOREIGN KEY(meas_loc_site,meas_loc_id,gmt_event) REFERENCES meas_event(meas_loc_site,meas_loc_id,gmt_event)
 ;
  ALTER TABLE sp_cpb_data ADD CONSTRAINT FK956 FOREIGN KEY(eu_db_site,eu_db_id,eu_type_code) REFERENCES eng_unit_type(eu_db_site,eu_db_id,eu_type_code)
 ;
  ALTER TABLE sp_cpb_data ADD CONSTRAINT FK957 FOREIGN KEY(pst_sc_db_site,pst_sc_db_id,pst_sc_type_code) REFERENCES post_scaling_type(pst_sc_db_site,pst_sc_db_id,pst_sc_type_code)
 ;
  ALTER TABLE sp_cpb_data ADD CONSTRAINT FK958 FOREIGN KEY(ave_db_site,ave_db_id,ave_type_code) REFERENCES average_type(ave_db_site,ave_db_id,ave_type_code)
 ;
  ALTER TABLE sp_cpb_data ADD CONSTRAINT FK959 FOREIGN KEY(ave_wt_db_site,ave_wt_db_id,ave_wt_type_code) REFERENCES ave_weight_type(ave_wt_db_site,ave_wt_db_id,ave_wt_type_code)
 ;
  ALTER TABLE sp_cpb_data ADD CONSTRAINT FK960 FOREIGN KEY(ave_sy_db_site,ave_sy_db_id,ave_sy_type_code) REFERENCES ave_synch_type(ave_sy_db_site,ave_sy_db_id,ave_sy_type_code)
 ;
  ALTER TABLE sp_cpb_data ADD CONSTRAINT FK961 FOREIGN KEY(sp_str_db_site,sp_str_db_id,sp_stream_id) REFERENCES sp_stream(sp_str_db_site,sp_str_db_id,sp_stream_id)
 ;
  ALTER TABLE sp_cpb_data ADD CONSTRAINT FK962 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE sp_ampl_setup ADD CONSTRAINT FK943 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE sp_ampl_setup ADD CONSTRAINT FK944 FOREIGN KEY(spa_setup_db_site,spa_setup_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE sp_ampl_setup ADD CONSTRAINT FK945 FOREIGN KEY(pst_sc_db_site,pst_sc_db_id,pst_sc_type_code) REFERENCES post_scaling_type(pst_sc_db_site,pst_sc_db_id,pst_sc_type_code)
 ;
  ALTER TABLE sp_ampl_setup ADD CONSTRAINT FK946 FOREIGN KEY(src_dt_db_site,src_dt_db_id,src_dt_type_code) REFERENCES src_detect_type(src_dt_db_site,src_dt_db_id,src_dt_type_code)
 ;
  ALTER TABLE sp_ampl_setup ADD CONSTRAINT FK947 FOREIGN KEY(sp_str_db_site,sp_str_db_id,sp_stream_id) REFERENCES sp_stream(sp_str_db_site,sp_str_db_id,sp_stream_id)
 ;
  ALTER TABLE sp_ampl_setup ADD CONSTRAINT FK948 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE sp_fft_setup ADD CONSTRAINT FK981 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE sp_fft_setup ADD CONSTRAINT FK982 FOREIGN KEY(spf_setup_db_site,spf_setup_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE sp_fft_setup ADD CONSTRAINT FK983 FOREIGN KEY(pst_sc_db_site,pst_sc_db_id,pst_sc_type_code) REFERENCES post_scaling_type(pst_sc_db_site,pst_sc_db_id,pst_sc_type_code)
 ;
  ALTER TABLE sp_fft_setup ADD CONSTRAINT FK984 FOREIGN KEY(win_db_site,win_db_id,win_type_code) REFERENCES window_type(win_db_site,win_db_id,win_type_code)
 ;
  ALTER TABLE sp_fft_setup ADD CONSTRAINT FK985 FOREIGN KEY(ave_db_site,ave_db_id,ave_type_code) REFERENCES average_type(ave_db_site,ave_db_id,ave_type_code)
 ;
  ALTER TABLE sp_fft_setup ADD CONSTRAINT FK986 FOREIGN KEY(ave_wt_db_site,ave_wt_db_id,ave_wt_type_code) REFERENCES ave_weight_type(ave_wt_db_site,ave_wt_db_id,ave_wt_type_code)
 ;
  ALTER TABLE sp_fft_setup ADD CONSTRAINT FK987 FOREIGN KEY(ave_sy_db_site,ave_sy_db_id,ave_sy_type_code) REFERENCES ave_synch_type(ave_sy_db_site,ave_sy_db_id,ave_sy_type_code)
 ;
  ALTER TABLE sp_fft_setup ADD CONSTRAINT FK988 FOREIGN KEY(sp_str_db_site,sp_str_db_id,sp_stream_id) REFERENCES sp_stream(sp_str_db_site,sp_str_db_id,sp_stream_id)
 ;
  ALTER TABLE sp_fft_setup ADD CONSTRAINT FK989 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE sp_time_setup ADD CONSTRAINT FK1013 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE sp_time_setup ADD CONSTRAINT FK1014 FOREIGN KEY(spt_setup_db_site,spt_setup_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE sp_time_setup ADD CONSTRAINT FK1015 FOREIGN KEY(win_db_site,win_db_id,win_type_code) REFERENCES window_type(win_db_site,win_db_id,win_type_code)
 ;
  ALTER TABLE sp_time_setup ADD CONSTRAINT FK1016 FOREIGN KEY(ave_db_site,ave_db_id,ave_type_code) REFERENCES average_type(ave_db_site,ave_db_id,ave_type_code)
 ;
  ALTER TABLE sp_time_setup ADD CONSTRAINT FK1017 FOREIGN KEY(ave_wt_db_site,ave_wt_db_id,ave_wt_type_code) REFERENCES ave_weight_type(ave_wt_db_site,ave_wt_db_id,ave_wt_type_code)
 ;
  ALTER TABLE sp_time_setup ADD CONSTRAINT FK1018 FOREIGN KEY(ave_sy_db_site,ave_sy_db_id,ave_sy_type_code) REFERENCES ave_synch_type(ave_sy_db_site,ave_sy_db_id,ave_sy_type_code)
 ;
  ALTER TABLE sp_time_setup ADD CONSTRAINT FK1019 FOREIGN KEY(sp_str_db_site,sp_str_db_id,sp_stream_id) REFERENCES sp_stream(sp_str_db_site,sp_str_db_id,sp_stream_id)
 ;
  ALTER TABLE sp_time_setup ADD CONSTRAINT FK1020 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE sp_cpb_setup ADD CONSTRAINT FK963 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE sp_cpb_setup ADD CONSTRAINT FK964 FOREIGN KEY(spc_setup_db_site,spc_setup_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE sp_cpb_setup ADD CONSTRAINT FK965 FOREIGN KEY(pst_sc_db_site,pst_sc_db_id,pst_sc_type_code) REFERENCES post_scaling_type(pst_sc_db_site,pst_sc_db_id,pst_sc_type_code)
 ;
  ALTER TABLE sp_cpb_setup ADD CONSTRAINT FK966 FOREIGN KEY(ave_db_site,ave_db_id,ave_type_code) REFERENCES average_type(ave_db_site,ave_db_id,ave_type_code)
 ;
  ALTER TABLE sp_cpb_setup ADD CONSTRAINT FK967 FOREIGN KEY(ave_wt_db_site,ave_wt_db_id,ave_wt_type_code) REFERENCES ave_weight_type(ave_wt_db_site,ave_wt_db_id,ave_wt_type_code)
 ;
  ALTER TABLE sp_cpb_setup ADD CONSTRAINT FK968 FOREIGN KEY(ave_sy_db_site,ave_sy_db_id,ave_sy_type_code) REFERENCES ave_synch_type(ave_sy_db_site,ave_sy_db_id,ave_sy_type_code)
 ;
  ALTER TABLE sp_cpb_setup ADD CONSTRAINT FK969 FOREIGN KEY(sp_str_db_site,sp_str_db_id,sp_stream_id) REFERENCES sp_stream(sp_str_db_site,sp_str_db_id,sp_stream_id)
 ;
  ALTER TABLE sp_cpb_setup ADD CONSTRAINT FK970 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE mloc_ulist_sp_ampl ADD CONSTRAINT FK446 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE mloc_ulist_sp_ampl ADD CONSTRAINT FK447 FOREIGN KEY(ord_list_db_site,ord_list_db_id,ord_list_id,ordering_seq,channel_number) REFERENCES mloc_unit_list(ord_list_db_site,ord_list_db_id,ord_list_id,ordering_seq,channel_number)
 ;
  ALTER TABLE mloc_ulist_sp_ampl ADD CONSTRAINT FK448 FOREIGN KEY(spa_setup_db_site,spa_setup_db_id,spa_setup_id) REFERENCES sp_ampl_setup(spa_setup_db_site,spa_setup_db_id,spa_setup_id)
 ;
  ALTER TABLE mloc_ulist_sp_ampl ADD CONSTRAINT FK449 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE mloc_ulist_sp_fft ADD CONSTRAINT FK454 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE mloc_ulist_sp_fft ADD CONSTRAINT FK455 FOREIGN KEY(ord_list_db_site,ord_list_db_id,ord_list_id,ordering_seq,channel_number) REFERENCES mloc_unit_list(ord_list_db_site,ord_list_db_id,ord_list_id,ordering_seq,channel_number)
 ;
  ALTER TABLE mloc_ulist_sp_fft ADD CONSTRAINT FK456 FOREIGN KEY(spf_setup_db_site,spf_setup_db_id,spf_setup_id) REFERENCES sp_fft_setup(spf_setup_db_site,spf_setup_db_id,spf_setup_id)
 ;
  ALTER TABLE mloc_ulist_sp_fft ADD CONSTRAINT FK457 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE mloc_ulist_sp_time ADD CONSTRAINT FK458 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE mloc_ulist_sp_time ADD CONSTRAINT FK459 FOREIGN KEY(ord_list_db_site,ord_list_db_id,ord_list_id,ordering_seq,channel_number) REFERENCES mloc_unit_list(ord_list_db_site,ord_list_db_id,ord_list_id,ordering_seq,channel_number)
 ;
  ALTER TABLE mloc_ulist_sp_time ADD CONSTRAINT FK460 FOREIGN KEY(spt_setup_db_site,spt_setup_db_id,spt_setup_id) REFERENCES sp_time_setup(spt_setup_db_site,spt_setup_db_id,spt_setup_id)
 ;
  ALTER TABLE mloc_ulist_sp_time ADD CONSTRAINT FK461 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE mloc_ulist_sp_cpb ADD CONSTRAINT FK450 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE mloc_ulist_sp_cpb ADD CONSTRAINT FK451 FOREIGN KEY(ord_list_db_site,ord_list_db_id,ord_list_id,ordering_seq,channel_number) REFERENCES mloc_unit_list(ord_list_db_site,ord_list_db_id,ord_list_id,ordering_seq,channel_number)
 ;
  ALTER TABLE mloc_ulist_sp_cpb ADD CONSTRAINT FK452 FOREIGN KEY(spc_setup_db_site,spc_setup_db_id,spc_setup_id) REFERENCES sp_cpb_setup(spc_setup_db_site,spc_setup_db_id,spc_setup_id)
 ;
  ALTER TABLE mloc_ulist_sp_cpb ADD CONSTRAINT FK453 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE mim_tech_type ADD CONSTRAINT FK433 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE mim_tech_type ADD CONSTRAINT FK434 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE mim_support_type ADD CONSTRAINT FK431 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE mim_support_type ADD CONSTRAINT FK432 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE mim_data_cat_type ADD CONSTRAINT FK421 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE mim_data_cat_type ADD CONSTRAINT FK422 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE mim_func_type ADD CONSTRAINT FK423 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE mim_func_type ADD CONSTRAINT FK424 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE mim_access_type ADD CONSTRAINT FK1263 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE mim_access_type ADD CONSTRAINT FK1264 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE mim_interface_type ADD CONSTRAINT FK425 FOREIGN KEY(dcat_type_code) REFERENCES mim_data_cat_type(dcat_type_code)
 ;
  ALTER TABLE mim_interface_type ADD CONSTRAINT FK426 FOREIGN KEY(func_type_code) REFERENCES mim_func_type(func_type_code)
 ;
  ALTER TABLE mim_interface_type ADD CONSTRAINT FK427 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE mim_interface_type ADD CONSTRAINT FK428 FOREIGN KEY(supp_type_code) REFERENCES mim_support_type(supp_type_code)
 ;
  ALTER TABLE mim_interface_type ADD CONSTRAINT FK429 FOREIGN KEY(tech_type_code) REFERENCES mim_tech_type(tech_type_code)
 ;
  ALTER TABLE mim_interface_type ADD CONSTRAINT FK1265 FOREIGN KEY(acc_type_code) REFERENCES mim_access_type(acc_type_code)
 ;
  ALTER TABLE mim_interface_type ADD CONSTRAINT FK430 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE network_type ADD CONSTRAINT FK536 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE network_type ADD CONSTRAINT FK537 FOREIGN KEY(nt_db_site,nt_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE network_type ADD CONSTRAINT FK538 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE event_type_child ADD CONSTRAINT FK346 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE event_type_child ADD CONSTRAINT FK347 FOREIGN KEY(ev_db_site,ev_db_id,event_type_code) REFERENCES sg_as_event_type(ev_db_site,ev_db_id,event_type_code)
 ;
  ALTER TABLE event_type_child ADD CONSTRAINT FK348 FOREIGN KEY(child_ev_db_site,child_ev_db_id,child_ev_type_code) REFERENCES sg_as_event_type(ev_db_site,ev_db_id,event_type_code)
 ;
  ALTER TABLE event_type_child ADD CONSTRAINT FK349 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE sample_test_type ADD CONSTRAINT FK650 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE sample_test_type ADD CONSTRAINT FK651 FOREIGN KEY(stt_db_site,stt_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE sample_test_type ADD CONSTRAINT FK652 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE sample_ndata_type ADD CONSTRAINT FK639 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE sample_ndata_type ADD CONSTRAINT FK640 FOREIGN KEY(snum_db_site,snum_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE sample_ndata_type ADD CONSTRAINT FK641 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE sample_cdata_type ADD CONSTRAINT FK631 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE sample_cdata_type ADD CONSTRAINT FK632 FOREIGN KEY(schr_db_site,schr_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE sample_cdata_type ADD CONSTRAINT FK633 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE test_result_ntype ADD CONSTRAINT FK1079 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE test_result_ntype ADD CONSTRAINT FK1080 FOREIGN KEY(strn_db_site,strn_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE test_result_ntype ADD CONSTRAINT FK1081 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE test_result_ctype ADD CONSTRAINT FK1076 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE test_result_ctype ADD CONSTRAINT FK1077 FOREIGN KEY(strc_db_site,strc_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE test_result_ctype ADD CONSTRAINT FK1078 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE test_result_btype ADD CONSTRAINT FK1073 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE test_result_btype ADD CONSTRAINT FK1074 FOREIGN KEY(strb_db_site,strb_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE test_result_btype ADD CONSTRAINT FK1075 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE blob_data_type ADD CONSTRAINT FK314 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE blob_data_type ADD CONSTRAINT FK315 FOREIGN KEY(bd_db_site,bd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE blob_data_type ADD CONSTRAINT FK316 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE blob_content_type ADD CONSTRAINT FK1221 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE blob_content_type ADD CONSTRAINT FK1222 FOREIGN KEY(blct_db_site,blct_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE blob_content_type ADD CONSTRAINT FK1223 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE mevent_blob_type ADD CONSTRAINT FK410 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE mevent_blob_type ADD CONSTRAINT FK411 FOREIGN KEY(mebt_db_site,mebt_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE mevent_blob_type ADD CONSTRAINT FK412 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE highlight_type ADD CONSTRAINT FK352 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE highlight_type ADD CONSTRAINT FK353 FOREIGN KEY(high_db_site,high_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE highlight_type ADD CONSTRAINT FK354 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE agent_role_type ADD CONSTRAINT FK9 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE agent_role_type ADD CONSTRAINT FK10 FOREIGN KEY(ag_role_db_site,ag_role_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE agent_role_type ADD CONSTRAINT FK11 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE ev_num_data_type ADD CONSTRAINT FK343 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE ev_num_data_type ADD CONSTRAINT FK344 FOREIGN KEY(en_db_site,en_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE ev_num_data_type ADD CONSTRAINT FK345 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE health_level_type ADD CONSTRAINT FK1400 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE health_level_type ADD CONSTRAINT FK1401 FOREIGN KEY(health_lev_db_site,health_lev_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE health_level_type ADD CONSTRAINT FK1402 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE priority_level_type ADD CONSTRAINT FK1403 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE priority_level_type ADD CONSTRAINT FK1404 FOREIGN KEY(priority_lev_db_site,priority_lev_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE priority_level_type ADD CONSTRAINT FK1405 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE work_manage_type ADD CONSTRAINT FK1135 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE work_manage_type ADD CONSTRAINT FK1136 FOREIGN KEY(wm_type_db_site,wm_type_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE work_manage_type ADD CONSTRAINT FK2113 FOREIGN KEY(work_item_db_site,work_item_db_id,work_item_type_code) REFERENCES work_item_type(work_item_db_site, work_item_db_id, work_item_type_code)
 ;
  ALTER TABLE work_manage_type ADD CONSTRAINT FK1137 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE work_task_type ADD CONSTRAINT FK2114 FOREIGN KEY(wm_type_db_site,wm_type_db_id,wm_type_code) REFERENCES work_manage_type(wm_type_db_site,wm_type_db_id,wm_type_code)
 ;
  ALTER TABLE work_task_type ADD CONSTRAINT FK1214 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE work_task_type ADD CONSTRAINT FK1215 FOREIGN KEY(task_db_site,task_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE work_task_type ADD CONSTRAINT FK1216 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE wtask_type_child ADD CONSTRAINT FK1217 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE wtask_type_child ADD CONSTRAINT FK1218 FOREIGN KEY(task_db_site,task_db_id,task_type_code) REFERENCES work_task_type(task_db_site,task_db_id,task_type_code)
 ;
  ALTER TABLE wtask_type_child ADD CONSTRAINT FK1219 FOREIGN KEY(child_tk_db_site,child_tk_db_id,child_tk_type_code) REFERENCES work_task_type(task_db_site,task_db_id,task_type_code)
 ;
  ALTER TABLE wtask_type_child ADD CONSTRAINT FK2107 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE change_patt_type ADD CONSTRAINT FK321 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE change_patt_type ADD CONSTRAINT FK322 FOREIGN KEY(ch_patt_db_site,ch_patt_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE change_patt_type ADD CONSTRAINT FK323 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE work_audit_type ADD CONSTRAINT FK1129 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE work_audit_type ADD CONSTRAINT FK1130 FOREIGN KEY(waudit_db_site,waudit_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE work_audit_type ADD CONSTRAINT FK1131 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE work_num_data_type ADD CONSTRAINT FK1138 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE work_num_data_type ADD CONSTRAINT FK1139 FOREIGN KEY(wn_db_site,wn_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE work_num_data_type ADD CONSTRAINT FK1140 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE work_chr_data_type ADD CONSTRAINT FK1132 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE work_chr_data_type ADD CONSTRAINT FK1133 FOREIGN KEY(wc_db_site,wc_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE work_chr_data_type ADD CONSTRAINT FK1134 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE solution_pack_type ADD CONSTRAINT FK923 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE solution_pack_type ADD CONSTRAINT FK924 FOREIGN KEY(sol_db_site,sol_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE solution_pack_type ADD CONSTRAINT FK925 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE network ADD CONSTRAINT FK532 FOREIGN KEY(network_db_site,network_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE network ADD CONSTRAINT FK533 FOREIGN KEY(nt_db_site,nt_db_id,nt_type_code) REFERENCES network_type(nt_db_site,nt_db_id,nt_type_code)
 ;
  ALTER TABLE network ADD CONSTRAINT FK534 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE network ADD CONSTRAINT FK535 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE sg_network_connect ADD CONSTRAINT FK767 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE sg_network_connect ADD CONSTRAINT FK768 FOREIGN KEY(network_db_site,network_db_id,network_id) REFERENCES network(network_db_site,network_db_id,network_id)
 ;
  ALTER TABLE sg_network_connect ADD CONSTRAINT FK769 FOREIGN KEY(segment_site,segment_id) REFERENCES segment(segment_site,segment_id)
 ;
  ALTER TABLE sg_network_connect ADD CONSTRAINT FK770 FOREIGN KEY(output_sg_site,output_sg_id) REFERENCES segment(segment_site,segment_id)
 ;
  ALTER TABLE sg_network_connect ADD CONSTRAINT FK1659 FOREIGN KEY(net_conn_type_db_site,net_conn_type_db_id,net_conn_type_code) REFERENCES network_conn_type(net_conn_type_db_site,net_conn_type_db_id,net_conn_type_code)
 ;
  ALTER TABLE sg_network_connect ADD CONSTRAINT FK771 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE as_network_connect ADD CONSTRAINT FK83 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE as_network_connect ADD CONSTRAINT FK84 FOREIGN KEY(network_db_site,network_db_id,network_id) REFERENCES network(network_db_site,network_db_id,network_id)
 ;
  ALTER TABLE as_network_connect ADD CONSTRAINT FK85 FOREIGN KEY(asset_org_site,asset_id) REFERENCES asset(asset_org_site,asset_id)
 ;
  ALTER TABLE as_network_connect ADD CONSTRAINT FK86 FOREIGN KEY(output_as_site,output_as_id) REFERENCES asset(asset_org_site,asset_id)
 ;
  ALTER TABLE as_network_connect ADD CONSTRAINT FK1660 FOREIGN KEY(net_conn_type_db_site,net_conn_type_db_id,net_conn_type_code) REFERENCES network_conn_type(net_conn_type_db_site,net_conn_type_db_id,net_conn_type_code)
 ;
  ALTER TABLE as_network_connect ADD CONSTRAINT FK87 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE agent_role ADD CONSTRAINT FK5 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE agent_role ADD CONSTRAINT FK6 FOREIGN KEY(org_agent_site,agent_id) REFERENCES agent(org_agent_site,agent_id)
 ;
  ALTER TABLE agent_role ADD CONSTRAINT FK7 FOREIGN KEY(ag_role_db_site,ag_role_db_id,ag_role_type_code) REFERENCES agent_role_type(ag_role_db_site,ag_role_db_id,ag_role_type_code)
 ;
  ALTER TABLE agent_role ADD CONSTRAINT FK8 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE agent_role_with_agent ADD CONSTRAINT FK12 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE agent_role_with_agent ADD CONSTRAINT FK13 FOREIGN KEY(ag_role_db_site,ag_role_db_id,ag_role_type_code) REFERENCES agent_role_type(ag_role_db_site,ag_role_db_id,ag_role_type_code)
 ;
  ALTER TABLE agent_role_with_agent ADD CONSTRAINT FK14 FOREIGN KEY(other_org_agent_site,other_agent_id) REFERENCES agent(org_agent_site,agent_id)
 ;
  ALTER TABLE agent_role_with_agent ADD CONSTRAINT FK15 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE mloc_test_alrm_rg ADD CONSTRAINT FK438 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE mloc_test_alrm_rg ADD CONSTRAINT FK439 FOREIGN KEY(alarm_db_site,alarm_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE mloc_test_alrm_rg ADD CONSTRAINT FK440 FOREIGN KEY(meas_loc_site,meas_loc_id) REFERENCES meas_location(meas_loc_site,meas_loc_id)
 ;
  ALTER TABLE mloc_test_alrm_rg ADD CONSTRAINT FK441 FOREIGN KEY(stt_db_site,stt_db_id,stt_code) REFERENCES sample_test_type(stt_db_site,stt_db_id,stt_code)
 ;
  ALTER TABLE mloc_test_alrm_rg ADD CONSTRAINT FK442 FOREIGN KEY(al_db_site,al_db_id,al_type_code) REFERENCES alarm_type(al_db_site,al_db_id,al_type_code)
 ;
  ALTER TABLE mloc_test_alrm_rg ADD CONSTRAINT FK443 FOREIGN KEY(strn_db_site,strn_db_id,str_num_type_code) REFERENCES test_result_ntype(strn_db_site,strn_db_id,str_num_type_code)
 ;
  ALTER TABLE mloc_test_alrm_rg ADD CONSTRAINT FK444 FOREIGN KEY(eu_db_site,eu_db_id,eu_type_code) REFERENCES eng_unit_type(eu_db_site,eu_db_id,eu_type_code)
 ;
  ALTER TABLE mloc_test_alrm_rg ADD CONSTRAINT FK445 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE mloc_test_alrm_rg ADD CONSTRAINT FK1232 FOREIGN KEY(ml_db_site,ml_db_id,ml_type_code) REFERENCES meas_loc_type(ml_db_site,ml_db_id,ml_type_code)
 ;
  ALTER TABLE mloc_test_alrm_rg ADD CONSTRAINT FK1233 FOREIGN KEY(mc_db_site,mc_db_id,mc_type_code) REFERENCES mloc_calc_type(mc_db_site,mc_db_id,mc_type_code)
 ;
  ALTER TABLE meas_sample ADD CONSTRAINT FK391 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE meas_sample ADD CONSTRAINT FK392 FOREIGN KEY(meas_loc_site,meas_loc_id,gmt_event) REFERENCES meas_event(meas_loc_site,meas_loc_id,gmt_event)
 ;
  ALTER TABLE meas_sample ADD CONSTRAINT FK393 FOREIGN KEY(by_agent_site,by_agent_id) REFERENCES agent(org_agent_site,agent_id)
 ;
  ALTER TABLE meas_sample ADD CONSTRAINT FK394 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE meas_sample_child ADD CONSTRAINT FK395 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE meas_sample_child ADD CONSTRAINT FK396 FOREIGN KEY(meas_loc_site,meas_loc_id,gmt_event,sample_order_seq) REFERENCES meas_sample(meas_loc_site,meas_loc_id,gmt_event,sample_order_seq)
 ;
  ALTER TABLE meas_sample_child ADD CONSTRAINT FK397 FOREIGN KEY(child_mloc_site,child_mloc_id,child_gmt_event,child_sam_ord_seq) REFERENCES meas_sample(meas_loc_site,meas_loc_id,gmt_event,sample_order_seq)
 ;
  ALTER TABLE meas_sample_child ADD CONSTRAINT FK398 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE sample_num_data ADD CONSTRAINT FK642 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE sample_num_data ADD CONSTRAINT FK643 FOREIGN KEY(meas_loc_site,meas_loc_id,gmt_event,sample_order_seq) REFERENCES meas_sample(meas_loc_site,meas_loc_id,gmt_event,sample_order_seq)
 ;
  ALTER TABLE sample_num_data ADD CONSTRAINT FK644 FOREIGN KEY(snum_db_site,snum_db_id,snum_type_code) REFERENCES sample_ndata_type(snum_db_site,snum_db_id,snum_type_code)
 ;
  ALTER TABLE sample_num_data ADD CONSTRAINT FK645 FOREIGN KEY(eu_db_site,eu_db_id,eu_type_code) REFERENCES eng_unit_type(eu_db_site,eu_db_id,eu_type_code)
 ;
  ALTER TABLE sample_num_data ADD CONSTRAINT FK646 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE sample_chr_data ADD CONSTRAINT FK634 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE sample_chr_data ADD CONSTRAINT FK635 FOREIGN KEY(meas_loc_site,meas_loc_id,gmt_event,sample_order_seq) REFERENCES meas_sample(meas_loc_site,meas_loc_id,gmt_event,sample_order_seq)
 ;
  ALTER TABLE sample_chr_data ADD CONSTRAINT FK636 FOREIGN KEY(schr_db_site,schr_db_id,schr_type_code) REFERENCES sample_cdata_type(schr_db_site,schr_db_id,schr_type_code)
 ;
  ALTER TABLE sample_chr_data ADD CONSTRAINT FK637 FOREIGN KEY(eu_db_site,eu_db_id,eu_type_code) REFERENCES eng_unit_type(eu_db_site,eu_db_id,eu_type_code)
 ;
  ALTER TABLE sample_chr_data ADD CONSTRAINT FK638 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE sample_remark ADD CONSTRAINT FK647 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE sample_remark ADD CONSTRAINT FK648 FOREIGN KEY(meas_loc_site,meas_loc_id,gmt_event,sample_order_seq) REFERENCES meas_sample(meas_loc_site,meas_loc_id,gmt_event,sample_order_seq)
 ;
  ALTER TABLE sample_remark ADD CONSTRAINT FK649 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE meas_sample_test ADD CONSTRAINT FK399 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE meas_sample_test ADD CONSTRAINT FK400 FOREIGN KEY(meas_loc_site,meas_loc_id,gmt_event,sample_order_seq) REFERENCES meas_sample(meas_loc_site,meas_loc_id,gmt_event,sample_order_seq)
 ;
  ALTER TABLE meas_sample_test ADD CONSTRAINT FK401 FOREIGN KEY(stt_db_site,stt_db_id,stt_code) REFERENCES sample_test_type(stt_db_site,stt_db_id,stt_code)
 ;
  ALTER TABLE meas_sample_test ADD CONSTRAINT FK402 FOREIGN KEY(by_agent_site,by_agent_id) REFERENCES agent(org_agent_site,agent_id)
 ;
  ALTER TABLE meas_sample_test ADD CONSTRAINT FK403 FOREIGN KEY(test_asset_site,test_asset_id) REFERENCES asset(asset_org_site,asset_id)
 ;
  ALTER TABLE meas_sample_test ADD CONSTRAINT FK404 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE test_num_results ADD CONSTRAINT FK1065 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE test_num_results ADD CONSTRAINT FK1066 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE test_num_results ADD CONSTRAINT FK1067 FOREIGN KEY(meas_loc_site,meas_loc_id,gmt_event,sample_order_seq,test_order_seq) REFERENCES meas_sample_test(meas_loc_site,meas_loc_id,gmt_event,sample_order_seq,test_order_seq)
 ;
  ALTER TABLE test_num_results ADD CONSTRAINT FK1068 FOREIGN KEY(strn_db_site,strn_db_id,str_num_type_code) REFERENCES test_result_ntype(strn_db_site,strn_db_id,str_num_type_code)
 ;
  ALTER TABLE test_num_results ADD CONSTRAINT FK1069 FOREIGN KEY(eu_db_site,eu_db_id,eu_type_code) REFERENCES eng_unit_type(eu_db_site,eu_db_id,eu_type_code)
 ;
  ALTER TABLE test_chr_results ADD CONSTRAINT FK1050 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE test_chr_results ADD CONSTRAINT FK1051 FOREIGN KEY(meas_loc_site,meas_loc_id,gmt_event,sample_order_seq,test_order_seq) REFERENCES meas_sample_test(meas_loc_site,meas_loc_id,gmt_event,sample_order_seq,test_order_seq)
 ;
  ALTER TABLE test_chr_results ADD CONSTRAINT FK1052 FOREIGN KEY(strc_db_site,strc_db_id,str_chr_type_code) REFERENCES test_result_ctype(strc_db_site,strc_db_id,str_chr_type_code)
 ;
  ALTER TABLE test_chr_results ADD CONSTRAINT FK1053 FOREIGN KEY(eu_db_site,eu_db_id,eu_type_code) REFERENCES eng_unit_type(eu_db_site,eu_db_id,eu_type_code)
 ;
  ALTER TABLE test_chr_results ADD CONSTRAINT FK1054 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE test_remark ADD CONSTRAINT FK1070 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE test_remark ADD CONSTRAINT FK1071 FOREIGN KEY(meas_loc_site,meas_loc_id,gmt_event,sample_order_seq,test_order_seq) REFERENCES meas_sample_test(meas_loc_site,meas_loc_id,gmt_event,sample_order_seq,test_order_seq)
 ;
  ALTER TABLE test_remark ADD CONSTRAINT FK1072 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE test_histogram ADD CONSTRAINT FK1055 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE test_histogram ADD CONSTRAINT FK1056 FOREIGN KEY(meas_loc_site,meas_loc_id,gmt_event,sample_order_seq,test_order_seq) REFERENCES meas_sample_test(meas_loc_site,meas_loc_id,gmt_event,sample_order_seq,test_order_seq)
 ;
  ALTER TABLE test_histogram ADD CONSTRAINT FK1057 FOREIGN KEY(strn_db_site,strn_db_id,str_num_type_code) REFERENCES test_result_ntype(strn_db_site,strn_db_id,str_num_type_code)
 ;
  ALTER TABLE test_histogram ADD CONSTRAINT FK1058 FOREIGN KEY(eu_db_site,eu_db_id,eu_type_code) REFERENCES eng_unit_type(eu_db_site,eu_db_id,eu_type_code)
 ;
  ALTER TABLE test_histogram ADD CONSTRAINT FK1059 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE test_nres_alarm ADD CONSTRAINT FK1060 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE test_nres_alarm ADD CONSTRAINT FK1061 FOREIGN KEY(meas_loc_site,meas_loc_id,gmt_event,sample_order_seq,test_order_seq,ordering_seq) REFERENCES test_num_results(meas_loc_site,meas_loc_id,gmt_event,sample_order_seq,test_order_seq,ordering_seq)
 ;
  ALTER TABLE test_nres_alarm ADD CONSTRAINT FK1062 FOREIGN KEY(al_db_site,al_db_id,al_type_code) REFERENCES alarm_type(al_db_site,al_db_id,al_type_code)
 ;
  ALTER TABLE test_nres_alarm ADD CONSTRAINT FK1063 FOREIGN KEY(org_agent_site,agent_id) REFERENCES agent(org_agent_site,agent_id)
 ;
  ALTER TABLE test_nres_alarm ADD CONSTRAINT FK1064 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE test_al_assoc_reg ADD CONSTRAINT FK1036 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE test_al_assoc_reg ADD CONSTRAINT FK1037 FOREIGN KEY(meas_loc_site,meas_loc_id,gmt_event,sample_order_seq,test_order_seq,ordering_seq,al_db_site,al_db_id,al_type_code) REFERENCES test_nres_alarm(meas_loc_site,meas_loc_id,gmt_event,sample_order_seq,test_order_seq,ordering_seq,al_db_site,al_db_id,al_type_code)
 ;
  ALTER TABLE test_al_assoc_reg ADD CONSTRAINT FK1038 FOREIGN KEY(al_meas_loc_site,al_meas_loc_id,alarm_db_site,alarm_db_id,al_ordering_seq) REFERENCES mloc_test_alrm_rg(alarm_db_site,alarm_db_id,meas_loc_site,meas_loc_id,ordering_seq)
 ;
  ALTER TABLE test_al_assoc_reg ADD CONSTRAINT FK1039 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE test_blob_results ADD CONSTRAINT FK1040 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE test_blob_results ADD CONSTRAINT FK1041 FOREIGN KEY(meas_loc_site,meas_loc_id,gmt_event,sample_order_seq,test_order_seq) REFERENCES meas_sample_test(meas_loc_site,meas_loc_id,gmt_event,sample_order_seq,test_order_seq)
 ;
  ALTER TABLE test_blob_results ADD CONSTRAINT FK1042 FOREIGN KEY(strb_db_site,strb_db_id,str_blob_type_code) REFERENCES test_result_btype(strb_db_site,strb_db_id,str_blob_type_code)
 ;
  ALTER TABLE test_blob_results ADD CONSTRAINT FK1043 FOREIGN KEY(bd_db_site,bd_db_id,bd_type_code) REFERENCES blob_data_type(bd_db_site,bd_db_id,bd_type_code)
 ;
  ALTER TABLE test_blob_results ADD CONSTRAINT FK1044 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE test_bres_alarm ADD CONSTRAINT FK1045 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE test_bres_alarm ADD CONSTRAINT FK1046 FOREIGN KEY(meas_loc_site,meas_loc_id,gmt_event,sample_order_seq,test_order_seq,ordering_seq) REFERENCES test_blob_results(meas_loc_site,meas_loc_id,gmt_event,sample_order_seq,test_order_seq,ordering_seq)
 ;
  ALTER TABLE test_bres_alarm ADD CONSTRAINT FK1047 FOREIGN KEY(al_db_site,al_db_id,al_type_code) REFERENCES alarm_type(al_db_site,al_db_id,al_type_code)
 ;
  ALTER TABLE test_bres_alarm ADD CONSTRAINT FK1048 FOREIGN KEY(org_agent_site,agent_id) REFERENCES agent(org_agent_site,agent_id)
 ;
  ALTER TABLE test_bres_alarm ADD CONSTRAINT FK1049 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE sg_type_blob_data ADD CONSTRAINT FK891 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE sg_type_blob_data ADD CONSTRAINT FK892 FOREIGN KEY(db_site,db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE sg_type_blob_data ADD CONSTRAINT FK893 FOREIGN KEY(sg_db_site,sg_db_id,sg_type_code) REFERENCES segment_type(sg_db_site,sg_db_id,sg_type_code)
 ;
  ALTER TABLE sg_type_blob_data ADD CONSTRAINT FK894 FOREIGN KEY(bd_db_site,bd_db_id,bd_type_code) REFERENCES blob_data_type(bd_db_site,bd_db_id,bd_type_code)
 ;
  ALTER TABLE sg_type_blob_data ADD CONSTRAINT FK1234 FOREIGN KEY(blct_db_site,blct_db_id,blc_type_code) REFERENCES blob_content_type(blct_db_site,blct_db_id,blc_type_code)
 ;
  ALTER TABLE sg_type_blob_data ADD CONSTRAINT FK895 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE segment_blob_data ADD CONSTRAINT FK657 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE segment_blob_data ADD CONSTRAINT FK658 FOREIGN KEY(segment_site,segment_id) REFERENCES segment(segment_site,segment_id)
 ;
  ALTER TABLE segment_blob_data ADD CONSTRAINT FK659 FOREIGN KEY(bd_db_site,bd_db_id,bd_type_code) REFERENCES blob_data_type(bd_db_site,bd_db_id,bd_type_code)
 ;
  ALTER TABLE segment_blob_data ADD CONSTRAINT FK1236 FOREIGN KEY(blct_db_site,blct_db_id,blc_type_code) REFERENCES blob_content_type(blct_db_site,blct_db_id,blc_type_code)
 ;
  ALTER TABLE segment_blob_data ADD CONSTRAINT FK660 FOREIGN KEY(db_site,db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE segment_blob_data ADD CONSTRAINT FK661 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE model_blob_data ADD CONSTRAINT FK471 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE model_blob_data ADD CONSTRAINT FK472 FOREIGN KEY(db_site,db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE model_blob_data ADD CONSTRAINT FK473 FOREIGN KEY(model_db_site,model_db_id,model_id) REFERENCES model(model_db_site,model_db_id,model_id)
 ;
  ALTER TABLE model_blob_data ADD CONSTRAINT FK474 FOREIGN KEY(bd_db_site,bd_db_id,bd_type_code) REFERENCES blob_data_type(bd_db_site,bd_db_id,bd_type_code)
 ;
  ALTER TABLE model_blob_data ADD CONSTRAINT FK1237 FOREIGN KEY(blct_db_site,blct_db_id,blc_type_code) REFERENCES blob_content_type(blct_db_site,blct_db_id,blc_type_code)
 ;
  ALTER TABLE model_blob_data ADD CONSTRAINT FK475 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE as_type_blob_data ADD CONSTRAINT FK210 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE as_type_blob_data ADD CONSTRAINT FK211 FOREIGN KEY(db_site,db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE as_type_blob_data ADD CONSTRAINT FK212 FOREIGN KEY(as_db_site,as_db_id,as_type_code) REFERENCES asset_type(as_db_site,as_db_id,as_type_code)
 ;
  ALTER TABLE as_type_blob_data ADD CONSTRAINT FK213 FOREIGN KEY(bd_db_site,bd_db_id,bd_type_code) REFERENCES blob_data_type(bd_db_site,bd_db_id,bd_type_code)
 ;
  ALTER TABLE as_type_blob_data ADD CONSTRAINT FK1235 FOREIGN KEY(blct_db_site,blct_db_id,blc_type_code) REFERENCES blob_content_type(blct_db_site,blct_db_id,blc_type_code)
 ;
  ALTER TABLE as_type_blob_data ADD CONSTRAINT FK214 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE asset_blob_data ADD CONSTRAINT FK238 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE asset_blob_data ADD CONSTRAINT FK239 FOREIGN KEY(db_site,db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE asset_blob_data ADD CONSTRAINT FK240 FOREIGN KEY(asset_org_site,asset_id) REFERENCES asset(asset_org_site,asset_id)
 ;
  ALTER TABLE asset_blob_data ADD CONSTRAINT FK241 FOREIGN KEY(bd_db_site,bd_db_id,bd_type_code) REFERENCES blob_data_type(bd_db_site,bd_db_id,bd_type_code)
 ;
  ALTER TABLE asset_blob_data ADD CONSTRAINT FK1238 FOREIGN KEY(blct_db_site,blct_db_id,blc_type_code) REFERENCES blob_content_type(blct_db_site,blct_db_id,blc_type_code)
 ;
  ALTER TABLE asset_blob_data ADD CONSTRAINT FK242 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE olist_blob_data ADD CONSTRAINT FK576 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE olist_blob_data ADD CONSTRAINT FK577 FOREIGN KEY(db_site,db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE olist_blob_data ADD CONSTRAINT FK578 FOREIGN KEY(ord_list_db_site,ord_list_db_id,ord_list_id) REFERENCES ordered_list(ord_list_db_site,ord_list_db_id,ord_list_id)
 ;
  ALTER TABLE olist_blob_data ADD CONSTRAINT FK579 FOREIGN KEY(bd_db_site,bd_db_id,bd_type_code) REFERENCES blob_data_type(bd_db_site,bd_db_id,bd_type_code)
 ;
  ALTER TABLE olist_blob_data ADD CONSTRAINT FK1239 FOREIGN KEY(blct_db_site,blct_db_id,blc_type_code) REFERENCES blob_content_type(blct_db_site,blct_db_id,blc_type_code)
 ;
  ALTER TABLE olist_blob_data ADD CONSTRAINT FK580 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE mevent_blob_data ADD CONSTRAINT FK405 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE mevent_blob_data ADD CONSTRAINT FK406 FOREIGN KEY(meas_loc_site,meas_loc_id,gmt_event) REFERENCES meas_event(meas_loc_site,meas_loc_id,gmt_event)
 ;
  ALTER TABLE mevent_blob_data ADD CONSTRAINT FK407 FOREIGN KEY(mebt_db_site,mebt_db_id,meb_type_code) REFERENCES mevent_blob_type(mebt_db_site,mebt_db_id,meb_type_code)
 ;
  ALTER TABLE mevent_blob_data ADD CONSTRAINT FK408 FOREIGN KEY(bd_db_site,bd_db_id,bd_type_code) REFERENCES blob_data_type(bd_db_site,bd_db_id,bd_type_code)
 ;
  ALTER TABLE mevent_blob_data ADD CONSTRAINT FK409 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE blob_grid_data ADD CONSTRAINT FK317 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE blob_grid_data ADD CONSTRAINT FK318 FOREIGN KEY(meas_loc_site,meas_loc_id,gmt_event,mebt_db_site,mebt_db_id,meb_type_code) REFERENCES mevent_blob_data(meas_loc_site,meas_loc_id,gmt_event,mebt_db_site,mebt_db_id,meb_type_code)
 ;
  ALTER TABLE blob_grid_data ADD CONSTRAINT FK319 FOREIGN KEY(eu_db_site,eu_db_id,eu_type_code) REFERENCES eng_unit_type(eu_db_site,eu_db_id,eu_type_code)
 ;
  ALTER TABLE blob_grid_data ADD CONSTRAINT FK320 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE blob_alarm ADD CONSTRAINT FK303 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE blob_alarm ADD CONSTRAINT FK304 FOREIGN KEY(meas_loc_site,meas_loc_id,gmt_event,mebt_db_site,mebt_db_id,meb_type_code) REFERENCES mevent_blob_data(meas_loc_site,meas_loc_id,gmt_event,mebt_db_site,mebt_db_id,meb_type_code)
 ;
  ALTER TABLE blob_alarm ADD CONSTRAINT FK305 FOREIGN KEY(al_db_site,al_type_code,al_db_id) REFERENCES alarm_type(al_db_site,al_db_id,al_type_code)
 ;
  ALTER TABLE blob_alarm ADD CONSTRAINT FK306 FOREIGN KEY(org_agent_site,agent_id) REFERENCES agent(org_agent_site,agent_id)
 ;
  ALTER TABLE blob_alarm ADD CONSTRAINT FK307 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE blob_area_alarm ADD CONSTRAINT FK308 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE blob_area_alarm ADD CONSTRAINT FK309 FOREIGN KEY(meas_loc_site,meas_loc_id,gmt_event,mebt_db_site,mebt_db_id,meb_type_code) REFERENCES mevent_blob_data(meas_loc_site,meas_loc_id,gmt_event,mebt_db_site,mebt_db_id,meb_type_code)
 ;
  ALTER TABLE blob_area_alarm ADD CONSTRAINT FK310 FOREIGN KEY(high_db_site,high_db_id,high_type_code) REFERENCES highlight_type(high_db_site,high_db_id,high_type_code)
 ;
  ALTER TABLE blob_area_alarm ADD CONSTRAINT FK311 FOREIGN KEY(al_db_site,al_db_id,al_type_code) REFERENCES alarm_type(al_db_site,al_db_id,al_type_code)
 ;
  ALTER TABLE blob_area_alarm ADD CONSTRAINT FK312 FOREIGN KEY(org_agent_site,agent_id) REFERENCES agent(org_agent_site,agent_id)
 ;
  ALTER TABLE blob_area_alarm ADD CONSTRAINT FK313 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE segment_function ADD CONSTRAINT FK679 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE segment_function ADD CONSTRAINT FK680 FOREIGN KEY(db_site,db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE segment_function ADD CONSTRAINT FK681 FOREIGN KEY(segment_site,segment_id) REFERENCES segment(segment_site,segment_id)
 ;
  ALTER TABLE segment_function ADD CONSTRAINT FK682 FOREIGN KEY(by_org_asite,by_agent_id) REFERENCES agent(org_agent_site,agent_id)
 ;
  ALTER TABLE segment_function ADD CONSTRAINT FK683 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE asset_function ADD CONSTRAINT FK259 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE asset_function ADD CONSTRAINT FK260 FOREIGN KEY(db_site,db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE asset_function ADD CONSTRAINT FK261 FOREIGN KEY(asset_org_site,asset_id) REFERENCES asset(asset_org_site,asset_id)
 ;
  ALTER TABLE asset_function ADD CONSTRAINT FK262 FOREIGN KEY(by_org_asite,by_agent_id) REFERENCES agent(org_agent_site,agent_id)
 ;
  ALTER TABLE asset_function ADD CONSTRAINT FK263 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE sg_type_function ADD CONSTRAINT FK896 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE sg_type_function ADD CONSTRAINT FK897 FOREIGN KEY(db_site,db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE sg_type_function ADD CONSTRAINT FK898 FOREIGN KEY(sg_db_site,sg_db_id,sg_type_code) REFERENCES segment_type(sg_db_site,sg_db_id,sg_type_code)
 ;
  ALTER TABLE sg_type_function ADD CONSTRAINT FK899 FOREIGN KEY(by_org_asite,by_agent_id) REFERENCES agent(org_agent_site,agent_id)
 ;
  ALTER TABLE sg_type_function ADD CONSTRAINT FK900 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE as_type_function ADD CONSTRAINT FK215 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE as_type_function ADD CONSTRAINT FK216 FOREIGN KEY(db_site,db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE as_type_function ADD CONSTRAINT FK217 FOREIGN KEY(as_db_site,as_db_id,as_type_code) REFERENCES asset_type(as_db_site,as_db_id,as_type_code)
 ;
  ALTER TABLE as_type_function ADD CONSTRAINT FK218 FOREIGN KEY(by_org_asite,by_agent_id) REFERENCES agent(org_agent_site,agent_id)
 ;
  ALTER TABLE as_type_function ADD CONSTRAINT FK219 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE model_function ADD CONSTRAINT FK485 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE model_function ADD CONSTRAINT FK486 FOREIGN KEY(db_site,db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE model_function ADD CONSTRAINT FK487 FOREIGN KEY(model_db_site,model_db_id,model_id) REFERENCES model(model_db_site,model_db_id,model_id)
 ;
  ALTER TABLE model_function ADD CONSTRAINT FK488 FOREIGN KEY(by_org_asite,by_agent_id) REFERENCES agent(org_agent_site,agent_id)
 ;
  ALTER TABLE model_function ADD CONSTRAINT FK489 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE sg_ev_sg_func_link ADD CONSTRAINT FK726 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE sg_ev_sg_func_link ADD CONSTRAINT FK727 FOREIGN KEY(ev_segment_site,ev_segment_id,ev_db_site,ev_db_id,event_type_code,gmt_event_start) REFERENCES segment_event(segment_site,segment_id,ev_db_site,ev_db_id,event_type_code,gmt_event_start)
 ;
  ALTER TABLE sg_ev_sg_func_link ADD CONSTRAINT FK728 FOREIGN KEY(fn_db_site,fn_db_id,fn_segment_site,fn_segment_id,ordering_seq) REFERENCES segment_function(db_site,db_id,segment_site,segment_id,ordering_seq)
 ;
  ALTER TABLE sg_ev_sg_func_link ADD CONSTRAINT FK729 FOREIGN KEY(by_org_asite,by_agent_id) REFERENCES agent(org_agent_site,agent_id)
 ;
  ALTER TABLE sg_ev_sg_func_link ADD CONSTRAINT FK730 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE as_ev_as_func_link ADD CONSTRAINT FK37 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE as_ev_as_func_link ADD CONSTRAINT FK38 FOREIGN KEY(asset_org_site,asset_id,ev_db_site,ev_db_id,event_type_code,gmt_event_start) REFERENCES asset_event(asset_org_site,asset_id,ev_db_site,ev_db_id,event_type_code,gmt_event_start)
 ;
  ALTER TABLE as_ev_as_func_link ADD CONSTRAINT FK39 FOREIGN KEY(db_site,db_id,fc_as_org_site,fc_as_id,ordering_seq) REFERENCES asset_function(db_site,db_id,asset_org_site,asset_id,ordering_seq)
 ;
  ALTER TABLE as_ev_as_func_link ADD CONSTRAINT FK40 FOREIGN KEY(by_org_asite,by_agent_id) REFERENCES agent(org_agent_site,agent_id)
 ;
  ALTER TABLE as_ev_as_func_link ADD CONSTRAINT FK41 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE sg_event_num_data ADD CONSTRAINT FK731 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE sg_event_num_data ADD CONSTRAINT FK732 FOREIGN KEY(segment_site,segment_id,ev_db_site,ev_db_id,event_type_code,gmt_event_start) REFERENCES segment_event(segment_site,segment_id,ev_db_site,ev_db_id,event_type_code,gmt_event_start)
 ;
  ALTER TABLE sg_event_num_data ADD CONSTRAINT FK733 FOREIGN KEY(en_db_site,en_db_id,en_type_code) REFERENCES ev_num_data_type(en_db_site,en_db_id,en_type_code)
 ;
  ALTER TABLE sg_event_num_data ADD CONSTRAINT FK734 FOREIGN KEY(eu_db_site,eu_db_id,eu_type_code) REFERENCES eng_unit_type(eu_db_site,eu_db_id,eu_type_code)
 ;
  ALTER TABLE sg_event_num_data ADD CONSTRAINT FK735 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE as_event_num_data ADD CONSTRAINT FK47 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE as_event_num_data ADD CONSTRAINT FK48 FOREIGN KEY(asset_org_site,asset_id,ev_db_site,ev_db_id,event_type_code,gmt_event_start) REFERENCES asset_event(asset_org_site,asset_id,ev_db_site,ev_db_id,event_type_code,gmt_event_start)
 ;
  ALTER TABLE as_event_num_data ADD CONSTRAINT FK49 FOREIGN KEY(en_db_site,en_db_id,en_type_code) REFERENCES ev_num_data_type(en_db_site,en_db_id,en_type_code)
 ;
  ALTER TABLE as_event_num_data ADD CONSTRAINT FK50 FOREIGN KEY(eu_db_site,eu_db_id,eu_type_code) REFERENCES eng_unit_type(eu_db_site,eu_db_id,eu_type_code)
 ;
  ALTER TABLE as_event_num_data ADD CONSTRAINT FK51 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE sg_ev_meas_event ADD CONSTRAINT FK721 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE sg_ev_meas_event ADD CONSTRAINT FK722 FOREIGN KEY(segment_site,segment_id,ev_db_site,ev_db_id,event_type_code,gmt_event_start) REFERENCES segment_event(segment_site,segment_id,ev_db_site,ev_db_id,event_type_code,gmt_event_start)
 ;
  ALTER TABLE sg_ev_meas_event ADD CONSTRAINT FK723 FOREIGN KEY(meas_loc_site,meas_loc_id,gmt_event) REFERENCES meas_event(meas_loc_site,meas_loc_id,gmt_event)
 ;
  ALTER TABLE sg_ev_meas_event ADD CONSTRAINT FK724 FOREIGN KEY(by_org_asite,by_agent_id) REFERENCES agent(org_agent_site,agent_id)
 ;
  ALTER TABLE sg_ev_meas_event ADD CONSTRAINT FK725 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE as_ev_meas_event ADD CONSTRAINT FK42 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE as_ev_meas_event ADD CONSTRAINT FK43 FOREIGN KEY(asset_org_site,asset_id,ev_db_site,ev_db_id,event_type_code,gmt_event_start) REFERENCES asset_event(asset_org_site,asset_id,ev_db_site,ev_db_id,event_type_code,gmt_event_start)
 ;
  ALTER TABLE as_ev_meas_event ADD CONSTRAINT FK44 FOREIGN KEY(meas_loc_site,meas_loc_id,gmt_event) REFERENCES meas_event(meas_loc_site,meas_loc_id,gmt_event)
 ;
  ALTER TABLE as_ev_meas_event ADD CONSTRAINT FK45 FOREIGN KEY(by_org_asite,by_agent_id) REFERENCES agent(org_agent_site,agent_id)
 ;
  ALTER TABLE as_ev_meas_event ADD CONSTRAINT FK46 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE segment_event_link ADD CONSTRAINT FK675 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE segment_event_link ADD CONSTRAINT FK676 FOREIGN KEY(segment_site,segment_id,ev_db_site,ev_db_id,event_type_code,gmt_event_start) REFERENCES segment_event(segment_site,segment_id,ev_db_site,ev_db_id,event_type_code,gmt_event_start)
 ;
  ALTER TABLE segment_event_link ADD CONSTRAINT FK677 FOREIGN KEY(caused_sg_site,caused_sg_id,caused_ev_db_site,caused_ev_db_id,caused_ev_code,caused_gmt) REFERENCES segment_event(segment_site,segment_id,ev_db_site,ev_db_id,event_type_code,gmt_event_start)
 ;
  ALTER TABLE segment_event_link ADD CONSTRAINT FK678 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE asset_event_link ADD CONSTRAINT FK255 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE asset_event_link ADD CONSTRAINT FK256 FOREIGN KEY(asset_org_site,asset_id,ev_db_site,ev_db_id,event_type_code,gmt_event_start) REFERENCES asset_event(asset_org_site,asset_id,ev_db_site,ev_db_id,event_type_code,gmt_event_start)
 ;
  ALTER TABLE asset_event_link ADD CONSTRAINT FK257 FOREIGN KEY(caused_as_site,caused_as_id,caused_ev_db_site,caused_ev_db_id,caused_ev_code,caused_gmt) REFERENCES asset_event(asset_org_site,asset_id,ev_db_site,ev_db_id,event_type_code,gmt_event_start)
 ;
  ALTER TABLE asset_event_link ADD CONSTRAINT FK258 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE sg_hyp_event ADD CONSTRAINT FK756 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE sg_hyp_event ADD CONSTRAINT FK758 FOREIGN KEY(sg_hyp_db_site,sg_hyp_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE sg_hyp_event ADD CONSTRAINT FK759 FOREIGN KEY(segment_site,segment_id) REFERENCES segment(segment_site,segment_id)
 ;
  ALTER TABLE sg_hyp_event ADD CONSTRAINT FK760 FOREIGN KEY(ev_db_site,ev_db_id,event_type_code) REFERENCES sg_as_event_type(ev_db_site,ev_db_id,event_type_code)
 ;
  ALTER TABLE sg_hyp_event ADD CONSTRAINT FK1421 FOREIGN KEY(severity_lev_db_site,severity_lev_db_id,severity_lev_type_code) REFERENCES severity_level_type(severity_lev_db_site,severity_lev_db_id,severity_lev_type_code)
 ;
  ALTER TABLE sg_hyp_event ADD CONSTRAINT FK761 FOREIGN KEY(by_org_asite,by_agent_id) REFERENCES agent(org_agent_site,agent_id)
 ;
  ALTER TABLE sg_hyp_event ADD CONSTRAINT FK762 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE as_hyp_event ADD CONSTRAINT FK72 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE as_hyp_event ADD CONSTRAINT FK74 FOREIGN KEY(as_hyp_db_site,as_hyp_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE as_hyp_event ADD CONSTRAINT FK75 FOREIGN KEY(asset_org_site,asset_id) REFERENCES asset(asset_org_site,asset_id)
 ;
  ALTER TABLE as_hyp_event ADD CONSTRAINT FK76 FOREIGN KEY(ev_db_site,ev_db_id,event_type_code) REFERENCES sg_as_event_type(ev_db_site,ev_db_id,event_type_code)
 ;
  ALTER TABLE as_hyp_event ADD CONSTRAINT FK1408 FOREIGN KEY(severity_lev_db_site,severity_lev_db_id,severity_lev_type_code) REFERENCES severity_level_type(severity_lev_db_site,severity_lev_db_id,severity_lev_type_code)
 ;
  ALTER TABLE as_hyp_event ADD CONSTRAINT FK77 FOREIGN KEY(by_org_asite,by_agent_id) REFERENCES agent(org_agent_site,agent_id)
 ;
  ALTER TABLE as_hyp_event ADD CONSTRAINT FK78 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE sg_typ_hyp_event ADD CONSTRAINT FK880 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE sg_typ_hyp_event ADD CONSTRAINT FK882 FOREIGN KEY(sgt_hyp_db_site,sgt_hyp_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE sg_typ_hyp_event ADD CONSTRAINT FK883 FOREIGN KEY(sg_db_site,sg_db_id,sg_type_code) REFERENCES segment_type(sg_db_site,sg_db_id,sg_type_code)
 ;
  ALTER TABLE sg_typ_hyp_event ADD CONSTRAINT FK884 FOREIGN KEY(ev_db_site,ev_db_id,event_type_code) REFERENCES sg_as_event_type(ev_db_site,ev_db_id,event_type_code)
 ;
  ALTER TABLE sg_typ_hyp_event ADD CONSTRAINT FK1424 FOREIGN KEY(severity_lev_db_site,severity_lev_db_id,severity_lev_type_code) REFERENCES severity_level_type(severity_lev_db_site,severity_lev_db_id,severity_lev_type_code)
 ;
  ALTER TABLE sg_typ_hyp_event ADD CONSTRAINT FK885 FOREIGN KEY(by_org_asite,by_agent_id) REFERENCES agent(org_agent_site,agent_id)
 ;
  ALTER TABLE sg_typ_hyp_event ADD CONSTRAINT FK886 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE as_typ_hyp_event ADD CONSTRAINT FK199 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE as_typ_hyp_event ADD CONSTRAINT FK201 FOREIGN KEY(ast_hyp_db_site,ast_hyp_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE as_typ_hyp_event ADD CONSTRAINT FK202 FOREIGN KEY(as_db_site,as_db_id,as_type_code) REFERENCES asset_type(as_db_site,as_db_id,as_type_code)
 ;
  ALTER TABLE as_typ_hyp_event ADD CONSTRAINT FK203 FOREIGN KEY(ev_db_site,ev_db_id,event_type_code) REFERENCES sg_as_event_type(ev_db_site,ev_db_id,event_type_code)
 ;
  ALTER TABLE as_typ_hyp_event ADD CONSTRAINT FK1411 FOREIGN KEY(severity_lev_db_site,severity_lev_db_id,severity_lev_type_code) REFERENCES severity_level_type(severity_lev_db_site,severity_lev_db_id,severity_lev_type_code)
 ;
  ALTER TABLE as_typ_hyp_event ADD CONSTRAINT FK204 FOREIGN KEY(by_org_asite,by_agent_id) REFERENCES agent(org_agent_site,agent_id)
 ;
  ALTER TABLE as_typ_hyp_event ADD CONSTRAINT FK205 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE model_hyp_event ADD CONSTRAINT FK504 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE model_hyp_event ADD CONSTRAINT FK506 FOREIGN KEY(mod_hyp_db_site,mod_hyp_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE model_hyp_event ADD CONSTRAINT FK507 FOREIGN KEY(model_db_site,model_db_id,model_id) REFERENCES model(model_db_site,model_db_id,model_id)
 ;
  ALTER TABLE model_hyp_event ADD CONSTRAINT FK508 FOREIGN KEY(ev_db_site,ev_db_id,event_type_code) REFERENCES sg_as_event_type(ev_db_site,ev_db_id,event_type_code)
 ;
  ALTER TABLE model_hyp_event ADD CONSTRAINT FK1414 FOREIGN KEY(severity_lev_db_site,severity_lev_db_id,severity_lev_type_code) REFERENCES severity_level_type(severity_lev_db_site,severity_lev_db_id,severity_lev_type_code)
 ;
  ALTER TABLE model_hyp_event ADD CONSTRAINT FK509 FOREIGN KEY(by_org_asite,by_agent_id) REFERENCES agent(org_agent_site,agent_id)
 ;
  ALTER TABLE model_hyp_event ADD CONSTRAINT FK510 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE sg_hyp_event_link ADD CONSTRAINT FK763 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE sg_hyp_event_link ADD CONSTRAINT FK764 FOREIGN KEY(sg_hyp_db_site,sg_hyp_db_id,sg_hyp_event_id) REFERENCES sg_hyp_event(sg_hyp_db_site,sg_hyp_db_id,sg_hyp_event_id)
 ;
  ALTER TABLE sg_hyp_event_link ADD CONSTRAINT FK765 FOREIGN KEY(caused_db_site,caused_db_id,caused_event_id) REFERENCES sg_hyp_event(sg_hyp_db_site,sg_hyp_db_id,sg_hyp_event_id)
 ;
  ALTER TABLE sg_hyp_event_link ADD CONSTRAINT FK766 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE as_hyp_event_link ADD CONSTRAINT FK79 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE as_hyp_event_link ADD CONSTRAINT FK80 FOREIGN KEY(as_hyp_db_site,as_hyp_db_id,as_hyp_event_id) REFERENCES as_hyp_event(as_hyp_db_site,as_hyp_db_id,as_hyp_event_id)
 ;
  ALTER TABLE as_hyp_event_link ADD CONSTRAINT FK81 FOREIGN KEY(caused_db_site,caused_db_id,caused_event_id) REFERENCES as_hyp_event(as_hyp_db_site,as_hyp_db_id,as_hyp_event_id)
 ;
  ALTER TABLE as_hyp_event_link ADD CONSTRAINT FK82 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE sg_typ_hyp_ev_link ADD CONSTRAINT FK871 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE sg_typ_hyp_ev_link ADD CONSTRAINT FK872 FOREIGN KEY(sgt_hyp_db_site,sgt_hyp_db_id,sgt_hyp_event_id) REFERENCES sg_typ_hyp_event(sgt_hyp_db_site,sgt_hyp_db_id,sgt_hyp_event_id)
 ;
  ALTER TABLE sg_typ_hyp_ev_link ADD CONSTRAINT FK873 FOREIGN KEY(caused_db_site,caused_db_id,caused_event_id) REFERENCES sg_typ_hyp_event(sgt_hyp_db_site,sgt_hyp_db_id,sgt_hyp_event_id)
 ;
  ALTER TABLE sg_typ_hyp_ev_link ADD CONSTRAINT FK874 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE as_typ_hyp_ev_link ADD CONSTRAINT FK190 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE as_typ_hyp_ev_link ADD CONSTRAINT FK191 FOREIGN KEY(ast_hyp_db_site,ast_hyp_db_id,ast_hyp_event_id) REFERENCES as_typ_hyp_event(ast_hyp_db_site,ast_hyp_db_id,ast_hyp_event_id)
 ;
  ALTER TABLE as_typ_hyp_ev_link ADD CONSTRAINT FK192 FOREIGN KEY(caused_db_site,caused_db_id,caused_event_id) REFERENCES as_typ_hyp_event(ast_hyp_db_site,ast_hyp_db_id,ast_hyp_event_id)
 ;
  ALTER TABLE as_typ_hyp_ev_link ADD CONSTRAINT FK193 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE model_hyp_ev_link ADD CONSTRAINT FK495 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE model_hyp_ev_link ADD CONSTRAINT FK496 FOREIGN KEY(mod_hyp_db_site,mod_hyp_db_id,mod_hyp_event_id) REFERENCES model_hyp_event(mod_hyp_db_site,mod_hyp_db_id,mod_hyp_event_id)
 ;
  ALTER TABLE model_hyp_ev_link ADD CONSTRAINT FK497 FOREIGN KEY(caused_db_site,caused_db_id,caused_event_id) REFERENCES model_hyp_event(mod_hyp_db_site,mod_hyp_db_id,mod_hyp_event_id)
 ;
  ALTER TABLE model_hyp_ev_link ADD CONSTRAINT FK498 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE sg_hyp_ev_num_data ADD CONSTRAINT FK746 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE sg_hyp_ev_num_data ADD CONSTRAINT FK747 FOREIGN KEY(sg_hyp_db_site,sg_hyp_db_id,sg_hyp_event_id) REFERENCES sg_hyp_event(sg_hyp_db_site,sg_hyp_db_id,sg_hyp_event_id)
 ;
  ALTER TABLE sg_hyp_ev_num_data ADD CONSTRAINT FK748 FOREIGN KEY(en_db_site,en_db_id,en_type_code) REFERENCES ev_num_data_type(en_db_site,en_db_id,en_type_code)
 ;
  ALTER TABLE sg_hyp_ev_num_data ADD CONSTRAINT FK749 FOREIGN KEY(eu_db_site,eu_db_id,eu_type_code) REFERENCES eng_unit_type(eu_db_site,eu_db_id,eu_type_code)
 ;
  ALTER TABLE sg_hyp_ev_num_data ADD CONSTRAINT FK750 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE as_hyp_ev_num_data ADD CONSTRAINT FK67 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE as_hyp_ev_num_data ADD CONSTRAINT FK68 FOREIGN KEY(as_hyp_db_site,as_hyp_db_id,as_hyp_event_id) REFERENCES as_hyp_event(as_hyp_db_site,as_hyp_db_id,as_hyp_event_id)
 ;
  ALTER TABLE as_hyp_ev_num_data ADD CONSTRAINT FK69 FOREIGN KEY(en_db_site,en_db_id,en_type_code) REFERENCES ev_num_data_type(en_db_site,en_db_id,en_type_code)
 ;
  ALTER TABLE as_hyp_ev_num_data ADD CONSTRAINT FK70 FOREIGN KEY(eu_db_site,eu_db_id,eu_type_code) REFERENCES eng_unit_type(eu_db_site,eu_db_id,eu_type_code)
 ;
  ALTER TABLE as_hyp_ev_num_data ADD CONSTRAINT FK71 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE sg_typ_hyp_ev_num_data ADD CONSTRAINT FK875 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE sg_typ_hyp_ev_num_data ADD CONSTRAINT FK876 FOREIGN KEY(sgt_hyp_db_site,sgt_hyp_db_id,sgt_hyp_event_id) REFERENCES sg_typ_hyp_event(sgt_hyp_db_site,sgt_hyp_db_id,sgt_hyp_event_id)
 ;
  ALTER TABLE sg_typ_hyp_ev_num_data ADD CONSTRAINT FK877 FOREIGN KEY(en_db_site,en_db_id,en_type_code) REFERENCES ev_num_data_type(en_db_site,en_db_id,en_type_code)
 ;
  ALTER TABLE sg_typ_hyp_ev_num_data ADD CONSTRAINT FK878 FOREIGN KEY(eu_db_site,eu_db_id,eu_type_code) REFERENCES eng_unit_type(eu_db_site,eu_db_id,eu_type_code)
 ;
  ALTER TABLE sg_typ_hyp_ev_num_data ADD CONSTRAINT FK879 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE as_typ_hyp_ev_num_data ADD CONSTRAINT FK194 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE as_typ_hyp_ev_num_data ADD CONSTRAINT FK195 FOREIGN KEY(ast_hyp_db_site,ast_hyp_db_id,ast_hyp_event_id) REFERENCES as_typ_hyp_event(ast_hyp_db_site,ast_hyp_db_id,ast_hyp_event_id)
 ;
  ALTER TABLE as_typ_hyp_ev_num_data ADD CONSTRAINT FK196 FOREIGN KEY(en_db_site,en_db_id,en_type_code) REFERENCES ev_num_data_type(en_db_site,en_db_id,en_type_code)
 ;
  ALTER TABLE as_typ_hyp_ev_num_data ADD CONSTRAINT FK197 FOREIGN KEY(eu_db_site,eu_type_code,eu_db_id) REFERENCES eng_unit_type(eu_db_site,eu_db_id,eu_type_code)
 ;
  ALTER TABLE as_typ_hyp_ev_num_data ADD CONSTRAINT FK198 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE model_hyp_ev_num_data ADD CONSTRAINT FK499 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE model_hyp_ev_num_data ADD CONSTRAINT FK500 FOREIGN KEY(mod_hyp_db_site,mod_hyp_db_id,mod_hyp_event_id) REFERENCES model_hyp_event(mod_hyp_db_site,mod_hyp_db_id,mod_hyp_event_id)
 ;
  ALTER TABLE model_hyp_ev_num_data ADD CONSTRAINT FK501 FOREIGN KEY(en_db_site,en_db_id,en_type_code) REFERENCES ev_num_data_type(en_db_site,en_db_id,en_type_code)
 ;
  ALTER TABLE model_hyp_ev_num_data ADD CONSTRAINT FK502 FOREIGN KEY(eu_db_site,eu_db_id,eu_type_code) REFERENCES eng_unit_type(eu_db_site,eu_db_id,eu_type_code)
 ;
  ALTER TABLE model_hyp_ev_num_data ADD CONSTRAINT FK503 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE sg_hyp_ev_sg_func ADD CONSTRAINT FK751 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE sg_hyp_ev_sg_func ADD CONSTRAINT FK752 FOREIGN KEY(sg_hyp_db_site,sg_hyp_db_id,sg_hyp_event_id) REFERENCES sg_hyp_event(sg_hyp_db_site,sg_hyp_db_id,sg_hyp_event_id)
 ;
  ALTER TABLE sg_hyp_ev_sg_func ADD CONSTRAINT FK753 FOREIGN KEY(db_site,db_id,segment_site,segment_id,ordering_seq) REFERENCES segment_function(db_site,db_id,segment_site,segment_id,ordering_seq)
 ;
  ALTER TABLE sg_hyp_ev_sg_func ADD CONSTRAINT FK754 FOREIGN KEY(by_org_asite,by_agent_id) REFERENCES agent(org_agent_site,agent_id)
 ;
  ALTER TABLE sg_hyp_ev_sg_func ADD CONSTRAINT FK755 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE as_hyp_ev_as_func ADD CONSTRAINT FK62 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE as_hyp_ev_as_func ADD CONSTRAINT FK63 FOREIGN KEY(as_hyp_db_site,as_hyp_db_id,as_hyp_event_id) REFERENCES as_hyp_event(as_hyp_db_site,as_hyp_db_id,as_hyp_event_id)
 ;
  ALTER TABLE as_hyp_ev_as_func ADD CONSTRAINT FK64 FOREIGN KEY(db_site,db_id,asset_org_site,asset_id,ordering_seq) REFERENCES asset_function(db_site,db_id,asset_org_site,asset_id,ordering_seq)
 ;
  ALTER TABLE as_hyp_ev_as_func ADD CONSTRAINT FK65 FOREIGN KEY(by_org_asite,by_agent_id) REFERENCES agent(org_agent_site,agent_id)
 ;
  ALTER TABLE as_hyp_ev_as_func ADD CONSTRAINT FK66 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE sg_typ_hyp_ev_func ADD CONSTRAINT FK866 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE sg_typ_hyp_ev_func ADD CONSTRAINT FK867 FOREIGN KEY(sgt_hyp_db_site,sgt_hyp_db_id,sgt_hyp_event_id) REFERENCES sg_typ_hyp_event(sgt_hyp_db_site,sgt_hyp_db_id,sgt_hyp_event_id)
 ;
  ALTER TABLE sg_typ_hyp_ev_func ADD CONSTRAINT FK868 FOREIGN KEY(db_site,db_id,sg_db_site,sg_db_id,sg_type_code,ordering_seq) REFERENCES sg_type_function(db_site,db_id,sg_db_site,sg_db_id,sg_type_code,ordering_seq)
 ;
  ALTER TABLE sg_typ_hyp_ev_func ADD CONSTRAINT FK869 FOREIGN KEY(by_org_asite,by_agent_id) REFERENCES agent(org_agent_site,agent_id)
 ;
  ALTER TABLE sg_typ_hyp_ev_func ADD CONSTRAINT FK870 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE as_typ_hyp_ev_func ADD CONSTRAINT FK185 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE as_typ_hyp_ev_func ADD CONSTRAINT FK186 FOREIGN KEY(ast_hyp_db_site,ast_hyp_db_id,ast_hyp_event_id) REFERENCES as_typ_hyp_event(ast_hyp_db_site,ast_hyp_db_id,ast_hyp_event_id)
 ;
  ALTER TABLE as_typ_hyp_ev_func ADD CONSTRAINT FK187 FOREIGN KEY(db_site,db_id,as_db_site,as_db_id,as_type_code,ordering_seq) REFERENCES as_type_function(db_site,db_id,as_db_site,as_db_id,as_type_code,ordering_seq)
 ;
  ALTER TABLE as_typ_hyp_ev_func ADD CONSTRAINT FK188 FOREIGN KEY(by_org_asite,by_agent_id) REFERENCES agent(org_agent_site,agent_id)
 ;
  ALTER TABLE as_typ_hyp_ev_func ADD CONSTRAINT FK189 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE model_hyp_ev_func ADD CONSTRAINT FK490 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE model_hyp_ev_func ADD CONSTRAINT FK491 FOREIGN KEY(mod_hyp_db_site,mod_hyp_db_id,mod_hyp_event_id) REFERENCES model_hyp_event(mod_hyp_db_site,mod_hyp_db_id,mod_hyp_event_id)
 ;
  ALTER TABLE model_hyp_ev_func ADD CONSTRAINT FK492 FOREIGN KEY(db_site,db_id,model_db_site,model_db_id,model_id,ordering_seq) REFERENCES model_function(db_site,db_id,model_db_site,model_db_id,model_id,ordering_seq)
 ;
  ALTER TABLE model_hyp_ev_func ADD CONSTRAINT FK493 FOREIGN KEY(by_org_asite,by_agent_id) REFERENCES agent(org_agent_site,agent_id)
 ;
  ALTER TABLE model_hyp_ev_func ADD CONSTRAINT FK494 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE sg_proposed_event ADD CONSTRAINT FK805 FOREIGN KEY(aud_quality_code) REFERENCES data_qual_type(dqual_type_code)
 ;
  ALTER TABLE sg_proposed_event ADD CONSTRAINT FK806 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE sg_proposed_event ADD CONSTRAINT FK808 FOREIGN KEY(sg_prop_db_site,sg_prop_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE sg_proposed_event ADD CONSTRAINT FK809 FOREIGN KEY(segment_site,segment_id) REFERENCES segment(segment_site,segment_id)
 ;
  ALTER TABLE sg_proposed_event ADD CONSTRAINT FK810 FOREIGN KEY(ev_db_site,ev_db_id,event_type_code) REFERENCES sg_as_event_type(ev_db_site,ev_db_id,event_type_code)
 ;
  ALTER TABLE sg_proposed_event ADD CONSTRAINT FK1422 FOREIGN KEY(severity_lev_db_site,severity_lev_db_id,severity_lev_type_code) REFERENCES severity_level_type(severity_lev_db_site,severity_lev_db_id,severity_lev_type_code)
 ;
  ALTER TABLE sg_proposed_event ADD CONSTRAINT FK811 FOREIGN KEY(by_org_asite,by_agent_id) REFERENCES agent(org_agent_site,agent_id)
 ;
  ALTER TABLE sg_proposed_event ADD CONSTRAINT FK812 FOREIGN KEY(ch_patt_db_site,ch_patt_db_id,ch_patt_type_code) REFERENCES change_patt_type(ch_patt_db_site,ch_patt_db_id,ch_patt_type_code)
 ;
  ALTER TABLE sg_proposed_event ADD CONSTRAINT FK813 FOREIGN KEY(aud_by_org_asite,aud_by_agent_id) REFERENCES agent(org_agent_site,agent_id)
 ;
  ALTER TABLE sg_proposed_event ADD CONSTRAINT FK814 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE as_proposed_event ADD CONSTRAINT FK121 FOREIGN KEY(aud_quality_code) REFERENCES data_qual_type(dqual_type_code)
 ;
  ALTER TABLE as_proposed_event ADD CONSTRAINT FK122 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE as_proposed_event ADD CONSTRAINT FK1409 FOREIGN KEY(severity_lev_db_site,severity_lev_db_id,severity_lev_type_code) REFERENCES severity_level_type(severity_lev_db_site,severity_lev_db_id,severity_lev_type_code)
 ;
  ALTER TABLE as_proposed_event ADD CONSTRAINT FK124 FOREIGN KEY(by_org_asite,by_agent_id) REFERENCES agent(org_agent_site,agent_id)
 ;
  ALTER TABLE as_proposed_event ADD CONSTRAINT FK125 FOREIGN KEY(ch_patt_db_site,ch_patt_db_id,ch_patt_type_code) REFERENCES change_patt_type(ch_patt_db_site,ch_patt_db_id,ch_patt_type_code)
 ;
  ALTER TABLE as_proposed_event ADD CONSTRAINT FK126 FOREIGN KEY(aud_by_org_asite,aud_by_agent_id) REFERENCES agent(org_agent_site,agent_id)
 ;
  ALTER TABLE as_proposed_event ADD CONSTRAINT FK127 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE as_proposed_event ADD CONSTRAINT FK128 FOREIGN KEY(as_prop_db_site,as_prop_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE as_proposed_event ADD CONSTRAINT FK129 FOREIGN KEY(asset_org_site,asset_id) REFERENCES asset(asset_org_site,asset_id)
 ;
  ALTER TABLE as_proposed_event ADD CONSTRAINT FK130 FOREIGN KEY(ev_db_site,ev_db_id,event_type_code) REFERENCES sg_as_event_type(ev_db_site,ev_db_id,event_type_code)
 ;
  ALTER TABLE sg_prop_ev_link ADD CONSTRAINT FK781 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE sg_prop_ev_link ADD CONSTRAINT FK782 FOREIGN KEY(sg_prop_db_site,sg_prop_db_id,sg_prop_event_id) REFERENCES sg_proposed_event(sg_prop_db_site,sg_prop_db_id,sg_prop_event_id)
 ;
  ALTER TABLE sg_prop_ev_link ADD CONSTRAINT FK783 FOREIGN KEY(caused_db_site,caused_db_id,caused_event_id) REFERENCES sg_proposed_event(sg_prop_db_site,sg_prop_db_id,sg_prop_event_id)
 ;
  ALTER TABLE sg_prop_ev_link ADD CONSTRAINT FK784 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE as_prop_ev_link ADD CONSTRAINT FK107 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE as_prop_ev_link ADD CONSTRAINT FK108 FOREIGN KEY(as_prop_db_site,as_prop_db_id,as_prop_event_id) REFERENCES as_proposed_event(as_prop_db_site,as_prop_db_id,as_prop_event_id)
 ;
  ALTER TABLE as_prop_ev_link ADD CONSTRAINT FK109 FOREIGN KEY(caused_db_site,caused_db_id,caused_event_id) REFERENCES as_proposed_event(as_prop_db_site,as_prop_db_id,as_prop_event_id)
 ;
  ALTER TABLE as_prop_ev_link ADD CONSTRAINT FK110 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE sg_prop_ev_ndat ADD CONSTRAINT FK790 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE sg_prop_ev_ndat ADD CONSTRAINT FK791 FOREIGN KEY(sg_prop_db_site,sg_prop_db_id,sg_prop_event_id) REFERENCES sg_proposed_event(sg_prop_db_site,sg_prop_db_id,sg_prop_event_id)
 ;
  ALTER TABLE sg_prop_ev_ndat ADD CONSTRAINT FK792 FOREIGN KEY(en_db_site,en_db_id,en_type_code) REFERENCES ev_num_data_type(en_db_site,en_db_id,en_type_code)
 ;
  ALTER TABLE sg_prop_ev_ndat ADD CONSTRAINT FK793 FOREIGN KEY(eu_db_site,eu_db_id,eu_type_code) REFERENCES eng_unit_type(eu_db_site,eu_db_id,eu_type_code)
 ;
  ALTER TABLE sg_prop_ev_ndat ADD CONSTRAINT FK794 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE as_prop_ev_ndat ADD CONSTRAINT FK116 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE as_prop_ev_ndat ADD CONSTRAINT FK117 FOREIGN KEY(as_prop_db_site,as_prop_db_id,as_prop_event_id) REFERENCES as_proposed_event(as_prop_db_site,as_prop_db_id,as_prop_event_id)
 ;
  ALTER TABLE as_prop_ev_ndat ADD CONSTRAINT FK118 FOREIGN KEY(en_db_site,en_db_id,en_type_code) REFERENCES ev_num_data_type(en_db_site,en_db_id,en_type_code)
 ;
  ALTER TABLE as_prop_ev_ndat ADD CONSTRAINT FK119 FOREIGN KEY(eu_db_site,eu_db_id,eu_type_code) REFERENCES eng_unit_type(eu_db_site,eu_db_id,eu_type_code)
 ;
  ALTER TABLE as_prop_ev_ndat ADD CONSTRAINT FK120 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE sg_prop_ev_sg_func ADD CONSTRAINT FK800 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE sg_prop_ev_sg_func ADD CONSTRAINT FK801 FOREIGN KEY(sg_prop_db_site,sg_prop_db_id,sg_prop_event_id) REFERENCES sg_proposed_event(sg_prop_db_site,sg_prop_db_id,sg_prop_event_id)
 ;
  ALTER TABLE sg_prop_ev_sg_func ADD CONSTRAINT FK802 FOREIGN KEY(db_site,db_id,segment_site,segment_id,ordering_seq) REFERENCES segment_function(db_site,db_id,segment_site,segment_id,ordering_seq)
 ;
  ALTER TABLE sg_prop_ev_sg_func ADD CONSTRAINT FK803 FOREIGN KEY(by_org_asite,by_agent_id) REFERENCES agent(org_agent_site,agent_id)
 ;
  ALTER TABLE sg_prop_ev_sg_func ADD CONSTRAINT FK804 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE as_prop_ev_as_func ADD CONSTRAINT FK97 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE as_prop_ev_as_func ADD CONSTRAINT FK98 FOREIGN KEY(as_prop_db_site,as_prop_db_id,as_prop_event_id) REFERENCES as_proposed_event(as_prop_db_site,as_prop_db_id,as_prop_event_id)
 ;
  ALTER TABLE as_prop_ev_as_func ADD CONSTRAINT FK99 FOREIGN KEY(db_site,db_id,asset_org_site,asset_id,ordering_seq) REFERENCES asset_function(db_site,db_id,asset_org_site,asset_id,ordering_seq)
 ;
  ALTER TABLE as_prop_ev_as_func ADD CONSTRAINT FK100 FOREIGN KEY(by_org_asite,by_agent_id) REFERENCES agent(org_agent_site,agent_id)
 ;
  ALTER TABLE as_prop_ev_as_func ADD CONSTRAINT FK101 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE sg_prop_ev_hyp_ev ADD CONSTRAINT FK776 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE sg_prop_ev_hyp_ev ADD CONSTRAINT FK777 FOREIGN KEY(sg_prop_db_site,sg_prop_db_id,sg_prop_event_id) REFERENCES sg_proposed_event(sg_prop_db_site,sg_prop_db_id,sg_prop_event_id)
 ;
  ALTER TABLE sg_prop_ev_hyp_ev ADD CONSTRAINT FK778 FOREIGN KEY(sg_hypev_db_site,sg_hypev_db_id,sg_hyp_event_id) REFERENCES sg_hyp_event(sg_hyp_db_site,sg_hyp_db_id,sg_hyp_event_id)
 ;
  ALTER TABLE sg_prop_ev_hyp_ev ADD CONSTRAINT FK779 FOREIGN KEY(by_org_asite,by_agent_id) REFERENCES agent(org_agent_site,agent_id)
 ;
  ALTER TABLE sg_prop_ev_hyp_ev ADD CONSTRAINT FK780 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE as_prop_ev_hyp_ev ADD CONSTRAINT FK102 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE as_prop_ev_hyp_ev ADD CONSTRAINT FK103 FOREIGN KEY(as_prop_db_site,as_prop_db_id,as_prop_event_id) REFERENCES as_proposed_event(as_prop_db_site,as_prop_db_id,as_prop_event_id)
 ;
  ALTER TABLE as_prop_ev_hyp_ev ADD CONSTRAINT FK104 FOREIGN KEY(as_hypev_db_site,as_hypev_db_id,as_hyp_event_id) REFERENCES as_hyp_event(as_hyp_db_site,as_hyp_db_id,as_hyp_event_id)
 ;
  ALTER TABLE as_prop_ev_hyp_ev ADD CONSTRAINT FK105 FOREIGN KEY(by_org_asite,by_agent_id) REFERENCES agent(org_agent_site,agent_id)
 ;
  ALTER TABLE as_prop_ev_hyp_ev ADD CONSTRAINT FK106 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE sg_prop_ev_sg_ev ADD CONSTRAINT FK795 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE sg_prop_ev_sg_ev ADD CONSTRAINT FK796 FOREIGN KEY(sg_prop_db_site,sg_prop_db_id,sg_prop_event_id) REFERENCES sg_proposed_event(sg_prop_db_site,sg_prop_db_id,sg_prop_event_id)
 ;
  ALTER TABLE sg_prop_ev_sg_ev ADD CONSTRAINT FK797 FOREIGN KEY(segment_site,segment_id,ev_db_site,ev_db_id,event_type_code,gmt_event_start) REFERENCES segment_event(segment_site,segment_id,ev_db_site,ev_db_id,event_type_code,gmt_event_start)
 ;
  ALTER TABLE sg_prop_ev_sg_ev ADD CONSTRAINT FK798 FOREIGN KEY(by_org_asite,by_agent_id) REFERENCES agent(org_agent_site,agent_id)
 ;
  ALTER TABLE sg_prop_ev_sg_ev ADD CONSTRAINT FK799 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE as_prop_ev_as_ev ADD CONSTRAINT FK92 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE as_prop_ev_as_ev ADD CONSTRAINT FK93 FOREIGN KEY(as_prop_db_site,as_prop_db_id,as_prop_event_id) REFERENCES as_proposed_event(as_prop_db_site,as_prop_db_id,as_prop_event_id)
 ;
  ALTER TABLE as_prop_ev_as_ev ADD CONSTRAINT FK94 FOREIGN KEY(asset_org_site,asset_id,ev_db_site,ev_db_id,event_type_code,gmt_event_start) REFERENCES asset_event(asset_org_site,asset_id,ev_db_site,ev_db_id,event_type_code,gmt_event_start)
 ;
  ALTER TABLE as_prop_ev_as_ev ADD CONSTRAINT FK95 FOREIGN KEY(by_org_asite,by_agent_id) REFERENCES agent(org_agent_site,agent_id)
 ;
  ALTER TABLE as_prop_ev_as_ev ADD CONSTRAINT FK96 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE sg_prop_ev_meas_ev ADD CONSTRAINT FK785 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE sg_prop_ev_meas_ev ADD CONSTRAINT FK786 FOREIGN KEY(sg_prop_db_site,sg_prop_db_id,sg_prop_event_id) REFERENCES sg_proposed_event(sg_prop_db_site,sg_prop_db_id,sg_prop_event_id)
 ;
  ALTER TABLE sg_prop_ev_meas_ev ADD CONSTRAINT FK787 FOREIGN KEY(meas_loc_site,meas_loc_id,gmt_event) REFERENCES meas_event(meas_loc_site,meas_loc_id,gmt_event)
 ;
  ALTER TABLE sg_prop_ev_meas_ev ADD CONSTRAINT FK788 FOREIGN KEY(by_org_asite,by_agent_id) REFERENCES agent(org_agent_site,agent_id)
 ;
  ALTER TABLE sg_prop_ev_meas_ev ADD CONSTRAINT FK789 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE as_prop_ev_meas_ev ADD CONSTRAINT FK111 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE as_prop_ev_meas_ev ADD CONSTRAINT FK112 FOREIGN KEY(as_prop_db_site,as_prop_db_id,as_prop_event_id) REFERENCES as_proposed_event(as_prop_db_site,as_prop_db_id,as_prop_event_id)
 ;
  ALTER TABLE as_prop_ev_meas_ev ADD CONSTRAINT FK113 FOREIGN KEY(meas_loc_site,meas_loc_id,gmt_event) REFERENCES meas_event(meas_loc_site,meas_loc_id,gmt_event)
 ;
  ALTER TABLE as_prop_ev_meas_ev ADD CONSTRAINT FK114 FOREIGN KEY(by_org_asite,by_agent_id) REFERENCES agent(org_agent_site,agent_id)
 ;
  ALTER TABLE as_prop_ev_meas_ev ADD CONSTRAINT FK115 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE segment_health ADD CONSTRAINT FK684 FOREIGN KEY(aud_quality_code) REFERENCES data_qual_type(dqual_type_code)
 ;
  ALTER TABLE segment_health ADD CONSTRAINT FK686 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE segment_health ADD CONSTRAINT FK687 FOREIGN KEY(segment_site,segment_id) REFERENCES segment(segment_site,segment_id)
 ;
  ALTER TABLE segment_health ADD CONSTRAINT FK1419 FOREIGN KEY(health_lev_db_site,health_lev_db_id,health_lev_type_code) REFERENCES health_level_type(health_lev_db_site,health_lev_db_id,health_lev_type_code)
 ;
  ALTER TABLE segment_health ADD CONSTRAINT FK688 FOREIGN KEY(by_agent_site,by_agent_id) REFERENCES agent(org_agent_site,agent_id)
 ;
  ALTER TABLE segment_health ADD CONSTRAINT FK689 FOREIGN KEY(ch_patt_db_site,ch_patt_db_id,ch_patt_type_code) REFERENCES change_patt_type(ch_patt_db_site,ch_patt_db_id,ch_patt_type_code)
 ;
  ALTER TABLE segment_health ADD CONSTRAINT FK690 FOREIGN KEY(aud_by_org_asite,aud_by_agent_id) REFERENCES agent(org_agent_site,agent_id)
 ;
  ALTER TABLE segment_health ADD CONSTRAINT FK691 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE asset_health ADD CONSTRAINT FK264 FOREIGN KEY(aud_quality_code) REFERENCES data_qual_type(dqual_type_code)
 ;
  ALTER TABLE asset_health ADD CONSTRAINT FK266 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE asset_health ADD CONSTRAINT FK267 FOREIGN KEY(asset_org_site,asset_id) REFERENCES asset(asset_org_site,asset_id)
 ;
  ALTER TABLE asset_health ADD CONSTRAINT FK1413 FOREIGN KEY(health_lev_db_site,health_lev_db_id,health_lev_type_code) REFERENCES health_level_type(health_lev_db_site,health_lev_db_id,health_lev_type_code)
 ;
  ALTER TABLE asset_health ADD CONSTRAINT FK268 FOREIGN KEY(by_agent_site,by_agent_id) REFERENCES agent(org_agent_site,agent_id)
 ;
  ALTER TABLE asset_health ADD CONSTRAINT FK269 FOREIGN KEY(ch_patt_db_site,ch_patt_db_id,ch_patt_type_code) REFERENCES change_patt_type(ch_patt_db_site,ch_patt_db_id,ch_patt_type_code)
 ;
  ALTER TABLE asset_health ADD CONSTRAINT FK270 FOREIGN KEY(aud_by_org_asite,aud_by_agent_id) REFERENCES agent(org_agent_site,agent_id)
 ;
  ALTER TABLE asset_health ADD CONSTRAINT FK271 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE sg_health_sg_event ADD CONSTRAINT FK736 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE sg_health_sg_event ADD CONSTRAINT FK737 FOREIGN KEY(segment_site,segment_id,gmt_assessment,by_agent_site,by_agent_id) REFERENCES segment_health(segment_site,segment_id,gmt_assessment,by_agent_site,by_agent_id)
 ;
  ALTER TABLE sg_health_sg_event ADD CONSTRAINT FK738 FOREIGN KEY(segment_site,segment_id,ev_db_site,ev_db_id,event_type_code,gmt_event_start) REFERENCES segment_event(segment_site,segment_id,ev_db_site,ev_db_id,event_type_code,gmt_event_start)
 ;
  ALTER TABLE sg_health_sg_event ADD CONSTRAINT FK739 FOREIGN KEY(assoc_by_org_asite,assoc_by_agent_id) REFERENCES agent(org_agent_site,agent_id)
 ;
  ALTER TABLE sg_health_sg_event ADD CONSTRAINT FK740 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE as_health_as_event ADD CONSTRAINT FK52 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE as_health_as_event ADD CONSTRAINT FK53 FOREIGN KEY(asset_org_site,asset_id,gmt_assessment,by_agent_site,by_agent_id) REFERENCES asset_health(asset_org_site,asset_id,gmt_assessment,by_agent_site,by_agent_id)
 ;
  ALTER TABLE as_health_as_event ADD CONSTRAINT FK54 FOREIGN KEY(asset_org_site,asset_id,ev_db_site,ev_db_id,event_type_code,gmt_event_start) REFERENCES asset_event(asset_org_site,asset_id,ev_db_site,ev_db_id,event_type_code,gmt_event_start)
 ;
  ALTER TABLE as_health_as_event ADD CONSTRAINT FK55 FOREIGN KEY(assoc_by_org_asite,assoc_by_agent_id) REFERENCES agent(org_agent_site,agent_id)
 ;
  ALTER TABLE as_health_as_event ADD CONSTRAINT FK56 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE sg_health_sg_prop_ev ADD CONSTRAINT FK741 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE sg_health_sg_prop_ev ADD CONSTRAINT FK742 FOREIGN KEY(segment_site,segment_id,gmt_assessment,by_agent_site,by_agent_id) REFERENCES segment_health(segment_site,segment_id,gmt_assessment,by_agent_site,by_agent_id)
 ;
  ALTER TABLE sg_health_sg_prop_ev ADD CONSTRAINT FK743 FOREIGN KEY(sg_prop_db_site,sg_prop_db_id,sg_prop_event_id) REFERENCES sg_proposed_event(sg_prop_db_site,sg_prop_db_id,sg_prop_event_id)
 ;
  ALTER TABLE sg_health_sg_prop_ev ADD CONSTRAINT FK744 FOREIGN KEY(assoc_by_org_asite,assoc_by_agent_id) REFERENCES agent(org_agent_site,agent_id)
 ;
  ALTER TABLE sg_health_sg_prop_ev ADD CONSTRAINT FK745 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE as_health_as_prop_ev ADD CONSTRAINT FK57 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE as_health_as_prop_ev ADD CONSTRAINT FK58 FOREIGN KEY(asset_org_site,asset_id,gmt_assessment,by_agent_site,by_agent_id) REFERENCES asset_health(asset_org_site,asset_id,gmt_assessment,by_agent_site,by_agent_id)
 ;
  ALTER TABLE as_health_as_prop_ev ADD CONSTRAINT FK59 FOREIGN KEY(as_prop_db_site,as_prop_db_id,as_prop_event_id) REFERENCES as_proposed_event(as_prop_db_site,as_prop_db_id,as_prop_event_id)
 ;
  ALTER TABLE as_health_as_prop_ev ADD CONSTRAINT FK60 FOREIGN KEY(assoc_by_org_asite,assoc_by_agent_id) REFERENCES agent(org_agent_site,agent_id)
 ;
  ALTER TABLE as_health_as_prop_ev ADD CONSTRAINT FK61 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE sg_remaining_life ADD CONSTRAINT FK847 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE sg_remaining_life ADD CONSTRAINT FK848 FOREIGN KEY(segment_site,segment_id) REFERENCES segment(segment_site,segment_id)
 ;
  ALTER TABLE sg_remaining_life ADD CONSTRAINT FK849 FOREIGN KEY(by_agent_site,by_agent_id) REFERENCES agent(org_agent_site,agent_id)
 ;
  ALTER TABLE sg_remaining_life ADD CONSTRAINT FK850 FOREIGN KEY(erl_eu_db_site,erl_eu_db_id,erl_eu_type_code) REFERENCES eng_unit_type(eu_db_site,eu_db_id,eu_type_code)
 ;
  ALTER TABLE sg_remaining_life ADD CONSTRAINT FK851 FOREIGN KEY(err_eu_db_site,err_eu_db_id,err_eu_type_code) REFERENCES eng_unit_type(eu_db_site,eu_db_id,eu_type_code)
 ;
  ALTER TABLE sg_remaining_life ADD CONSTRAINT FK852 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE as_remaining_life ADD CONSTRAINT FK166 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE as_remaining_life ADD CONSTRAINT FK167 FOREIGN KEY(asset_org_site,asset_id) REFERENCES asset(asset_org_site,asset_id)
 ;
  ALTER TABLE as_remaining_life ADD CONSTRAINT FK168 FOREIGN KEY(by_agent_site,by_agent_id) REFERENCES agent(org_agent_site,agent_id)
 ;
  ALTER TABLE as_remaining_life ADD CONSTRAINT FK169 FOREIGN KEY(erl_eu_db_site,erl_eu_db_id,erl_eu_type_code) REFERENCES eng_unit_type(eu_db_site,eu_db_id,eu_type_code)
 ;
  ALTER TABLE as_remaining_life ADD CONSTRAINT FK170 FOREIGN KEY(err_eu_db_site,err_eu_db_id,err_eu_type_code) REFERENCES eng_unit_type(eu_db_site,eu_db_id,eu_type_code)
 ;
  ALTER TABLE as_remaining_life ADD CONSTRAINT FK171 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE sg_recommendation ADD CONSTRAINT FK843 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE sg_recommendation ADD CONSTRAINT FK844 FOREIGN KEY(segment_site,segment_id) REFERENCES segment(segment_site,segment_id)
 ;
  ALTER TABLE sg_recommendation ADD CONSTRAINT FK1423 FOREIGN KEY(priority_lev_db_site,priority_lev_db_id,priority_lev_type_code) REFERENCES priority_level_type(priority_lev_db_site,priority_lev_db_id,priority_lev_type_code)
 ;
  ALTER TABLE sg_recommendation ADD CONSTRAINT FK845 FOREIGN KEY(by_agent_site,by_agent_id) REFERENCES agent(org_agent_site,agent_id)
 ;
  ALTER TABLE sg_recommendation ADD CONSTRAINT FK846 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE as_recommendation ADD CONSTRAINT FK162 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE as_recommendation ADD CONSTRAINT FK163 FOREIGN KEY(asset_org_site,asset_id) REFERENCES asset(asset_org_site,asset_id)
 ;
  ALTER TABLE as_recommendation ADD CONSTRAINT FK1410 FOREIGN KEY(priority_lev_db_site,priority_lev_db_id,priority_lev_type_code) REFERENCES priority_level_type(priority_lev_db_site,priority_lev_db_id,priority_lev_type_code)
 ;
  ALTER TABLE as_recommendation ADD CONSTRAINT FK164 FOREIGN KEY(by_agent_site,by_agent_id) REFERENCES agent(org_agent_site,agent_id)
 ;
  ALTER TABLE as_recommendation ADD CONSTRAINT FK165 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE ol_recommendation ADD CONSTRAINT FK559 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE ol_recommendation ADD CONSTRAINT FK560 FOREIGN KEY(ord_list_db_site,ord_list_db_id,ord_list_id) REFERENCES ordered_list(ord_list_db_site,ord_list_db_id,ord_list_id)
 ;
  ALTER TABLE ol_recommendation ADD CONSTRAINT FK1417 FOREIGN KEY(priority_lev_db_site,priority_lev_db_id,priority_lev_type_code) REFERENCES priority_level_type(priority_lev_db_site,priority_lev_db_id,priority_lev_type_code)
 ;
  ALTER TABLE ol_recommendation ADD CONSTRAINT FK561 FOREIGN KEY(by_agent_site,by_agent_id) REFERENCES agent(org_agent_site,agent_id)
 ;
  ALTER TABLE ol_recommendation ADD CONSTRAINT FK562 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE sg_type_recomm ADD CONSTRAINT FK909 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE sg_type_recomm ADD CONSTRAINT FK910 FOREIGN KEY(sg_db_site,sg_db_id,sg_type_code) REFERENCES segment_type(sg_db_site,sg_db_id,sg_type_code)
 ;
  ALTER TABLE sg_type_recomm ADD CONSTRAINT FK1425 FOREIGN KEY(priority_lev_db_site,priority_lev_db_id,priority_lev_type_code) REFERENCES priority_level_type(priority_lev_db_site,priority_lev_db_id,priority_lev_type_code)
 ;
  ALTER TABLE sg_type_recomm ADD CONSTRAINT FK911 FOREIGN KEY(by_agent_site,by_agent_id) REFERENCES agent(org_agent_site,agent_id)
 ;
  ALTER TABLE sg_type_recomm ADD CONSTRAINT FK912 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE as_type_recomm ADD CONSTRAINT FK228 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE as_type_recomm ADD CONSTRAINT FK229 FOREIGN KEY(as_db_site,as_db_id,as_type_code) REFERENCES asset_type(as_db_site,as_db_id,as_type_code)
 ;
  ALTER TABLE as_type_recomm ADD CONSTRAINT FK1412 FOREIGN KEY(priority_lev_db_site,priority_lev_db_id,priority_lev_type_code) REFERENCES priority_level_type(priority_lev_db_site,priority_lev_db_id,priority_lev_type_code)
 ;
  ALTER TABLE as_type_recomm ADD CONSTRAINT FK230 FOREIGN KEY(by_agent_site,by_agent_id) REFERENCES agent(org_agent_site,agent_id)
 ;
  ALTER TABLE as_type_recomm ADD CONSTRAINT FK231 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE model_recomm ADD CONSTRAINT FK528 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE model_recomm ADD CONSTRAINT FK529 FOREIGN KEY(model_db_site,model_db_id,model_id) REFERENCES model(model_db_site,model_db_id,model_id)
 ;
  ALTER TABLE model_recomm ADD CONSTRAINT FK1415 FOREIGN KEY(priority_lev_db_site,priority_lev_db_id,priority_lev_type_code) REFERENCES priority_level_type(priority_lev_db_site,priority_lev_db_id,priority_lev_type_code)
 ;
  ALTER TABLE model_recomm ADD CONSTRAINT FK530 FOREIGN KEY(by_agent_site,by_agent_id) REFERENCES agent(org_agent_site,agent_id)
 ;
  ALTER TABLE model_recomm ADD CONSTRAINT FK531 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE sg_rec_remark ADD CONSTRAINT FK823 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE sg_rec_remark ADD CONSTRAINT FK824 FOREIGN KEY(segment_site,segment_id,gmt_recommendation,by_agent_site,by_agent_id) REFERENCES sg_recommendation(segment_site,segment_id,gmt_recommendation,by_agent_site,by_agent_id)
 ;
  ALTER TABLE sg_rec_remark ADD CONSTRAINT FK825 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE as_rec_remark ADD CONSTRAINT FK158 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE as_rec_remark ADD CONSTRAINT FK159 FOREIGN KEY(asset_org_site,asset_id,gmt_recommendation,by_agent_site,by_agent_id) REFERENCES as_recommendation(asset_org_site,asset_id,gmt_recommendation,by_agent_site,by_agent_id)
 ;
  ALTER TABLE as_rec_remark ADD CONSTRAINT FK160 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE ol_rec_remark ADD CONSTRAINT FK555 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE ol_rec_remark ADD CONSTRAINT FK556 FOREIGN KEY(ord_list_db_site,ord_list_db_id,ord_list_id,gmt_recommendation,by_agent_site,by_agent_id) REFERENCES ol_recommendation(ord_list_db_site,ord_list_db_id,ord_list_id,gmt_recommendation,by_agent_site,by_agent_id)
 ;
  ALTER TABLE ol_rec_remark ADD CONSTRAINT FK557 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE sg_type_rec_remark ADD CONSTRAINT FK905 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE sg_type_rec_remark ADD CONSTRAINT FK906 FOREIGN KEY(sg_db_site,sg_db_id,sg_type_code,gmt_recommendation,by_agent_site,by_agent_id) REFERENCES sg_type_recomm(sg_db_site,sg_db_id,sg_type_code,gmt_recommendation,by_agent_site,by_agent_id)
 ;
  ALTER TABLE sg_type_rec_remark ADD CONSTRAINT FK907 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE as_type_rec_remark ADD CONSTRAINT FK224 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE as_type_rec_remark ADD CONSTRAINT FK225 FOREIGN KEY(as_db_site,as_db_id,as_type_code,gmt_recommendation,by_agent_site,by_agent_id) REFERENCES as_type_recomm(as_db_site,as_db_id,as_type_code,gmt_recommendation,by_agent_site,by_agent_id)
 ;
  ALTER TABLE as_type_rec_remark ADD CONSTRAINT FK226 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE model_rec_remark ADD CONSTRAINT FK524 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE model_rec_remark ADD CONSTRAINT FK525 FOREIGN KEY(model_db_site,model_db_id,model_id,gmt_recommendation,by_agent_site,by_agent_id) REFERENCES model_recomm(model_db_site,model_db_id,model_id,gmt_recommendation,by_agent_site,by_agent_id)
 ;
  ALTER TABLE model_rec_remark ADD CONSTRAINT FK526 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE sg_rec_blob ADD CONSTRAINT FK815 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE sg_rec_blob ADD CONSTRAINT FK816 FOREIGN KEY(segment_site,segment_id,gmt_recommendation,by_agent_site,by_agent_id) REFERENCES sg_recommendation(segment_site,segment_id,gmt_recommendation,by_agent_site,by_agent_id)
 ;
  ALTER TABLE sg_rec_blob ADD CONSTRAINT FK817 FOREIGN KEY(bd_db_site,bd_db_id,bd_type_code) REFERENCES blob_data_type(bd_db_site,bd_db_id,bd_type_code)
 ;
  ALTER TABLE sg_rec_blob ADD CONSTRAINT FK818 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE as_rec_blob ADD CONSTRAINT FK150 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE as_rec_blob ADD CONSTRAINT FK151 FOREIGN KEY(bd_db_site,bd_db_id,bd_type_code) REFERENCES blob_data_type(bd_db_site,bd_db_id,bd_type_code)
 ;
  ALTER TABLE as_rec_blob ADD CONSTRAINT FK152 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE as_rec_blob ADD CONSTRAINT FK153 FOREIGN KEY(asset_org_site,asset_id,gmt_recommendation,by_agent_site,by_agent_id) REFERENCES as_recommendation(asset_org_site,asset_id,gmt_recommendation,by_agent_site,by_agent_id)
 ;
  ALTER TABLE sg_type_rec_blob ADD CONSTRAINT FK901 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE sg_type_rec_blob ADD CONSTRAINT FK902 FOREIGN KEY(sg_db_site,sg_db_id,sg_type_code,gmt_recommendation,by_agent_site,by_agent_id) REFERENCES sg_type_recomm(sg_db_site,sg_db_id,sg_type_code,gmt_recommendation,by_agent_site,by_agent_id)
 ;
  ALTER TABLE sg_type_rec_blob ADD CONSTRAINT FK903 FOREIGN KEY(bd_db_site,bd_db_id,bd_type_code) REFERENCES blob_data_type(bd_db_site,bd_db_id,bd_type_code)
 ;
  ALTER TABLE sg_type_rec_blob ADD CONSTRAINT FK904 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE as_type_rec_blob ADD CONSTRAINT FK220 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE as_type_rec_blob ADD CONSTRAINT FK221 FOREIGN KEY(as_db_site,as_db_id,as_type_code,gmt_recommendation,by_agent_site,by_agent_id) REFERENCES as_type_recomm(as_db_site,as_db_id,as_type_code,gmt_recommendation,by_agent_site,by_agent_id)
 ;
  ALTER TABLE as_type_rec_blob ADD CONSTRAINT FK222 FOREIGN KEY(bd_db_site,bd_db_id,bd_type_code) REFERENCES blob_data_type(bd_db_site,bd_db_id,bd_type_code)
 ;
  ALTER TABLE as_type_rec_blob ADD CONSTRAINT FK223 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE model_rec_blob ADD CONSTRAINT FK516 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE model_rec_blob ADD CONSTRAINT FK517 FOREIGN KEY(model_db_site,model_db_id,model_id,gmt_recommendation,by_agent_site,by_agent_id) REFERENCES model_recomm(model_db_site,model_db_id,model_id,gmt_recommendation,by_agent_site,by_agent_id)
 ;
  ALTER TABLE model_rec_blob ADD CONSTRAINT FK518 FOREIGN KEY(bd_db_site,bd_db_id,bd_type_code) REFERENCES blob_data_type(bd_db_site,bd_db_id,bd_type_code)
 ;
  ALTER TABLE model_rec_blob ADD CONSTRAINT FK519 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE sg_rec_sg_health ADD CONSTRAINT FK830 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE sg_rec_sg_health ADD CONSTRAINT FK831 FOREIGN KEY(segment_site,segment_id,gmt_recommendation,by_agent_site,by_agent_id) REFERENCES sg_recommendation(segment_site,segment_id,gmt_recommendation,by_agent_site,by_agent_id)
 ;
  ALTER TABLE sg_rec_sg_health ADD CONSTRAINT FK832 FOREIGN KEY(hth_sg_site,hth_sg_id,hth_gmt_assess,hth_by_agent_site,hth_by_agent_id) REFERENCES segment_health(segment_site,segment_id,gmt_assessment,by_agent_site,by_agent_id)
 ;
  ALTER TABLE sg_rec_sg_health ADD CONSTRAINT FK833 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE as_rec_as_health ADD CONSTRAINT FK138 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE as_rec_as_health ADD CONSTRAINT FK139 FOREIGN KEY(asset_org_site,asset_id,gmt_recommendation,by_agent_site,by_agent_id) REFERENCES as_recommendation(asset_org_site,asset_id,gmt_recommendation,by_agent_site,by_agent_id)
 ;
  ALTER TABLE as_rec_as_health ADD CONSTRAINT FK140 FOREIGN KEY(hth_as_org_site,hth_asset_id,hth_gmt_assess,hth_by_agent_site,hth_by_agent_id) REFERENCES asset_health(asset_org_site,asset_id,gmt_assessment,by_agent_site,by_agent_id)
 ;
  ALTER TABLE as_rec_as_health ADD CONSTRAINT FK141 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE sg_rec_sg_event ADD CONSTRAINT FK826 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE sg_rec_sg_event ADD CONSTRAINT FK827 FOREIGN KEY(segment_site,segment_id,gmt_recommendation,by_agent_site,by_agent_id) REFERENCES sg_recommendation(segment_site,segment_id,gmt_recommendation,by_agent_site,by_agent_id)
 ;
  ALTER TABLE sg_rec_sg_event ADD CONSTRAINT FK828 FOREIGN KEY(segment_site,segment_id,ev_db_site,ev_db_id,event_type_code,gmt_event_start) REFERENCES segment_event(segment_site,segment_id,ev_db_site,ev_db_id,event_type_code,gmt_event_start)
 ;
  ALTER TABLE sg_rec_sg_event ADD CONSTRAINT FK829 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE as_rec_as_event ADD CONSTRAINT FK134 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE as_rec_as_event ADD CONSTRAINT FK135 FOREIGN KEY(asset_org_site,asset_id,gmt_recommendation,by_agent_site,by_agent_id) REFERENCES as_recommendation(asset_org_site,asset_id,gmt_recommendation,by_agent_site,by_agent_id)
 ;
  ALTER TABLE as_rec_as_event ADD CONSTRAINT FK136 FOREIGN KEY(asset_org_site,asset_id,ev_db_site,ev_db_id,event_type_code,gmt_event_start) REFERENCES asset_event(asset_org_site,asset_id,ev_db_site,ev_db_id,event_type_code,gmt_event_start)
 ;
  ALTER TABLE as_rec_as_event ADD CONSTRAINT FK137 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE sg_rec_sg_hyp_ev ADD CONSTRAINT FK834 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE sg_rec_sg_hyp_ev ADD CONSTRAINT FK835 FOREIGN KEY(segment_site,segment_id,gmt_recommendation,by_agent_site,by_agent_id) REFERENCES sg_recommendation(segment_site,segment_id,gmt_recommendation,by_agent_site,by_agent_id)
 ;
  ALTER TABLE sg_rec_sg_hyp_ev ADD CONSTRAINT FK836 FOREIGN KEY(sg_hyp_db_site,sg_hyp_db_id,sg_hyp_event_id) REFERENCES sg_hyp_event(sg_hyp_db_site,sg_hyp_db_id,sg_hyp_event_id)
 ;
  ALTER TABLE sg_rec_sg_hyp_ev ADD CONSTRAINT FK837 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE as_rec_as_hyp_ev ADD CONSTRAINT FK142 FOREIGN KEY(as_hyp_db_site,as_hyp_db_id,as_hyp_event_id) REFERENCES as_hyp_event(as_hyp_db_site,as_hyp_db_id,as_hyp_event_id)
 ;
  ALTER TABLE as_rec_as_hyp_ev ADD CONSTRAINT FK143 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE as_rec_as_hyp_ev ADD CONSTRAINT FK144 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE as_rec_as_hyp_ev ADD CONSTRAINT FK145 FOREIGN KEY(asset_org_site,asset_id,gmt_recommendation,by_agent_site,by_agent_id) REFERENCES as_recommendation(asset_org_site,asset_id,gmt_recommendation,by_agent_site,by_agent_id)
 ;
  ALTER TABLE sg_type_rec_hyp_ev ADD CONSTRAINT FK887 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE sg_type_rec_hyp_ev ADD CONSTRAINT FK888 FOREIGN KEY(sg_db_site,sg_db_id,sg_type_code,gmt_recommendation,by_agent_site,by_agent_id) REFERENCES sg_type_recomm(sg_db_site,sg_db_id,sg_type_code,gmt_recommendation,by_agent_site,by_agent_id)
 ;
  ALTER TABLE sg_type_rec_hyp_ev ADD CONSTRAINT FK889 FOREIGN KEY(sg_hyp_db_site,sg_hyp_db_id,sg_hyp_event_id) REFERENCES sg_hyp_event(sg_hyp_db_site,sg_hyp_db_id,sg_hyp_event_id)
 ;
  ALTER TABLE sg_type_rec_hyp_ev ADD CONSTRAINT FK890 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE as_type_rec_hyp_ev ADD CONSTRAINT FK206 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE as_type_rec_hyp_ev ADD CONSTRAINT FK207 FOREIGN KEY(as_db_site,as_db_id,as_type_code,gmt_recommendation,by_agent_site,by_agent_id) REFERENCES as_type_recomm(as_db_site,as_db_id,as_type_code,gmt_recommendation,by_agent_site,by_agent_id)
 ;
  ALTER TABLE as_type_rec_hyp_ev ADD CONSTRAINT FK208 FOREIGN KEY(as_hyp_db_site,as_hyp_db_id,as_hyp_event_id) REFERENCES as_hyp_event(as_hyp_db_site,as_hyp_db_id,as_hyp_event_id)
 ;
  ALTER TABLE as_type_rec_hyp_ev ADD CONSTRAINT FK209 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE model_rec_hyp_ev ADD CONSTRAINT FK520 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE model_rec_hyp_ev ADD CONSTRAINT FK521 FOREIGN KEY(model_db_site,model_db_id,model_id,gmt_recommendation,by_agent_site,by_agent_id) REFERENCES model_recomm(model_db_site,model_db_id,model_id,gmt_recommendation,by_agent_site,by_agent_id)
 ;
  ALTER TABLE model_rec_hyp_ev ADD CONSTRAINT FK522 FOREIGN KEY(mod_hyp_db_site,mod_hyp_db_id,mod_hyp_event_id) REFERENCES model_hyp_event(mod_hyp_db_site,mod_hyp_db_id,mod_hyp_event_id)
 ;
  ALTER TABLE model_rec_hyp_ev ADD CONSTRAINT FK523 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE sg_rec_sg_prop_ev ADD CONSTRAINT FK838 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE sg_rec_sg_prop_ev ADD CONSTRAINT FK839 FOREIGN KEY(segment_site,segment_id,gmt_recommendation,by_agent_site,by_agent_id) REFERENCES sg_recommendation(segment_site,segment_id,gmt_recommendation,by_agent_site,by_agent_id)
 ;
  ALTER TABLE sg_rec_sg_prop_ev ADD CONSTRAINT FK840 FOREIGN KEY(sg_prop_db_site,sg_prop_db_id,sg_prop_event_id) REFERENCES sg_proposed_event(sg_prop_db_site,sg_prop_db_id,sg_prop_event_id)
 ;
  ALTER TABLE sg_rec_sg_prop_ev ADD CONSTRAINT FK841 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE as_rec_as_prop_ev ADD CONSTRAINT FK146 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE as_rec_as_prop_ev ADD CONSTRAINT FK147 FOREIGN KEY(asset_org_site,asset_id,gmt_recommendation,by_agent_site,by_agent_id) REFERENCES as_recommendation(asset_org_site,asset_id,gmt_recommendation,by_agent_site,by_agent_id)
 ;
  ALTER TABLE as_rec_as_prop_ev ADD CONSTRAINT FK148 FOREIGN KEY(as_prop_db_site,as_prop_db_id,as_prop_event_id) REFERENCES as_proposed_event(as_prop_db_site,as_prop_db_id,as_prop_event_id)
 ;
  ALTER TABLE as_rec_as_prop_ev ADD CONSTRAINT FK149 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE sg_rec_mevent ADD CONSTRAINT FK819 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE sg_rec_mevent ADD CONSTRAINT FK820 FOREIGN KEY(segment_site,segment_id,gmt_recommendation,by_agent_site,by_agent_id) REFERENCES sg_recommendation(segment_site,segment_id,gmt_recommendation,by_agent_site,by_agent_id)
 ;
  ALTER TABLE sg_rec_mevent ADD CONSTRAINT FK821 FOREIGN KEY(meas_loc_site,meas_loc_id,gmt_event) REFERENCES meas_event(meas_loc_site,meas_loc_id,gmt_event)
 ;
  ALTER TABLE sg_rec_mevent ADD CONSTRAINT FK822 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE as_rec_mevent ADD CONSTRAINT FK154 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE as_rec_mevent ADD CONSTRAINT FK155 FOREIGN KEY(asset_org_site,asset_id,gmt_recommendation,by_agent_site,by_agent_id) REFERENCES as_recommendation(asset_org_site,asset_id,gmt_recommendation,by_agent_site,by_agent_id)
 ;
  ALTER TABLE as_rec_mevent ADD CONSTRAINT FK156 FOREIGN KEY(meas_loc_site,meas_loc_id,gmt_event) REFERENCES meas_event(meas_loc_site,meas_loc_id,gmt_event)
 ;
  ALTER TABLE as_rec_mevent ADD CONSTRAINT FK157 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE work_request ADD CONSTRAINT FK1190 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE work_request ADD CONSTRAINT FK1191 FOREIGN KEY(work_req_db_site,work_req_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE work_request ADD CONSTRAINT FK1192 FOREIGN KEY(wm_type_db_site,wm_type_db_id,wm_type_code) REFERENCES work_manage_type(wm_type_db_site,wm_type_db_id,wm_type_code)
 ;
  ALTER TABLE work_request ADD CONSTRAINT FK2115 FOREIGN KEY(task_db_site,task_db_id,task_type_code) REFERENCES work_task_type(task_db_site,task_db_id,task_type_code)
 ;
  ALTER TABLE work_request ADD CONSTRAINT FK1193 FOREIGN KEY(by_agent_site,by_agent_id) REFERENCES agent(org_agent_site,agent_id)
 ;
  ALTER TABLE work_request ADD CONSTRAINT FK1429 FOREIGN KEY(priority_lev_db_site,priority_lev_db_id,priority_lev_type_code) REFERENCES priority_level_type(priority_lev_db_site,priority_lev_db_id,priority_lev_type_code)
 ;
  ALTER TABLE work_request ADD CONSTRAINT FK2079 FOREIGN KEY(eng_study_entry_db_site,eng_study_entry_db_id,eng_study_entry_id) REFERENCES eng_study_entry(eng_study_entry_db_site,eng_study_entry_db_id,eng_study_entry_id)
 ;
  ALTER TABLE work_request ADD CONSTRAINT FK1194 FOREIGN KEY(int_eu_db_site,int_eu_db_id,int_eu_type_code) REFERENCES eng_unit_type(eu_db_site,eu_db_id,eu_type_code)
 ;
  ALTER TABLE work_request ADD CONSTRAINT FK1195 FOREIGN KEY(from_sy_agent_site,from_sy_agent_id) REFERENCES agent(org_agent_site,agent_id)
 ;
  ALTER TABLE work_request ADD CONSTRAINT FK1196 FOREIGN KEY(to_agent_site,to_agent_id) REFERENCES agent(org_agent_site,agent_id)
 ;
  ALTER TABLE work_request ADD CONSTRAINT FK1197 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE work_request ADD CONSTRAINT FK1438 FOREIGN KEY(work_order_db_site,work_order_db_id,work_order_id) REFERENCES work_order(work_order_db_site,work_order_db_id,work_order_id)
 ;
  ALTER TABLE solution_package ADD CONSTRAINT FK927 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE solution_package ADD CONSTRAINT FK928 FOREIGN KEY(sol_pack_db_site,sol_pack_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE solution_package ADD CONSTRAINT FK929 FOREIGN KEY(sol_db_site,sol_db_id,sol_type_code) REFERENCES solution_pack_type(sol_db_site,sol_db_id,sol_type_code)
 ;
  ALTER TABLE solution_package ADD CONSTRAINT FK1426 FOREIGN KEY(priority_lev_db_site,priority_lev_db_id,priority_lev_type_code) REFERENCES priority_level_type(priority_lev_db_site,priority_lev_db_id,priority_lev_type_code)
 ;
  ALTER TABLE solution_package ADD CONSTRAINT FK930 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE request ADD CONSTRAINT FK1277 FOREIGN KEY(req_db_site,req_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE request ADD CONSTRAINT FK1278 FOREIGN KEY(by_agent_site,by_agent_id) REFERENCES agent(org_agent_site,agent_id)
 ;
  ALTER TABLE request ADD CONSTRAINT FK1418 FOREIGN KEY(priority_lev_db_site,priority_lev_db_id,priority_lev_type_code) REFERENCES priority_level_type(priority_lev_db_site,priority_lev_db_id,priority_lev_type_code)
 ;
  ALTER TABLE request ADD CONSTRAINT FK1279 FOREIGN KEY(from_sy_agent_site,from_sy_agent_id) REFERENCES agent(org_agent_site,agent_id)
 ;
  ALTER TABLE request ADD CONSTRAINT FK2078 FOREIGN KEY(eng_study_entry_db_site,eng_study_entry_db_id,eng_study_entry_id) REFERENCES eng_study_entry(eng_study_entry_db_site,eng_study_entry_db_id,eng_study_entry_id)
 ;
  ALTER TABLE request ADD CONSTRAINT FK1281 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE request ADD CONSTRAINT FK1282 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE sg_req_for_work ADD CONSTRAINT FK1283 FOREIGN KEY(req_db_site,req_db_id,request_id) REFERENCES request(req_db_site,req_db_id,request_id)
 ;
  ALTER TABLE sg_req_for_work ADD CONSTRAINT FK854 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE sg_req_for_work ADD CONSTRAINT FK855 FOREIGN KEY(segment_site,segment_id) REFERENCES segment(segment_site,segment_id)
 ;
  ALTER TABLE sg_req_for_work ADD CONSTRAINT FK857 FOREIGN KEY(wm_type_db_site,wm_type_db_id,wm_type_code) REFERENCES work_manage_type(wm_type_db_site,wm_type_db_id,wm_type_code)
 ;
  ALTER TABLE sg_req_for_work ADD CONSTRAINT FK858 FOREIGN KEY(task_db_site,task_db_id,task_type_code) REFERENCES work_task_type(task_db_site,task_db_id,task_type_code)
 ;
  ALTER TABLE sg_req_for_work ADD CONSTRAINT FK859 FOREIGN KEY(int_eu_db_site,int_eu_db_id,int_eu_type_code) REFERENCES eng_unit_type(eu_db_site,eu_db_id,eu_type_code)
 ;
  ALTER TABLE sg_req_for_work ADD CONSTRAINT FK861 FOREIGN KEY(to_agent_site,to_agent_id) REFERENCES agent(org_agent_site,agent_id)
 ;
  ALTER TABLE sg_req_for_work ADD CONSTRAINT FK862 FOREIGN KEY(sol_pack_db_site,sol_pack_db_id,sol_pack_id) REFERENCES solution_package(sol_pack_db_site,sol_pack_db_id,sol_pack_id)
 ;
  ALTER TABLE sg_req_for_work ADD CONSTRAINT FK863 FOREIGN KEY(rec_segment_site,rec_segment_id,rec_gmt_recomm,rec_by_agent_site,rec_by_agent_id) REFERENCES sg_recommendation(segment_site,segment_id,gmt_recommendation,by_agent_site,by_agent_id)
 ;
  ALTER TABLE sg_req_for_work ADD CONSTRAINT FK864 FOREIGN KEY(work_req_db_site,work_req_db_id,work_req_id) REFERENCES work_request(work_req_db_site,work_req_db_id,work_req_id)
 ;
  ALTER TABLE sg_req_for_work ADD CONSTRAINT FK865 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE sg_req_for_work ADD CONSTRAINT FK1437 FOREIGN KEY(work_order_db_site,work_order_db_id,work_order_id) REFERENCES work_order(work_order_db_site,work_order_db_id,work_order_id)
 ;
  ALTER TABLE as_req_for_work ADD CONSTRAINT FK1284 FOREIGN KEY(req_db_site,req_db_id,request_id) REFERENCES request(req_db_site,req_db_id,request_id)
 ;
  ALTER TABLE as_req_for_work ADD CONSTRAINT FK173 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE as_req_for_work ADD CONSTRAINT FK174 FOREIGN KEY(asset_org_site,asset_id) REFERENCES asset(asset_org_site,asset_id)
 ;
  ALTER TABLE as_req_for_work ADD CONSTRAINT FK176 FOREIGN KEY(wm_type_db_site,wm_type_db_id,wm_type_code) REFERENCES work_manage_type(wm_type_db_site,wm_type_db_id,wm_type_code)
 ;
  ALTER TABLE as_req_for_work ADD CONSTRAINT FK177 FOREIGN KEY(task_db_site,task_db_id,task_type_code) REFERENCES work_task_type(task_db_site,task_db_id,task_type_code)
 ;
  ALTER TABLE as_req_for_work ADD CONSTRAINT FK178 FOREIGN KEY(int_eu_db_site,int_eu_db_id,int_eu_type_code) REFERENCES eng_unit_type(eu_db_site,eu_db_id,eu_type_code)
 ;
  ALTER TABLE as_req_for_work ADD CONSTRAINT FK180 FOREIGN KEY(to_agent_site,to_agent_id) REFERENCES agent(org_agent_site,agent_id)
 ;
  ALTER TABLE as_req_for_work ADD CONSTRAINT FK181 FOREIGN KEY(sol_pack_db_site,sol_pack_db_id,sol_pack_id) REFERENCES solution_package(sol_pack_db_site,sol_pack_db_id,sol_pack_id)
 ;
  ALTER TABLE as_req_for_work ADD CONSTRAINT FK182 FOREIGN KEY(rec_asset_org_site,rec_asset_id,rec_gmt_recomm,rec_by_agent_site,rec_by_agent_id) REFERENCES as_recommendation(asset_org_site,asset_id,gmt_recommendation,by_agent_site,by_agent_id)
 ;
  ALTER TABLE as_req_for_work ADD CONSTRAINT FK183 FOREIGN KEY(work_req_db_site,work_req_db_id,work_req_id) REFERENCES work_request(work_req_db_site,work_req_db_id,work_req_id)
 ;
  ALTER TABLE as_req_for_work ADD CONSTRAINT FK184 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE as_req_for_work ADD CONSTRAINT FK1433 FOREIGN KEY(work_order_db_site,work_order_db_id,work_order_id) REFERENCES work_order(work_order_db_site,work_order_db_id,work_order_id)
 ;
  ALTER TABLE ol_req_for_work ADD CONSTRAINT FK1285 FOREIGN KEY(req_db_site,req_db_id,request_id) REFERENCES request(req_db_site,req_db_id,request_id)
 ;
  ALTER TABLE ol_req_for_work ADD CONSTRAINT FK564 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE ol_req_for_work ADD CONSTRAINT FK565 FOREIGN KEY(ord_list_db_site,ord_list_db_id,ord_list_id) REFERENCES ordered_list(ord_list_db_site,ord_list_db_id,ord_list_id)
 ;
  ALTER TABLE ol_req_for_work ADD CONSTRAINT FK567 FOREIGN KEY(wm_type_db_site,wm_type_db_id,wm_type_code) REFERENCES work_manage_type(wm_type_db_site,wm_type_db_id,wm_type_code)
 ;
  ALTER TABLE ol_req_for_work ADD CONSTRAINT FK568 FOREIGN KEY(task_db_site,task_db_id,task_type_code) REFERENCES work_task_type(task_db_site,task_db_id,task_type_code)
 ;
  ALTER TABLE ol_req_for_work ADD CONSTRAINT FK569 FOREIGN KEY(int_eu_db_site,int_eu_db_id,int_eu_type_code) REFERENCES eng_unit_type(eu_db_site,eu_db_id,eu_type_code)
 ;
  ALTER TABLE ol_req_for_work ADD CONSTRAINT FK571 FOREIGN KEY(to_agent_site,to_agent_id) REFERENCES agent(org_agent_site,agent_id)
 ;
  ALTER TABLE ol_req_for_work ADD CONSTRAINT FK572 FOREIGN KEY(sol_pack_db_site,sol_pack_db_id,sol_pack_id) REFERENCES solution_package(sol_pack_db_site,sol_pack_db_id,sol_pack_id)
 ;
  ALTER TABLE ol_req_for_work ADD CONSTRAINT FK573 FOREIGN KEY(rec_ord_db_site,rec_ord_db_id,rec_ord_list_id,rec_gmt_recomm,rec_by_agent_site,rec_by_agent_id) REFERENCES ol_recommendation(ord_list_db_site,ord_list_db_id,ord_list_id,gmt_recommendation,by_agent_site,by_agent_id)
 ;
  ALTER TABLE ol_req_for_work ADD CONSTRAINT FK574 FOREIGN KEY(work_req_db_site,work_req_db_id,work_req_id) REFERENCES work_request(work_req_db_site,work_req_db_id,work_req_id)
 ;
  ALTER TABLE ol_req_for_work ADD CONSTRAINT FK575 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE ol_req_for_work ADD CONSTRAINT FK1435 FOREIGN KEY(work_order_db_site,work_order_db_id,work_order_id) REFERENCES work_order(work_order_db_site,work_order_db_id,work_order_id)
 ;
  ALTER TABLE work_req_sg_recomm ADD CONSTRAINT FK1181 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE work_req_sg_recomm ADD CONSTRAINT FK1182 FOREIGN KEY(work_req_db_site,work_req_db_id,work_req_id) REFERENCES work_request(work_req_db_site,work_req_db_id,work_req_id)
 ;
  ALTER TABLE work_req_sg_recomm ADD CONSTRAINT FK1183 FOREIGN KEY(segment_site,segment_id,gmt_recommendation,by_agent_site,by_agent_id) REFERENCES sg_recommendation(segment_site,segment_id,gmt_recommendation,by_agent_site,by_agent_id)
 ;
  ALTER TABLE work_req_sg_recomm ADD CONSTRAINT FK1184 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE work_req_as_recomm ADD CONSTRAINT FK1177 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE work_req_as_recomm ADD CONSTRAINT FK1178 FOREIGN KEY(work_req_db_site,work_req_db_id,work_req_id) REFERENCES work_request(work_req_db_site,work_req_db_id,work_req_id)
 ;
  ALTER TABLE work_req_as_recomm ADD CONSTRAINT FK1179 FOREIGN KEY(asset_org_site,asset_id,gmt_recommendation,by_agent_site,by_agent_id) REFERENCES as_recommendation(asset_org_site,asset_id,gmt_recommendation,by_agent_site,by_agent_id)
 ;
  ALTER TABLE work_req_as_recomm ADD CONSTRAINT FK1180 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE work_req_sol_pack ADD CONSTRAINT FK1185 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE work_req_sol_pack ADD CONSTRAINT FK1186 FOREIGN KEY(work_req_db_site,work_req_db_id,work_req_id) REFERENCES work_request(work_req_db_site,work_req_db_id,work_req_id)
 ;
  ALTER TABLE work_req_sol_pack ADD CONSTRAINT FK1187 FOREIGN KEY(sol_pack_db_site,sol_pack_db_id,sol_pack_id) REFERENCES solution_package(sol_pack_db_site,sol_pack_db_id,sol_pack_id)
 ;
  ALTER TABLE work_req_sol_pack ADD CONSTRAINT FK1188 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE work_req_num_data ADD CONSTRAINT FK1209 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE work_req_num_data ADD CONSTRAINT FK1210 FOREIGN KEY(work_req_db_site,work_req_db_id,work_req_id) REFERENCES work_request(work_req_db_site,work_req_db_id,work_req_id)
 ;
  ALTER TABLE work_req_num_data ADD CONSTRAINT FK1211 FOREIGN KEY(wn_db_site,wn_db_id,wn_type_code) REFERENCES work_num_data_type(wn_db_site,wn_db_id,wn_type_code)
 ;
  ALTER TABLE work_req_num_data ADD CONSTRAINT FK1212 FOREIGN KEY(eu_db_site,eu_db_id,eu_type_code) REFERENCES eng_unit_type(eu_db_site,eu_db_id,eu_type_code)
 ;
  ALTER TABLE work_req_num_data ADD CONSTRAINT FK1213 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE work_req_blob_data ADD CONSTRAINT FK1220 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE work_req_blob_data ADD CONSTRAINT FK2103 FOREIGN KEY(work_req_db_site,work_req_db_id,work_req_id) REFERENCES work_request(work_req_db_site,work_req_db_id,work_req_id)
 ;
  ALTER TABLE work_req_blob_data ADD CONSTRAINT FK2104 FOREIGN KEY(bd_db_site,bd_db_id,bd_type_code) REFERENCES blob_data_type(bd_db_site,bd_db_id,bd_type_code)
 ;
  ALTER TABLE work_req_blob_data ADD CONSTRAINT FK2105 FOREIGN KEY(blct_db_site,blct_db_id,blc_type_code) REFERENCES blob_content_type(blct_db_site,blct_db_id,blc_type_code)
 ;
  ALTER TABLE work_req_blob_data ADD CONSTRAINT FK2106 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE work_req_chr_data ADD CONSTRAINT FK1204 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE work_req_chr_data ADD CONSTRAINT FK1205 FOREIGN KEY(work_req_db_site,work_req_db_id,work_req_id) REFERENCES work_request(work_req_db_site,work_req_db_id,work_req_id)
 ;
  ALTER TABLE work_req_chr_data ADD CONSTRAINT FK1206 FOREIGN KEY(wc_db_site,wc_db_id,wc_type_code) REFERENCES work_chr_data_type(wc_db_site,wc_db_id,wc_type_code)
 ;
  ALTER TABLE work_req_chr_data ADD CONSTRAINT FK1207 FOREIGN KEY(eu_db_site,eu_db_id,eu_type_code) REFERENCES eng_unit_type(eu_db_site,eu_db_id,eu_type_code)
 ;
  ALTER TABLE work_req_chr_data ADD CONSTRAINT FK1208 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE work_request_audit ADD CONSTRAINT FK1198 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE work_request_audit ADD CONSTRAINT FK1199 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE work_request_audit ADD CONSTRAINT FK1200 FOREIGN KEY(work_req_db_site,work_req_db_id,work_req_id) REFERENCES work_request(work_req_db_site,work_req_db_id,work_req_id)
 ;
  ALTER TABLE work_request_audit ADD CONSTRAINT FK1201 FOREIGN KEY(waudit_db_site,waudit_db_id,waudit_type_code) REFERENCES work_audit_type(waudit_db_site,waudit_db_id,waudit_type_code)
 ;
  ALTER TABLE work_request_audit ADD CONSTRAINT FK1202 FOREIGN KEY(by_agent_site,by_agent_id) REFERENCES agent(org_agent_site,agent_id)
 ;
  ALTER TABLE work_request_audit ADD CONSTRAINT FK1203 FOREIGN KEY(from_sy_agent_site,from_sy_agent_id) REFERENCES agent(org_agent_site,agent_id)
 ;
  ALTER TABLE work_order ADD CONSTRAINT FK1142 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE work_order ADD CONSTRAINT FK1143 FOREIGN KEY(work_order_db_site,work_order_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE work_order ADD CONSTRAINT FK1144 FOREIGN KEY(wm_type_db_site,wm_type_db_id,wm_type_code) REFERENCES work_manage_type(wm_type_db_site,wm_type_db_id,wm_type_code)
 ;
  ALTER TABLE work_order ADD CONSTRAINT FK2116 FOREIGN KEY(task_db_site,task_db_id,task_type_code) REFERENCES work_task_type(task_db_site,task_db_id,task_type_code)
 ;
  ALTER TABLE work_order ADD CONSTRAINT FK1427 FOREIGN KEY(priority_lev_db_site,priority_lev_db_id,priority_lev_type_code) REFERENCES priority_level_type(priority_lev_db_site,priority_lev_db_id,priority_lev_type_code)
 ;
  ALTER TABLE work_order ADD CONSTRAINT FK1145 FOREIGN KEY(by_agent_site,by_agent_id) REFERENCES agent(org_agent_site,agent_id)
 ;
  ALTER TABLE work_order ADD CONSTRAINT FK1146 FOREIGN KEY(int_eu_db_site,int_eu_db_id,int_eu_type_code) REFERENCES eng_unit_type(eu_db_site,eu_db_id,eu_type_code)
 ;
  ALTER TABLE work_order ADD CONSTRAINT FK1147 FOREIGN KEY(from_sy_agent_site,from_sy_agent_id) REFERENCES agent(org_agent_site,agent_id)
 ;
  ALTER TABLE work_order ADD CONSTRAINT FK1148 FOREIGN KEY(to_agent_site,to_agent_id) REFERENCES agent(org_agent_site,agent_id)
 ;
  ALTER TABLE work_order ADD CONSTRAINT FK2080 FOREIGN KEY(eng_study_entry_db_site,eng_study_entry_db_id,eng_study_entry_id) REFERENCES eng_study_entry(eng_study_entry_db_site,eng_study_entry_db_id,eng_study_entry_id)
 ;
  ALTER TABLE work_order ADD CONSTRAINT FK2081 FOREIGN KEY(sol_pack_db_site,sol_pack_db_id,sol_pack_id) REFERENCES solution_package(sol_pack_db_site,sol_pack_db_id,sol_pack_id)
 ;
  ALTER TABLE work_order ADD CONSTRAINT FK1149 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE work_order_child ADD CONSTRAINT FK1156 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE work_order_child ADD CONSTRAINT FK1157 FOREIGN KEY(work_order_db_site,work_order_db_id,work_order_id) REFERENCES work_order(work_order_db_site,work_order_db_id,work_order_id)
 ;
  ALTER TABLE work_order_child ADD CONSTRAINT FK1158 FOREIGN KEY(child_wo_db_site,child_wo_db_id,child_wo_id) REFERENCES work_order(work_order_db_site,work_order_db_id,work_order_id)
 ;
  ALTER TABLE work_order_child ADD CONSTRAINT FK1159 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE work_order_num_data ADD CONSTRAINT FK1165 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE work_order_num_data ADD CONSTRAINT FK1166 FOREIGN KEY(work_order_db_site,work_order_db_id,work_order_id) REFERENCES work_order(work_order_db_site,work_order_db_id,work_order_id)
 ;
  ALTER TABLE work_order_num_data ADD CONSTRAINT FK1167 FOREIGN KEY(wn_db_site,wn_db_id,wn_type_code) REFERENCES work_num_data_type(wn_db_site,wn_db_id,wn_type_code)
 ;
  ALTER TABLE work_order_num_data ADD CONSTRAINT FK1168 FOREIGN KEY(eu_db_site,eu_db_id,eu_type_code) REFERENCES eng_unit_type(eu_db_site,eu_db_id,eu_type_code)
 ;
  ALTER TABLE work_order_num_data ADD CONSTRAINT FK1169 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE work_order_chr_data ADD CONSTRAINT FK1160 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE work_order_chr_data ADD CONSTRAINT FK1161 FOREIGN KEY(work_order_db_site,work_order_db_id,work_order_id) REFERENCES work_order(work_order_db_site,work_order_db_id,work_order_id)
 ;
  ALTER TABLE work_order_chr_data ADD CONSTRAINT FK1162 FOREIGN KEY(wc_db_site,wc_db_id,wc_type_code) REFERENCES work_chr_data_type(wc_db_site,wc_db_id,wc_type_code)
 ;
  ALTER TABLE work_order_chr_data ADD CONSTRAINT FK1163 FOREIGN KEY(eu_db_site,eu_db_id,eu_type_code) REFERENCES eng_unit_type(eu_db_site,eu_db_id,eu_type_code)
 ;
  ALTER TABLE work_order_chr_data ADD CONSTRAINT FK1164 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE work_order_audit ADD CONSTRAINT FK1150 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE work_order_audit ADD CONSTRAINT FK1151 FOREIGN KEY(by_agent_site,by_agent_id) REFERENCES agent(org_agent_site,agent_id)
 ;
  ALTER TABLE work_order_audit ADD CONSTRAINT FK1152 FOREIGN KEY(from_sy_agent_site,from_sy_agent_id) REFERENCES agent(org_agent_site,agent_id)
 ;
  ALTER TABLE work_order_audit ADD CONSTRAINT FK1153 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE work_order_audit ADD CONSTRAINT FK1154 FOREIGN KEY(work_order_db_site,work_order_db_id,work_order_id) REFERENCES work_order(work_order_db_site,work_order_db_id,work_order_id)
 ;
  ALTER TABLE work_order_audit ADD CONSTRAINT FK1155 FOREIGN KEY(waudit_db_site,waudit_db_id,waudit_type_code) REFERENCES work_audit_type(waudit_db_site,waudit_db_id,waudit_type_code)
 ;
  ALTER TABLE work_order_step ADD CONSTRAINT FK1171 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE work_order_step ADD CONSTRAINT FK1172 FOREIGN KEY(work_order_db_site,work_order_db_id,work_order_id) REFERENCES work_order(work_order_db_site,work_order_db_id,work_order_id)
 ;
  ALTER TABLE work_order_step ADD CONSTRAINT FK1173 FOREIGN KEY(by_agent_site,by_agent_id) REFERENCES agent(org_agent_site,agent_id)
 ;
  ALTER TABLE work_order_step ADD CONSTRAINT FK1428 FOREIGN KEY(priority_lev_db_site,priority_lev_db_id,priority_lev_type_code) REFERENCES priority_level_type(priority_lev_db_site,priority_lev_db_id,priority_lev_type_code)
 ;
  ALTER TABLE work_order_step ADD CONSTRAINT FK1174 FOREIGN KEY(from_sy_agent_site,from_sy_agent_id) REFERENCES agent(org_agent_site,agent_id)
 ;
  ALTER TABLE work_order_step ADD CONSTRAINT FK1175 FOREIGN KEY(to_agent_site,to_agent_id) REFERENCES agent(org_agent_site,agent_id)
 ;
  ALTER TABLE work_order_step ADD CONSTRAINT FK1396 FOREIGN KEY(sol_pack_db_site,sol_pack_db_id,sol_pack_id) REFERENCES solution_package(sol_pack_db_site,sol_pack_db_id,sol_pack_id)
 ;
  ALTER TABLE work_order_step ADD CONSTRAINT FK1176 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE wo_step_num_data ADD CONSTRAINT FK1112 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE wo_step_num_data ADD CONSTRAINT FK1113 FOREIGN KEY(work_order_db_site,work_order_db_id,work_order_id,work_ord_step_seq) REFERENCES work_order_step(work_order_db_site,work_order_db_id,work_order_id,work_ord_step_seq)
 ;
  ALTER TABLE wo_step_num_data ADD CONSTRAINT FK1114 FOREIGN KEY(wn_db_site,wn_db_id,wn_type_code) REFERENCES work_num_data_type(wn_db_site,wn_db_id,wn_type_code)
 ;
  ALTER TABLE wo_step_num_data ADD CONSTRAINT FK1115 FOREIGN KEY(eu_db_site,eu_db_id,eu_type_code) REFERENCES eng_unit_type(eu_db_site,eu_db_id,eu_type_code)
 ;
  ALTER TABLE wo_step_num_data ADD CONSTRAINT FK1116 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE wo_step_chr_data ADD CONSTRAINT FK1107 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE wo_step_chr_data ADD CONSTRAINT FK1108 FOREIGN KEY(work_order_db_site,work_order_db_id,work_order_id,work_ord_step_seq) REFERENCES work_order_step(work_order_db_site,work_order_db_id,work_order_id,work_ord_step_seq)
 ;
  ALTER TABLE wo_step_chr_data ADD CONSTRAINT FK1109 FOREIGN KEY(wc_db_site,wc_db_id,wc_type_code) REFERENCES work_chr_data_type(wc_db_site,wc_db_id,wc_type_code)
 ;
  ALTER TABLE wo_step_chr_data ADD CONSTRAINT FK1110 FOREIGN KEY(eu_db_site,eu_db_id,eu_type_code) REFERENCES eng_unit_type(eu_db_site,eu_db_id,eu_type_code)
 ;
  ALTER TABLE wo_step_chr_data ADD CONSTRAINT FK1111 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE wo_step_audit ADD CONSTRAINT FK1101 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE wo_step_audit ADD CONSTRAINT FK1102 FOREIGN KEY(work_order_db_site,work_order_db_id,work_order_id,work_ord_step_seq) REFERENCES work_order_step(work_order_db_site,work_order_db_id,work_order_id,work_ord_step_seq)
 ;
  ALTER TABLE wo_step_audit ADD CONSTRAINT FK1103 FOREIGN KEY(waudit_db_site,waudit_db_id,waudit_type_code) REFERENCES work_audit_type(waudit_db_site,waudit_db_id,waudit_type_code)
 ;
  ALTER TABLE wo_step_audit ADD CONSTRAINT FK1104 FOREIGN KEY(by_agent_site,by_agent_id) REFERENCES agent(org_agent_site,agent_id)
 ;
  ALTER TABLE wo_step_audit ADD CONSTRAINT FK1105 FOREIGN KEY(from_sy_agent_site,from_sy_agent_id) REFERENCES agent(org_agent_site,agent_id)
 ;
  ALTER TABLE wo_step_audit ADD CONSTRAINT FK1106 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE wo_step_sg_recomm ADD CONSTRAINT FK1117 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE wo_step_sg_recomm ADD CONSTRAINT FK1118 FOREIGN KEY(work_order_db_site,work_order_db_id,work_order_id,work_ord_step_seq) REFERENCES work_order_step(work_order_db_site,work_order_db_id,work_order_id,work_ord_step_seq)
 ;
  ALTER TABLE wo_step_sg_recomm ADD CONSTRAINT FK1119 FOREIGN KEY(segment_site,segment_id,gmt_recommendation,by_agent_site,by_agent_id) REFERENCES sg_recommendation(segment_site,segment_id,gmt_recommendation,by_agent_site,by_agent_id)
 ;
  ALTER TABLE wo_step_sg_recomm ADD CONSTRAINT FK1120 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE wo_step_as_recomm ADD CONSTRAINT FK1097 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE wo_step_as_recomm ADD CONSTRAINT FK1098 FOREIGN KEY(work_order_db_site,work_order_db_id,work_order_id,work_ord_step_seq) REFERENCES work_order_step(work_order_db_site,work_order_db_id,work_order_id,work_ord_step_seq)
 ;
  ALTER TABLE wo_step_as_recomm ADD CONSTRAINT FK1099 FOREIGN KEY(asset_org_site,asset_id,gmt_recommendation,by_agent_site,by_agent_id) REFERENCES as_recommendation(asset_org_site,asset_id,gmt_recommendation,by_agent_site,by_agent_id)
 ;
  ALTER TABLE wo_step_as_recomm ADD CONSTRAINT FK1100 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE wo_step_work_req ADD CONSTRAINT FK1125 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE wo_step_work_req ADD CONSTRAINT FK1126 FOREIGN KEY(work_order_db_site,work_order_db_id,work_order_id,work_ord_step_seq) REFERENCES work_order_step(work_order_db_site,work_order_db_id,work_order_id,work_ord_step_seq)
 ;
  ALTER TABLE wo_step_work_req ADD CONSTRAINT FK1127 FOREIGN KEY(work_req_db_site,work_req_db_id,work_req_id) REFERENCES work_request(work_req_db_site,work_req_db_id,work_req_id)
 ;
  ALTER TABLE wo_step_work_req ADD CONSTRAINT FK1128 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE sg_completed_work ADD CONSTRAINT FK714 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE sg_completed_work ADD CONSTRAINT FK715 FOREIGN KEY(segment_site,segment_id) REFERENCES segment(segment_site,segment_id)
 ;
  ALTER TABLE sg_completed_work ADD CONSTRAINT FK716 FOREIGN KEY(task_db_site,task_db_id,task_type_code) REFERENCES work_task_type(task_db_site,task_db_id,task_type_code)
 ;
  ALTER TABLE sg_completed_work ADD CONSTRAINT FK717 FOREIGN KEY(by_agent_site,by_agent_id) REFERENCES agent(org_agent_site,agent_id)
 ;
  ALTER TABLE sg_completed_work ADD CONSTRAINT FK1420 FOREIGN KEY(priority_lev_db_site,priority_lev_db_id,priority_lev_type_code) REFERENCES priority_level_type(priority_lev_db_site,priority_lev_db_id,priority_lev_type_code)
 ;
  ALTER TABLE sg_completed_work ADD CONSTRAINT FK718 FOREIGN KEY(from_sy_agent_site,from_sy_agent_id) REFERENCES agent(org_agent_site,agent_id)
 ;
  ALTER TABLE sg_completed_work ADD CONSTRAINT FK1883 FOREIGN KEY(work_req_db_site,work_req_db_id,work_req_id) REFERENCES work_request(work_req_db_site,work_req_db_id,work_req_id)
 ;
  ALTER TABLE sg_completed_work ADD CONSTRAINT FK1884 FOREIGN KEY(work_step_db_site,work_step_db_id,work_step_id) REFERENCES work_step(work_step_db_site,work_step_db_id,work_step_id)
 ;
  ALTER TABLE sg_completed_work ADD CONSTRAINT FK720 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE sg_completed_work ADD CONSTRAINT FK1436 FOREIGN KEY(work_order_db_site,work_order_db_id,work_order_id) REFERENCES work_order(work_order_db_site,work_order_db_id,work_order_id)
 ;
  ALTER TABLE as_completed_work ADD CONSTRAINT FK30 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE as_completed_work ADD CONSTRAINT FK31 FOREIGN KEY(asset_org_site,asset_id) REFERENCES asset(asset_org_site,asset_id)
 ;
  ALTER TABLE as_completed_work ADD CONSTRAINT FK32 FOREIGN KEY(task_db_site,task_db_id,task_type_code) REFERENCES work_task_type(task_db_site,task_db_id,task_type_code)
 ;
  ALTER TABLE as_completed_work ADD CONSTRAINT FK33 FOREIGN KEY(by_agent_site,by_agent_id) REFERENCES agent(org_agent_site,agent_id)
 ;
  ALTER TABLE as_completed_work ADD CONSTRAINT FK1407 FOREIGN KEY(priority_lev_db_site,priority_lev_db_id,priority_lev_type_code) REFERENCES priority_level_type(priority_lev_db_site,priority_lev_db_id,priority_lev_type_code)
 ;
  ALTER TABLE as_completed_work ADD CONSTRAINT FK34 FOREIGN KEY(from_sy_agent_site,from_sy_agent_id) REFERENCES agent(org_agent_site,agent_id)
 ;
  ALTER TABLE as_completed_work ADD CONSTRAINT FK1885 FOREIGN KEY(work_req_db_site,work_req_db_id,work_req_id) REFERENCES work_request(work_req_db_site,work_req_db_id,work_req_id)
 ;
  ALTER TABLE as_completed_work ADD CONSTRAINT FK1886 FOREIGN KEY(work_step_db_site,work_step_db_id,work_step_id) REFERENCES work_step(work_step_db_site,work_step_db_id,work_step_id)
 ;
  ALTER TABLE as_completed_work ADD CONSTRAINT FK36 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE as_completed_work ADD CONSTRAINT FK1432 FOREIGN KEY(work_order_db_site,work_order_db_id,work_order_id) REFERENCES work_order(work_order_db_site,work_order_db_id,work_order_id)
 ;
  ALTER TABLE ol_completed_work ADD CONSTRAINT FK548 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE ol_completed_work ADD CONSTRAINT FK549 FOREIGN KEY(ord_list_db_site,ord_list_db_id,ord_list_id) REFERENCES ordered_list(ord_list_db_site,ord_list_db_id,ord_list_id)
 ;
  ALTER TABLE ol_completed_work ADD CONSTRAINT FK550 FOREIGN KEY(task_db_site,task_type_code,task_db_id) REFERENCES work_task_type(task_db_site,task_db_id,task_type_code)
 ;
  ALTER TABLE ol_completed_work ADD CONSTRAINT FK551 FOREIGN KEY(by_agent_site,by_agent_id) REFERENCES agent(org_agent_site,agent_id)
 ;
  ALTER TABLE ol_completed_work ADD CONSTRAINT FK1416 FOREIGN KEY(priority_lev_db_site,priority_lev_db_id,priority_lev_type_code) REFERENCES priority_level_type(priority_lev_db_site,priority_lev_db_id,priority_lev_type_code)
 ;
  ALTER TABLE ol_completed_work ADD CONSTRAINT FK552 FOREIGN KEY(from_sy_agent_site,from_sy_agent_id) REFERENCES agent(org_agent_site,agent_id)
 ;
  ALTER TABLE ol_completed_work ADD CONSTRAINT FK1887 FOREIGN KEY(work_req_db_site,work_step_db_id,work_step_id) REFERENCES work_request(work_req_db_site,work_req_db_id,work_req_id)
 ;
  ALTER TABLE ol_completed_work ADD CONSTRAINT FK1888 FOREIGN KEY(work_step_db_site,work_step_db_id,work_step_id) REFERENCES work_step(work_step_db_site,work_step_db_id,work_step_id)
 ;
  ALTER TABLE ol_completed_work ADD CONSTRAINT FK554 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE ol_completed_work ADD CONSTRAINT FK1434 FOREIGN KEY(work_order_db_site,work_order_db_id,work_order_id) REFERENCES work_order(work_order_db_site,work_order_db_id,work_order_id)
 ;
  ALTER TABLE db_mim_interface ADD CONSTRAINT FK332 FOREIGN KEY(interf_type_code) REFERENCES mim_interface_type(interf_type_code)
 ;
  ALTER TABLE db_mim_interface ADD CONSTRAINT FK333 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE db_mim_interface ADD CONSTRAINT FK334 FOREIGN KEY(db_site,db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE db_mim_interface ADD CONSTRAINT FK335 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE mloc_type_child ADD CONSTRAINT FK1252 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE mloc_type_child ADD CONSTRAINT FK1253 FOREIGN KEY(child_ml_db_site,child_ml_db_id,child_ml_type_code) REFERENCES meas_loc_type(ml_db_site,ml_db_id,ml_type_code)
 ;
  ALTER TABLE mloc_type_child ADD CONSTRAINT FK1254 FOREIGN KEY(ml_db_site,ml_db_id,ml_type_code) REFERENCES meas_loc_type(ml_db_site,ml_db_id,ml_type_code)
 ;
  ALTER TABLE mloc_type_child ADD CONSTRAINT FK1255 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE as_sol_pack ADD CONSTRAINT FK1240 FOREIGN KEY(sol_pack_db_site,sol_pack_db_id,sol_pack_id) REFERENCES solution_package(sol_pack_db_site,sol_pack_db_id,sol_pack_id)
 ;
  ALTER TABLE as_sol_pack ADD CONSTRAINT FK1241 FOREIGN KEY(asset_org_site,asset_id) REFERENCES asset(asset_org_site,asset_id)
 ;
  ALTER TABLE as_sol_pack ADD CONSTRAINT FK1242 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE as_sol_pack ADD CONSTRAINT FK1243 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE sg_sol_pack ADD CONSTRAINT FK1248 FOREIGN KEY(sol_pack_db_site,sol_pack_db_id,sol_pack_id) REFERENCES solution_package(sol_pack_db_site,sol_pack_db_id,sol_pack_id)
 ;
  ALTER TABLE sg_sol_pack ADD CONSTRAINT FK1249 FOREIGN KEY(segment_site,segment_id) REFERENCES segment(segment_site,segment_id)
 ;
  ALTER TABLE sg_sol_pack ADD CONSTRAINT FK1250 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE sg_sol_pack ADD CONSTRAINT FK1251 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE ol_sol_pack ADD CONSTRAINT FK1244 FOREIGN KEY(sol_pack_db_site,sol_pack_db_id,sol_pack_id) REFERENCES solution_package(sol_pack_db_site,sol_pack_db_id,sol_pack_id)
 ;
  ALTER TABLE ol_sol_pack ADD CONSTRAINT FK1245 FOREIGN KEY(ord_list_db_site,ord_list_db_id,ord_list_id) REFERENCES ordered_list(ord_list_db_site,ord_list_db_id,ord_list_id)
 ;
  ALTER TABLE ol_sol_pack ADD CONSTRAINT FK1246 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE ol_sol_pack ADD CONSTRAINT FK1247 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE meas_loc_assoc ADD CONSTRAINT FK1224 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE meas_loc_assoc ADD CONSTRAINT FK1225 FOREIGN KEY(related_mloc_site,related_mloc_id) REFERENCES meas_location(meas_loc_site,meas_loc_id)
 ;
  ALTER TABLE meas_loc_assoc ADD CONSTRAINT FK1226 FOREIGN KEY(meas_loc_site,meas_loc_id) REFERENCES meas_location(meas_loc_site,meas_loc_id)
 ;
  ALTER TABLE meas_loc_assoc ADD CONSTRAINT FK1227 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE amb_set_type ADD CONSTRAINT FK1288 FOREIGN KEY(amb_set_db_site,amb_set_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE amb_set_type ADD CONSTRAINT FK1289 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE amb_set_type ADD CONSTRAINT FK1290 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE log_connector_type ADD CONSTRAINT FK1291 FOREIGN KEY(lc_db_site,lc_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE log_connector_type ADD CONSTRAINT FK1292 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE log_connector_type ADD CONSTRAINT FK1293 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE ev_chr_data_type ADD CONSTRAINT FK1294 FOREIGN KEY(ec_db_site,ec_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE ev_chr_data_type ADD CONSTRAINT FK1295 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE ev_chr_data_type ADD CONSTRAINT FK1296 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE mloc_num_data_type ADD CONSTRAINT FK1297 FOREIGN KEY(mln_db_site,mln_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE mloc_num_data_type ADD CONSTRAINT FK1298 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE mloc_num_data_type ADD CONSTRAINT FK1299 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE mloc_chr_data_type ADD CONSTRAINT FK1300 FOREIGN KEY(mlc_db_site,mlc_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE mloc_chr_data_type ADD CONSTRAINT FK1301 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE mloc_chr_data_type ADD CONSTRAINT FK1302 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE sg_hyp_ev_amb_set ADD CONSTRAINT FK1303 FOREIGN KEY(sg_hyp_amb_set_db_site,sg_hyp_amb_set_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE sg_hyp_ev_amb_set ADD CONSTRAINT FK1304 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE sg_hyp_ev_amb_set ADD CONSTRAINT FK1305 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE sg_hyp_ev_amb_set ADD CONSTRAINT FK1306 FOREIGN KEY(segment_site,segment_id) REFERENCES segment(segment_site,segment_id)
 ;
  ALTER TABLE sg_hyp_ev_amb_set ADD CONSTRAINT FK1307 FOREIGN KEY(amb_set_db_site,amb_set_db_id,amb_set_type_code) REFERENCES amb_set_type(amb_set_db_site,amb_set_db_id,amb_set_type_code)
 ;
  ALTER TABLE sg_hyp_ev_amb_set ADD CONSTRAINT FK1308 FOREIGN KEY(by_agent_site,by_agent_id) REFERENCES agent(org_agent_site,agent_id)
 ;
  ALTER TABLE sg_hyp_ev_log_conn ADD CONSTRAINT FK1309 FOREIGN KEY(sg_hyp_amb_set_db_site,sg_hyp_amb_set_db_id,sg_hyp_amb_set_id) REFERENCES sg_hyp_ev_amb_set(sg_hyp_amb_set_db_site,sg_hyp_amb_set_db_id,sg_hyp_amb_set_id)
 ;
  ALTER TABLE sg_hyp_ev_log_conn ADD CONSTRAINT FK1310 FOREIGN KEY(lc_db_site,lc_db_id,lc_type_code) REFERENCES log_connector_type(lc_db_site,lc_db_id,lc_type_code)
 ;
  ALTER TABLE sg_hyp_ev_log_conn ADD CONSTRAINT FK1311 FOREIGN KEY(sg_hyp_db_site,sg_hyp_db_id,sg_hyp_event_id) REFERENCES sg_hyp_event(sg_hyp_db_site,sg_hyp_db_id,sg_hyp_event_id)
 ;
  ALTER TABLE sg_hyp_ev_log_conn ADD CONSTRAINT FK1312 FOREIGN KEY(sg_hyp_amb_set_db_site,sg_hyp_amb_set_db_id,sg_hyp_amb_set_id,par_log_conn_id) REFERENCES sg_hyp_ev_log_conn(sg_hyp_amb_set_db_site,sg_hyp_amb_set_db_id,sg_hyp_amb_set_id,log_conn_id)
 ;
  ALTER TABLE sg_hyp_ev_log_conn ADD CONSTRAINT FK1313 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE sg_hyp_ev_log_conn ADD CONSTRAINT FK1314 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE sg_prop_ev_amb_set ADD CONSTRAINT FK1315 FOREIGN KEY(segment_site,segment_id) REFERENCES segment(segment_site,segment_id)
 ;
  ALTER TABLE sg_prop_ev_amb_set ADD CONSTRAINT FK1316 FOREIGN KEY(by_agent_site,by_agent_id) REFERENCES agent(org_agent_site,agent_id)
 ;
  ALTER TABLE sg_prop_ev_amb_set ADD CONSTRAINT FK1317 FOREIGN KEY(amb_set_db_site,amb_set_db_id,amb_set_type_code) REFERENCES amb_set_type(amb_set_db_site,amb_set_db_id,amb_set_type_code)
 ;
  ALTER TABLE sg_prop_ev_amb_set ADD CONSTRAINT FK1318 FOREIGN KEY(sg_hyp_amb_set_db_site,sg_hyp_amb_set_db_id,sg_hyp_amb_set_id) REFERENCES sg_hyp_ev_amb_set(sg_hyp_amb_set_db_site,sg_hyp_amb_set_db_id,sg_hyp_amb_set_id)
 ;
  ALTER TABLE sg_prop_ev_amb_set ADD CONSTRAINT FK1319 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE sg_prop_ev_amb_set ADD CONSTRAINT FK1320 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE sg_prop_ev_log_conn ADD CONSTRAINT FK1321 FOREIGN KEY(sg_prop_amb_set_db_site,sg_prop_amb_set_db_id,sg_prop_amb_set_id) REFERENCES sg_prop_ev_amb_set(sg_prop_amb_set_db_site,sg_prop_amb_set_db_id,sg_prop_amb_set_id)
 ;
  ALTER TABLE sg_prop_ev_log_conn ADD CONSTRAINT FK1322 FOREIGN KEY(lc_db_site,lc_db_id,lc_type_code) REFERENCES log_connector_type(lc_db_site,lc_db_id,lc_type_code)
 ;
  ALTER TABLE sg_prop_ev_log_conn ADD CONSTRAINT FK1323 FOREIGN KEY(sg_prop_db_site,sg_prop_db_id,sg_prop_event_id) REFERENCES sg_proposed_event(sg_prop_db_site,sg_prop_db_id,sg_prop_event_id)
 ;
  ALTER TABLE sg_prop_ev_log_conn ADD CONSTRAINT FK1325 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE sg_prop_ev_log_conn ADD CONSTRAINT FK1326 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE sg_pr_ev_amb_set_sg_ev ADD CONSTRAINT FK1327 FOREIGN KEY(sg_prop_amb_set_db_site,sg_prop_amb_set_db_id,sg_prop_amb_set_id) REFERENCES sg_prop_ev_amb_set(sg_prop_amb_set_db_site,sg_prop_amb_set_db_id,sg_prop_amb_set_id)
 ;
  ALTER TABLE sg_pr_ev_amb_set_sg_ev ADD CONSTRAINT FK1328 FOREIGN KEY(segment_site,segment_id,ev_db_site,ev_db_id,event_type_code,gmt_event_start) REFERENCES segment_event(segment_site,segment_id,ev_db_site,ev_db_id,event_type_code,gmt_event_start)
 ;
  ALTER TABLE sg_pr_ev_amb_set_sg_ev ADD CONSTRAINT FK1329 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE sg_pr_ev_amb_set_sg_ev ADD CONSTRAINT FK1330 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE num_al_reg_num_data ADD CONSTRAINT FK1331 FOREIGN KEY(alarm_db_site,alarm_db_id,al_meas_loc_site,al_meas_loc_id,al_ordering_seq) REFERENCES num_alarm_reg(alarm_db_site,alarm_db_id,meas_loc_site,meas_loc_id,ordering_seq)
 ;
  ALTER TABLE num_al_reg_num_data ADD CONSTRAINT FK1332 FOREIGN KEY(en_db_site,en_db_id,en_type_code) REFERENCES ev_num_data_type(en_db_site,en_db_id,en_type_code)
 ;
  ALTER TABLE num_al_reg_num_data ADD CONSTRAINT FK1333 FOREIGN KEY(eu_db_site,eu_db_id,eu_type_code) REFERENCES eng_unit_type(eu_db_site,eu_db_id,eu_type_code)
 ;
  ALTER TABLE num_al_reg_num_data ADD CONSTRAINT FK1334 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE num_al_reg_num_data ADD CONSTRAINT FK1335 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE num_al_reg_chr_data ADD CONSTRAINT FK1336 FOREIGN KEY(alarm_db_site,alarm_db_id,al_meas_loc_site,al_meas_loc_id,al_ordering_seq) REFERENCES num_alarm_reg(alarm_db_site,alarm_db_id,meas_loc_site,meas_loc_id,ordering_seq)
 ;
  ALTER TABLE num_al_reg_chr_data ADD CONSTRAINT FK1337 FOREIGN KEY(ec_db_site,ec_db_id,ec_type_code) REFERENCES ev_chr_data_type(ec_db_site,ec_db_id,ec_type_code)
 ;
  ALTER TABLE num_al_reg_chr_data ADD CONSTRAINT FK1338 FOREIGN KEY(eu_db_site,eu_db_id,eu_type_code) REFERENCES eng_unit_type(eu_db_site,eu_db_id,eu_type_code)
 ;
  ALTER TABLE num_al_reg_chr_data ADD CONSTRAINT FK1339 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE num_al_reg_chr_data ADD CONSTRAINT FK1340 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE num_al_reg_blob_data ADD CONSTRAINT FK1341 FOREIGN KEY(alarm_db_site,alarm_db_id,al_meas_loc_site,al_meas_loc_id,al_ordering_seq) REFERENCES num_alarm_reg(alarm_db_site,alarm_db_id,meas_loc_site,meas_loc_id,ordering_seq)
 ;
  ALTER TABLE num_al_reg_blob_data ADD CONSTRAINT FK1342 FOREIGN KEY(bd_db_site,bd_db_id,bd_type_code) REFERENCES blob_data_type(bd_db_site,bd_db_id,bd_type_code)
 ;
  ALTER TABLE num_al_reg_blob_data ADD CONSTRAINT FK1343 FOREIGN KEY(blct_db_site,blct_db_id,blc_type_code) REFERENCES blob_content_type(blct_db_site,blct_db_id,blc_type_code)
 ;
  ALTER TABLE num_al_reg_blob_data ADD CONSTRAINT FK1344 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE num_al_reg_blob_data ADD CONSTRAINT FK1345 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE meas_loc_num_data ADD CONSTRAINT FK1346 FOREIGN KEY(meas_loc_site,meas_loc_id) REFERENCES meas_location(meas_loc_site,meas_loc_id)
 ;
  ALTER TABLE meas_loc_num_data ADD CONSTRAINT FK1347 FOREIGN KEY(mln_db_site,mln_db_id,mln_type_code) REFERENCES mloc_num_data_type(mln_db_site,mln_db_id,mln_type_code)
 ;
  ALTER TABLE meas_loc_num_data ADD CONSTRAINT FK1348 FOREIGN KEY(eu_db_site,eu_db_id,eu_type_code) REFERENCES eng_unit_type(eu_db_site,eu_db_id,eu_type_code)
 ;
  ALTER TABLE meas_loc_num_data ADD CONSTRAINT FK1349 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE meas_loc_num_data ADD CONSTRAINT FK1350 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE meas_loc_chr_data ADD CONSTRAINT FK1351 FOREIGN KEY(meas_loc_site,meas_loc_id) REFERENCES meas_location(meas_loc_site,meas_loc_id)
 ;
  ALTER TABLE meas_loc_chr_data ADD CONSTRAINT FK1352 FOREIGN KEY(mlc_db_site,mlc_db_id,mlc_type_code) REFERENCES mloc_chr_data_type(mlc_db_site,mlc_db_id,mlc_type_code)
 ;
  ALTER TABLE meas_loc_chr_data ADD CONSTRAINT FK1353 FOREIGN KEY(eu_db_site,eu_db_id,eu_type_code) REFERENCES eng_unit_type(eu_db_site,eu_db_id,eu_type_code)
 ;
  ALTER TABLE meas_loc_chr_data ADD CONSTRAINT FK1354 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE meas_loc_chr_data ADD CONSTRAINT FK1355 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE meas_loc_blob_data ADD CONSTRAINT FK1356 FOREIGN KEY(meas_loc_site,meas_loc_id) REFERENCES meas_location(meas_loc_site,meas_loc_id)
 ;
  ALTER TABLE meas_loc_blob_data ADD CONSTRAINT FK1357 FOREIGN KEY(bd_db_site,bd_db_id,bd_type_code) REFERENCES blob_data_type(bd_db_site,bd_db_id,bd_type_code)
 ;
  ALTER TABLE meas_loc_blob_data ADD CONSTRAINT FK1358 FOREIGN KEY(blct_db_site,blct_db_id,blc_type_code) REFERENCES blob_content_type(blct_db_site,blct_db_id,blc_type_code)
 ;
  ALTER TABLE meas_loc_blob_data ADD CONSTRAINT FK1359 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE meas_loc_blob_data ADD CONSTRAINT FK1360 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE geo_position ADD CONSTRAINT FK1361 FOREIGN KEY(geo_db_site,geo_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE geo_position ADD CONSTRAINT FK1362 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE geo_position ADD CONSTRAINT FK1363 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE gps_datum_type ADD CONSTRAINT FK1364 FOREIGN KEY(datum_db_site,datum_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE gps_datum_type ADD CONSTRAINT FK1365 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE gps_datum_type ADD CONSTRAINT FK1366 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE gps_precision_type ADD CONSTRAINT FK1367 FOREIGN KEY(precision_db_site,precision_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE gps_precision_type ADD CONSTRAINT FK1368 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE gps_precision_type ADD CONSTRAINT FK1369 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE gps_elevation_type ADD CONSTRAINT FK1370 FOREIGN KEY(elevation_db_site,elevation_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE gps_elevation_type ADD CONSTRAINT FK1371 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE gps_elevation_type ADD CONSTRAINT FK1372 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE gps_location ADD CONSTRAINT FK1388 FOREIGN KEY(geo_db_site,geo_db_id,geo_position_id) REFERENCES geo_position(geo_db_site,geo_db_id,geo_position_id)
 ;
  ALTER TABLE gps_location ADD CONSTRAINT FK1373 FOREIGN KEY(datum_db_site,datum_db_id,datum_type_code) REFERENCES gps_datum_type(datum_db_site,datum_db_id,datum_type_code)
 ;
  ALTER TABLE gps_location ADD CONSTRAINT FK1374 FOREIGN KEY(precision_db_site,precision_db_id,precision_type_code) REFERENCES gps_precision_type(precision_db_site,precision_db_id,precision_type_code)
 ;
  ALTER TABLE gps_location ADD CONSTRAINT FK1375 FOREIGN KEY(elevation_db_site,elevation_db_id,elevation_type_code) REFERENCES gps_elevation_type(elevation_db_site,elevation_db_id,elevation_type_code)
 ;
  ALTER TABLE gps_location ADD CONSTRAINT FK1376 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE gps_location ADD CONSTRAINT FK1377 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE segment_geo_position ADD CONSTRAINT FK1378 FOREIGN KEY(segment_site,segment_id) REFERENCES segment(segment_site,segment_id)
 ;
  ALTER TABLE segment_geo_position ADD CONSTRAINT FK1379 FOREIGN KEY(geo_db_site,geo_db_id,geo_position_id) REFERENCES geo_position(geo_db_site,geo_db_id,geo_position_id)
 ;
  ALTER TABLE segment_geo_position ADD CONSTRAINT FK1380 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE segment_geo_position ADD CONSTRAINT FK1381 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE segment_geo_position ADD CONSTRAINT FK1386 FOREIGN KEY(dur_eu_db_site,dur_eu_db_id,dur_eu_type_code) REFERENCES eng_unit_type(eu_db_site,eu_db_id,eu_type_code)
 ;
  ALTER TABLE asset_geo_position ADD CONSTRAINT FK1382 FOREIGN KEY(asset_org_site,asset_id) REFERENCES asset(asset_org_site,asset_id)
 ;
  ALTER TABLE asset_geo_position ADD CONSTRAINT FK1383 FOREIGN KEY(geo_db_site,geo_db_id,geo_position_id) REFERENCES geo_position(geo_db_site,geo_db_id,geo_position_id)
 ;
  ALTER TABLE asset_geo_position ADD CONSTRAINT FK1384 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE asset_geo_position ADD CONSTRAINT FK1387 FOREIGN KEY(dur_eu_db_site,dur_eu_db_id,dur_eu_type_code) REFERENCES eng_unit_type(eu_db_site,eu_db_id,eu_type_code)
 ;
  ALTER TABLE asset_geo_position ADD CONSTRAINT FK1385 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE sg_event_chr_data ADD CONSTRAINT FK1458 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE sg_event_chr_data ADD CONSTRAINT FK1459 FOREIGN KEY(segment_site,segment_id,ev_db_site,ev_db_id,event_type_code,gmt_event_start) REFERENCES segment_event(segment_site,segment_id,ev_db_site,ev_db_id,event_type_code,gmt_event_start)
 ;
  ALTER TABLE sg_event_chr_data ADD CONSTRAINT FK1460 FOREIGN KEY(ec_db_site,ec_db_id,ec_type_code) REFERENCES ev_chr_data_type(ec_db_site,ec_db_id,ec_type_code)
 ;
  ALTER TABLE sg_event_chr_data ADD CONSTRAINT FK1461 FOREIGN KEY(eu_db_site,eu_db_id,eu_type_code) REFERENCES eng_unit_type(eu_db_site,eu_db_id,eu_type_code)
 ;
  ALTER TABLE sg_event_chr_data ADD CONSTRAINT FK1462 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE as_event_chr_data ADD CONSTRAINT FK1448 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE as_event_chr_data ADD CONSTRAINT FK1449 FOREIGN KEY(asset_org_site,asset_id,ev_db_site,ev_db_id,event_type_code,gmt_event_start) REFERENCES asset_event(asset_org_site,asset_id,ev_db_site,ev_db_id,event_type_code,gmt_event_start)
 ;
  ALTER TABLE as_event_chr_data ADD CONSTRAINT FK1450 FOREIGN KEY(ec_db_site,ec_db_id,ec_type_code) REFERENCES ev_chr_data_type(ec_db_site,ec_db_id,ec_type_code)
 ;
  ALTER TABLE as_event_chr_data ADD CONSTRAINT FK1451 FOREIGN KEY(eu_db_site,eu_db_id,eu_type_code) REFERENCES eng_unit_type(eu_db_site,eu_db_id,eu_type_code)
 ;
  ALTER TABLE as_event_chr_data ADD CONSTRAINT FK1452 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE logistic_resource_type ADD CONSTRAINT FK1541 FOREIGN KEY(resource_type_db_site,resource_type_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE logistic_resource_type ADD CONSTRAINT FK2082 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE logistic_resource_type ADD CONSTRAINT FK2083 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE logistic_resource_type_child ADD CONSTRAINT FK2066 FOREIGN KEY(resource_type_db_site,resource_type_db_id,resource_type_code) REFERENCES logistic_resource_type(resource_type_db_site,resource_type_db_id,resource_type_code)
 ;
  ALTER TABLE logistic_resource_type_child ADD CONSTRAINT FK2067 FOREIGN KEY(child_resource_type_db_site,child_resource_type_db_id,child_resource_type_code) REFERENCES logistic_resource_type(resource_type_db_site,resource_type_db_id,resource_type_code)
 ;
  ALTER TABLE logistic_resource_type_child ADD CONSTRAINT FK2068 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE logistic_resource_type_child ADD CONSTRAINT FK2084 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE mat_item_conn_type ADD CONSTRAINT FK2085 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE mat_item_conn_type ADD CONSTRAINT FK2086 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE resource_num_dat_type ADD CONSTRAINT FK2087 FOREIGN KEY(rsn_type_db_site,rsn_type_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE resource_num_dat_type ADD CONSTRAINT FK2088 FOREIGN KEY(default_ru_type) REFERENCES ref_unit_type(ru_type_code)
 ;
  ALTER TABLE resource_num_dat_type ADD CONSTRAINT FK2089 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE resource_num_dat_type ADD CONSTRAINT FK1439 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE resource_chr_dat_type ADD CONSTRAINT FK1440 FOREIGN KEY(rsc_type_db_site,rsc_type_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE resource_chr_dat_type ADD CONSTRAINT FK1441 FOREIGN KEY(default_ru_type) REFERENCES ref_unit_type(ru_type_code)
 ;
  ALTER TABLE resource_chr_dat_type ADD CONSTRAINT FK1442 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE resource_chr_dat_type ADD CONSTRAINT FK1443 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE ord_list_num_dat_type ADD CONSTRAINT FK1542 FOREIGN KEY(ordn_db_site,ordn_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE ord_list_num_dat_type ADD CONSTRAINT FK1543 FOREIGN KEY(default_ru_type) REFERENCES ref_unit_type(ru_type_code)
 ;
  ALTER TABLE ord_list_num_dat_type ADD CONSTRAINT FK1544 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE ord_list_num_dat_type ADD CONSTRAINT FK1545 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE ord_list_chr_dat_type ADD CONSTRAINT FK1546 FOREIGN KEY(ordc_db_site,ordc_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE ord_list_chr_dat_type ADD CONSTRAINT FK1547 FOREIGN KEY(default_ru_type) REFERENCES ref_unit_type(ru_type_code)
 ;
  ALTER TABLE ord_list_chr_dat_type ADD CONSTRAINT FK1548 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE ord_list_chr_dat_type ADD CONSTRAINT FK1549 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE ordered_list_type ADD CONSTRAINT FK1565 FOREIGN KEY(ord_list_type_db_site,ord_list_type_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE ordered_list_type ADD CONSTRAINT FK1566 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE ordered_list_type ADD CONSTRAINT FK1567 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE test_type ADD CONSTRAINT FK1568 FOREIGN KEY(test_type_db_site,test_type_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE test_type ADD CONSTRAINT FK1569 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE test_type ADD CONSTRAINT FK1570 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE test_comp_type ADD CONSTRAINT FK1571 FOREIGN KEY(tc_type_db_site,tc_type_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE test_comp_type ADD CONSTRAINT FK1572 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE test_comp_type ADD CONSTRAINT FK1573 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE test_comp_group_type ADD CONSTRAINT FK1574 FOREIGN KEY(tcg_type_db_site,tcg_type_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE test_comp_group_type ADD CONSTRAINT FK1575 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE test_comp_group_type ADD CONSTRAINT FK1576 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE criticality_scale_type ADD CONSTRAINT FK1630 FOREIGN KEY(cs_type_db_site,cs_type_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE criticality_scale_type ADD CONSTRAINT FK1631 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE criticality_scale_type ADD CONSTRAINT FK1632 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE eng_study_type ADD CONSTRAINT FK2090 FOREIGN KEY(eng_study_type_db_site,eng_study_type_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE eng_study_type ADD CONSTRAINT FK1634 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE eng_study_code ADD CONSTRAINT FK1635 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE eng_study_code ADD CONSTRAINT FK1636 FOREIGN KEY(eng_study_code_db_site,eng_study_code_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE eng_study_code ADD CONSTRAINT FK1637 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE eng_study_code ADD CONSTRAINT FK1638 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE eng_study_entry ADD CONSTRAINT FK1639 FOREIGN KEY(eng_study_type_db_site,eng_study_type_db_id,eng_study_type_code) REFERENCES eng_study_type(eng_study_type_db_site,eng_study_type_db_id,eng_study_type_code)
 ;
  ALTER TABLE eng_study_entry ADD CONSTRAINT FK1640 FOREIGN KEY(eng_study_code_db_site,eng_study_code_db_id,eng_study_code_id) REFERENCES eng_study_code(eng_study_code_db_site,eng_study_code_db_id,eng_study_code_id)
 ;
  ALTER TABLE eng_study_entry ADD CONSTRAINT FK1641 FOREIGN KEY(parent_db_site,parent_db_id,parent_id) REFERENCES eng_study_entry(eng_study_entry_db_site,eng_study_entry_db_id,eng_study_entry_id)
 ;
  ALTER TABLE eng_study_entry ADD CONSTRAINT FK1642 FOREIGN KEY(ev_db_site,ev_db_id,event_type_code) REFERENCES sg_as_event_type(ev_db_site,ev_db_id,event_type_code)
 ;
  ALTER TABLE eng_study_entry ADD CONSTRAINT FK1643 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE eng_study_entry ADD CONSTRAINT FK1644 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE network_conn_type ADD CONSTRAINT FK1645 FOREIGN KEY(net_conn_type_db_site,net_conn_type_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE network_conn_type ADD CONSTRAINT FK1646 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE network_conn_type ADD CONSTRAINT FK1647 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE standard_data_type ADD CONSTRAINT FK1648 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE standard_data_type ADD CONSTRAINT FK1649 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE network_num_dat_type ADD CONSTRAINT FK1650 FOREIGN KEY(nn_type_db_site,nn_type_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE network_num_dat_type ADD CONSTRAINT FK1651 FOREIGN KEY(default_ru_type) REFERENCES ref_unit_type(ru_type_code)
 ;
  ALTER TABLE network_num_dat_type ADD CONSTRAINT FK1652 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE network_num_dat_type ADD CONSTRAINT FK1653 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE network_chr_dat_type ADD CONSTRAINT FK1654 FOREIGN KEY(nc_type_db_site,nc_type_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE network_chr_dat_type ADD CONSTRAINT FK1655 FOREIGN KEY(default_ru_type) REFERENCES ref_unit_type(ru_type_code)
 ;
  ALTER TABLE network_chr_dat_type ADD CONSTRAINT FK1656 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE network_chr_dat_type ADD CONSTRAINT FK1657 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE ordered_list_child ADD CONSTRAINT FK1662 FOREIGN KEY(ord_list_db_site,ord_list_db_id,ord_list_id) REFERENCES ordered_list(ord_list_db_site,ord_list_db_id,ord_list_id)
 ;
  ALTER TABLE ordered_list_child ADD CONSTRAINT FK1663 FOREIGN KEY(child_ord_list_db_site,child_ord_list_db_id,child_ord_list_id) REFERENCES ordered_list(ord_list_db_site,ord_list_db_id,ord_list_id)
 ;
  ALTER TABLE ordered_list_child ADD CONSTRAINT FK1664 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE ordered_list_child ADD CONSTRAINT FK1665 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE valid_as_type_on_sg_type ADD CONSTRAINT FK1666 FOREIGN KEY(db_site,db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE valid_as_type_on_sg_type ADD CONSTRAINT FK1667 FOREIGN KEY(as_db_site,as_db_id,as_type_code) REFERENCES asset_type(as_db_site,as_db_id,as_type_code)
 ;
  ALTER TABLE valid_as_type_on_sg_type ADD CONSTRAINT FK1668 FOREIGN KEY(sg_db_site,sg_db_id,sg_type_code) REFERENCES segment_type(sg_db_site,sg_db_id,sg_type_code)
 ;
  ALTER TABLE valid_as_type_on_sg_type ADD CONSTRAINT FK1669 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE valid_as_type_on_sg_type ADD CONSTRAINT FK1670 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE valid_sg_type_eng_study_entry ADD CONSTRAINT FK1671 FOREIGN KEY(db_site,db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE valid_sg_type_eng_study_entry ADD CONSTRAINT FK1672 FOREIGN KEY(sg_db_site,sg_db_id,sg_type_code) REFERENCES segment_type(sg_db_site,sg_db_id,sg_type_code)
 ;
  ALTER TABLE valid_sg_type_eng_study_entry ADD CONSTRAINT FK1673 FOREIGN KEY(eng_study_entry_db_site,eng_study_entry_db_id,eng_study_entry_id) REFERENCES eng_study_entry(eng_study_entry_db_site,eng_study_entry_db_id,eng_study_entry_id)
 ;
  ALTER TABLE valid_sg_type_eng_study_entry ADD CONSTRAINT FK1674 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE valid_sg_type_eng_study_entry ADD CONSTRAINT FK1675 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE valid_segment_eng_study_entry ADD CONSTRAINT FK1676 FOREIGN KEY(db_site,db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE valid_segment_eng_study_entry ADD CONSTRAINT FK1677 FOREIGN KEY(segment_site,segment_id) REFERENCES segment(segment_site,segment_id)
 ;
  ALTER TABLE valid_segment_eng_study_entry ADD CONSTRAINT FK1678 FOREIGN KEY(eng_study_entry_db_site,eng_study_entry_db_id,eng_study_entry_id) REFERENCES eng_study_entry(eng_study_entry_db_site,eng_study_entry_db_id,eng_study_entry_id)
 ;
  ALTER TABLE valid_segment_eng_study_entry ADD CONSTRAINT FK1679 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE valid_segment_eng_study_entry ADD CONSTRAINT FK1680 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE valid_as_type_eng_study_entry ADD CONSTRAINT FK1681 FOREIGN KEY(db_site,db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE valid_as_type_eng_study_entry ADD CONSTRAINT FK1682 FOREIGN KEY(as_db_site,as_db_id,as_type_code) REFERENCES asset_type(as_db_site,as_db_id,as_type_code)
 ;
  ALTER TABLE valid_as_type_eng_study_entry ADD CONSTRAINT FK1683 FOREIGN KEY(eng_study_entry_db_site,eng_study_entry_db_id,eng_study_entry_id) REFERENCES eng_study_entry(eng_study_entry_db_site,eng_study_entry_db_id,eng_study_entry_id)
 ;
  ALTER TABLE valid_as_type_eng_study_entry ADD CONSTRAINT FK1684 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE valid_as_type_eng_study_entry ADD CONSTRAINT FK1685 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE valid_asset_eng_study_entry ADD CONSTRAINT FK1686 FOREIGN KEY(db_site,db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE valid_asset_eng_study_entry ADD CONSTRAINT FK1687 FOREIGN KEY(asset_org_site,asset_id) REFERENCES asset(asset_org_site,asset_id)
 ;
  ALTER TABLE valid_asset_eng_study_entry ADD CONSTRAINT FK1688 FOREIGN KEY(eng_study_entry_db_site,eng_study_entry_db_id,eng_study_entry_id) REFERENCES eng_study_entry(eng_study_entry_db_site,eng_study_entry_db_id,eng_study_entry_id)
 ;
  ALTER TABLE valid_asset_eng_study_entry ADD CONSTRAINT FK1689 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE valid_asset_eng_study_entry ADD CONSTRAINT FK1690 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE asset_model_history ADD CONSTRAINT FK1691 FOREIGN KEY(asset_org_site,asset_id) REFERENCES asset(asset_org_site,asset_id)
 ;
  ALTER TABLE asset_model_history ADD CONSTRAINT FK1692 FOREIGN KEY(model_db_site,model_db_id,model_id) REFERENCES model(model_db_site,model_db_id,model_id)
 ;
  ALTER TABLE asset_model_history ADD CONSTRAINT FK1693 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE asset_model_history ADD CONSTRAINT FK1694 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE segment_config_network_history ADD CONSTRAINT FK1695 FOREIGN KEY(segment_site,segment_id) REFERENCES segment(segment_site,segment_id)
 ;
  ALTER TABLE segment_config_network_history ADD CONSTRAINT FK1696 FOREIGN KEY(network_db_site,network_db_id,network_id) REFERENCES network(network_db_site,network_db_id,network_id)
 ;
  ALTER TABLE segment_config_network_history ADD CONSTRAINT FK1697 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE segment_config_network_history ADD CONSTRAINT FK1698 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE model_config_network_history ADD CONSTRAINT FK1699 FOREIGN KEY(model_db_site,model_db_id,model_id) REFERENCES model(model_db_site,model_db_id,model_id)
 ;
  ALTER TABLE model_config_network_history ADD CONSTRAINT FK1700 FOREIGN KEY(network_db_site,network_db_id,network_id) REFERENCES network(network_db_site,network_db_id,network_id)
 ;
  ALTER TABLE model_config_network_history ADD CONSTRAINT FK1701 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE model_config_network_history ADD CONSTRAINT FK1702 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE asset_config_network_history ADD CONSTRAINT FK1703 FOREIGN KEY(asset_org_site,asset_id) REFERENCES asset(asset_org_site,asset_id)
 ;
  ALTER TABLE asset_config_network_history ADD CONSTRAINT FK1704 FOREIGN KEY(network_db_site,network_db_id,network_id) REFERENCES network(network_db_site,network_db_id,network_id)
 ;
  ALTER TABLE asset_config_network_history ADD CONSTRAINT FK1705 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE asset_config_network_history ADD CONSTRAINT FK1706 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE ag_role_type_config_net_hist ADD CONSTRAINT FK1707 FOREIGN KEY(ag_role_db_site,ag_role_db_id,ag_role_type_code) REFERENCES agent_role_type(ag_role_db_site,ag_role_db_id,ag_role_type_code)
 ;
  ALTER TABLE ag_role_type_config_net_hist ADD CONSTRAINT FK1708 FOREIGN KEY(network_db_site,network_db_id,network_id) REFERENCES network(network_db_site,network_db_id,network_id)
 ;
  ALTER TABLE ag_role_type_config_net_hist ADD CONSTRAINT FK1709 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE ag_role_type_config_net_hist ADD CONSTRAINT FK1710 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE child_network_config_history ADD CONSTRAINT FK1711 FOREIGN KEY(network_db_site,network_db_id,network_id) REFERENCES network(network_db_site,network_db_id,network_id)
 ;
  ALTER TABLE child_network_config_history ADD CONSTRAINT FK1712 FOREIGN KEY(child_network_db_site,child_network_db_id,child_network_id) REFERENCES network(network_db_site,network_db_id,network_id)
 ;
  ALTER TABLE child_network_config_history ADD CONSTRAINT FK1713 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE child_network_config_history ADD CONSTRAINT FK1714 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE logistic_resource ADD CONSTRAINT FK1444 FOREIGN KEY(resource_db_site,resource_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE logistic_resource ADD CONSTRAINT FK1445 FOREIGN KEY(resource_type_db_site,resource_type_db_id,resource_type_code) REFERENCES logistic_resource_type(resource_type_db_site,resource_type_db_id,resource_type_code)
 ;
  ALTER TABLE logistic_resource ADD CONSTRAINT FK1446 FOREIGN KEY(segment_site,segment_id) REFERENCES segment(segment_site,segment_id)
 ;
  ALTER TABLE logistic_resource ADD CONSTRAINT FK1447 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE logistic_resource ADD CONSTRAINT FK2091 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE resource_child ADD CONSTRAINT FK1716 FOREIGN KEY(resource_db_site,resource_db_id,resource_id) REFERENCES logistic_resource(resource_db_site,resource_db_id,resource_id)
 ;
  ALTER TABLE resource_child ADD CONSTRAINT FK1717 FOREIGN KEY(child_resource_db_site,child_resource_db_id,child_resource_id) REFERENCES logistic_resource(resource_db_site,resource_db_id,resource_id)
 ;
  ALTER TABLE resource_child ADD CONSTRAINT FK1718 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE resource_child ADD CONSTRAINT FK1719 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE resource_num_data ADD CONSTRAINT FK2092 FOREIGN KEY(resource_db_site,resource_db_id,resource_id) REFERENCES logistic_resource(resource_db_site,resource_db_id,resource_id)
 ;
  ALTER TABLE resource_num_data ADD CONSTRAINT FK2093 FOREIGN KEY(rsn_type_db_site,rsn_type_db_id,rsn_type_code) REFERENCES resource_num_dat_type(rsn_type_db_site,rsn_type_db_id,rsn_type_code)
 ;
  ALTER TABLE resource_num_data ADD CONSTRAINT FK2094 FOREIGN KEY(eu_db_site,eu_db_id,eu_type_code) REFERENCES eng_unit_type(eu_db_site,eu_db_id,eu_type_code)
 ;
  ALTER TABLE resource_num_data ADD CONSTRAINT FK2095 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE resource_num_data ADD CONSTRAINT FK1453 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE resource_chr_data ADD CONSTRAINT FK1454 FOREIGN KEY(resource_db_site,resource_db_id,resource_id) REFERENCES logistic_resource(resource_db_site,resource_db_id,resource_id)
 ;
  ALTER TABLE resource_chr_data ADD CONSTRAINT FK1455 FOREIGN KEY(rsc_type_db_site,rsc_type_db_id,rsc_type_code) REFERENCES resource_chr_dat_type(rsc_type_db_site,rsc_type_db_id,rsc_type_code)
 ;
  ALTER TABLE resource_chr_data ADD CONSTRAINT FK1456 FOREIGN KEY(eu_db_site,eu_db_id,eu_type_code) REFERENCES eng_unit_type(eu_db_site,eu_db_id,eu_type_code)
 ;
  ALTER TABLE resource_chr_data ADD CONSTRAINT FK1457 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE resource_chr_data ADD CONSTRAINT FK2096 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE resource_blob_data ADD CONSTRAINT FK1720 FOREIGN KEY(resource_db_site,resource_db_id,resource_id) REFERENCES logistic_resource(resource_db_site,resource_db_id,resource_id)
 ;
  ALTER TABLE resource_blob_data ADD CONSTRAINT FK1721 FOREIGN KEY(bd_db_site,bd_db_id,bd_type_code) REFERENCES blob_data_type(bd_db_site,bd_db_id,bd_type_code)
 ;
  ALTER TABLE resource_blob_data ADD CONSTRAINT FK1722 FOREIGN KEY(blct_db_site,blct_db_id,blc_type_code) REFERENCES blob_content_type(blct_db_site,blct_db_id,blc_type_code)
 ;
  ALTER TABLE resource_blob_data ADD CONSTRAINT FK1723 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE resource_blob_data ADD CONSTRAINT FK1724 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE materiel_master_item ADD CONSTRAINT FK2097 FOREIGN KEY(mm_resource_db_site,mm_resource_db_id,mm_resource_id) REFERENCES logistic_resource(resource_db_site,resource_db_id,resource_id)
 ;
  ALTER TABLE materiel_master_item ADD CONSTRAINT FK2098 FOREIGN KEY(as_db_site,as_db_id,as_type_code) REFERENCES asset_type(as_db_site,as_db_id,as_type_code)
 ;
  ALTER TABLE materiel_master_item ADD CONSTRAINT FK2099 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE materiel_master_item ADD CONSTRAINT FK2100 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE materiel_item ADD CONSTRAINT FK2101 FOREIGN KEY(resource_db_site,resource_db_id,resource_id) REFERENCES logistic_resource(resource_db_site,resource_db_id,resource_id)
 ;
  ALTER TABLE materiel_item ADD CONSTRAINT FK1464 FOREIGN KEY(mat_conn_type_code) REFERENCES mat_item_conn_type(mat_conn_type_code)
 ;
  ALTER TABLE materiel_item ADD CONSTRAINT FK1465 FOREIGN KEY(as_db_site,as_db_id,as_type_code) REFERENCES asset_type(as_db_site,as_db_id,as_type_code)
 ;
  ALTER TABLE materiel_item ADD CONSTRAINT FK1466 FOREIGN KEY(model_db_site,model_db_id,model_id) REFERENCES model(model_db_site,model_db_id,model_id)
 ;
  ALTER TABLE materiel_item ADD CONSTRAINT FK1467 FOREIGN KEY(asset_org_site,asset_id) REFERENCES asset(asset_org_site,asset_id)
 ;
  ALTER TABLE materiel_item ADD CONSTRAINT FK1468 FOREIGN KEY(mm_resource_db_site,mm_resource_db_id,mm_resource_id) REFERENCES materiel_master_item(mm_resource_db_site,mm_resource_db_id,mm_resource_id)
 ;
  ALTER TABLE materiel_item ADD CONSTRAINT FK1469 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE materiel_item ADD CONSTRAINT FK1470 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE valid_model_for_mat_item ADD CONSTRAINT FK1725 FOREIGN KEY(db_site,db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE valid_model_for_mat_item ADD CONSTRAINT FK1726 FOREIGN KEY(resource_db_site,resource_db_id,resource_id) REFERENCES materiel_item(resource_db_site,resource_db_id,resource_id)
 ;
  ALTER TABLE valid_model_for_mat_item ADD CONSTRAINT FK1727 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE valid_model_for_mat_item ADD CONSTRAINT FK1728 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE valid_mat_item_on_sg ADD CONSTRAINT FK1729 FOREIGN KEY(db_site,db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE valid_mat_item_on_sg ADD CONSTRAINT FK1730 FOREIGN KEY(resource_db_site,resource_db_id,resource_id) REFERENCES materiel_item(resource_db_site,resource_db_id,resource_id)
 ;
  ALTER TABLE valid_mat_item_on_sg ADD CONSTRAINT FK1731 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE valid_mat_item_on_sg ADD CONSTRAINT FK1732 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE valid_mat_item_on_sg_num_data ADD CONSTRAINT FK1733 FOREIGN KEY(db_site,db_id,segment_site,segment_id,resource_db_site,resource_db_id,resource_id,gmt_valid_start) REFERENCES valid_mat_item_on_sg(db_site,db_id,segment_site,segment_id,resource_db_site,resource_db_id,resource_id,gmt_valid_start)
 ;
  ALTER TABLE valid_mat_item_on_sg_num_data ADD CONSTRAINT FK1734 FOREIGN KEY(rsn_type_db_site,rsn_type_db_id,rsn_type_code) REFERENCES resource_num_dat_type(rsn_type_db_site,rsn_type_db_id,rsn_type_code)
 ;
  ALTER TABLE valid_mat_item_on_sg_num_data ADD CONSTRAINT FK1735 FOREIGN KEY(eu_db_site,eu_db_id,eu_type_code) REFERENCES eng_unit_type(eu_db_site,eu_db_id,eu_type_code)
 ;
  ALTER TABLE valid_mat_item_on_sg_num_data ADD CONSTRAINT FK1736 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE valid_mat_item_on_sg_num_data ADD CONSTRAINT FK1737 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE valid_mat_item_on_sg_chr_data ADD CONSTRAINT FK1738 FOREIGN KEY(db_site,db_id,segment_site,segment_id,resource_db_site,resource_db_id,resource_id,gmt_valid_start) REFERENCES valid_mat_item_on_sg(db_site,db_id,segment_site,segment_id,resource_db_site,resource_db_id,resource_id,gmt_valid_start)
 ;
  ALTER TABLE valid_mat_item_on_sg_chr_data ADD CONSTRAINT FK1739 FOREIGN KEY(rsc_type_db_site,rsc_type_db_id,rsc_type_code) REFERENCES resource_num_dat_type(rsn_type_db_site,rsn_type_db_id,rsn_type_code)
 ;
  ALTER TABLE valid_mat_item_on_sg_chr_data ADD CONSTRAINT FK1740 FOREIGN KEY(eu_db_site,eu_db_id,eu_type_code) REFERENCES eng_unit_type(eu_db_site,eu_db_id,eu_type_code)
 ;
  ALTER TABLE valid_mat_item_on_sg_chr_data ADD CONSTRAINT FK1741 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE valid_mat_item_on_sg_chr_data ADD CONSTRAINT FK1742 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE valid_mat_item_on_sg_blob_data ADD CONSTRAINT FK1743 FOREIGN KEY(db_site,db_id,segment_site,segment_id,resource_db_site,resource_db_id,resource_id,gmt_valid_start) REFERENCES valid_mat_item_on_sg(db_site,db_id,segment_site,segment_id,resource_db_site,resource_db_id,resource_id,gmt_valid_start)
 ;
  ALTER TABLE valid_mat_item_on_sg_blob_data ADD CONSTRAINT FK1744 FOREIGN KEY(bd_db_site,bd_db_id,bd_type_code) REFERENCES blob_data_type(bd_db_site,bd_db_id,bd_type_code)
 ;
  ALTER TABLE valid_mat_item_on_sg_blob_data ADD CONSTRAINT FK1745 FOREIGN KEY(blct_db_site,blct_db_id,blc_type_code) REFERENCES blob_content_type(blct_db_site,blct_db_id,blc_type_code)
 ;
  ALTER TABLE valid_mat_item_on_sg_blob_data ADD CONSTRAINT FK1746 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE valid_mat_item_on_sg_blob_data ADD CONSTRAINT FK1747 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE ord_list_resource ADD CONSTRAINT FK1471 FOREIGN KEY(ord_list_db_site,ord_list_db_id,ord_list_id) REFERENCES ordered_list(ord_list_db_site,ord_list_db_id,ord_list_id)
 ;
  ALTER TABLE ord_list_resource ADD CONSTRAINT FK1472 FOREIGN KEY(resource_db_site,resource_db_id,resource_id) REFERENCES logistic_resource(resource_db_site,resource_db_id,resource_id)
 ;
  ALTER TABLE ord_list_resource ADD CONSTRAINT FK1473 FOREIGN KEY(eu_db_site,eu_db_id,eu_type_code) REFERENCES eng_unit_type(eu_db_site,eu_db_id,eu_type_code)
 ;
  ALTER TABLE ord_list_resource ADD CONSTRAINT FK1474 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE ord_list_resource ADD CONSTRAINT FK1475 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE ord_list_resource_num_data ADD CONSTRAINT FK1476 FOREIGN KEY(ord_list_db_site,ord_list_db_id,ord_list_id,ordering_seq) REFERENCES ord_list_resource(ord_list_db_site,ord_list_db_id,ord_list_id,ordering_seq)
 ;
  ALTER TABLE ord_list_resource_num_data ADD CONSTRAINT FK1477 FOREIGN KEY(rsn_type_db_site,rsn_type_db_id,rsn_type_code) REFERENCES resource_num_dat_type(rsn_type_db_site,rsn_type_db_id,rsn_type_code)
 ;
  ALTER TABLE ord_list_resource_num_data ADD CONSTRAINT FK1478 FOREIGN KEY(eu_db_site,eu_db_id,eu_type_code) REFERENCES eng_unit_type(eu_db_site,eu_db_id,eu_type_code)
 ;
  ALTER TABLE ord_list_resource_num_data ADD CONSTRAINT FK1479 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE ord_list_resource_num_data ADD CONSTRAINT FK1480 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE ord_list_resource_chr_data ADD CONSTRAINT FK1481 FOREIGN KEY(ord_list_db_site,ord_list_db_id,ord_list_id,ordering_seq) REFERENCES ord_list_resource(ord_list_db_site,ord_list_db_id,ord_list_id,ordering_seq)
 ;
  ALTER TABLE ord_list_resource_chr_data ADD CONSTRAINT FK1482 FOREIGN KEY(rsc_type_db_site,rsc_type_db_id,rsc_type_code) REFERENCES resource_chr_dat_type(rsc_type_db_site,rsc_type_db_id,rsc_type_code)
 ;
  ALTER TABLE ord_list_resource_chr_data ADD CONSTRAINT FK1483 FOREIGN KEY(eu_db_site,eu_db_id,eu_type_code) REFERENCES eng_unit_type(eu_db_site,eu_db_id,eu_type_code)
 ;
  ALTER TABLE ord_list_resource_chr_data ADD CONSTRAINT FK1484 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE ord_list_resource_chr_data ADD CONSTRAINT FK1485 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE ord_list_resource_blob_data ADD CONSTRAINT FK1748 FOREIGN KEY(ord_list_db_site,ord_list_db_id,ord_list_id,ord_list_ord_seq) REFERENCES ord_list_resource(ord_list_db_site,ord_list_db_id,ord_list_id,ordering_seq)
 ;
  ALTER TABLE ord_list_resource_blob_data ADD CONSTRAINT FK1749 FOREIGN KEY(bd_db_site,bd_db_id,bd_type_code) REFERENCES blob_data_type(bd_db_site,bd_db_id,bd_type_code)
 ;
  ALTER TABLE ord_list_resource_blob_data ADD CONSTRAINT FK1750 FOREIGN KEY(blct_db_site,blct_db_id,blc_type_code) REFERENCES blob_content_type(blct_db_site,blct_db_id,blc_type_code)
 ;
  ALTER TABLE ord_list_resource_blob_data ADD CONSTRAINT FK1751 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE ord_list_resource_blob_data ADD CONSTRAINT FK1752 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE sg_config_ord_list_history ADD CONSTRAINT FK1753 FOREIGN KEY(segment_site,segment_id) REFERENCES segment(segment_site,segment_id)
 ;
  ALTER TABLE sg_config_ord_list_history ADD CONSTRAINT FK1754 FOREIGN KEY(ord_list_db_site,ord_list_db_id,ord_list_id) REFERENCES ordered_list(ord_list_db_site,ord_list_db_id,ord_list_id)
 ;
  ALTER TABLE sg_config_ord_list_history ADD CONSTRAINT FK1755 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE sg_config_ord_list_history ADD CONSTRAINT FK1756 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE as_config_ord_list_history ADD CONSTRAINT FK1757 FOREIGN KEY(asset_org_site,asset_id) REFERENCES asset(asset_org_site,asset_id)
 ;
  ALTER TABLE as_config_ord_list_history ADD CONSTRAINT FK1758 FOREIGN KEY(ord_list_db_site,ord_list_db_id,ord_list_id) REFERENCES ordered_list(ord_list_db_site,ord_list_db_id,ord_list_id)
 ;
  ALTER TABLE as_config_ord_list_history ADD CONSTRAINT FK1759 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE as_config_ord_list_history ADD CONSTRAINT FK1760 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE md_config_ord_list_history ADD CONSTRAINT FK1761 FOREIGN KEY(model_db_site, model_db_id,model_id) REFERENCES model(model_db_site,model_db_id,model_id)
 ;
  ALTER TABLE md_config_ord_list_history ADD CONSTRAINT FK1762 FOREIGN KEY(ord_list_db_site,ord_list_db_id,ord_list_id) REFERENCES ordered_list(ord_list_db_site,ord_list_db_id,ord_list_id)
 ;
  ALTER TABLE md_config_ord_list_history ADD CONSTRAINT FK1763 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE md_config_ord_list_history ADD CONSTRAINT FK1764 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod);
  ALTER TABLE sg_prop_event_chr_data ADD CONSTRAINT FK1765 FOREIGN KEY(sg_prop_db_site,sg_prop_db_id,sg_prop_event_id) REFERENCES sg_proposed_event(sg_prop_db_site,sg_prop_db_id,sg_prop_event_id)
 ;
  ALTER TABLE sg_prop_event_chr_data ADD CONSTRAINT FK1766 FOREIGN KEY(ec_db_site,ec_db_id,ec_type_code) REFERENCES ev_chr_data_type(ec_db_site,ec_db_id,ec_type_code)
 ;
  ALTER TABLE sg_prop_event_chr_data ADD CONSTRAINT FK1767 FOREIGN KEY(eu_db_site,eu_db_id,eu_type_code) REFERENCES eng_unit_type(eu_db_site,eu_db_id,eu_type_code)
 ;
  ALTER TABLE sg_prop_event_chr_data ADD CONSTRAINT FK1768 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE sg_prop_event_chr_data ADD CONSTRAINT FK1769 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE as_prop_event_chr_data ADD CONSTRAINT FK1770 FOREIGN KEY(as_prop_db_site,as_prop_db_id,as_prop_event_id) REFERENCES as_proposed_event(as_prop_db_site,as_prop_db_id,as_prop_event_id)
 ;
  ALTER TABLE as_prop_event_chr_data ADD CONSTRAINT FK1771 FOREIGN KEY(ec_db_site,ec_db_id,ec_type_code) REFERENCES ev_chr_data_type(ec_db_site,ec_db_id,ec_type_code)
 ;
  ALTER TABLE as_prop_event_chr_data ADD CONSTRAINT FK1772 FOREIGN KEY(eu_db_site,eu_db_id,eu_type_code) REFERENCES eng_unit_type(eu_db_site,eu_db_id,eu_type_code)
 ;
  ALTER TABLE as_prop_event_chr_data ADD CONSTRAINT FK1773 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE as_prop_event_chr_data ADD CONSTRAINT FK1774 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE sg_prop_event_blob_data ADD CONSTRAINT FK1775 FOREIGN KEY(sg_prop_db_site,sg_prop_db_id,sg_prop_event_id) REFERENCES sg_proposed_event(sg_prop_db_site,sg_prop_db_id,sg_prop_event_id)
 ;
  ALTER TABLE sg_prop_event_blob_data ADD CONSTRAINT FK1776 FOREIGN KEY(bd_db_site,bd_db_id,bd_type_code) REFERENCES blob_data_type(bd_db_site,bd_db_id,bd_type_code)
 ;
  ALTER TABLE sg_prop_event_blob_data ADD CONSTRAINT FK1777 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE sg_prop_event_blob_data ADD CONSTRAINT FK1778 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE as_prop_event_blob_data ADD CONSTRAINT FK1779 FOREIGN KEY(as_prop_db_site,as_prop_db_id,as_prop_event_id) REFERENCES as_proposed_event(as_prop_db_site,as_prop_db_id,as_prop_event_id)
 ;
  ALTER TABLE as_prop_event_blob_data ADD CONSTRAINT FK1780 FOREIGN KEY(bd_db_site,bd_db_id,bd_type_code) REFERENCES blob_data_type(bd_db_site,bd_db_id,bd_type_code)
 ;
  ALTER TABLE as_prop_event_blob_data ADD CONSTRAINT FK1781 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE as_prop_event_blob_data ADD CONSTRAINT FK1782 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE sg_event_blob_data ADD CONSTRAINT FK1508 FOREIGN KEY(segment_site,segment_id,ev_db_site,ev_db_id,event_type_code,gmt_event_start) REFERENCES segment_event(segment_site,segment_id,ev_db_site,ev_db_id,event_type_code,gmt_event_start)
 ;
  ALTER TABLE sg_event_blob_data ADD CONSTRAINT FK1509 FOREIGN KEY(bd_db_site,bd_db_id,bd_type_code) REFERENCES blob_data_type(bd_db_site,bd_db_id,bd_type_code)
 ;
  ALTER TABLE sg_event_blob_data ADD CONSTRAINT FK1510 FOREIGN KEY(blct_db_site,blct_db_id,blc_type_code) REFERENCES blob_content_type(blct_db_site,blct_db_id,blc_type_code)
 ;
  ALTER TABLE sg_event_blob_data ADD CONSTRAINT FK1511 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE sg_event_blob_data ADD CONSTRAINT FK1512 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE sg_event_blob_data ADD CONSTRAINT FK1783 FOREIGN KEY(segment_site,segment_id,ev_db_site,ev_db_id,event_type_code,gmt_event_start) REFERENCES segment_event(segment_site,segment_id,ev_db_site,ev_db_id,event_type_code,gmt_event_start)
 ;
  ALTER TABLE sg_event_blob_data ADD CONSTRAINT FK1784 FOREIGN KEY(bd_db_site,bd_db_id,bd_type_code) REFERENCES blob_data_type(bd_db_site,bd_db_id,bd_type_code)
 ;
  ALTER TABLE sg_event_blob_data ADD CONSTRAINT FK1785 FOREIGN KEY(blct_db_site,blct_db_id,blc_type_code) REFERENCES blob_content_type(blct_db_site,blct_db_id,blc_type_code)
 ;
  ALTER TABLE sg_event_blob_data ADD CONSTRAINT FK1786 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE sg_event_blob_data ADD CONSTRAINT FK1787 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE as_event_blob_data ADD CONSTRAINT FK1513 FOREIGN KEY(asset_org_site,asset_id,ev_db_site,ev_db_id,event_type_code,gmt_event_start) REFERENCES asset_event(asset_org_site,asset_id,ev_db_site,ev_db_id,event_type_code,gmt_event_start)
 ;
  ALTER TABLE as_event_blob_data ADD CONSTRAINT FK1514 FOREIGN KEY(bd_db_site,bd_db_id,bd_type_code) REFERENCES blob_data_type(bd_db_site,bd_db_id,bd_type_code)
 ;
  ALTER TABLE as_event_blob_data ADD CONSTRAINT FK1515 FOREIGN KEY(blct_db_site,blct_db_id,blc_type_code) REFERENCES blob_content_type(blct_db_site,blct_db_id,blc_type_code)
 ;
  ALTER TABLE as_event_blob_data ADD CONSTRAINT FK1516 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE as_event_blob_data ADD CONSTRAINT FK1517 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE as_event_blob_data ADD CONSTRAINT FK1788 FOREIGN KEY(asset_org_site,asset_id,ev_db_site,ev_db_id,event_type_code,gmt_event_start) REFERENCES asset_event(asset_org_site,asset_id,ev_db_site,ev_db_id,event_type_code,gmt_event_start)
 ;
  ALTER TABLE as_event_blob_data ADD CONSTRAINT FK1789 FOREIGN KEY(bd_db_site,bd_db_id,bd_type_code) REFERENCES blob_data_type(bd_db_site,bd_db_id,bd_type_code)
 ;
  ALTER TABLE as_event_blob_data ADD CONSTRAINT FK1790 FOREIGN KEY(blct_db_site,blct_db_id,blc_type_code) REFERENCES blob_content_type(blct_db_site,blct_db_id,blc_type_code)
 ;
  ALTER TABLE as_event_blob_data ADD CONSTRAINT FK1791 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE as_event_blob_data ADD CONSTRAINT FK1792 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE binary_num_data ADD CONSTRAINT FK1793 FOREIGN KEY(meas_loc_site,meas_loc_id,gmt_event) REFERENCES meas_event(meas_loc_site,meas_loc_id,gmt_event)
 ;
  ALTER TABLE binary_num_data ADD CONSTRAINT FK1794 FOREIGN KEY(offsets_eu_db_site,offsets_eu_db_id,offsets_eu_type_code) REFERENCES eng_unit_type(eu_db_site,eu_db_id,eu_type_code)
 ;
  ALTER TABLE binary_num_data ADD CONSTRAINT FK1795 FOREIGN KEY(offsets_std_data_type_code) REFERENCES standard_data_type(std_data_type_code)
 ;
  ALTER TABLE binary_num_data ADD CONSTRAINT FK1796 FOREIGN KEY(values_eu_db_site,values_eu_db_id,values_eu_type_code) REFERENCES eng_unit_type(eu_db_site,eu_db_id,eu_type_code)
 ;
  ALTER TABLE binary_num_data ADD CONSTRAINT FK1797 FOREIGN KEY(offsets_std_data_type_code) REFERENCES standard_data_type(std_data_type_code)
 ;
  ALTER TABLE binary_num_data ADD CONSTRAINT FK1798 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE binary_num_data ADD CONSTRAINT FK1799 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE ord_list_num_data ADD CONSTRAINT FK1550 FOREIGN KEY(ord_list_db_site,ord_list_db_id,ord_list_id) REFERENCES ordered_list(ord_list_db_site,ord_list_db_id,ord_list_id)
 ;
  ALTER TABLE ord_list_num_data ADD CONSTRAINT FK1551 FOREIGN KEY(ordn_db_site,ordn_db_id,ordn_type_code) REFERENCES ord_list_num_dat_type(ordn_db_site,ordn_db_id,ordn_type_code)
 ;
  ALTER TABLE ord_list_num_data ADD CONSTRAINT FK1552 FOREIGN KEY(eu_db_site,eu_db_id,eu_type_code) REFERENCES eng_unit_type(eu_db_site,eu_db_id,eu_type_code)
 ;
  ALTER TABLE ord_list_num_data ADD CONSTRAINT FK1553 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE ord_list_num_data ADD CONSTRAINT FK1554 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE ord_list_chr_data ADD CONSTRAINT FK1555 FOREIGN KEY(ord_list_db_site,ord_list_db_id,ord_list_id) REFERENCES ordered_list(ord_list_db_site,ord_list_db_id,ord_list_id)
 ;
  ALTER TABLE ord_list_chr_data ADD CONSTRAINT FK1556 FOREIGN KEY(ordc_db_site,ordc_db_id,ordc_type_code) REFERENCES ord_list_chr_dat_type(ordc_db_site,ordc_db_id,ordc_type_code)
 ;
  ALTER TABLE ord_list_chr_data ADD CONSTRAINT FK1557 FOREIGN KEY(eu_db_site,eu_db_id,eu_type_code) REFERENCES eng_unit_type(eu_db_site,eu_db_id,eu_type_code)
 ;
  ALTER TABLE ord_list_chr_data ADD CONSTRAINT FK1558 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE ord_list_chr_data ADD CONSTRAINT FK1559 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE ord_list_blob_data ADD CONSTRAINT FK1560 FOREIGN KEY(ord_list_db_site,ord_list_db_id,ord_list_id) REFERENCES ordered_list(ord_list_db_site,ord_list_db_id,ord_list_id)
 ;
  ALTER TABLE ord_list_blob_data ADD CONSTRAINT FK1561 FOREIGN KEY(bd_db_site,bd_db_id,bd_type_code) REFERENCES blob_data_type(bd_db_site,bd_db_id,bd_type_code)
 ;
  ALTER TABLE ord_list_blob_data ADD CONSTRAINT FK1562 FOREIGN KEY(blct_db_site,blct_db_id,blc_type_code) REFERENCES blob_content_type(blct_db_site,blct_db_id,blc_type_code)
 ;
  ALTER TABLE ord_list_blob_data ADD CONSTRAINT FK1563 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE ord_list_blob_data ADD CONSTRAINT FK1564 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE mloc_test_comp_alarm_rg ADD CONSTRAINT FK1577 FOREIGN KEY(alarm_db_site,alarm_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE mloc_test_comp_alarm_rg ADD CONSTRAINT FK1578 FOREIGN KEY(meas_loc_site,meas_loc_id) REFERENCES meas_location(meas_loc_site,meas_loc_id)
 ;
  ALTER TABLE mloc_test_comp_alarm_rg ADD CONSTRAINT FK1579 FOREIGN KEY(test_type_db_site,test_type_db_id,test_type_code) REFERENCES test_type(test_type_db_site,test_type_db_id,test_type_code)
 ;
  ALTER TABLE mloc_test_comp_alarm_rg ADD CONSTRAINT FK1580 FOREIGN KEY(tc_type_db_site,tc_type_db_id,tc_type_code) REFERENCES test_comp_type(tc_type_db_site,tc_type_db_id,tc_type_code)
 ;
  ALTER TABLE mloc_test_comp_alarm_rg ADD CONSTRAINT FK1581 FOREIGN KEY(al_db_site,al_db_id,al_type_code) REFERENCES alarm_type(al_db_site,al_db_id,al_type_code)
 ;
  ALTER TABLE mloc_test_comp_alarm_rg ADD CONSTRAINT FK1582 FOREIGN KEY(ml_db_site,ml_db_id,ml_type_code) REFERENCES meas_loc_type(ml_db_site,ml_db_id,ml_type_code)
 ;
  ALTER TABLE mloc_test_comp_alarm_rg ADD CONSTRAINT FK1583 FOREIGN KEY(mc_db_site,mc_db_id,mc_type_code) REFERENCES mloc_calc_type(mc_db_site,mc_db_id,mc_type_code)
 ;
  ALTER TABLE mloc_test_comp_alarm_rg ADD CONSTRAINT FK1585 FOREIGN KEY(mat_resource_db_site,mat_resource_db_id,mat_resource_id) REFERENCES materiel_item(resource_db_site,resource_db_id,resource_id)
 ;
  ALTER TABLE mloc_test_comp_alarm_rg ADD CONSTRAINT FK1586 FOREIGN KEY(eu_db_site,eu_db_id,eu_type_code) REFERENCES eng_unit_type(eu_db_site,eu_db_id,eu_type_code)
 ;
  ALTER TABLE mloc_test_comp_alarm_rg ADD CONSTRAINT FK1587 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE mloc_test_comp_alarm_rg ADD CONSTRAINT FK1588 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE test ADD CONSTRAINT FK1589 FOREIGN KEY(meas_loc_site,meas_loc_id,gmt_event) REFERENCES meas_event(meas_loc_site,meas_loc_id,gmt_event)
 ;
  ALTER TABLE test ADD CONSTRAINT FK1590 FOREIGN KEY(by_agent_site,by_agent_id) REFERENCES agent(org_agent_site,agent_id)
 ;
  ALTER TABLE test ADD CONSTRAINT FK1591 FOREIGN KEY(test_type_db_site,test_type_db_id,test_type_code) REFERENCES test_type(test_type_db_site,test_type_db_id,test_type_code)
 ;
  ALTER TABLE test ADD CONSTRAINT FK1592 FOREIGN KEY(ds_asset_site,ds_asset_id) REFERENCES data_source(ds_asset_site,ds_asset_id)
 ;
  ALTER TABLE test ADD CONSTRAINT FK1593 FOREIGN KEY(tr_asset_site,tr_asset_id) REFERENCES transducer(tr_asset_site,tr_asset_id)
 ;
  ALTER TABLE test ADD CONSTRAINT FK1594 FOREIGN KEY(mat_resource_db_site,mat_resource_db_id,mat_resource_id) REFERENCES materiel_item(resource_db_site,resource_db_id,resource_id)
 ;
  ALTER TABLE test ADD CONSTRAINT FK1595 FOREIGN KEY(meas_loc_site,meas_loc_id,gmt_event,sample_order_seq) REFERENCES meas_sample(meas_loc_site,meas_loc_id,gmt_event,sample_order_seq)
 ;
  ALTER TABLE test ADD CONSTRAINT FK1596 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE test ADD CONSTRAINT FK1597 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE test_component ADD CONSTRAINT FK1598 FOREIGN KEY(test_meas_loc_site,test_meas_loc_id,test_gmt_event,test_ordering_seq) REFERENCES test(meas_loc_site,meas_loc_id,gmt_event,ordering_seq)
 ;
  ALTER TABLE test_component ADD CONSTRAINT FK1599 FOREIGN KEY(tc_type_db_site,tc_type_db_id,tc_type_code) REFERENCES test_comp_type(tc_type_db_site,tc_type_db_id,tc_type_code)
 ;
  ALTER TABLE test_component ADD CONSTRAINT FK1600 FOREIGN KEY(eu_db_site,eu_db_id,eu_type_code) REFERENCES eng_unit_type(eu_db_site,eu_db_id,eu_type_code)
 ;
  ALTER TABLE test_component ADD CONSTRAINT FK1601 FOREIGN KEY(blct_db_site,blct_db_id,blc_type_code) REFERENCES blob_content_type(blct_db_site,blct_db_id,blc_type_code)
 ;
  ALTER TABLE test_component ADD CONSTRAINT FK1602 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE test_component ADD CONSTRAINT FK1603 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE test_comp_group ADD CONSTRAINT FK1604 FOREIGN KEY(test_meas_loc_site,test_meas_loc_id,test_gmt_event,test_ordering_seq) REFERENCES test(meas_loc_site,meas_loc_id,gmt_event,ordering_seq)
 ;
  ALTER TABLE test_comp_group ADD CONSTRAINT FK1605 FOREIGN KEY(tcg_type_db_site,tcg_type_db_id,tcg_type_code) REFERENCES test_comp_group_type(tcg_type_db_site,tcg_type_db_id,tcg_type_code)
 ;
  ALTER TABLE test_comp_group ADD CONSTRAINT FK1606 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE test_comp_group ADD CONSTRAINT FK1607 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE test_comp_in_group ADD CONSTRAINT FK1608 FOREIGN KEY(tcg_test_meas_loc_site,tcg_test_meas_loc_id,tcg_test_gmt_event,tcg_test_ordering_seq,tcg_ordering_seq) REFERENCES test_comp_group(test_meas_loc_site,test_meas_loc_id,test_gmt_event,test_ordering_seq,ordering_seq)
 ;
  ALTER TABLE test_comp_in_group ADD CONSTRAINT FK1609 FOREIGN KEY(tc_test_meas_loc_site,tc_test_meas_loc_id,tc_test_gmt_event,tc_test_ordering_seq,tc_ordering_seq) REFERENCES test_component(test_meas_loc_site,test_meas_loc_id,test_gmt_event,test_ordering_seq,ordering_seq)
 ;
  ALTER TABLE test_comp_in_group ADD CONSTRAINT FK1610 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE test_comp_in_group ADD CONSTRAINT FK1611 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE test_comp_alarm_rg ADD CONSTRAINT FK1621 FOREIGN KEY(tc_test_meas_loc_site,tc_test_meas_loc_id,tc_test_gmt_event,tc_test_ordering_seq,tc_ordering_seq) REFERENCES test_component(test_meas_loc_site,test_meas_loc_id,test_gmt_event,test_ordering_seq,ordering_seq)
 ;
  ALTER TABLE test_comp_alarm_rg ADD CONSTRAINT FK1622 FOREIGN KEY(al_db_site,al_db_id,al_type_code) REFERENCES alarm_type(al_db_site,al_db_id,al_type_code)
 ;
  ALTER TABLE test_comp_alarm_rg ADD CONSTRAINT FK1623 FOREIGN KEY(eu_db_site,eu_db_id,eu_type_code) REFERENCES eng_unit_type(eu_db_site,eu_db_id,eu_type_code)
 ;
  ALTER TABLE test_comp_alarm_rg ADD CONSTRAINT FK1624 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE test_comp_alarm_rg ADD CONSTRAINT FK1625 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE test_comp_alarm ADD CONSTRAINT FK1612 FOREIGN KEY(tc_test_meas_loc_site,tc_test_meas_loc_id,tc_test_gmt_event,tc_test_ordering_seq,tc_ordering_seq) REFERENCES test_component(test_meas_loc_site,test_meas_loc_id,test_gmt_event,test_ordering_seq,ordering_seq)
 ;
  ALTER TABLE test_comp_alarm ADD CONSTRAINT FK1613 FOREIGN KEY(al_db_site,al_db_id,al_type_code) REFERENCES alarm_type(al_db_site,al_db_id,al_type_code)
 ;
  ALTER TABLE test_comp_alarm ADD CONSTRAINT FK1614 FOREIGN KEY(org_agent_site,agent_id) REFERENCES agent(org_agent_site,agent_id)
 ;
  ALTER TABLE test_comp_alarm ADD CONSTRAINT FK1615 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE test_comp_alarm ADD CONSTRAINT FK1616 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE test_comp_alarm_assoc_mloc_rg ADD CONSTRAINT FK1617 FOREIGN KEY(tca_test_meas_loc_site,tca_test_meas_loc_id,tca_test_gmt_event,tca_test_ordering_seq,tca_comp_ordering_seq,tca_ordering_seq) REFERENCES test_comp_alarm(tc_test_meas_loc_site,tc_test_meas_loc_id,tc_test_gmt_event,tc_test_ordering_seq,tc_ordering_seq,ordering_seq)
 ;
  ALTER TABLE test_comp_alarm_assoc_mloc_rg ADD CONSTRAINT FK1618 FOREIGN KEY(alarm_db_site,alarm_db_id,al_meas_loc_site,al_meas_loc_id,al_ordering_seq) REFERENCES mloc_test_comp_alarm_rg(alarm_db_site,alarm_db_id,meas_loc_site,meas_loc_id,ordering_seq)
 ;
  ALTER TABLE test_comp_alarm_assoc_mloc_rg ADD CONSTRAINT FK1619 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE test_comp_alarm_assoc_mloc_rg ADD CONSTRAINT FK1620 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE test_comp_alarm_assoc_num_rg ADD CONSTRAINT FK1626 FOREIGN KEY(tca_test_meas_loc_site,tca_test_meas_loc_id,tca_test_gmt_event,tca_test_ordering_seq,tca_comp_ordering_seq,tca_ordering_seq) REFERENCES test_comp_alarm(tc_test_meas_loc_site,tc_test_meas_loc_id,tc_test_gmt_event,tc_test_ordering_seq,tc_ordering_seq,ordering_seq)
 ;
  ALTER TABLE test_comp_alarm_assoc_num_rg ADD CONSTRAINT FK1627 FOREIGN KEY(tcar_test_meas_loc_site,tcar_test_meas_loc_id,tcar_test_gmt_event,tcar_test_ordering_seq,tcar_comp_ordering_seq,tcar_ordering_seq) REFERENCES test_comp_alarm_rg(tc_test_meas_loc_site,tc_test_meas_loc_id,tc_test_gmt_event,tc_test_ordering_seq,tc_ordering_seq,ordering_seq)
 ;
  ALTER TABLE test_comp_alarm_assoc_num_rg ADD CONSTRAINT FK1628 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE test_comp_alarm_assoc_num_rg ADD CONSTRAINT FK1629 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE request_ord_list_needed ADD CONSTRAINT FK1486 FOREIGN KEY(req_db_site,req_db_id,request_id) REFERENCES sg_req_for_work(req_db_site,req_db_id,request_id)
 ;
  ALTER TABLE request_ord_list_needed ADD CONSTRAINT FK1487 FOREIGN KEY(ord_list_db_site,ord_list_db_id,ord_list_id) REFERENCES ordered_list(ord_list_db_site,ord_list_db_id,ord_list_id)
 ;
  ALTER TABLE request_ord_list_needed ADD CONSTRAINT FK1488 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE request_ord_list_needed ADD CONSTRAINT FK1489 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE solution_package_num_data ADD CONSTRAINT FK1801 FOREIGN KEY(sol_pack_db_site,sol_pack_db_id,sol_pack_id) REFERENCES solution_package(sol_pack_db_site,sol_pack_db_id,sol_pack_id)
 ;
  ALTER TABLE solution_package_num_data ADD CONSTRAINT FK1802 FOREIGN KEY(wn_db_site,wn_db_id,wn_type_code) REFERENCES work_num_data_type(wn_db_site,wn_db_id,wn_type_code)
 ;
  ALTER TABLE solution_package_num_data ADD CONSTRAINT FK1803 FOREIGN KEY(eu_db_site,eu_db_id,eu_type_code) REFERENCES eng_unit_type(eu_db_site,eu_db_id,eu_type_code)
 ;
  ALTER TABLE solution_package_num_data ADD CONSTRAINT FK17804 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE solution_package_num_data ADD CONSTRAINT FK1805 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE solution_package_chr_data ADD CONSTRAINT FK1806 FOREIGN KEY(sol_pack_db_site,sol_pack_db_id,sol_pack_id) REFERENCES solution_package(sol_pack_db_site,sol_pack_db_id,sol_pack_id)
 ;
  ALTER TABLE solution_package_chr_data ADD CONSTRAINT FK1807 FOREIGN KEY(wc_db_site,wc_db_id,wc_type_code) REFERENCES work_chr_data_type(wc_db_site,wc_db_id,wc_type_code)
 ;
  ALTER TABLE solution_package_chr_data ADD CONSTRAINT FK1808 FOREIGN KEY(eu_db_site,eu_db_id,eu_type_code) REFERENCES eng_unit_type(eu_db_site,eu_db_id,eu_type_code)
 ;
  ALTER TABLE solution_package_chr_data ADD CONSTRAINT FK17809 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE solution_package_chr_data ADD CONSTRAINT FK1810 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE solution_package_blob_data ADD CONSTRAINT FK1811 FOREIGN KEY(sol_pack_db_site,sol_pack_db_id,sol_pack_id) REFERENCES solution_package(sol_pack_db_site,sol_pack_db_id,sol_pack_id)
 ;
  ALTER TABLE solution_package_blob_data ADD CONSTRAINT FK1812 FOREIGN KEY(bd_db_site,bd_db_id,bd_type_code) REFERENCES blob_data_type(bd_db_site,bd_db_id,bd_type_code)
 ;
  ALTER TABLE solution_package_blob_data ADD CONSTRAINT FK1813 FOREIGN KEY(blct_db_site,blct_db_id,blc_type_code) REFERENCES blob_content_type(blct_db_site,blct_db_id,blc_type_code)
 ;
  ALTER TABLE solution_package_blob_data ADD CONSTRAINT FK1814 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE solution_package_blob_data ADD CONSTRAINT FK1815 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE solution_package_step ADD CONSTRAINT FK1816 FOREIGN KEY(sol_pack_db_site,sol_pack_db_id,sol_pack_id) REFERENCES solution_package(sol_pack_db_site,sol_pack_db_id,sol_pack_id)
 ;
  ALTER TABLE solution_package_step ADD CONSTRAINT FK1821 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE solution_package_step ADD CONSTRAINT FK1822 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE solution_package_step_num_data ADD CONSTRAINT FK1823 FOREIGN KEY(sol_pack_step_db_site,sol_pack_step_db_id,sol_pack_step_id) REFERENCES solution_package_step(sol_pack_step_db_site,sol_pack_step_db_id,sol_pack_step_id)
 ;
  ALTER TABLE solution_package_step_num_data ADD CONSTRAINT FK1824 FOREIGN KEY(wn_db_site,wn_db_id,wn_type_code) REFERENCES work_num_data_type(wn_db_site,wn_db_id,wn_type_code)
 ;
  ALTER TABLE solution_package_step_num_data ADD CONSTRAINT FK1825 FOREIGN KEY(eu_db_site,eu_db_id,eu_type_code) REFERENCES eng_unit_type(eu_db_site,eu_db_id,eu_type_code)
 ;
  ALTER TABLE solution_package_step_num_data ADD CONSTRAINT FK1826 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE solution_package_step_num_data ADD CONSTRAINT FK1827 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE solution_package_step_chr_data ADD CONSTRAINT FK1828 FOREIGN KEY(sol_pack_step_db_site,sol_pack_step_db_id,sol_pack_step_id) REFERENCES solution_package_step(sol_pack_step_db_site,sol_pack_step_db_id,sol_pack_step_id)
 ;
  ALTER TABLE solution_package_step_chr_data ADD CONSTRAINT FK1829 FOREIGN KEY(wc_db_site,wc_db_id,wc_type_code) REFERENCES work_chr_data_type(wc_db_site,wc_db_id,wc_type_code)
 ;
  ALTER TABLE solution_package_step_chr_data ADD CONSTRAINT FK1830 FOREIGN KEY(eu_db_site,eu_db_id,eu_type_code) REFERENCES eng_unit_type(eu_db_site,eu_db_id,eu_type_code)
 ;
  ALTER TABLE solution_package_step_chr_data ADD CONSTRAINT FK1831 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE solution_package_step_chr_data ADD CONSTRAINT FK1832 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE solution_package_step_blob_dat ADD CONSTRAINT FK1833 FOREIGN KEY(sol_pack_step_db_site,sol_pack_step_db_id,sol_pack_step_id) REFERENCES solution_package_step(sol_pack_step_db_site,sol_pack_step_db_id,sol_pack_step_id)
 ;
  ALTER TABLE solution_package_step_blob_dat ADD CONSTRAINT FK1834 FOREIGN KEY(bd_db_site,bd_db_id,bd_type_code) REFERENCES blob_data_type(bd_db_site,bd_db_id,bd_type_code)
 ;
  ALTER TABLE solution_package_step_blob_dat ADD CONSTRAINT FK1835 FOREIGN KEY(blct_db_site,blct_db_id,blc_type_code) REFERENCES blob_content_type(blct_db_site,blct_db_id,blc_type_code)
 ;
  ALTER TABLE solution_package_step_blob_dat ADD CONSTRAINT FK1836 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE solution_package_step_blob_dat ADD CONSTRAINT FK1837 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE sol_pack_step_ord_list_needed ADD CONSTRAINT FK1838 FOREIGN KEY(sol_pack_step_db_site,sol_pack_step_db_id,sol_pack_step_id) REFERENCES request(req_db_site,req_db_id,request_id)
 ;
  ALTER TABLE sol_pack_step_ord_list_needed ADD CONSTRAINT FK1839 FOREIGN KEY(ord_list_db_site,ord_list_db_id,ord_list_id) REFERENCES ordered_list(ord_list_db_site,ord_list_db_id,ord_list_id)
 ;
  ALTER TABLE sol_pack_step_ord_list_needed ADD CONSTRAINT FK2065 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE work_order_blob_data ADD CONSTRAINT FK1840 FOREIGN KEY(work_order_db_site,work_order_db_id,work_order_id) REFERENCES work_order(work_order_db_site,work_order_db_id,work_order_id)
 ;
  ALTER TABLE work_order_blob_data ADD CONSTRAINT FK1841 FOREIGN KEY(bd_db_site,bd_db_id,bd_type_code) REFERENCES blob_data_type(bd_db_site,bd_db_id,bd_type_code)
 ;
  ALTER TABLE work_order_blob_data ADD CONSTRAINT FK1842 FOREIGN KEY(blct_db_site,blct_db_id,blc_type_code) REFERENCES blob_content_type(blct_db_site,blct_db_id,blc_type_code)
 ;
  ALTER TABLE work_order_blob_data ADD CONSTRAINT FK1843 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE work_order_blob_data ADD CONSTRAINT FK1844 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE work_step ADD CONSTRAINT FK1845 FOREIGN KEY(work_order_db_site,work_order_db_id,work_order_id) REFERENCES work_order(work_order_db_site,work_order_db_id,work_order_id)
 ;
  ALTER TABLE work_step ADD CONSTRAINT FK2117 FOREIGN KEY(wm_type_db_site,wm_type_db_id,wm_type_code) REFERENCES work_manage_type(wm_type_db_site,wm_type_db_id,wm_type_code)
 ;
  ALTER TABLE work_step ADD CONSTRAINT FK2118 FOREIGN KEY(task_db_site,task_db_id,task_type_code) REFERENCES work_task_type(task_db_site,task_db_id,task_type_code)
 ;
  ALTER TABLE work_step ADD CONSTRAINT FK1846 FOREIGN KEY(by_agent_site,by_agent_id) REFERENCES agent(org_agent_site,agent_id)
 ;
  ALTER TABLE work_step ADD CONSTRAINT FK1847 FOREIGN KEY(sol_pack_step_db_site,sol_pack_step_db_id,sol_pack_step_id) REFERENCES solution_package_step(sol_pack_step_db_site,sol_pack_step_db_id,sol_pack_step_id)
 ;
  ALTER TABLE work_step ADD CONSTRAINT FK1848 FOREIGN KEY(to_agent_site,to_agent_id) REFERENCES agent(org_agent_site,agent_id)
 ;
  ALTER TABLE work_step ADD CONSTRAINT FK1849 FOREIGN KEY(priority_lev_db_site,priority_lev_db_id,priority_lev_type_code) REFERENCES priority_level_type(priority_lev_db_site,priority_lev_db_id,priority_lev_type_code)
 ;
  ALTER TABLE work_step ADD CONSTRAINT FK1850 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE work_step ADD CONSTRAINT FK1851 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE work_step_num_data ADD CONSTRAINT FK2102 FOREIGN KEY(work_step_db_site,work_step_db_id,work_step_id) REFERENCES work_step(work_step_db_site,work_step_db_id,work_step_id)
 ;
  ALTER TABLE work_step_num_data ADD CONSTRAINT FK1852 FOREIGN KEY(wn_db_site,wn_db_id,wn_type_code) REFERENCES work_num_data_type(wn_db_site,wn_db_id,wn_type_code)
 ;
  ALTER TABLE work_step_num_data ADD CONSTRAINT FK1853 FOREIGN KEY(eu_db_site,eu_db_id,eu_type_code) REFERENCES eng_unit_type(eu_db_site,eu_db_id,eu_type_code)
 ;
  ALTER TABLE work_step_num_data ADD CONSTRAINT FK1854 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE work_step_num_data ADD CONSTRAINT FK1855 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE work_step_chr_data ADD CONSTRAINT FK1856 FOREIGN KEY(work_step_db_site,work_step_db_id,work_step_id) REFERENCES work_step(work_step_db_site,work_step_db_id,work_step_id)
 ;
  ALTER TABLE work_step_chr_data ADD CONSTRAINT FK1857 FOREIGN KEY(wc_db_site,wc_db_id,wc_type_code) REFERENCES work_chr_data_type(wc_db_site,wc_db_id,wc_type_code)
 ;
  ALTER TABLE work_step_chr_data ADD CONSTRAINT FK1858 FOREIGN KEY(eu_db_site,eu_db_id,eu_type_code) REFERENCES eng_unit_type(eu_db_site,eu_db_id,eu_type_code)
 ;
  ALTER TABLE work_step_chr_data ADD CONSTRAINT FK1859 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE work_step_chr_data ADD CONSTRAINT FK1860 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE work_step_blob_data ADD CONSTRAINT FK1861 FOREIGN KEY(work_step_db_site,work_step_db_id,work_step_id) REFERENCES work_step(work_step_db_site,work_step_db_id,work_step_id)
 ;
  ALTER TABLE work_step_blob_data ADD CONSTRAINT FK1862 FOREIGN KEY(bd_db_site,bd_db_id,bd_type_code) REFERENCES blob_data_type(bd_db_site,bd_db_id,bd_type_code)
 ;
  ALTER TABLE work_step_blob_data ADD CONSTRAINT FK1863 FOREIGN KEY(blct_db_site,blct_db_id,blc_type_code) REFERENCES blob_content_type(blct_db_site,blct_db_id,blc_type_code)
 ;
  ALTER TABLE work_step_blob_data ADD CONSTRAINT FK1864 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE work_step_blob_data ADD CONSTRAINT FK1865 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE work_step_ord_list_needed ADD CONSTRAINT FK1866 FOREIGN KEY(work_step_db_site,work_step_db_id,work_step_id) REFERENCES work_step(work_step_db_site,work_step_db_id,work_step_id)
 ;
  ALTER TABLE work_step_ord_list_needed ADD CONSTRAINT FK1867 FOREIGN KEY(ord_list_db_site,ord_list_db_id,ord_list_id) REFERENCES ordered_list(ord_list_db_site,ord_list_db_id,ord_list_id)
 ;
  ALTER TABLE work_step_ord_list_needed ADD CONSTRAINT FK1868 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE work_step_audit ADD CONSTRAINT FK1869 FOREIGN KEY(work_step_db_site,work_step_db_id,work_step_id) REFERENCES work_step(work_step_db_site,work_step_db_id,work_step_id)
 ;
  ALTER TABLE work_step_audit ADD CONSTRAINT FK1870 FOREIGN KEY(waudit_db_site,waudit_db_id,waudit_type_code) REFERENCES work_audit_type(waudit_db_site,waudit_db_id,waudit_type_code)
 ;
  ALTER TABLE work_step_audit ADD CONSTRAINT FK1871 FOREIGN KEY(by_agent_site,by_agent_id) REFERENCES agent(org_agent_site,agent_id)
 ;
  ALTER TABLE work_step_audit ADD CONSTRAINT FK1872 FOREIGN KEY(from_sy_agent_site,from_sy_agent_id) REFERENCES agent(org_agent_site,agent_id)
 ;
  ALTER TABLE work_step_audit ADD CONSTRAINT FK1873 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE work_step_audit ADD CONSTRAINT FK1874 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE work_step_sg_recomm ADD CONSTRAINT FK1875 FOREIGN KEY(work_step_db_site,work_step_db_id,work_step_id) REFERENCES work_step(work_step_db_site,work_step_db_id,work_step_id)
 ;
  ALTER TABLE work_step_sg_recomm ADD CONSTRAINT FK1876 FOREIGN KEY(segment_site,segment_id,gmt_recommendation,by_agent_site,by_agent_id) REFERENCES sg_recommendation(segment_site,segment_id,gmt_recommendation,by_agent_site,by_agent_id)
 ;
  ALTER TABLE work_step_sg_recomm ADD CONSTRAINT FK1877 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE work_step_sg_recomm ADD CONSTRAINT FK1878 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE work_step_as_recomm ADD CONSTRAINT FK1879 FOREIGN KEY(work_step_db_site,work_step_db_id,work_step_id) REFERENCES work_step(work_step_db_site,work_step_db_id,work_step_id)
 ;
  ALTER TABLE work_step_as_recomm ADD CONSTRAINT FK1880 FOREIGN KEY(asset_org_site,asset_id,gmt_recommendation,by_agent_site,by_agent_id) REFERENCES as_recommendation(asset_org_site,asset_id,gmt_recommendation,by_agent_site,by_agent_id)
 ;
  ALTER TABLE work_step_as_recomm ADD CONSTRAINT FK1881 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE work_step_as_recomm ADD CONSTRAINT FK1882 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE sg_completed_work_asset_util ADD CONSTRAINT FK1537 FOREIGN KEY(segment_site,segment_id,task_db_site,task_db_id,task_type_code,gmt_completed) REFERENCES sg_completed_work(segment_site,segment_id,task_db_site,task_db_id,task_type_code,gmt_completed)
 ;
  ALTER TABLE sg_completed_work_asset_util ADD CONSTRAINT FK1538 FOREIGN KEY(used_asset_org_site,used_asset_id,on_segment_site,on_segment_id,gmt_installed) REFERENCES asset_on_segment(asset_org_site,asset_id,segment_site,segment_id,gmt_installed)
 ;
  ALTER TABLE sg_completed_work_asset_util ADD CONSTRAINT FK1539 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE sg_completed_work_asset_util ADD CONSTRAINT FK1540 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE sg_completed_work_num_data ADD CONSTRAINT FK1518 FOREIGN KEY(segment_site,segment_id,task_db_site,task_db_id,task_type_code,gmt_completed) REFERENCES sg_completed_work(segment_site,segment_id,task_db_site,task_db_id,task_type_code,gmt_completed)
 ;
  ALTER TABLE sg_completed_work_num_data ADD CONSTRAINT FK1519 FOREIGN KEY(wn_db_site,wn_db_id,wn_type_code) REFERENCES work_num_data_type(wn_db_site,wn_db_id,wn_type_code)
 ;
  ALTER TABLE sg_completed_work_num_data ADD CONSTRAINT FK1520 FOREIGN KEY(eu_db_site,eu_db_id,eu_type_code) REFERENCES eng_unit_type(eu_db_site,eu_db_id,eu_type_code)
 ;
  ALTER TABLE sg_completed_work_num_data ADD CONSTRAINT FK1521 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE sg_completed_work_num_data ADD CONSTRAINT FK1522 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE sg_completed_work_chr_data ADD CONSTRAINT FK1523 FOREIGN KEY(segment_site,segment_id,task_db_site,task_db_id,task_type_code,gmt_completed) REFERENCES sg_completed_work(segment_site,segment_id,task_db_site,task_db_id,task_type_code,gmt_completed)
 ;
  ALTER TABLE sg_completed_work_chr_data ADD CONSTRAINT FK1524 FOREIGN KEY(wc_db_site,wc_db_id,wc_type_code) REFERENCES work_chr_data_type(wc_db_site,wc_db_id,wc_type_code)
 ;
  ALTER TABLE sg_completed_work_chr_data ADD CONSTRAINT FK1525 FOREIGN KEY(eu_db_site,eu_db_id,eu_type_code) REFERENCES eng_unit_type(eu_db_site,eu_db_id,eu_type_code)
 ;
  ALTER TABLE sg_completed_work_chr_data ADD CONSTRAINT FK1526 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE sg_completed_work_chr_data ADD CONSTRAINT FK1527 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE sg_completed_work_blob_data ADD CONSTRAINT FK1528 FOREIGN KEY(segment_site,segment_id,task_db_site,task_db_id,task_type_code,gmt_completed) REFERENCES sg_completed_work(segment_site,segment_id,task_db_site,task_db_id,task_type_code,gmt_completed)
 ;
  ALTER TABLE sg_completed_work_blob_data ADD CONSTRAINT FK1529 FOREIGN KEY(bd_db_site,bd_db_id,bd_type_code) REFERENCES blob_data_type(bd_db_site,bd_db_id,bd_type_code)
 ;
  ALTER TABLE sg_completed_work_blob_data ADD CONSTRAINT FK1530 FOREIGN KEY(blct_db_site,blct_db_id,blc_type_code) REFERENCES blob_content_type(blct_db_site,blct_db_id,blc_type_code)
 ;
  ALTER TABLE sg_completed_work_blob_data ADD CONSTRAINT FK1531 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE sg_completed_work_blob_data ADD CONSTRAINT FK1532 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE sg_completed_work_olist_used ADD CONSTRAINT FK1490 FOREIGN KEY(segment_site,segment_id,task_db_site,task_db_id,task_type_code,gmt_completed) REFERENCES sg_completed_work(segment_site,segment_id,task_db_site,task_db_id,task_type_code,gmt_completed)
 ;
  ALTER TABLE sg_completed_work_olist_used ADD CONSTRAINT FK1491 FOREIGN KEY(ord_list_db_site,ord_list_db_id,ord_list_id) REFERENCES ordered_list(ord_list_db_site,ord_list_db_id,ord_list_id)
 ;
  ALTER TABLE sg_completed_work_olist_used ADD CONSTRAINT FK1492 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE sg_completed_work_olist_used ADD CONSTRAINT FK1493 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE sg_completed_work_olist_rem ADD CONSTRAINT FK1494 FOREIGN KEY(segment_site,segment_id,task_db_site,task_db_id,task_type_code,gmt_completed) REFERENCES sg_completed_work(segment_site,segment_id,task_db_site,task_db_id,task_type_code,gmt_completed)
 ;
  ALTER TABLE sg_completed_work_olist_rem ADD CONSTRAINT FK1495 FOREIGN KEY(ord_list_db_site,ord_list_db_id,ord_list_id) REFERENCES ordered_list(ord_list_db_site,ord_list_db_id,ord_list_id)
 ;
  ALTER TABLE sg_completed_work_olist_rem ADD CONSTRAINT FK1496 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE sg_completed_work_olist_rem ADD CONSTRAINT FK1497 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE sg_comp_work_for_sg_prop_event ADD CONSTRAINT FK1889 FOREIGN KEY(segment_site,segment_id,task_db_site,task_db_id,task_type_code,gmt_completed) REFERENCES sg_completed_work(segment_site,segment_id,task_db_site,task_db_id,task_type_code,gmt_completed)
 ;
  ALTER TABLE sg_comp_work_for_sg_prop_event ADD CONSTRAINT FK1890 FOREIGN KEY(sg_prop_db_site,sg_prop_db_id,sg_prop_event_id) REFERENCES sg_proposed_event(sg_prop_db_site,sg_prop_db_id,sg_prop_event_id)
 ;
  ALTER TABLE sg_comp_work_for_sg_prop_event ADD CONSTRAINT FK1891 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE sg_comp_work_for_sg_prop_event ADD CONSTRAINT FK1892 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE sg_comp_work_for_as_prop_event ADD CONSTRAINT FK1893 FOREIGN KEY(segment_site,segment_id,task_db_site,task_db_id,task_type_code,gmt_completed) REFERENCES sg_completed_work(segment_site,segment_id,task_db_site,task_db_id,task_type_code,gmt_completed)
 ;
  ALTER TABLE sg_comp_work_for_as_prop_event ADD CONSTRAINT FK1894 FOREIGN KEY(as_prop_db_site,as_prop_db_id,as_prop_event_id) REFERENCES as_proposed_event(as_prop_db_site,as_prop_db_id,as_prop_event_id)
 ;
  ALTER TABLE sg_comp_work_for_as_prop_event ADD CONSTRAINT FK1895 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE sg_comp_work_for_as_prop_event ADD CONSTRAINT FK1896 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE sg_completed_work_for_sg_event ADD CONSTRAINT FK1533 FOREIGN KEY(segment_site,segment_id,task_db_site,task_db_id,task_type_code,gmt_completed) REFERENCES sg_completed_work(segment_site,segment_id,task_db_site,task_db_id,task_type_code,gmt_completed)
 ;
  ALTER TABLE sg_completed_work_for_sg_event ADD CONSTRAINT FK1534 FOREIGN KEY(ev_segment_site,ev_segment_id,ev_db_site,ev_db_id,event_type_code,gmt_event_start) REFERENCES segment_event(segment_site,segment_id,ev_db_site,ev_db_id,event_type_code,gmt_event_start)
 ;
  ALTER TABLE sg_completed_work_for_sg_event ADD CONSTRAINT FK1535 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE sg_completed_work_for_sg_event ADD CONSTRAINT FK1536 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE sg_completed_work_for_as_event ADD CONSTRAINT FK1897 FOREIGN KEY(segment_site,segment_id,task_db_site,task_db_id,task_type_code,gmt_completed) REFERENCES sg_completed_work(segment_site,segment_id,task_db_site,task_db_id,task_type_code,gmt_completed)
 ;
  ALTER TABLE sg_completed_work_for_as_event ADD CONSTRAINT FK1898 FOREIGN KEY(ev_asset_org_site,ev_asset_id,ev_db_site,ev_db_id,event_type_code,gmt_completed) REFERENCES asset_event(asset_org_site,asset_id,ev_db_site,ev_db_id,event_type_code,gmt_event_start)
 ;
  ALTER TABLE sg_completed_work_for_as_event ADD CONSTRAINT FK1899 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE sg_completed_work_for_as_event ADD CONSTRAINT FK1900 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE as_completed_work_asset_util ADD CONSTRAINT FK1901 FOREIGN KEY(asset_org_site,asset_id,task_db_site,task_db_id,task_type_code,gmt_completed) REFERENCES as_completed_work(asset_org_site,asset_id,task_db_site,task_db_id,task_type_code,gmt_completed)
 ;
  ALTER TABLE as_completed_work_asset_util ADD CONSTRAINT FK1902 FOREIGN KEY(used_asset_org_site,used_asset_id,on_segment_site,on_segment_id,gmt_installed) REFERENCES asset_on_segment(asset_org_site,asset_id,segment_site,segment_id,gmt_installed)
 ;
  ALTER TABLE as_completed_work_asset_util ADD CONSTRAINT FK1903 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE as_completed_work_asset_util ADD CONSTRAINT FK1904 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE as_completed_work_num_data ADD CONSTRAINT FK1905 FOREIGN KEY(asset_org_site,asset_id,task_db_site,task_db_id,task_type_code,gmt_completed) REFERENCES as_completed_work(asset_org_site,asset_id,task_db_site,task_db_id,task_type_code,gmt_completed)
 ;
  ALTER TABLE as_completed_work_num_data ADD CONSTRAINT FK1906 FOREIGN KEY(wn_db_site,wn_db_id,wn_type_code) REFERENCES work_num_data_type(wn_db_site,wn_db_id,wn_type_code)
 ;
  ALTER TABLE as_completed_work_num_data ADD CONSTRAINT FK1907 FOREIGN KEY(eu_db_site,eu_db_id,eu_type_code) REFERENCES eng_unit_type(eu_db_site,eu_db_id,eu_type_code)
 ;
  ALTER TABLE as_completed_work_num_data ADD CONSTRAINT FK1908 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE as_completed_work_num_data ADD CONSTRAINT FK1909 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE as_completed_work_chr_data ADD CONSTRAINT FK1910 FOREIGN KEY(asset_org_site,asset_id,task_db_site,task_db_id,task_type_code,gmt_completed) REFERENCES as_completed_work(asset_org_site,asset_id,task_db_site,task_db_id,task_type_code,gmt_completed)
 ;
  ALTER TABLE as_completed_work_chr_data ADD CONSTRAINT FK1911 FOREIGN KEY(wc_db_site,wc_db_id,wc_type_code) REFERENCES work_chr_data_type(wc_db_site,wc_db_id,wc_type_code)
 ;
  ALTER TABLE as_completed_work_chr_data ADD CONSTRAINT FK1912 FOREIGN KEY(eu_db_site,eu_db_id,eu_type_code) REFERENCES eng_unit_type(eu_db_site,eu_db_id,eu_type_code)
 ;
  ALTER TABLE as_completed_work_chr_data ADD CONSTRAINT FK1913 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE as_completed_work_chr_data ADD CONSTRAINT FK1914 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE as_completed_work_blob_data ADD CONSTRAINT FK1915 FOREIGN KEY(asset_org_site,asset_id,task_db_site,task_db_id,task_type_code,gmt_completed) REFERENCES as_completed_work(asset_org_site,asset_id,task_db_site,task_db_id,task_type_code,gmt_completed)
 ;
  ALTER TABLE as_completed_work_blob_data ADD CONSTRAINT FK1916 FOREIGN KEY(bd_db_site,bd_db_id,bd_type_code) REFERENCES blob_data_type(bd_db_site,bd_db_id,bd_type_code)
 ;
  ALTER TABLE as_completed_work_blob_data ADD CONSTRAINT FK1917 FOREIGN KEY(blct_db_site,blct_db_id,blc_type_code) REFERENCES blob_content_type(blct_db_site,blct_db_id,blc_type_code)
 ;
  ALTER TABLE as_completed_work_blob_data ADD CONSTRAINT FK1918 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE as_completed_work_blob_data ADD CONSTRAINT FK1919 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE as_completed_work_olist_used ADD CONSTRAINT FK1920 FOREIGN KEY(asset_org_site,asset_id,task_db_site,task_db_id,task_type_code,gmt_completed) REFERENCES as_completed_work(asset_org_site,asset_id,task_db_site,task_db_id,task_type_code,gmt_completed)
 ;
  ALTER TABLE as_completed_work_olist_used ADD CONSTRAINT FK1921 FOREIGN KEY(ord_list_db_site,ord_list_db_id,ord_list_id) REFERENCES ordered_list(ord_list_db_site,ord_list_db_id,ord_list_id)
 ;
  ALTER TABLE as_completed_work_olist_used ADD CONSTRAINT FK1922 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE as_completed_work_olist_used ADD CONSTRAINT FK1923 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE as_completed_work_olist_rem ADD CONSTRAINT FK1924 FOREIGN KEY(asset_org_site,asset_id,task_db_site,task_db_id,task_type_code,gmt_completed) REFERENCES as_completed_work(asset_org_site,asset_id,task_db_site,task_db_id,task_type_code,gmt_completed)
 ;
  ALTER TABLE as_completed_work_olist_rem ADD CONSTRAINT FK1925 FOREIGN KEY(ord_list_db_site,ord_list_db_id,ord_list_id) REFERENCES ordered_list(ord_list_db_site,ord_list_db_id,ord_list_id)
 ;
  ALTER TABLE as_completed_work_olist_rem ADD CONSTRAINT FK1926 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE as_completed_work_olist_rem ADD CONSTRAINT FK1927 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE as_comp_work_for_sg_prop_event ADD CONSTRAINT FK1928 FOREIGN KEY(asset_org_site,asset_id,task_db_site,task_db_id,task_type_code,gmt_completed) REFERENCES as_completed_work(asset_org_site,asset_id,task_db_site,task_db_id,task_type_code,gmt_completed)
 ;
  ALTER TABLE as_comp_work_for_sg_prop_event ADD CONSTRAINT FK1929 FOREIGN KEY(sg_prop_db_site,sg_prop_db_id,sg_prop_event_id) REFERENCES sg_proposed_event(sg_prop_db_site,sg_prop_db_id,sg_prop_event_id)
 ;
  ALTER TABLE as_comp_work_for_sg_prop_event ADD CONSTRAINT FK1930 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE as_comp_work_for_sg_prop_event ADD CONSTRAINT FK1931 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE as_comp_work_for_as_prop_event ADD CONSTRAINT FK1932 FOREIGN KEY(asset_org_site,asset_id,task_db_site,task_db_id,task_type_code,gmt_completed) REFERENCES as_completed_work(asset_org_site,asset_id,task_db_site,task_db_id,task_type_code,gmt_completed)
 ;
  ALTER TABLE as_comp_work_for_as_prop_event ADD CONSTRAINT FK1933 FOREIGN KEY(as_prop_db_site,as_prop_db_id,as_prop_event_id) REFERENCES as_proposed_event(as_prop_db_site,as_prop_db_id,as_prop_event_id)
 ;
  ALTER TABLE as_comp_work_for_as_prop_event ADD CONSTRAINT FK1934 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE as_comp_work_for_as_prop_event ADD CONSTRAINT FK1935 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE as_completed_work_for_sg_event ADD CONSTRAINT FK1936 FOREIGN KEY(asset_org_site,asset_id,task_db_site,task_db_id,task_type_code,gmt_completed) REFERENCES as_completed_work(asset_org_site,asset_id,task_db_site,task_db_id,task_type_code,gmt_completed)
 ;
  ALTER TABLE as_completed_work_for_sg_event ADD CONSTRAINT FK1937 FOREIGN KEY(ev_segment_site,ev_segment_id,ev_db_site,ev_db_id,event_type_code,gmt_event_start) REFERENCES segment_event(segment_site,segment_id,ev_db_site,ev_db_id,event_type_code,gmt_event_start)
 ;
  ALTER TABLE as_completed_work_for_sg_event ADD CONSTRAINT FK1938 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE as_completed_work_for_sg_event ADD CONSTRAINT FK1939 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE as_completed_work_for_as_event ADD CONSTRAINT FK1940 FOREIGN KEY(asset_org_site,asset_id,task_db_site,task_db_id,task_type_code,gmt_completed) REFERENCES as_completed_work(asset_org_site,asset_id,task_db_site,task_db_id,task_type_code,gmt_completed)
 ;
  ALTER TABLE as_completed_work_for_as_event ADD CONSTRAINT FK1941 FOREIGN KEY(ev_asset_org_site,ev_asset_id,ev_db_site,ev_db_id,event_type_code,gmt_event_start) REFERENCES asset_event(asset_org_site,asset_id,ev_db_site,ev_db_id,event_type_code,gmt_event_start)
 ;
  ALTER TABLE as_completed_work_for_as_event ADD CONSTRAINT FK1942 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE as_completed_work_for_as_event ADD CONSTRAINT FK1943 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE ol_completed_work_asset_util ADD CONSTRAINT FK1944 FOREIGN KEY(ord_list_db_site,ord_list_db_id,ord_list_id,task_db_site,task_db_id,task_type_code,gmt_completed) REFERENCES ol_completed_work(ord_list_db_site,ord_list_db_id,ord_list_id,task_db_site,task_db_id,task_type_code,gmt_completed)
 ;
  ALTER TABLE ol_completed_work_asset_util ADD CONSTRAINT FK1945 FOREIGN KEY(used_asset_org_site,used_asset_id,on_segment_site,on_segment_id,gmt_installed) REFERENCES asset_on_segment(asset_org_site,asset_id,segment_site,segment_id,gmt_installed)
 ;
  ALTER TABLE ol_completed_work_asset_util ADD CONSTRAINT FK1946 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE ol_completed_work_asset_util ADD CONSTRAINT FK1947 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE ol_completed_work_num_data ADD CONSTRAINT FK1948 FOREIGN KEY(ord_list_db_site,ord_list_db_id,ord_list_id,task_db_site,task_db_id,task_type_code,gmt_completed) REFERENCES ol_completed_work(ord_list_db_site,ord_list_db_id,ord_list_id,task_db_site,task_db_id,task_type_code,gmt_completed)
 ;
  ALTER TABLE ol_completed_work_num_data ADD CONSTRAINT FK1949 FOREIGN KEY(wn_db_site,wn_db_id,wn_type_code) REFERENCES work_num_data_type(wn_db_site,wn_db_id,wn_type_code)
 ;
  ALTER TABLE ol_completed_work_num_data ADD CONSTRAINT FK1950 FOREIGN KEY(eu_db_site,eu_db_id,eu_type_code) REFERENCES eng_unit_type(eu_db_site,eu_db_id,eu_type_code)
 ;
  ALTER TABLE ol_completed_work_num_data ADD CONSTRAINT FK1951 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE ol_completed_work_num_data ADD CONSTRAINT FK1952 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE ol_completed_work_chr_data ADD CONSTRAINT FK1953 FOREIGN KEY(ord_list_db_site,ord_list_db_id,ord_list_id,task_db_site,task_db_id,task_type_code,gmt_completed) REFERENCES ol_completed_work(ord_list_db_site,ord_list_db_id,ord_list_id,task_db_site,task_db_id,task_type_code,gmt_completed)
 ;
  ALTER TABLE ol_completed_work_chr_data ADD CONSTRAINT FK1954 FOREIGN KEY(wc_db_site,wc_db_id,wc_type_code) REFERENCES work_chr_data_type(wc_db_site,wc_db_id,wc_type_code)
 ;
  ALTER TABLE ol_completed_work_chr_data ADD CONSTRAINT FK1955 FOREIGN KEY(eu_db_site,eu_db_id,eu_type_code) REFERENCES eng_unit_type(eu_db_site,eu_db_id,eu_type_code)
 ;
  ALTER TABLE ol_completed_work_chr_data ADD CONSTRAINT FK1956 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE ol_completed_work_chr_data ADD CONSTRAINT FK1957 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE ol_completed_work_blob_data ADD CONSTRAINT FK1958 FOREIGN KEY(ord_list_db_site,ord_list_db_id,ord_list_id,task_db_site,task_db_id,task_type_code,gmt_completed) REFERENCES ol_completed_work(ord_list_db_site,ord_list_db_id,ord_list_id,task_db_site,task_db_id,task_type_code,gmt_completed)
 ;
  ALTER TABLE ol_completed_work_blob_data ADD CONSTRAINT FK1959 FOREIGN KEY(bd_db_site,bd_db_id,bd_type_code) REFERENCES blob_data_type(bd_db_site,bd_db_id,bd_type_code)
 ;
  ALTER TABLE ol_completed_work_blob_data ADD CONSTRAINT FK1960 FOREIGN KEY(blct_db_site,blct_db_id,blc_type_code) REFERENCES blob_content_type(blct_db_site,blct_db_id,blc_type_code)
 ;
  ALTER TABLE ol_completed_work_blob_data ADD CONSTRAINT FK1961 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE ol_completed_work_blob_data ADD CONSTRAINT FK1962 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE ol_completed_work_olist_used ADD CONSTRAINT FK1963 FOREIGN KEY(ord_list_db_site,ord_list_db_id,ord_list_id,task_db_site,task_db_id,task_type_code,gmt_completed) REFERENCES ol_completed_work(ord_list_db_site,ord_list_db_id,ord_list_id,task_db_site,task_db_id,task_type_code,gmt_completed)
 ;
  ALTER TABLE ol_completed_work_olist_used ADD CONSTRAINT FK1964 FOREIGN KEY(used_ord_list_db_site,used_ord_list_db_id,used_ord_list_id) REFERENCES ordered_list(ord_list_db_site,ord_list_db_id,ord_list_id)
 ;
  ALTER TABLE ol_completed_work_olist_used ADD CONSTRAINT FK1965 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE ol_completed_work_olist_used ADD CONSTRAINT FK1966 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE ol_completed_work_olist_rem ADD CONSTRAINT FK1967 FOREIGN KEY(ord_list_db_site,ord_list_db_id,ord_list_id,task_db_site,task_db_id,task_type_code,gmt_completed) REFERENCES ol_completed_work(ord_list_db_site,ord_list_db_id,ord_list_id,task_db_site,task_db_id,task_type_code,gmt_completed)
 ;
  ALTER TABLE ol_completed_work_olist_rem ADD CONSTRAINT FK1968 FOREIGN KEY(rem_ord_list_db_site,rem_ord_list_db_id,rem_ord_list_id) REFERENCES ordered_list(ord_list_db_site,ord_list_db_id,ord_list_id)
 ;
  ALTER TABLE ol_completed_work_olist_rem ADD CONSTRAINT FK1969 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE ol_completed_work_olist_rem ADD CONSTRAINT FK1970 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE ol_comp_work_for_sg_prop_event ADD CONSTRAINT FK1971 FOREIGN KEY(ord_list_db_site,ord_list_db_id,ord_list_id,task_db_site,task_db_id,task_type_code,gmt_completed) REFERENCES ol_completed_work(ord_list_db_site,ord_list_db_id,ord_list_id,task_db_site,task_db_id,task_type_code,gmt_completed)
 ;
  ALTER TABLE ol_comp_work_for_sg_prop_event ADD CONSTRAINT FK1972 FOREIGN KEY(sg_prop_db_site,sg_prop_db_id,sg_prop_event_id) REFERENCES sg_proposed_event(sg_prop_db_site,sg_prop_db_id,sg_prop_event_id)
 ;
  ALTER TABLE ol_comp_work_for_sg_prop_event ADD CONSTRAINT FK1973 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE ol_comp_work_for_sg_prop_event ADD CONSTRAINT FK1974 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE ol_comp_work_for_as_prop_event ADD CONSTRAINT FK1975 FOREIGN KEY(ord_list_db_site,ord_list_db_id,ord_list_id,task_db_site,task_db_id,task_type_code,gmt_completed) REFERENCES ol_completed_work(ord_list_db_site,ord_list_db_id,ord_list_id,task_db_site,task_db_id,task_type_code,gmt_completed)
 ;
  ALTER TABLE ol_comp_work_for_as_prop_event ADD CONSTRAINT FK1976 FOREIGN KEY(as_prop_db_site,as_prop_db_id,as_prop_event_id) REFERENCES as_proposed_event(as_prop_db_site,as_prop_db_id,as_prop_event_id)
 ;
  ALTER TABLE ol_comp_work_for_as_prop_event ADD CONSTRAINT FK1977 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE ol_comp_work_for_as_prop_event ADD CONSTRAINT FK1978 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE ol_completed_work_for_sg_event ADD CONSTRAINT FK1979 FOREIGN KEY(ord_list_db_site,ord_list_db_id,ord_list_id,task_db_site,task_db_id,task_type_code,gmt_completed) REFERENCES ol_completed_work(ord_list_db_site,ord_list_db_id,ord_list_id,task_db_site,task_db_id,task_type_code,gmt_completed)
 ;
  ALTER TABLE ol_completed_work_for_sg_event ADD CONSTRAINT FK1980 FOREIGN KEY(ev_segment_site,ev_segment_id,ev_db_site,ev_db_id,event_type_code,gmt_event_start) REFERENCES segment_event(segment_site,segment_id,ev_db_site,ev_db_id,event_type_code,gmt_event_start)
 ;
  ALTER TABLE ol_completed_work_for_sg_event ADD CONSTRAINT FK1981 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE ol_completed_work_for_sg_event ADD CONSTRAINT FK1982 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE ol_completed_work_for_as_event ADD CONSTRAINT FK1983 FOREIGN KEY(ord_list_db_site,ord_list_db_id,ord_list_id,task_db_site,task_db_id,task_type_code,gmt_completed) REFERENCES ol_completed_work(ord_list_db_site,ord_list_db_id,ord_list_id,task_db_site,task_db_id,task_type_code,gmt_completed)
 ;
  ALTER TABLE ol_completed_work_for_as_event ADD CONSTRAINT FK1984 FOREIGN KEY(ev_asset_org_site,ev_asset_id,ev_db_site,ev_db_id,event_type_code,gmt_event_start) REFERENCES asset_event(asset_org_site,asset_id,ev_db_site,ev_db_id,event_type_code,gmt_event_start)
 ;
  ALTER TABLE ol_completed_work_for_as_event ADD CONSTRAINT FK1985 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE ol_completed_work_for_as_event ADD CONSTRAINT FK1986 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE request_num_data ADD CONSTRAINT FK1987 FOREIGN KEY(req_db_site,req_db_id,request_id) REFERENCES request(req_db_site,req_db_id,request_id)
 ;
  ALTER TABLE request_num_data ADD CONSTRAINT FK1988 FOREIGN KEY(wn_db_site,wn_db_id,wn_type_code) REFERENCES work_num_data_type(wn_db_site,wn_db_id,wn_type_code)
 ;
  ALTER TABLE request_num_data ADD CONSTRAINT FK1989 FOREIGN KEY(eu_db_site,eu_db_id,eu_type_code) REFERENCES eng_unit_type(eu_db_site,eu_db_id,eu_type_code)
 ;
  ALTER TABLE request_num_data ADD CONSTRAINT FK1990 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE request_num_data ADD CONSTRAINT FK1991 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE request_chr_data ADD CONSTRAINT FK1992 FOREIGN KEY(req_db_site,req_db_id,request_id) REFERENCES request(req_db_site,req_db_id,request_id)
 ;
  ALTER TABLE request_chr_data ADD CONSTRAINT FK1993 FOREIGN KEY(wc_db_site,wc_db_id,wc_type_code) REFERENCES work_chr_data_type(wc_db_site,wc_db_id,wc_type_code)
 ;
  ALTER TABLE request_chr_data ADD CONSTRAINT FK1994 FOREIGN KEY(eu_db_site,eu_db_id,eu_type_code) REFERENCES eng_unit_type(eu_db_site,eu_db_id,eu_type_code)
 ;
  ALTER TABLE request_chr_data ADD CONSTRAINT FK1995 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE request_chr_data ADD CONSTRAINT FK1996 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE request_blob_data ADD CONSTRAINT FK1997 FOREIGN KEY(req_db_site,req_db_id,request_id) REFERENCES request(req_db_site,req_db_id,request_id)
 ;
  ALTER TABLE request_blob_data ADD CONSTRAINT FK1998 FOREIGN KEY(bd_db_site,bd_db_id,bd_type_code) REFERENCES blob_data_type(bd_db_site,bd_db_id,bd_type_code)
 ;
  ALTER TABLE request_blob_data ADD CONSTRAINT FK1999 FOREIGN KEY(blct_db_site,blct_db_id,blc_type_code) REFERENCES blob_content_type(blct_db_site,blct_db_id,blc_type_code)
 ;
  ALTER TABLE request_blob_data ADD CONSTRAINT FK2000 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE request_blob_data ADD CONSTRAINT FK2001 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE request_for_sg_prop_event ADD CONSTRAINT FK2002 FOREIGN KEY(req_db_site,req_db_id,request_id) REFERENCES request(req_db_site,req_db_id,request_id)
 ;
  ALTER TABLE request_for_sg_prop_event ADD CONSTRAINT FK2003 FOREIGN KEY(sg_prop_db_site,sg_prop_db_id,sg_prop_event_id) REFERENCES sg_proposed_event(sg_prop_db_site,sg_prop_db_id,sg_prop_event_id)
 ;
  ALTER TABLE request_for_sg_prop_event ADD CONSTRAINT FK2004 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE request_for_sg_prop_event ADD CONSTRAINT FK2005 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE request_for_as_prop_event ADD CONSTRAINT FK2006 FOREIGN KEY(req_db_site,req_db_id,request_id) REFERENCES request(req_db_site,req_db_id,request_id)
 ;
  ALTER TABLE request_for_as_prop_event ADD CONSTRAINT FK2007 FOREIGN KEY(as_prop_db_site,as_prop_db_id,as_prop_event_id) REFERENCES as_proposed_event(as_prop_db_site,as_prop_db_id,as_prop_event_id)
 ;
  ALTER TABLE request_for_as_prop_event ADD CONSTRAINT FK2008 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE request_for_as_prop_event ADD CONSTRAINT FK2009 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE work_request_for_sg_prop_event ADD CONSTRAINT FK2010 FOREIGN KEY(work_req_db_site,work_req_db_id,work_req_id) REFERENCES work_request(work_req_db_site,work_req_db_id,work_req_id)
 ;
  ALTER TABLE work_request_for_sg_prop_event ADD CONSTRAINT FK2011 FOREIGN KEY(sg_prop_db_site,sg_prop_db_id,sg_prop_event_id) REFERENCES sg_proposed_event(sg_prop_db_site,sg_prop_db_id,sg_prop_event_id)
 ;
  ALTER TABLE work_request_for_sg_prop_event ADD CONSTRAINT FK2012 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE work_request_for_sg_prop_event ADD CONSTRAINT FK2013 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE work_request_for_as_prop_event ADD CONSTRAINT FK2014 FOREIGN KEY(work_req_db_site,work_req_db_id,work_req_id) REFERENCES work_request(work_req_db_site,work_req_db_id,work_req_id)
 ;
  ALTER TABLE work_request_for_as_prop_event ADD CONSTRAINT FK2015 FOREIGN KEY(as_prop_db_site,as_prop_db_id,as_prop_event_id) REFERENCES as_proposed_event(as_prop_db_site,as_prop_db_id,as_prop_event_id)
 ;
  ALTER TABLE work_request_for_as_prop_event ADD CONSTRAINT FK2016 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE work_request_for_as_prop_event ADD CONSTRAINT FK2017 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE work_order_for_sg_prop_event ADD CONSTRAINT FK2018 FOREIGN KEY(work_order_db_site,work_order_db_id,work_order_id) REFERENCES work_order(work_order_db_site,work_order_db_id,work_order_id)
 ;
  ALTER TABLE work_order_for_sg_prop_event ADD CONSTRAINT FK2019 FOREIGN KEY(sg_prop_db_site,sg_prop_db_id,sg_prop_event_id) REFERENCES sg_proposed_event(sg_prop_db_site,sg_prop_db_id,sg_prop_event_id)
 ;
  ALTER TABLE work_order_for_sg_prop_event ADD CONSTRAINT FK2020 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE work_order_for_sg_prop_event ADD CONSTRAINT FK2021 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE work_order_for_as_prop_event ADD CONSTRAINT FK2022 FOREIGN KEY(work_order_db_site,work_order_db_id,work_order_id) REFERENCES work_order(work_order_db_site,work_order_db_id,work_order_id)
 ;
  ALTER TABLE work_order_for_as_prop_event ADD CONSTRAINT FK2023 FOREIGN KEY(as_prop_db_site,as_prop_db_id,as_prop_event_id) REFERENCES as_proposed_event(as_prop_db_site,as_prop_db_id,as_prop_event_id)
 ;
  ALTER TABLE work_order_for_as_prop_event ADD CONSTRAINT FK2024 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE work_order_for_as_prop_event ADD CONSTRAINT FK2025 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE request_for_sg_event ADD CONSTRAINT FK2026 FOREIGN KEY(req_db_site,req_db_id,request_id) REFERENCES request(req_db_site,req_db_id,request_id)
 ;
  ALTER TABLE request_for_sg_event ADD CONSTRAINT FK2027 FOREIGN KEY(ev_segment_site,ev_segment_id,ev_db_site,ev_db_id,event_type_code,gmt_event_start) REFERENCES segment_event(segment_site,segment_id,ev_db_site,ev_db_id,event_type_code,gmt_event_start)
 ;
  ALTER TABLE request_for_sg_event ADD CONSTRAINT FK2028 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE request_for_sg_event ADD CONSTRAINT FK2029 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE request_for_as_event ADD CONSTRAINT FK2030 FOREIGN KEY(req_db_site,req_db_id,request_id) REFERENCES request(req_db_site,req_db_id,request_id)
 ;
  ALTER TABLE request_for_as_event ADD CONSTRAINT FK2031 FOREIGN KEY(ev_asset_org_site,ev_asset_id,ev_db_site,ev_db_id,event_type_code,gmt_event_start) REFERENCES asset_event(asset_org_site,asset_id,ev_db_site,ev_db_id,event_type_code,gmt_event_start)
 ;
  ALTER TABLE request_for_as_event ADD CONSTRAINT FK2032 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE request_for_as_event ADD CONSTRAINT FK2033 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE work_request_for_sg_event ADD CONSTRAINT FK2034 FOREIGN KEY(work_req_db_site,work_req_db_id,work_req_id) REFERENCES work_request(work_req_db_site,work_req_db_id,work_req_id)
 ;
  ALTER TABLE work_request_for_sg_event ADD CONSTRAINT FK2035 FOREIGN KEY(ev_segment_site,ev_segment_id,ev_db_site,ev_db_id,event_type_code,gmt_event_start) REFERENCES segment_event(segment_site,segment_id,ev_db_site,ev_db_id,event_type_code,gmt_event_start)
 ;
  ALTER TABLE work_request_for_sg_event ADD CONSTRAINT FK2036 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE work_request_for_sg_event ADD CONSTRAINT FK2037 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE work_request_for_as_event ADD CONSTRAINT FK2038 FOREIGN KEY(work_req_db_site,work_req_db_id,work_req_id) REFERENCES work_request(work_req_db_site,work_req_db_id,work_req_id)
 ;
  ALTER TABLE work_request_for_as_event ADD CONSTRAINT FK2039 FOREIGN KEY(ev_asset_org_site,ev_asset_id,ev_db_site,ev_db_id,event_type_code,gmt_event_start) REFERENCES asset_event(asset_org_site,asset_id,ev_db_site,ev_db_id,event_type_code,gmt_event_start)
 ;
  ALTER TABLE work_request_for_as_event ADD CONSTRAINT FK2040 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE work_request_for_as_event ADD CONSTRAINT FK2041 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE work_order_for_sg_event ADD CONSTRAINT FK2042 FOREIGN KEY(work_order_db_site,work_order_db_id,work_order_id) REFERENCES work_order(work_order_db_site,work_order_db_id,work_order_id)
 ;
  ALTER TABLE work_order_for_sg_event ADD CONSTRAINT FK2043 FOREIGN KEY(ev_segment_site,ev_segment_id,ev_db_site,ev_db_id,event_type_code,gmt_event_start) REFERENCES segment_event(segment_site,segment_id,ev_db_site,ev_db_id,event_type_code,gmt_event_start)
 ;
  ALTER TABLE work_order_for_sg_event ADD CONSTRAINT FK2044 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE work_order_for_sg_event ADD CONSTRAINT FK2045 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE work_order_for_as_event ADD CONSTRAINT FK2046 FOREIGN KEY(work_order_db_site,work_order_db_id,work_order_id) REFERENCES work_order(work_order_db_site,work_order_db_id,work_order_id)
 ;
  ALTER TABLE work_order_for_as_event ADD CONSTRAINT FK2047 FOREIGN KEY(ev_asset_org_site,ev_asset_id,ev_db_site,ev_db_id,event_type_code,gmt_event_start) REFERENCES asset_event(asset_org_site,asset_id,ev_db_site,ev_db_id,event_type_code,gmt_event_start)
 ;
  ALTER TABLE work_order_for_as_event ADD CONSTRAINT FK2048 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE work_order_for_as_event ADD CONSTRAINT FK2049 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE network_num_data ADD CONSTRAINT FK2050 FOREIGN KEY(network_db_site,network_db_id,network_id) REFERENCES network(network_db_site,network_db_id,network_id)
 ;
  ALTER TABLE network_num_data ADD CONSTRAINT FK2051 FOREIGN KEY(nn_type_db_site,nn_type_db_id,nn_type_code) REFERENCES network_num_dat_type(nn_type_db_site,nn_type_db_id,nn_type_code)
 ;
  ALTER TABLE network_num_data ADD CONSTRAINT FK2052 FOREIGN KEY(eu_db_site,eu_db_id,eu_type_code) REFERENCES eng_unit_type(eu_db_site,eu_db_id,eu_type_code)
 ;
  ALTER TABLE network_num_data ADD CONSTRAINT FK2053 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE network_num_data ADD CONSTRAINT FK2054 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE network_chr_data ADD CONSTRAINT FK2055 FOREIGN KEY(network_db_site,network_db_id,network_id) REFERENCES network(network_db_site,network_db_id,network_id)
 ;
  ALTER TABLE network_chr_data ADD CONSTRAINT FK2056 FOREIGN KEY(nc_type_db_site,nc_type_db_id,nc_type_code) REFERENCES network_chr_dat_type(nc_type_db_site,nc_type_db_id,nc_type_code)
 ;
  ALTER TABLE network_chr_data ADD CONSTRAINT FK2057 FOREIGN KEY(eu_db_site,eu_db_id,eu_type_code) REFERENCES eng_unit_type(eu_db_site,eu_db_id,eu_type_code)
 ;
  ALTER TABLE network_chr_data ADD CONSTRAINT FK2058 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE network_chr_data ADD CONSTRAINT FK2059 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE network_blob_data ADD CONSTRAINT FK2060 FOREIGN KEY(network_db_site,network_db_id,network_id) REFERENCES network(network_db_site,network_db_id,network_id)
 ;
  ALTER TABLE network_blob_data ADD CONSTRAINT FK2061 FOREIGN KEY(bd_db_site,bd_db_id,bd_type_code) REFERENCES blob_data_type(bd_db_site,bd_db_id,bd_type_code)
 ;
  ALTER TABLE network_blob_data ADD CONSTRAINT FK2062 FOREIGN KEY(blct_db_site,blct_db_id,blc_type_code) REFERENCES blob_content_type(blct_db_site,blct_db_id,blc_type_code)
 ;
  ALTER TABLE network_blob_data ADD CONSTRAINT FK2063 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE network_blob_data ADD CONSTRAINT FK2064 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
  ALTER TABLE work_item_type ADD CONSTRAINT FK2110 FOREIGN KEY(work_item_db_site,work_item_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE work_item_type ADD CONSTRAINT FK2111 FOREIGN KEY(last_upd_db_site,last_upd_db_id) REFERENCES site_database(db_site,db_id)
 ;
  ALTER TABLE work_item_type ADD CONSTRAINT FK2112 FOREIGN KEY(rstat_type_code) REFERENCES row_status_type(rstat_type_cod)
 ;
