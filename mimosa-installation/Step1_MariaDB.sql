-- MariaDB #1 Script to create tables and primary keys. 



SET foreign_key_checks=0;

  CREATE TABLE row_status_type (
                    rstat_type_cod                      smallint         NOT NULL,
                    name                                nvarchar(254)     NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (rstat_type_cod)
  )
  ;

  CREATE TABLE enterprise_type (
                    ent_db_site                         char(16)         NOT NULL,
                    ent_db_id                           bigint           NOT NULL,
                    ent_type_code                       bigint           NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (ent_db_site,ent_db_id,ent_type_code)
  )
  ;

  CREATE TABLE enterprise (
                    enterprise_id                       bigint           NOT NULL,
                    ent_db_site                         char(16)         NOT NULL,
                    ent_db_id                           bigint           NOT NULL,
                    ent_type_code                       bigint           NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (enterprise_id)
  )
  ;

  CREATE TABLE site_type (
                    st_db_site                          char(16)         NOT NULL,
                    st_db_id                            bigint           NOT NULL,
                    st_type_code                        bigint           NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NOT NULL,
                    mobile_yn                           char(1)          NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (st_db_site,st_db_id,st_type_code)
     ,CHECK (mobile_yn in ('Y','N'))
  )
  ;

  CREATE TABLE site_type_child (
                    st_db_site                          char(16)         NOT NULL,
                    st_db_id                            bigint           NOT NULL,
                    st_type_code                        bigint           NOT NULL,
                    child_st_db_site                    char(16)         NOT NULL,
                    child_st_db_id                      bigint           NOT NULL,
                    child_st_type_code                  bigint           NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (st_db_site,st_db_id,st_type_code,child_st_db_site,child_st_db_id,child_st_type_code)
  )
  ;

  CREATE TABLE site (
                    site_code                           char(16)         NOT NULL,
                    enterprise_id                       bigint           NOT NULL,
                    site_id                             bigint           NOT NULL,
                    st_db_site                          char(16)         NOT NULL,
                    st_db_id                            bigint           NOT NULL,
                    st_type_code                        bigint           NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    duns_number                         bigint           NULL,
                    template_yn                         char(1)          NULL,
                    segment_site                        char(16)         NULL,
                    segment_id                          bigint           NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (site_code)
     ,CHECK (template_yn in ('Y','N'))
                                     )
  ;

  CREATE TABLE site_database (
                    db_site                             char(16)         NOT NULL,
                    db_id                               bigint           NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    asset_org_site                      char(16)         NULL,
                    asset_id                            bigint           NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
                    mf_db_site                          char(16)         NULL,
                    mf_db_id                            bigint           NULL,
                    manuf_code                          bigint           NULL,
               
               PRIMARY KEY (db_site,db_id)
  )
  ;

  CREATE TABLE manufacturer (
                    mf_db_site                          char(16)         NOT NULL,
                    mf_db_id                            bigint           NOT NULL,
                    manuf_code                          bigint           NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    manuf_trade_name                    nvarchar(254)     NOT NULL,
                    company_name                        nvarchar(254)     NOT NULL,
                    phys_addr                           nvarchar(254)     NULL,
                    phys_city_name                      nvarchar(254)     NULL,
                    phys_state_abbr                     nvarchar(254)     NULL,
                    phys_postal_code                    nvarchar(254)     NULL,
                    phys_country_abbr                   nvarchar(254)     NULL,
                    mail_addr                           nvarchar(254)     NULL,
                    mail_city_name                      nvarchar(254)     NULL,
                    mail_state_abbr                     nvarchar(254)     NULL,
                    mail_postal_code                    nvarchar(254)     NULL,
                    mail_country_abbr                   nvarchar(254)     NULL,
                    us_ph_number                        nvarchar(254)     NULL,
                    int_ph_country_no                   nvarchar(254)     NULL,
                    int_ph_city_no                      nvarchar(254)     NULL,
                    int_ph_local_no                     nvarchar(254)     NULL,
                    us_fax_number                       nvarchar(254)     NULL,
                    int_fax_country_no                  nvarchar(254)     NULL,
                    int_fax_city_no                     nvarchar(254)     NULL,
                    int_fax_local_no                    nvarchar(254)     NULL,
                    business_desc                       nvarchar(254)     NULL,
                    primary_sic                         nvarchar(254)     NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
                    lc_alt_sic1                         nvarchar(254)     NULL,
                    lc_alt_sic2                         nvarchar(254)     NULL,
               
               PRIMARY KEY (mf_db_site,mf_db_id,manuf_code)
  )
  ;

  CREATE TABLE segment_type (
                    sg_db_site                          char(16)         NOT NULL,
                    sg_db_id                            bigint           NOT NULL,
                    sg_type_code                        bigint           NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NOT NULL,
                    default_mnemonic                    nvarchar(254)     NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (sg_db_site,sg_db_id,sg_type_code)
  )
  ;

  CREATE TABLE segment_type_child (
                    sg_db_site                          char(16)         NOT NULL,
                    sg_db_id                            bigint           NOT NULL,
                    sg_type_code                        bigint           NOT NULL,
                    child_sg_db_site                    char(16)         NOT NULL,
                    child_sg_db_id                      bigint           NOT NULL,
                    child_sg_type_code                  bigint           NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (sg_db_site,sg_db_id,sg_type_code,child_sg_db_site,child_sg_db_id,child_sg_type_code)
  )
  ;

  CREATE TABLE segment (
                    segment_site                        char(16)         NOT NULL,
                    segment_id                          bigint           NOT NULL,
                    sg_db_site                          char(16)         NOT NULL,
                    sg_db_id                            bigint           NOT NULL,
                    sg_type_code                        bigint           NOT NULL,
                    segment_group_yn                    char(1)          NOT NULL,
                    criticality                         bigint           NULL,
                    cs_type_db_site                     char(16)         NULL,
                    cs_type_db_id                       bigint           NULL,
                    cs_type_code                        bigint           NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    long_description                    nvarchar(4000)    NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (segment_site,segment_id)
     ,CHECK (segment_group_yn in ('Y','N'))
                                     )
  ;

  CREATE TABLE purchase_cond_type (
                    pc_db_site                          char(16)         NOT NULL,
                    pc_db_id                            bigint           NOT NULL,
                    pc_type_code                        bigint           NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (pc_db_site,pc_db_id,pc_type_code)
  )
  ;

  CREATE TABLE as_readiness_type (
                    asr_db_site                         char(16)         NOT NULL,
                    asr_db_id                           bigint           NOT NULL,
                    asr_type_code                       bigint           NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NOT NULL,
                    description                         nvarchar(254)     NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (asr_db_site,asr_db_id,asr_type_code)
  )
  ;

  CREATE TABLE mloc_calc_type (
                    mc_db_site                          char(16)         NOT NULL,
                    mc_db_id                            bigint           NOT NULL,
                    mc_type_code                        bigint           NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NOT NULL,
                    description                         nvarchar(254)     NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (mc_db_site,mc_db_id,mc_type_code)
  )
  ;

  CREATE TABLE segment_child (
                    segment_site                        char(16)         NOT NULL,
                    segment_id                          bigint           NOT NULL,
                    child_sg_site                       char(16)         NOT NULL,
                    child_sg_id                         bigint           NOT NULL,
                    ordering_seq                        bigint           NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (segment_site,segment_id,child_sg_site,child_sg_id)
  )
  ;

  CREATE TABLE ref_unit_type (
                    ru_type_code                        bigint           NOT NULL,
                    name                                nvarchar(254)     NOT NULL,
                    physics_descr                       nvarchar(254)     NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (ru_type_code)
  )
  ;

  CREATE TABLE eng_unit_type (
                    eu_db_site                          char(16)         NOT NULL,
                    eu_db_id                            bigint           NOT NULL,
                    eu_type_code                        bigint           NOT NULL,
                    ru_type_code                        bigint           NOT NULL,
                    mult_fact_to_ref                    float            NOT NULL,
                    refer_off_to_ref                    float            NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (eu_db_site,eu_db_id,eu_type_code)
  )
  ;

  CREATE TABLE eng_unit_enum (
                    eu_db_site                          char(16)         NOT NULL,
                    eu_db_id                            bigint           NOT NULL,
                    eu_type_code                        bigint           NOT NULL,
                    data_value                          bigint           NOT NULL,
                    data_name                           nvarchar(254)     NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (eu_db_site,eu_db_id,eu_type_code,data_value)
  )
  ;

  CREATE TABLE sg_num_dat_type (
                    sn_db_site                          char(16)         NOT NULL,
                    sn_db_id                            bigint           NOT NULL,
                    sn_type_code                        bigint           NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NOT NULL,
                    default_ru_type                     bigint           NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (sn_db_site,sn_db_id,sn_type_code)
  )
  ;

  CREATE TABLE sg_chr_dat_type (
                    sc_db_site                          char(16)         NOT NULL,
                    sc_db_id                            bigint           NOT NULL,
                    sc_type_code                        bigint           NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NOT NULL,
                    default_ru_type                     bigint           NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (sc_db_site,sc_db_id,sc_type_code)
  )
  ;

  CREATE TABLE segment_num_data (
                    segment_site                        char(16)         NOT NULL,
                    segment_id                          bigint           NOT NULL,
                    sn_db_site                          char(16)         NOT NULL,
                    sn_db_id                            bigint           NOT NULL,
                    sn_type_code                        bigint           NOT NULL,
                    eu_db_site                          char(16)         NOT NULL,
                    eu_db_id                            bigint           NOT NULL,
                    eu_type_code                        bigint           NOT NULL,
                    data_value                          float            NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (segment_site,segment_id,sn_db_site,sn_db_id,sn_type_code)
  )
  ;

  CREATE TABLE segment_chr_data (
                    segment_site                        char(16)         NOT NULL,
                    segment_id                          bigint           NOT NULL,
                    sc_db_site                          char(16)         NOT NULL,
                    sc_db_id                            bigint           NOT NULL,
                    sc_type_code                        bigint           NOT NULL,
                    eu_db_site                          char(16)         NOT NULL,
                    eu_db_id                            bigint           NOT NULL,
                    eu_type_code                        bigint           NOT NULL,
                    data_value                          nvarchar(254)     NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (segment_site,segment_id,sc_db_site,sc_db_id,sc_type_code)
  )
  ;

  CREATE TABLE sg_as_event_type (
                    ev_db_site                          char(16)         NOT NULL,
                    ev_db_id                            bigint           NOT NULL,
                    event_type_code                     bigint           NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (ev_db_site,ev_db_id,event_type_code)
  )
  ;

  CREATE TABLE segment_event (
                    segment_site                        char(16)         NOT NULL,
                    segment_id                          bigint           NOT NULL,
                    ev_db_site                          char(16)         NOT NULL,
                    ev_db_id                            bigint           NOT NULL,
                    event_type_code                     bigint           NOT NULL,
                    gmt_event_start                     datetime(3)         NOT NULL,
                    gmt_event_stop                      datetime(3)         NULL,
                    ev_loc_hr_delta                     smallint         NULL,
                    ev_loc_min_delta                    smallint         NULL,
                    gmt_stored                          datetime(3)         NULL,
                    st_loc_hr_delta                     smallint         NULL,
                    st_loc_min_delta                    smallint         NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (segment_site,segment_id,ev_db_site,ev_db_id,event_type_code,gmt_event_start)
  )
  ;

  CREATE TABLE asset_type (
                    as_db_site                          char(16)         NOT NULL,
                    as_db_id                            bigint           NOT NULL,
                    as_type_code                        bigint           NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NOT NULL,
                    default_mnemonic                    nvarchar(254)     NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (as_db_site,as_db_id,as_type_code)
  )
  ;

  CREATE TABLE asset_type_child (
                    as_db_site                          char(16)         NOT NULL,
                    as_db_id                            bigint           NOT NULL,
                    as_type_code                        bigint           NOT NULL,
                    child_as_db_site                    char(16)         NOT NULL,
                    child_as_db_id                      bigint           NOT NULL,
                    child_as_type_code                  bigint           NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (as_db_site,as_db_id,as_type_code,child_as_db_site,child_as_db_id,child_as_type_code)
  )
  ;

  CREATE TABLE model (
                    model_db_site                       char(16)         NOT NULL,
                    model_db_id                         bigint           NOT NULL,
                    model_id                            bigint           NOT NULL,
                    as_db_site                          char(16)         NOT NULL,
                    as_db_id                            bigint           NOT NULL,
                    as_type_code                        bigint           NOT NULL,
                    mf_db_site                          char(16)         NULL,
                    mf_db_id                            bigint           NULL,
                    manuf_code                          bigint           NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    prod_family                         nvarchar(254)     NULL,
                    prod_family_member                  nvarchar(254)     NULL,
                    prod_family_member_rev              nvarchar(254)     NULL,
                    part_number                         nvarchar(254)     NULL,
                    segment_site                        char(16)         NULL,
                    segment_id                          bigint           NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (model_db_site,model_db_id,model_id)
  )
  ;

  CREATE TABLE model_child (
                    model_db_site                       char(16)         NOT NULL,
                    model_db_id                         bigint           NOT NULL,
                    model_id                            bigint           NOT NULL,
                    child_model_db_site                 char(16)         NOT NULL,
                    child_model_db_id                   bigint           NOT NULL,
                    child_model_id                      bigint           NOT NULL,
                    ordering_seq                        bigint           NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (model_db_site,model_db_id,model_id,child_model_db_site,child_model_db_id,child_model_id)
  )
  ;

  CREATE TABLE as_num_dat_type (
                    an_db_site                          char(16)         NOT NULL,
                    an_db_id                            bigint           NOT NULL,
                    an_type_code                        bigint           NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NOT NULL,
                    default_ru_type                     bigint           NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (an_db_site,an_db_id,an_type_code)
  )
  ;

  CREATE TABLE as_chr_dat_type (
                    ac_db_site                          char(16)         NOT NULL,
                    ac_db_id                            bigint           NOT NULL,
                    ac_type_code                        bigint           NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NOT NULL,
                    default_ru_type                     bigint           NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (ac_db_site,ac_db_id,ac_type_code)
  )
  ;

  CREATE TABLE model_num_data (
                    model_db_site                       char(16)         NOT NULL,
                    model_db_id                         bigint           NOT NULL,
                    model_id                            bigint           NOT NULL,
                    an_db_site                          char(16)         NOT NULL,
                    an_db_id                            bigint           NOT NULL,
                    an_type_code                        bigint           NOT NULL,
                    eu_db_site                          char(16)         NOT NULL,
                    eu_db_id                            bigint           NOT NULL,
                    eu_type_code                        bigint           NOT NULL,
                    data_value                          float            NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (model_db_site,model_db_id,model_id,an_db_site,an_db_id,an_type_code)
  )
  ;

  CREATE TABLE model_chr_data (
                    model_db_site                       char(16)         NOT NULL,
                    model_db_id                         bigint           NOT NULL,
                    model_id                            bigint           NOT NULL,
                    ac_db_site                          char(16)         NOT NULL,
                    ac_db_id                            bigint           NOT NULL,
                    ac_type_code                        bigint           NOT NULL,
                    eu_db_site                          char(16)         NOT NULL,
                    eu_db_id                            bigint           NOT NULL,
                    eu_type_code                        bigint           NOT NULL,
                    data_value                          nvarchar(254)     NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (model_db_site,model_db_id,model_id,ac_db_site,ac_db_id,ac_type_code)
  )
  ;

  CREATE TABLE asset (
                    asset_org_site                      char(16)         NOT NULL,
                    asset_id                            bigint           NOT NULL,
                    as_db_site                          char(16)         NOT NULL,
                    as_db_id                            bigint           NOT NULL,
                    as_type_code                        bigint           NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    long_description                    nvarchar(4000)    NULL,
                    criticality                         bigint           NULL,
                    cs_type_db_site                     char(16)         NULL,
                    cs_type_db_id                       bigint           NULL,
                    cs_type_code                        bigint           NULL,
                    mf_db_site                          char(16)         NULL,
                    mf_db_id                            bigint           NULL,
                    manuf_code                          bigint           NULL,
                    model_db_site                       char(16)         NULL,
                    model_db_id                         bigint           NULL,
                    model_id                            bigint           NULL,
                    serial_number                       nvarchar(254)     NULL,
                    asr_db_site                         char(16)         NULL,
                    asr_db_id                           bigint           NULL,
                    asr_type_code                       bigint           NULL,
                    segment_site                        char(16)         NULL,
                    segment_id                          bigint           NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (asset_org_site,asset_id)
  )
  ;

  CREATE TABLE asset_child (
                    asset_org_site                      char(16)         NOT NULL,
                    asset_id                            bigint           NOT NULL,
                    child_as_site                       char(16)         NOT NULL,
                    child_as_id                         bigint           NOT NULL,
                    ordering_seq                        bigint           NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (asset_org_site,asset_id,child_as_site,child_as_id)
  )
  ;

  CREATE TABLE asset_num_data (
                    asset_org_site                      char(16)         NOT NULL,
                    asset_id                            bigint           NOT NULL,
                    an_db_site                          char(16)         NOT NULL,
                    an_db_id                            bigint           NOT NULL,
                    an_type_code                        bigint           NOT NULL,
                    eu_db_site                          char(16)         NOT NULL,
                    eu_db_id                            bigint           NOT NULL,
                    eu_type_code                        bigint           NOT NULL,
                    data_value                          float            NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (asset_org_site,asset_id,an_db_site,an_db_id,an_type_code)
  )
  ;

  CREATE TABLE asset_chr_data (
                    asset_org_site                      char(16)         NOT NULL,
                    asset_id                            bigint           NOT NULL,
                    ac_db_site                          char(16)         NOT NULL,
                    ac_db_id                            bigint           NOT NULL,
                    ac_type_code                        bigint           NOT NULL,
                    eu_db_site                          char(16)         NOT NULL,
                    eu_db_id                            bigint           NOT NULL,
                    eu_type_code                        bigint           NOT NULL,
                    data_value                          nvarchar(254)     NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (asset_org_site,asset_id,ac_db_site,ac_db_id,ac_type_code)
  )
  ;

  CREATE TABLE asset_event (
                    asset_org_site                      char(16)         NOT NULL,
                    asset_id                            bigint           NOT NULL,
                    ev_db_site                          char(16)         NOT NULL,
                    ev_db_id                            bigint           NOT NULL,
                    event_type_code                     bigint           NOT NULL,
                    gmt_event_start                     datetime(3)         NOT NULL,
                    gmt_event_stop                      datetime(3)         NULL,
                    ev_loc_hr_delta                     smallint         NULL,
                    ev_loc_min_delta                    smallint         NULL,
                    gmt_stored                          datetime(3)         NULL,
                    st_loc_hr_delta                     smallint         NULL,
                    st_loc_min_delta                    smallint         NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (asset_org_site,asset_id,ev_db_site,ev_db_id,event_type_code,gmt_event_start)
  )
  ;

  CREATE TABLE asset_on_segment (
                    asset_org_site                      char(16)         NOT NULL,
                    asset_id                            bigint           NOT NULL,
                    segment_site                        char(16)         NOT NULL,
                    segment_id                          bigint           NOT NULL,
                    gmt_installed                       datetime(3)         NOT NULL,
                    gmt_removed                         datetime(3)         NULL,
                    installed_by_agent_site             char(16)         NULL,
                    installed_by_agent_id               bigint           NULL,
                    removed_by_agent_site               char(16)         NULL,
                    removed_by_agent_id                 bigint           NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (asset_org_site,asset_id,segment_site,segment_id,gmt_installed)
  )
  ;

  CREATE TABLE asset_owner (
                    asset_org_site                      char(16)         NOT NULL,
                    asset_id                            bigint           NOT NULL,
                    gmt_purchased                       datetime(3)         NOT NULL,
                    sold_to_site                        char(16)         NOT NULL,
                    purch_from_site                     char(16)         NULL,
                    pc_db_site                          char(16)         NULL,
                    pc_db_id                            bigint           NULL,
                    pc_type_code                        bigint           NULL,
                    asr_db_site                         char(16)         NULL,
                    asr_db_id                           bigint           NULL,
                    asr_type_code                       bigint           NULL,
                    gmt_sold                            datetime(3)         NULL,
                    gmt_discarded                       datetime(3)         NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (asset_org_site,asset_id,gmt_purchased)
  )
  ;

  CREATE TABLE meas_loc_type (
                    ml_db_site                          char(16)         NOT NULL,
                    ml_db_id                            bigint           NOT NULL,
                    ml_type_code                        bigint           NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (ml_db_site,ml_db_id,ml_type_code)
  )
  ;

  CREATE TABLE data_source_type (
                    ds_db_site                          char(16)         NOT NULL,
                    ds_db_id                            bigint           NOT NULL,
                    ds_type_code                        bigint           NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (ds_db_site,ds_db_id,ds_type_code)
  )
  ;

  CREATE TABLE trans_type (
                    tr_db_site                          char(16)         NOT NULL,
                    tr_db_id                            bigint           NOT NULL,
                    tr_type_code                        bigint           NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (tr_db_site,tr_db_id,tr_type_code)
  )
  ;

  CREATE TABLE tr_axis_dir_type (
                    ta_db_site                          char(16)         NOT NULL,
                    ta_db_id                            bigint           NOT NULL,
                    ta_type_code                        bigint           NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (ta_db_site,ta_db_id,ta_type_code)
  )
  ;

  CREATE TABLE meas_location (
                    meas_loc_site                       char(16)         NOT NULL,
                    meas_loc_id                         bigint           NOT NULL,
                    ml_db_site                          char(16)         NOT NULL,
                    ml_db_id                            bigint           NOT NULL,
                    ml_type_code                        bigint           NOT NULL,
                    segment_or_asset                    char(1)          NOT NULL,
                    segment_site                        char(16)         NULL,
                    segment_id                          bigint           NULL,
                    asset_org_site                      char(16)         NULL,
                    asset_id                            bigint           NULL,
                    ml_eu_db_site                       char(16)         NULL,
                    ml_eu_db_id                         bigint           NULL,
                    ml_eu_type_code                     bigint           NULL,
                    ds_db_site                          char(16)         NULL,
                    ds_db_id                            bigint           NULL,
                    ds_type_code                        bigint           NULL,
                    tr_db_site                          char(16)         NULL,
                    tr_db_id                            bigint           NULL,
                    tr_type_code                        bigint           NULL,
                    ta_orient_deg                       bigint           NULL,
                    ta_db_site                          char(16)         NULL,
                    ta_db_id                            bigint           NULL,
                    ta_type_code                        bigint           NULL,
                    mim_loc_seq                         bigint           NULL,
                    motion_direction                    char(1)          NULL,
                    mim_user_prefix                     nvarchar(254)     NULL,
                    mc_db_site                          char(16)         NULL,
                    mc_db_id                            bigint           NULL,
                    mc_type_code                        bigint           NULL,
                    mc_calc_size                        bigint           NULL,
                    update_interval                     float            NULL,
                    int_eu_db_site                      char(16)         NULL,
                    int_eu_db_id                        bigint           NULL,
                    int_eu_type_code                    bigint           NULL,
                    collect_duration                    float            NULL,
                    dur_eu_db_site                      char(16)         NULL,
                    dur_eu_db_id                        bigint           NULL,
                    dur_eu_type_code                    bigint           NULL,
                    xml_data_type                       nvarchar(254)     NULL,
                    xml_pattern_regex                   nvarchar(254)     NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    barcode                             nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (meas_loc_site,meas_loc_id)
			   ,CHECK (segment_or_asset in ('A','S'))
               ,CHECK (motion_direction in ('N','R'))
                                     )
  ;

  CREATE TABLE ordered_list (
                    ord_list_db_site                    char(16)         NOT NULL,
                    ord_list_db_id                      bigint           NOT NULL,
                    ord_list_id                         bigint           NOT NULL,
                    ord_list_type_db_site               char(16)         NULL,
                    ord_list_type_db_id                 bigint           NULL,
                    ord_list_type_code                  bigint           NULL,
                    name                                nvarchar(254)    NULL,
                    user_tag_ident                      nvarchar(254)    NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (ord_list_db_site,ord_list_db_id,ord_list_id)
  )
  ;

  CREATE TABLE meas_loc_list (
                    ord_list_db_site                    char(16)         NOT NULL,
                    ord_list_db_id                      bigint           NOT NULL,
                    ord_list_id                         bigint           NOT NULL,
                    ordering_seq                        bigint           NOT NULL,
                    meas_loc_site                       char(16)         NOT NULL,
                    meas_loc_id                         bigint           NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (ord_list_db_site,ord_list_db_id,ord_list_id,ordering_seq)
  )
  ;

  CREATE TABLE mloc_unit_list (
                    ord_list_db_site                    char(16)         NOT NULL,
                    ord_list_db_id                      bigint           NOT NULL,
                    ord_list_id                         bigint           NOT NULL,
                    ordering_seq                        bigint           NOT NULL,
                    channel_number                      bigint           NOT NULL,
                    meas_loc_site                       char(16)         NOT NULL,
                    meas_loc_id                         bigint           NOT NULL,
                    eu_db_site                          char(16)         NOT NULL,
                    eu_db_id                            bigint           NOT NULL,
                    eu_type_code                        bigint           NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (ord_list_db_site,ord_list_db_id,ord_list_id,ordering_seq,channel_number)
  )
  ;

  CREATE TABLE data_source (
                    ds_asset_site                       char(16)         NOT NULL,
                    ds_asset_id                         bigint           NOT NULL,
                    ds_db_site                          char(16)         NOT NULL,
                    ds_db_id                            bigint           NOT NULL,
                    ds_type_code                        bigint           NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (ds_asset_site,ds_asset_id)
  )
  ;

  CREATE TABLE transducer (
                    tr_asset_site                       char(16)         NOT NULL,
                    tr_asset_id                         bigint           NOT NULL,
                    tr_db_site                          char(16)         NOT NULL,
                    tr_db_id                            bigint           NOT NULL,
                    tr_type_code                        bigint           NOT NULL,
                    out_eu_db_site                      char(16)         NULL,
                    out_eu_db_id                        bigint           NULL,
                    out_eu_type_code                    bigint           NULL,
                    out_amplitude                       float            NULL,
                    per_eu_db_site                      char(16)         NULL,
                    per_eu_db_id                        bigint           NULL,
                    per_eu_type_code                    bigint           NULL,
                    gmt_last_calib                      datetime(3)         NULL,
                    self_powered_yn                     char(1)          NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (tr_asset_site,tr_asset_id)
     ,CHECK (self_powered_yn in ('Y','N'))
                                     )
  ;

  CREATE TABLE data_qual_type (
                    dqual_type_code                     smallint         NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (dqual_type_code)
  )
  ;

  CREATE TABLE meas_event (
                    meas_loc_site                       char(16)         NOT NULL,
                    meas_loc_id                         bigint           NOT NULL,
                    gmt_event                           datetime(3)         NOT NULL,
                    ev_loc_hr_delta                     smallint         NULL,
                    ev_loc_min_delta                    smallint         NULL,
                    gmt_stored                          datetime(3)         NULL,
                    st_loc_hr_delta                     smallint         NULL,
                    st_loc_min_delta                    smallint         NULL,
                    segment_site                        char(16)         NULL,
                    segment_id                          bigint           NULL,
                    asset_org_site                      char(16)         NULL,
                    asset_id                            bigint           NULL,
                    ds_asset_site                       char(16)         NULL,
                    ds_asset_id                         bigint           NULL,
                    tr_asset_site                       char(16)         NULL,
                    tr_asset_id                         bigint           NULL,
                    dqual_type_code                     smallint         NOT NULL,
                    ml_db_site                          char(16)         NULL,
                    ml_db_id                            bigint           NULL,
                    ml_type_code                        bigint           NULL,
                    mc_db_site                          char(16)         NULL,
                    mc_db_id                            bigint           NULL,
                    mc_type_code                        bigint           NULL,
                    mc_calc_size                        bigint           NULL,
                    collect_duration                    float            NULL,
                    dur_eu_db_site                      char(16)         NULL,
                    dur_eu_db_id                        bigint           NULL,
                    dur_eu_type_code                    bigint           NULL,
                    confid_percent                      smallint         NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (meas_loc_site,meas_loc_id,gmt_event)
  )
  ;

  CREATE TABLE meas_event_assoc (
                    meas_loc_site                       char(16)         NOT NULL,
                    meas_loc_id                         bigint           NOT NULL,
                    gmt_event                           datetime(3)         NOT NULL,
                    related_mloc_site                   char(16)         NOT NULL,
                    related_mloc_id                     bigint           NOT NULL,
                    related_gmt_event                   datetime(3)         NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (related_mloc_site,related_mloc_id,related_gmt_event,meas_loc_site,meas_loc_id,gmt_event)
  )
  ;

  CREATE TABLE meas_event_rem (
                    meas_loc_site                       char(16)         NOT NULL,
                    meas_loc_id                         bigint           NOT NULL,
                    gmt_event                           datetime(3)         NOT NULL,
                    ordering_seq                        bigint           NOT NULL,
                    remark_text                         nvarchar(254)     NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (meas_loc_site,meas_loc_id,gmt_event,ordering_seq)
  )
  ;

  CREATE TABLE mevent_num_data (
                    meas_loc_site                       char(16)         NOT NULL,
                    meas_loc_id                         bigint           NOT NULL,
                    gmt_event                           datetime(3)         NOT NULL,
                    eu_db_site                          char(16)         NOT NULL,
                    eu_db_id                            bigint           NOT NULL,
                    eu_type_code                        bigint           NOT NULL,
                    data_value                          float            NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (meas_loc_site,meas_loc_id,gmt_event,eu_db_site,eu_db_id,eu_type_code)
  )
  ;

  CREATE TABLE mevent_chr_data (
                    meas_loc_site                       char(16)         NOT NULL,
                    meas_loc_id                         bigint           NOT NULL,
                    gmt_event                           datetime(3)         NOT NULL,
                    eu_db_site                          char(16)         NOT NULL,
                    eu_db_id                            bigint           NOT NULL,
                    eu_type_code                        bigint           NOT NULL,
                    data_value                          nvarchar(254)     NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (meas_loc_site,meas_loc_id,gmt_event,eu_db_site,eu_db_id,eu_type_code)
  )
  ;

  CREATE TABLE severity_level_type (
                    severity_lev_db_site                char(16)         NOT NULL,
                    severity_lev_db_id                  bigint           NOT NULL,
                    severity_lev_type_code              bigint           NOT NULL,
                    severity_scale                      bigint           NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (severity_lev_db_site,severity_lev_db_id,severity_lev_type_code)
  )
  ;

  CREATE TABLE alarm_type (
                    al_db_site                          char(16)         NOT NULL,
                    al_db_id                            bigint           NOT NULL,
                    al_type_code                        bigint           NOT NULL,
                    severity_lev_db_site                char(16)         NOT NULL,
                    severity_lev_db_id                  bigint           NOT NULL,
                    severity_lev_type_code              bigint           NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (al_db_site,al_db_id,al_type_code)
  )
  ;

  CREATE TABLE num_alarm_reg (
                    alarm_db_site                       char(16)         NOT NULL,
                    alarm_db_id                         bigint           NOT NULL,
                    meas_loc_site                       char(16)         NOT NULL,
                    meas_loc_id                         bigint           NOT NULL,
                    ordering_seq                        bigint           NOT NULL,
                    ml_db_site                          char(16)         NULL,
                    ml_db_id                            bigint           NULL,
                    ml_type_code                        bigint           NULL,
                    mc_db_site                          char(16)         NULL,
                    mc_db_id                            bigint           NULL,
                    mc_type_code                        bigint           NULL,
                    al_db_site                          char(16)         NOT NULL,
                    al_db_id                            bigint           NOT NULL,
                    al_type_code                        bigint           NOT NULL,
                    eu_db_site                          char(16)         NOT NULL,
                    eu_db_id                            bigint           NOT NULL,
                    eu_type_code                        bigint           NOT NULL,
                    gmt_alarm_start                     datetime(3)         NOT NULL,
                    st_loc_hr_delta                     smallint         NULL,
                    st_loc_min_delta                    smallint         NULL,
                    min_amplitude                       float            NULL,
                    max_amplitude                       float            NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (alarm_db_site,alarm_db_id,meas_loc_site,meas_loc_id,ordering_seq)
  )
  ;

  CREATE TABLE agent_type (
                    agent_db_site                       char(16)         NOT NULL,
                    agent_db_id                         bigint           NOT NULL,
                    agent_type_code                     bigint           NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (agent_db_site,agent_db_id,agent_type_code)
  )
  ;

  CREATE TABLE agent (
                    org_agent_site                      char(16)         NOT NULL,
                    agent_id                            bigint           NOT NULL,
                    agent_db_site                       char(16)         NOT NULL,
                    agent_db_id                         bigint           NOT NULL,
                    agent_type_code                     bigint           NOT NULL,
                    asset_org_site                      char(16)         NULL,
                    asset_id                            bigint           NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (org_agent_site,agent_id)
  )
  ;

  CREATE TABLE src_detect_type (
                    src_dt_db_site                      char(16)         NOT NULL,
                    src_dt_db_id                        bigint           NOT NULL,
                    src_dt_type_code                    bigint           NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (src_dt_db_site,src_dt_db_id,src_dt_type_code)
  )
  ;

  CREATE TABLE post_scaling_type (
                    pst_sc_db_site                      char(16)         NOT NULL,
                    pst_sc_db_id                        bigint           NOT NULL,
                    pst_sc_type_code                    bigint           NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (pst_sc_db_site,pst_sc_db_id,pst_sc_type_code)
  )
  ;

  CREATE TABLE mevent_num_alarm (
                    meas_loc_site                       char(16)         NOT NULL,
                    meas_loc_id                         bigint           NOT NULL,
                    gmt_event                           datetime(3)         NOT NULL,
                    eu_db_site                          char(16)         NOT NULL,
                    eu_db_id                            bigint           NOT NULL,
                    eu_type_code                        bigint           NOT NULL,
                    al_db_site                          char(16)         NOT NULL,
                    al_db_id                            bigint           NOT NULL,
                    al_type_code                        bigint           NOT NULL,
                    gmt_acknowledged                    datetime(3)         NULL,
                    ack_loc_hr_delta                    smallint         NULL,
                    ack_loc_min_delta                   smallint         NULL,
                    org_agent_site                      char(16)         NULL,
                    agent_id                            bigint           NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (meas_loc_site,meas_loc_id,gmt_event,eu_db_site,eu_db_id,eu_type_code,al_db_site,al_db_id,al_type_code)
  )
  ;

  CREATE TABLE num_al_assoc_reg (
                    meas_loc_site                       char(16)         NOT NULL,
                    meas_loc_id                         bigint           NOT NULL,
                    gmt_event                           datetime(3)         NOT NULL,
                    eu_db_site                          char(16)         NOT NULL,
                    eu_db_id                            bigint           NOT NULL,
                    eu_type_code                        bigint           NOT NULL,
                    al_db_site                          char(16)         NOT NULL,
                    al_db_id                            bigint           NOT NULL,
                    al_type_code                        bigint           NOT NULL,
                    alarm_db_site                       char(16)         NOT NULL,
                    alarm_db_id                         bigint           NOT NULL,
                    al_meas_loc_site                    char(16)         NOT NULL,
                    al_meas_loc_id                      bigint           NOT NULL,
                    al_ordering_seq                     bigint           NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (meas_loc_site,meas_loc_id,gmt_event,eu_db_site,eu_db_id,eu_type_code,al_db_site,al_db_id,al_type_code,alarm_db_site,alarm_db_id,al_meas_loc_site,al_meas_loc_id,al_ordering_seq)
  )
  ;

  CREATE TABLE spa_alarm_reg (
                    alarm_db_site                       char(16)         NOT NULL,
                    alarm_db_id                         bigint           NOT NULL,
                    meas_loc_site                       char(16)         NOT NULL,
                    meas_loc_id                         bigint           NOT NULL,
                    ordering_seq                        bigint           NOT NULL,
                    ml_db_site                          char(16)         NULL,
                    ml_db_id                            bigint           NULL,
                    ml_type_code                        bigint           NULL,
                    mc_db_site                          char(16)         NULL,
                    mc_db_id                            bigint           NULL,
                    mc_type_code                        bigint           NULL,
                    al_db_site                          char(16)         NOT NULL,
                    al_db_id                            bigint           NOT NULL,
                    al_type_code                        bigint           NOT NULL,
                    freq_or_order                       char(1)          NOT NULL,
                    min_in_hz_or_ord                    float            NOT NULL,
                    max_in_hz_or_ord                    float            NOT NULL,
                    gmt_alarm_start                     datetime(3)         NOT NULL,
                    st_loc_hr_delta                     smallint         NULL,
                    st_loc_min_delta                    smallint         NULL,
                    eu_db_site                          char(16)         NOT NULL,
                    eu_db_id                            bigint           NOT NULL,
                    eu_type_code                        bigint           NOT NULL,
                    pst_sc_db_site                      char(16)         NOT NULL,
                    pst_sc_db_id                        bigint           NOT NULL,
                    pst_sc_type_code                    bigint           NOT NULL,
                    src_dt_db_site                      char(16)         NULL,
                    src_dt_db_id                        bigint           NULL,
                    src_dt_type_code                    bigint           NULL,
                    min_amplitude                       float            NULL,
                    max_amplitude                       float            NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (alarm_db_site,alarm_db_id,meas_loc_site,meas_loc_id,ordering_seq)
     ,CHECK (freq_or_order in ('F','O'))
                                     )
  ;

  CREATE TABLE signal_proc_type (
                    sp_db_site                          char(16)         NOT NULL,
                    sp_db_id                            bigint           NOT NULL,
                    sp_type_code                        bigint           NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (sp_db_site,sp_db_id,sp_type_code)
  )
  ;

  CREATE TABLE signal_proc_blk (
                    sp_blk_db_site                      char(16)         NOT NULL,
                    sp_blk_db_id                        bigint           NOT NULL,
                    sp_block_id                         bigint           NOT NULL,
                    sp_db_site                          char(16)         NOT NULL,
                    sp_db_id                            bigint           NOT NULL,
                    sp_type_code                        bigint           NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (sp_blk_db_site,sp_blk_db_id,sp_block_id)
  )
  ;

  CREATE TABLE sp_num_dat_type (
                    spn_db_site                         char(16)         NOT NULL,
                    spn_db_id                           bigint           NOT NULL,
                    spn_type_code                       bigint           NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (spn_db_site,spn_db_id,spn_type_code)
  )
  ;

  CREATE TABLE sp_blk_num_data (
                    sp_blk_db_site                      char(16)         NOT NULL,
                    sp_blk_db_id                        bigint           NOT NULL,
                    sp_block_id                         bigint           NOT NULL,
                    spn_db_site                         char(16)         NOT NULL,
                    spn_db_id                           bigint           NOT NULL,
                    spn_type_code                       bigint           NOT NULL,
                    eu_db_site                          char(16)         NOT NULL,
                    eu_db_id                            bigint           NOT NULL,
                    eu_type_code                        bigint           NOT NULL,
                    data_value                          float            NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (sp_blk_db_site,sp_blk_db_id,sp_block_id,spn_db_site,spn_db_id,spn_type_code)
  )
  ;

  CREATE TABLE sp_stream_type (
                    sps_type_db_site                    char(16)         NOT NULL,
                    sps_type_db_id                      bigint           NOT NULL,
                    sps_type_code                       bigint           NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (sps_type_db_site,sps_type_db_id,sps_type_code)
  )
  ;

  CREATE TABLE sp_stream (
                    sp_str_db_site                      char(16)         NOT NULL,
                    sp_str_db_id                        bigint           NOT NULL,
                    sp_stream_id                        bigint           NOT NULL,
                    sps_type_db_site                    char(16)         NOT NULL,
                    sps_type_db_id                      bigint           NOT NULL,
                    sps_type_code                       bigint           NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (sp_str_db_site,sp_str_db_id,sp_stream_id)
  )
  ;

  CREATE TABLE sp_stream_block (
                    sp_str_db_site                      char(16)         NOT NULL,
                    sp_str_db_id                        bigint           NOT NULL,
                    sp_stream_id                        bigint           NOT NULL,
                    sp_blk_db_site                      char(16)         NOT NULL,
                    sp_blk_db_id                        bigint           NOT NULL,
                    sp_block_id                         bigint           NOT NULL,
                    ordering_seq                        bigint           NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (sp_str_db_site,sp_str_db_id,sp_stream_id,sp_blk_db_site,sp_blk_db_id,sp_block_id)
  )
  ;

  CREATE TABLE average_type (
                    ave_db_site                         char(16)         NOT NULL,
                    ave_db_id                           bigint           NOT NULL,
                    ave_type_code                       bigint           NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (ave_db_site,ave_db_id,ave_type_code)
  )
  ;

  CREATE TABLE ave_weight_type (
                    ave_wt_db_site                      char(16)         NOT NULL,
                    ave_wt_db_id                        bigint           NOT NULL,
                    ave_wt_type_code                    bigint           NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (ave_wt_db_site,ave_wt_db_id,ave_wt_type_code)
  )
  ;

  CREATE TABLE ave_synch_type (
                    ave_sy_db_site                      char(16)         NOT NULL,
                    ave_sy_db_id                        bigint           NOT NULL,
                    ave_sy_type_code                    bigint           NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (ave_sy_db_site,ave_sy_db_id,ave_sy_type_code)
  )
  ;

  CREATE TABLE sp_ampl_data (
                    meas_loc_site                       char(16)         NOT NULL,
                    meas_loc_id                         bigint           NOT NULL,
                    gmt_event                           datetime(3)         NOT NULL,
                    ordering_seq                        bigint           NOT NULL,
                    eu_db_site                          char(16)         NOT NULL,
                    eu_db_id                            bigint           NOT NULL,
                    eu_type_code                        bigint           NOT NULL,
                    pst_sc_db_site                      char(16)         NOT NULL,
                    pst_sc_db_id                        bigint           NOT NULL,
                    pst_sc_type_code                    bigint           NOT NULL,
                    freq_or_order                       char(1)          NOT NULL,
                    min_in_hz_or_ord                    float            NOT NULL,
                    max_in_hz_or_ord                    float            NOT NULL,
                    src_dt_db_site                      char(16)         NULL,
                    src_dt_db_id                        bigint           NULL,
                    src_dt_type_code                    bigint           NULL,
                    sp_str_db_site                      char(16)         NULL,
                    sp_str_db_id                        bigint           NULL,
                    sp_stream_id                        bigint           NULL,
                    assoc_rpm_in_hz                     float            NULL,
                    amplitude                           float            NOT NULL,
                    angle_in_degrees                    float            NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (meas_loc_site,meas_loc_id,gmt_event,ordering_seq)
     ,CHECK (freq_or_order in ('F','O'))
                                     )
  ;

  CREATE TABLE sp_ampl_alarm (
                    meas_loc_site                       char(16)         NOT NULL,
                    meas_loc_id                         bigint           NOT NULL,
                    gmt_event                           datetime(3)         NOT NULL,
                    ordering_seq                        bigint           NOT NULL,
                    al_db_site                          char(16)         NOT NULL,
                    al_db_id                            bigint           NOT NULL,
                    al_type_code                        bigint           NOT NULL,
                    gmt_acknowledged                    datetime(3)         NULL,
                    ack_loc_hr_delta                    smallint         NULL,
                    ack_loc_min_delta                   smallint         NULL,
                    org_agent_site                      char(16)         NULL,
                    agent_id                            bigint           NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (meas_loc_site,meas_loc_id,gmt_event,ordering_seq,al_db_site,al_db_id,al_type_code)
  )
  ;

  CREATE TABLE spa_al_assoc_reg (
                    meas_loc_site                       char(16)         NOT NULL,
                    meas_loc_id                         bigint           NOT NULL,
                    gmt_event                           datetime(3)         NOT NULL,
                    ordering_seq                        bigint           NOT NULL,
                    al_db_site                          char(16)         NOT NULL,
                    al_db_id                            bigint           NOT NULL,
                    al_type_code                        bigint           NOT NULL,
                    alarm_db_site                       char(16)         NOT NULL,
                    alarm_db_id                         bigint           NOT NULL,
                    al_meas_loc_site                    char(16)         NOT NULL,
                    al_meas_loc_id                      bigint           NOT NULL,
                    al_ordering_seq                     bigint           NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (meas_loc_site,meas_loc_id,gmt_event,ordering_seq,al_db_site,al_db_id,al_type_code,alarm_db_site,alarm_db_id,al_meas_loc_site,al_meas_loc_id,al_ordering_seq)
  )
  ;

  CREATE TABLE window_type (
                    win_db_site                         char(16)         NOT NULL,
                    win_db_id                           bigint           NOT NULL,
                    win_type_code                       bigint           NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NOT NULL,
                    pf_multiplier                       float            NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (win_db_site,win_db_id,win_type_code)
  )
  ;

  CREATE TABLE sp_fft_data (
                    meas_loc_site                       char(16)         NOT NULL,
                    meas_loc_id                         bigint           NOT NULL,
                    gmt_event                           datetime(3)         NOT NULL,
                    ordering_seq                        bigint           NOT NULL,
                    eu_db_site                          char(16)         NOT NULL,
                    eu_db_id                            bigint           NOT NULL,
                    eu_type_code                        bigint           NOT NULL,
                    pst_sc_db_site                      char(16)         NOT NULL,
                    pst_sc_db_id                        bigint           NOT NULL,
                    pst_sc_type_code                    bigint           NOT NULL,
                    freq_or_order                       char(1)          NOT NULL,
                    min_in_hz_or_ord                    float            NOT NULL,
                    max_in_hz_or_ord                    float            NOT NULL,
                    resolution_lines                    bigint           NOT NULL,
                    win_db_site                         char(16)         NOT NULL,
                    win_db_id                           bigint           NOT NULL,
                    win_type_code                       bigint           NOT NULL,
                    ave_db_site                         char(16)         NULL,
                    ave_db_id                           bigint           NULL,
                    ave_type_code                       bigint           NULL,
                    ave_wt_db_site                      char(16)         NULL,
                    ave_wt_db_id                        bigint           NULL,
                    ave_wt_type_code                    bigint           NULL,
                    ave_sy_db_site                      char(16)         NULL,
                    ave_sy_db_id                        bigint           NULL,
                    ave_sy_type_code                    bigint           NULL,
                    ave_overlap_pct                     float            NULL,
                    num_of_averages                     bigint           NULL,
                    sp_str_db_site                      char(16)         NULL,
                    sp_str_db_id                        bigint           NULL,
                    sp_stream_id                        bigint           NULL,
                    assoc_rpm_in_hz                     float            NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    dc_level                            float            NULL,
                    complex_yn                          char(1)          NOT NULL,
                    spectrum_data                       longblob            NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (meas_loc_site,meas_loc_id,gmt_event,ordering_seq)
     ,CHECK (freq_or_order in ('F','O'))
                                        ,CHECK (complex_yn in ('Y','N'))
                                     )
  ;

  CREATE TABLE sp_time_data (
                    meas_loc_site                       char(16)         NOT NULL,
                    meas_loc_id                         bigint           NOT NULL,
                    gmt_event                           datetime(3)         NOT NULL,
                    ordering_seq                        bigint           NOT NULL,
                    eu_db_site                          char(16)         NOT NULL,
                    eu_db_id                            bigint           NOT NULL,
                    eu_type_code                        bigint           NOT NULL,
                    secs_or_revs                        char(1)          NOT NULL,
                    off_secs_or_revs                    float            NOT NULL,
                    max_secs_or_revs                    float            NOT NULL,
                    number_of_samples                   float            NOT NULL,
                    win_db_site                         char(16)         NOT NULL,
                    win_db_id                           bigint           NOT NULL,
                    win_type_code                       bigint           NOT NULL,
                    ave_db_site                         char(16)         NULL,
                    ave_db_id                           bigint           NULL,
                    ave_type_code                       bigint           NULL,
                    ave_wt_db_site                      char(16)         NULL,
                    ave_wt_db_id                        bigint           NULL,
                    ave_wt_type_code                    bigint           NULL,
                    ave_sy_db_site                      char(16)         NULL,
                    ave_sy_db_id                        bigint           NULL,
                    ave_sy_type_code                    bigint           NULL,
                    ave_overlap_pct                     float            NULL,
                    num_of_averages                     bigint           NULL,
                    sp_str_db_site                      char(16)         NULL,
                    sp_str_db_id                        bigint           NULL,
                    sp_stream_id                        bigint           NULL,
                    assoc_rpm_in_hz                     float            NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    complex_yn                          char(1)          NOT NULL,
                    waveform_data                       longblob            NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (meas_loc_site,meas_loc_id,gmt_event,ordering_seq)
     ,CHECK (secs_or_revs in ('S','R'))
                                        ,CHECK (complex_yn in ('Y','N'))
                                     )
  ;

  CREATE TABLE sp_cpb_data (
                    meas_loc_site                       char(16)         NOT NULL,
                    meas_loc_id                         bigint           NOT NULL,
                    gmt_event                           datetime(3)         NOT NULL,
                    ordering_seq                        bigint           NOT NULL,
                    eu_db_site                          char(16)         NOT NULL,
                    eu_db_id                            bigint           NOT NULL,
                    eu_type_code                        bigint           NOT NULL,
                    pst_sc_db_site                      char(16)         NOT NULL,
                    pst_sc_db_id                        bigint           NOT NULL,
                    pst_sc_type_code                    bigint           NOT NULL,
                    number_of_bands                     bigint           NOT NULL,
                    center_in_hz_1bd                    float            NOT NULL,
                    width_pct_or_oct                    char(1)          NOT NULL,
                    band_width                          float            NOT NULL,
                    ave_db_site                         char(16)         NULL,
                    ave_db_id                           bigint           NULL,
                    ave_type_code                       bigint           NULL,
                    ave_wt_db_site                      char(16)         NULL,
                    ave_wt_db_id                        bigint           NULL,
                    ave_wt_type_code                    bigint           NULL,
                    ave_sy_db_site                      char(16)         NULL,
                    ave_sy_db_id                        bigint           NULL,
                    ave_sy_type_code                    bigint           NULL,
                    ave_overlap_pct                     float            NULL,
                    num_of_averages                     bigint           NULL,
                    sp_str_db_site                      char(16)         NULL,
                    sp_str_db_id                        bigint           NULL,
                    sp_stream_id                        bigint           NULL,
                    assoc_rpm_in_hz                     float            NULL,
                    name                                nvarchar(254)     NULL,
                    spectrum_data                       longblob            NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (meas_loc_site,meas_loc_id,gmt_event,ordering_seq)
     ,CHECK (width_pct_or_oct in ('P','O'))
                                     )
  ;

  CREATE TABLE sp_ampl_setup (
                    spa_setup_db_site                   char(16)         NOT NULL,
                    spa_setup_db_id                     bigint           NOT NULL,
                    spa_setup_id                        bigint           NOT NULL,
                    pst_sc_db_site                      char(16)         NOT NULL,
                    pst_sc_db_id                        bigint           NOT NULL,
                    pst_sc_type_code                    bigint           NOT NULL,
                    freq_or_order                       char(1)          NOT NULL,
                    min_in_hz_or_ord                    float            NOT NULL,
                    max_in_hz_or_ord                    float            NOT NULL,
                    src_dt_db_site                      char(16)         NULL,
                    src_dt_db_id                        bigint           NULL,
                    src_dt_type_code                    bigint           NULL,
                    sp_str_db_site                      char(16)         NULL,
                    sp_str_db_id                        bigint           NULL,
                    sp_stream_id                        bigint           NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (spa_setup_db_site,spa_setup_db_id,spa_setup_id)
     ,CHECK (freq_or_order in ('F','O'))
                                     )
  ;

  CREATE TABLE sp_fft_setup (
                    spf_setup_db_site                   char(16)         NOT NULL,
                    spf_setup_db_id                     bigint           NOT NULL,
                    spf_setup_id                        bigint           NOT NULL,
                    pst_sc_db_site                      char(16)         NOT NULL,
                    pst_sc_db_id                        bigint           NOT NULL,
                    pst_sc_type_code                    bigint           NOT NULL,
                    freq_or_order                       char(1)          NOT NULL,
                    min_in_hz_or_ord                    float            NOT NULL,
                    max_in_hz_or_ord                    float            NOT NULL,
                    resolution_lines                    bigint           NOT NULL,
                    win_db_site                         char(16)         NOT NULL,
                    win_db_id                           bigint           NOT NULL,
                    win_type_code                       bigint           NOT NULL,
                    ave_db_site                         char(16)         NULL,
                    ave_db_id                           bigint           NULL,
                    ave_type_code                       bigint           NULL,
                    ave_wt_db_site                      char(16)         NULL,
                    ave_wt_db_id                        bigint           NULL,
                    ave_wt_type_code                    bigint           NULL,
                    ave_sy_db_site                      char(16)         NULL,
                    ave_sy_db_id                        bigint           NULL,
                    ave_sy_type_code                    bigint           NULL,
                    ave_overlap_pct                     float            NULL,
                    num_of_averages                     bigint           NULL,
                    sp_str_db_site                      char(16)         NULL,
                    sp_str_db_id                        bigint           NULL,
                    sp_stream_id                        bigint           NULL,
                    complex_yn                          char(1)          NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (spf_setup_db_site,spf_setup_db_id,spf_setup_id)
     ,CHECK (freq_or_order in ('F','O'))
                                        ,CHECK (complex_yn in ('Y','N'))
                                     )
  ;

  CREATE TABLE sp_time_setup (
                    spt_setup_db_site                   char(16)         NOT NULL,
                    spt_setup_db_id                     bigint           NOT NULL,
                    spt_setup_id                        bigint           NOT NULL,
                    secs_or_revs                        char(1)          NOT NULL,
                    off_secs_or_revs                    float            NOT NULL,
                    max_secs_or_revs                    float            NOT NULL,
                    number_of_samples                   float            NOT NULL,
                    win_db_site                         char(16)         NOT NULL,
                    win_db_id                           bigint           NOT NULL,
                    win_type_code                       bigint           NOT NULL,
                    ave_db_site                         char(16)         NULL,
                    ave_db_id                           bigint           NULL,
                    ave_type_code                       bigint           NULL,
                    ave_wt_db_site                      char(16)         NULL,
                    ave_wt_db_id                        bigint           NULL,
                    ave_wt_type_code                    bigint           NULL,
                    ave_sy_db_site                      char(16)         NULL,
                    ave_sy_db_id                        bigint           NULL,
                    ave_sy_type_code                    bigint           NULL,
                    ave_overlap_pct                     float            NULL,
                    num_of_averages                     bigint           NULL,
                    sp_str_db_site                      char(16)         NULL,
                    sp_str_db_id                        bigint           NULL,
                    sp_stream_id                        bigint           NULL,
                    complex_yn                          char(1)          NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (spt_setup_db_site,spt_setup_db_id,spt_setup_id)
     ,CHECK (secs_or_revs in ('S','R'))
                                        ,CHECK (complex_yn in ('Y','N'))
                                     )
  ;

  CREATE TABLE sp_cpb_setup (
                    spc_setup_db_site                   char(16)         NOT NULL,
                    spc_setup_db_id                     bigint           NOT NULL,
                    spc_setup_id                        bigint           NOT NULL,
                    pst_sc_db_site                      char(16)         NOT NULL,
                    pst_sc_db_id                        bigint           NOT NULL,
                    pst_sc_type_code                    bigint           NOT NULL,
                    number_of_bands                     bigint           NOT NULL,
                    center_in_hz_1bd                    float            NOT NULL,
                    width_pct_or_oct                    char(1)          NOT NULL,
                    band_width                          float            NOT NULL,
                    ave_db_site                         char(16)         NULL,
                    ave_db_id                           bigint           NULL,
                    ave_type_code                       bigint           NULL,
                    ave_wt_db_site                      char(16)         NULL,
                    ave_wt_db_id                        bigint           NULL,
                    ave_wt_type_code                    bigint           NULL,
                    ave_sy_db_site                      char(16)         NULL,
                    ave_sy_db_id                        bigint           NULL,
                    ave_sy_type_code                    bigint           NULL,
                    ave_overlap_pct                     float            NULL,
                    num_of_averages                     bigint           NULL,
                    sp_str_db_site                      char(16)         NULL,
                    sp_str_db_id                        bigint           NULL,
                    sp_stream_id                        bigint           NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (spc_setup_db_site,spc_setup_db_id,spc_setup_id)
     ,CHECK (width_pct_or_oct in ('P','O'))
                                     )
  ;

  CREATE TABLE mloc_ulist_sp_ampl (
                    ord_list_db_site                    char(16)         NOT NULL,
                    ord_list_db_id                      bigint           NOT NULL,
                    ord_list_id                         bigint           NOT NULL,
                    ordering_seq                        bigint           NOT NULL,
                    channel_number                      bigint           NOT NULL,
                    spa_setup_db_site                   char(16)         NOT NULL,
                    spa_setup_db_id                     bigint           NOT NULL,
                    spa_setup_id                        bigint           NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (ord_list_db_site,ord_list_db_id,ord_list_id,ordering_seq,channel_number,spa_setup_db_site,spa_setup_db_id,spa_setup_id)
  )
  ;

  CREATE TABLE mloc_ulist_sp_fft (
                    ord_list_db_site                    char(16)         NOT NULL,
                    ord_list_db_id                      bigint           NOT NULL,
                    ord_list_id                         bigint           NOT NULL,
                    ordering_seq                        bigint           NOT NULL,
                    channel_number                      bigint           NOT NULL,
                    spf_setup_db_site                   char(16)         NOT NULL,
                    spf_setup_db_id                     bigint           NOT NULL,
                    spf_setup_id                        bigint           NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (ord_list_db_site,ord_list_db_id,ord_list_id,ordering_seq,channel_number,spf_setup_db_site,spf_setup_db_id,spf_setup_id)
  )
  ;

  CREATE TABLE mloc_ulist_sp_time (
                    ord_list_db_site                    char(16)         NOT NULL,
                    ord_list_db_id                      bigint           NOT NULL,
                    ord_list_id                         bigint           NOT NULL,
                    ordering_seq                        bigint           NOT NULL,
                    channel_number                      bigint           NOT NULL,
                    spt_setup_db_site                   char(16)         NOT NULL,
                    spt_setup_db_id                     bigint           NOT NULL,
                    spt_setup_id                        bigint           NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (ord_list_db_site,ord_list_db_id,ord_list_id,ordering_seq,channel_number,spt_setup_db_site,spt_setup_db_id,spt_setup_id)
  )
  ;

  CREATE TABLE mloc_ulist_sp_cpb (
                    ord_list_db_site                    char(16)         NOT NULL,
                    ord_list_db_id                      bigint           NOT NULL,
                    ord_list_id                         bigint           NOT NULL,
                    ordering_seq                        bigint           NOT NULL,
                    channel_number                      bigint           NOT NULL,
                    spc_setup_db_site                   char(16)         NOT NULL,
                    spc_setup_db_id                     bigint           NOT NULL,
                    spc_setup_id                        bigint           NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (ord_list_db_site,ord_list_db_id,ord_list_id,ordering_seq,channel_number,spc_setup_db_site,spc_setup_db_id,spc_setup_id)
  )
  ;

  CREATE TABLE mim_tech_type (
                    tech_type_code                      bigint           NOT NULL,
                    name                                nvarchar(254)     NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (tech_type_code)
  )
  ;

  CREATE TABLE mim_support_type (
                    supp_type_code                      bigint           NOT NULL,
                    name                                nvarchar(254)     NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (supp_type_code)
  )
  ;

  CREATE TABLE mim_data_cat_type (
                    dcat_type_code                      bigint           NOT NULL,
                    name                                nvarchar(254)     NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (dcat_type_code)
  )
  ;

  CREATE TABLE mim_func_type (
                    func_type_code                      bigint           NOT NULL,
                    name                                nvarchar(254)     NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (func_type_code)
  )
  ;

  CREATE TABLE mim_access_type (
                    acc_type_code                       bigint           NOT NULL,
                    name                                nvarchar(254)     NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (acc_type_code)
  )
  ;

  CREATE TABLE mim_interface_type (
                    interf_type_code                    bigint           NOT NULL,
                    dcat_type_code                      bigint           NOT NULL,
                    supp_type_code                      bigint           NOT NULL,
                    func_type_code                      bigint           NOT NULL,
                    tech_type_code                      bigint           NOT NULL,
                    acc_type_code                       bigint           NOT NULL,
                    support_level                       smallint         NOT NULL,
                    version_supported                   smallint         NOT NULL,
                    subversion_supp                     smallint         NOT NULL,
                    name                                nvarchar(254)     NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (interf_type_code)
  )
  ;

  CREATE TABLE network_type (
                    nt_db_site                          char(16)         NOT NULL,
                    nt_db_id                            bigint           NOT NULL,
                    nt_type_code                        bigint           NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (nt_db_site,nt_db_id,nt_type_code)
  )
  ;

  CREATE TABLE event_type_child (
                    ev_db_site                          char(16)         NOT NULL,
                    ev_db_id                            bigint           NOT NULL,
                    event_type_code                     bigint           NOT NULL,
                    child_ev_db_site                    char(16)         NOT NULL,
                    child_ev_db_id                      bigint           NOT NULL,
                    child_ev_type_code                  bigint           NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (ev_db_site,ev_db_id,event_type_code,child_ev_db_site,child_ev_db_id,child_ev_type_code)
  )
  ;

  CREATE TABLE sample_test_type (
                    stt_db_site                         char(16)         NOT NULL,
                    stt_db_id                           bigint           NOT NULL,
                    stt_code                            bigint           NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (stt_db_site,stt_db_id,stt_code)
  )
  ;

  CREATE TABLE sample_ndata_type (
                    snum_db_site                        char(16)         NOT NULL,
                    snum_db_id                          bigint           NOT NULL,
                    snum_type_code                      bigint           NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (snum_db_site,snum_db_id,snum_type_code)
  )
  ;

  CREATE TABLE sample_cdata_type (
                    schr_db_site                        char(16)         NOT NULL,
                    schr_db_id                          bigint           NOT NULL,
                    schr_type_code                      bigint           NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (schr_db_site,schr_db_id,schr_type_code)
  )
  ;

  CREATE TABLE test_result_ntype (
                    strn_db_site                        char(16)         NOT NULL,
                    strn_db_id                          bigint           NOT NULL,
                    str_num_type_code                   bigint           NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (strn_db_site,strn_db_id,str_num_type_code)
  )
  ;

  CREATE TABLE test_result_ctype (
                    strc_db_site                        char(16)         NOT NULL,
                    strc_db_id                          bigint           NOT NULL,
                    str_chr_type_code                   bigint           NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (strc_db_site,strc_db_id,str_chr_type_code)
  )
  ;

  CREATE TABLE test_result_btype (
                    strb_db_site                        char(16)         NOT NULL,
                    strb_db_id                          bigint           NOT NULL,
                    str_blob_type_code                  bigint           NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (strb_db_site,strb_db_id,str_blob_type_code)
  )
  ;

  CREATE TABLE blob_data_type (
                    bd_db_site                          char(16)         NOT NULL,
                    bd_db_id                            bigint           NOT NULL,
                    bd_type_code                        bigint           NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (bd_db_site,bd_db_id,bd_type_code)
  )
  ;

  CREATE TABLE blob_content_type (
                    blct_db_site                        char(16)         NOT NULL,
                    blct_db_id                          bigint           NOT NULL,
                    blc_type_code                       bigint           NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (blct_db_site,blct_db_id,blc_type_code)
  )
  ;

  CREATE TABLE mevent_blob_type (
                    mebt_db_site                        char(16)         NOT NULL,
                    mebt_db_id                          bigint           NOT NULL,
                    meb_type_code                       bigint           NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (mebt_db_site,mebt_db_id,meb_type_code)
  )
  ;

  CREATE TABLE highlight_type (
                    high_db_site                        char(16)         NOT NULL,
                    high_db_id                          bigint           NOT NULL,
                    high_type_code                      bigint           NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (high_db_site,high_db_id,high_type_code)
  )
  ;

  CREATE TABLE agent_role_type (
                    ag_role_db_site                     char(16)         NOT NULL,
                    ag_role_db_id                       bigint           NOT NULL,
                    ag_role_type_code                   bigint           NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (ag_role_db_site,ag_role_db_id,ag_role_type_code)
  )
  ;

  CREATE TABLE ev_num_data_type (
                    en_db_site                          char(16)         NOT NULL,
                    en_db_id                            bigint           NOT NULL,
                    en_type_code                        bigint           NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (en_db_site,en_db_id,en_type_code)
  )
  ;

  CREATE TABLE health_level_type (
                    health_lev_db_site                  char(16)         NOT NULL,
                    health_lev_db_id                    bigint           NOT NULL,
                    health_lev_type_code                bigint           NOT NULL,
                    health_scale                        bigint           NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (health_lev_db_site,health_lev_db_id,health_lev_type_code)
  )
  ;

  CREATE TABLE priority_level_type (
                    priority_lev_db_site                char(16)         NOT NULL,
                    priority_lev_db_id                  bigint           NOT NULL,
                    priority_lev_type_code              bigint           NOT NULL,
                    priority_scale                      bigint           NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (priority_lev_db_site,priority_lev_db_id,priority_lev_type_code)
  )
  ;

  CREATE TABLE work_manage_type (
                    wm_type_db_site                     char(16)         NOT NULL,
                    wm_type_db_id                       bigint           NOT NULL,
                    wm_type_code                        bigint           NOT NULL,
                    work_item_db_site					char(16)		 NULL,
                    work_item_db_id						bigint			 NULL,
                    work_item_type_code					bigint			  NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (wm_type_db_site,wm_type_db_id,wm_type_code)
  )
  ;

  CREATE TABLE work_task_type (
                    task_db_site                        char(16)         NOT NULL,
                    task_db_id                          bigint           NOT NULL,
                    task_type_code                      bigint           NOT NULL,
                    wm_type_db_site                     char(16)         NULL,
                    wm_type_db_id                       bigint           NULL,
                    wm_type_code                        bigint           NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (task_db_site,task_db_id,task_type_code)
  )
  ;

  CREATE TABLE wtask_type_child (
                    task_db_site                        char(16)         NOT NULL,
                    task_db_id                          bigint           NOT NULL,
                    task_type_code                      bigint           NOT NULL,
                    child_tk_db_site                    char(16)         NOT NULL,
                    child_tk_db_id                      bigint           NOT NULL,
                    child_tk_type_code                  bigint           NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (task_db_site,task_db_id,task_type_code,child_tk_db_site,child_tk_db_id,child_tk_type_code)
  )
  ;

  CREATE TABLE change_patt_type (
                    ch_patt_db_site                     char(16)         NOT NULL,
                    ch_patt_db_id                       bigint           NOT NULL,
                    ch_patt_type_code                   bigint           NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (ch_patt_db_site,ch_patt_db_id,ch_patt_type_code)
  )
  ;

  CREATE TABLE work_audit_type (
                    waudit_db_site                      char(16)         NOT NULL,
                    waudit_db_id                        bigint           NOT NULL,
                    waudit_type_code                    bigint           NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (waudit_db_site,waudit_db_id,waudit_type_code)
  )
  ;

  CREATE TABLE work_num_data_type (
                    wn_db_site                          char(16)         NOT NULL,
                    wn_db_id                            bigint           NOT NULL,
                    wn_type_code                        bigint           NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (wn_db_site,wn_db_id,wn_type_code)
  )
  ;

  CREATE TABLE work_chr_data_type (
                    wc_db_site                          char(16)         NOT NULL,
                    wc_db_id                            bigint           NOT NULL,
                    wc_type_code                        bigint           NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (wc_db_site,wc_db_id,wc_type_code)
  )
  ;

  CREATE TABLE solution_pack_type (
                    sol_db_site                         char(16)         NOT NULL,
                    sol_db_id                           bigint           NOT NULL,
                    sol_type_code                       bigint           NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (sol_db_site,sol_db_id,sol_type_code)
  )
  ;

  CREATE TABLE network (
                    network_db_site                     char(16)         NOT NULL,
                    network_db_id                       bigint           NOT NULL,
                    network_id                          bigint           NOT NULL,
                    nt_db_site                          char(16)         NOT NULL,
                    nt_db_id                            bigint           NOT NULL,
                    nt_type_code                        bigint           NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (network_db_site,network_db_id,network_id)
  )
  ;

  CREATE TABLE sg_network_connect (
                    network_db_site                     char(16)         NOT NULL,
                    network_db_id                       bigint           NOT NULL,
                    network_id                          bigint           NOT NULL,
                    segment_site                        char(16)         NOT NULL,
                    segment_id                          bigint           NOT NULL,
                    output_sg_site                      char(16)         NOT NULL,
                    output_sg_id                        bigint           NOT NULL,
                    ordering_seq                        bigint           NOT NULL,
                    net_conn_type_db_site               char(16)         NULL,
                    net_conn_type_db_id                 bigint           NULL,
                    net_conn_type_code                  bigint           NULL,
                    gmt_stream_config                   datetime(3)         NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (network_db_site,network_db_id,network_id,segment_site,segment_id,output_sg_site,output_sg_id,ordering_seq)
  )
  ;

  CREATE TABLE as_network_connect (
                    network_db_site                     char(16)         NOT NULL,
                    network_db_id                       bigint           NOT NULL,
                    network_id                          bigint           NOT NULL,
                    asset_org_site                      char(16)         NOT NULL,
                    asset_id                            bigint           NOT NULL,
                    output_as_site                      char(16)         NOT NULL,
                    output_as_id                        bigint           NOT NULL,
                    ordering_seq                        bigint           NOT NULL,
                    net_conn_type_db_site               char(16)         NULL,
                    net_conn_type_db_id                 bigint           NULL,
                    net_conn_type_code                  bigint           NULL,
                    gmt_stream_config                   datetime(3)         NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (network_db_site,network_db_id,network_id,asset_org_site,asset_id,output_as_site,output_as_id,ordering_seq)
  )
  ;

  CREATE TABLE agent_role (
                    org_agent_site                      char(16)         NOT NULL,
                    agent_id                            bigint           NOT NULL,
                    ag_role_db_site                     char(16)         NOT NULL,
                    ag_role_db_id                       bigint           NOT NULL,
                    ag_role_type_code                   bigint           NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (org_agent_site,agent_id,ag_role_db_site,ag_role_db_id,ag_role_type_code)
  )
  ;

  CREATE TABLE agent_role_with_agent (
                    org_agent_site                      char(16)         NOT NULL,
                    agent_id                            bigint           NOT NULL,
                    ag_role_db_site                     char(16)         NOT NULL,
                    ag_role_db_id                       bigint           NOT NULL,
                    ag_role_type_code                   bigint           NOT NULL,
                    other_org_agent_site                char(16)         NOT NULL,
                    other_agent_id                      bigint           NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (org_agent_site,agent_id,ag_role_db_site,ag_role_db_id,ag_role_type_code,other_org_agent_site,other_agent_id)
  )
  ;

  CREATE TABLE mloc_test_alrm_rg (
                    alarm_db_site                       char(16)         NOT NULL,
                    alarm_db_id                         bigint           NOT NULL,
                    meas_loc_site                       char(16)         NOT NULL,
                    meas_loc_id                         bigint           NOT NULL,
                    ordering_seq                        bigint           NOT NULL,
                    ml_db_site                          char(16)         NULL,
                    ml_db_id                            bigint           NULL,
                    ml_type_code                        bigint           NULL,
                    mc_db_site                          char(16)         NULL,
                    mc_db_id                            bigint           NULL,
                    mc_type_code                        bigint           NULL,
                    stt_db_site                         char(16)         NOT NULL,
                    stt_db_id                           bigint           NOT NULL,
                    stt_code                            bigint           NOT NULL,
                    al_db_site                          char(16)         NOT NULL,
                    al_db_id                            bigint           NOT NULL,
                    al_type_code                        bigint           NOT NULL,
                    strn_db_site                        char(16)         NOT NULL,
                    strn_db_id                          bigint           NOT NULL,
                    str_num_type_code                   bigint           NOT NULL,
                    eu_db_site                          char(16)         NOT NULL,
                    eu_db_id                            bigint           NOT NULL,
                    eu_type_code                        bigint           NOT NULL,
                    gmt_alarm_start                     datetime(3)         NOT NULL,
                    st_loc_hr_delta                     smallint         NULL,
                    st_loc_min_delta                    smallint         NULL,
                    min_data_value                      float            NOT NULL,
                    max_data_value                      float            NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (alarm_db_site,alarm_db_id,meas_loc_site,meas_loc_id,ordering_seq)
  )
  ;

  CREATE TABLE meas_sample (
                    meas_loc_site                       char(16)         NOT NULL,
                    meas_loc_id                         bigint           NOT NULL,
                    gmt_event                           datetime(3)         NOT NULL,
                    sample_order_seq                    bigint           NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    by_agent_site                       char(16)         NULL,
                    by_agent_id                         bigint           NULL,
                    name                                nvarchar(254)     NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (meas_loc_site,meas_loc_id,gmt_event,sample_order_seq)
  )
  ;

  CREATE TABLE meas_sample_child (
                    meas_loc_site                       char(16)         NOT NULL,
                    meas_loc_id                         bigint           NOT NULL,
                    gmt_event                           datetime(3)         NOT NULL,
                    sample_order_seq                    bigint           NOT NULL,
                    child_mloc_site                     char(16)         NOT NULL,
                    child_mloc_id                       bigint           NOT NULL,
                    child_gmt_event                     datetime(3)         NOT NULL,
                    child_sam_ord_seq                   bigint           NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (meas_loc_site,meas_loc_id,gmt_event,sample_order_seq,child_mloc_site,child_mloc_id,child_gmt_event,child_sam_ord_seq)
  )
  ;

  CREATE TABLE sample_num_data (
                    meas_loc_site                       char(16)         NOT NULL,
                    meas_loc_id                         bigint           NOT NULL,
                    gmt_event                           datetime(3)         NOT NULL,
                    sample_order_seq                    bigint           NOT NULL,
                    snum_db_site                        char(16)         NOT NULL,
                    snum_db_id                          bigint           NOT NULL,
                    snum_type_code                      bigint           NOT NULL,
                    eu_db_site                          char(16)         NOT NULL,
                    eu_db_id                            bigint           NOT NULL,
                    eu_type_code                        bigint           NOT NULL,
                    data_value                          float            NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (meas_loc_site,meas_loc_id,gmt_event,sample_order_seq,snum_db_site,snum_db_id,snum_type_code)
  )
  ;

  CREATE TABLE sample_chr_data (
                    meas_loc_site                       char(16)         NOT NULL,
                    meas_loc_id                         bigint           NOT NULL,
                    gmt_event                           datetime(3)         NOT NULL,
                    sample_order_seq                    bigint           NOT NULL,
                    schr_db_site                        char(16)         NOT NULL,
                    schr_db_id                          bigint           NOT NULL,
                    schr_type_code                      bigint           NOT NULL,
                    eu_db_site                          char(16)         NOT NULL,
                    eu_db_id                            bigint           NOT NULL,
                    eu_type_code                        bigint           NOT NULL,
                    data_value                          nvarchar(254)     NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (meas_loc_site,meas_loc_id,gmt_event,sample_order_seq,schr_db_site,schr_db_id,schr_type_code)
  )
  ;

  CREATE TABLE sample_remark (
                    meas_loc_site                       char(16)         NOT NULL,
                    meas_loc_id                         bigint           NOT NULL,
                    gmt_event                           datetime(3)         NOT NULL,
                    sample_order_seq                    bigint           NOT NULL,
                    ordering_seq                        bigint           NOT NULL,
                    remark_text                         nvarchar(254)     NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (meas_loc_site,meas_loc_id,gmt_event,sample_order_seq,ordering_seq)
  )
  ;

  CREATE TABLE meas_sample_test (
                    meas_loc_site                       char(16)         NOT NULL,
                    meas_loc_id                         bigint           NOT NULL,
                    gmt_event                           datetime(3)         NOT NULL,
                    sample_order_seq                    bigint           NOT NULL,
                    test_order_seq                      bigint           NOT NULL,
                    stt_db_site                         char(16)         NOT NULL,
                    stt_db_id                           bigint           NOT NULL,
                    stt_code                            bigint           NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    by_agent_site                       char(16)         NOT NULL,
                    by_agent_id                         bigint           NOT NULL,
                    test_asset_site                     char(16)         NULL,
                    test_asset_id                       bigint           NULL,
                    gmt_started                         datetime(3)         NULL,
                    st_loc_hr_delta                     smallint         NULL,
                    st_loc_min_delta                    smallint         NULL,
                    gmt_ended                           datetime(3)         NULL,
                    end_loc_hr_delta                    smallint         NULL,
                    end_loc_min_delta                   smallint         NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (meas_loc_site,meas_loc_id,gmt_event,sample_order_seq,test_order_seq)
  )
  ;

  CREATE TABLE test_num_results (
                    meas_loc_site                       char(16)         NOT NULL,
                    meas_loc_id                         bigint           NOT NULL,
                    gmt_event                           datetime(3)         NOT NULL,
                    sample_order_seq                    bigint           NOT NULL,
                    test_order_seq                      bigint           NOT NULL,
                    ordering_seq                        bigint           NOT NULL,
                    strn_db_site                        char(16)         NOT NULL,
                    strn_db_id                          bigint           NOT NULL,
                    str_num_type_code                   bigint           NOT NULL,
                    eu_db_site                          char(16)         NOT NULL,
                    eu_db_id                            bigint           NOT NULL,
                    eu_type_code                        bigint           NOT NULL,
                    real_data_value                     float            NOT NULL,
                    imag_data_value                     float            NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (meas_loc_site,meas_loc_id,gmt_event,sample_order_seq,test_order_seq,ordering_seq)
  )
  ;

  CREATE TABLE test_chr_results (
                    meas_loc_site                       char(16)         NOT NULL,
                    meas_loc_id                         bigint           NOT NULL,
                    gmt_event                           datetime(3)         NOT NULL,
                    sample_order_seq                    bigint           NOT NULL,
                    test_order_seq                      bigint           NOT NULL,
                    ordering_seq                        bigint           NOT NULL,
                    strc_db_site                        char(16)         NOT NULL,
                    strc_db_id                          bigint           NOT NULL,
                    str_chr_type_code                   bigint           NOT NULL,
                    eu_db_site                          char(16)         NOT NULL,
                    eu_db_id                            bigint           NOT NULL,
                    eu_type_code                        bigint           NOT NULL,
                    data_value                          nvarchar(254)     NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (meas_loc_site,meas_loc_id,gmt_event,sample_order_seq,test_order_seq,ordering_seq)
  )
  ;

  CREATE TABLE test_remark (
                    meas_loc_site                       char(16)         NOT NULL,
                    meas_loc_id                         bigint           NOT NULL,
                    gmt_event                           datetime(3)         NOT NULL,
                    sample_order_seq                    bigint           NOT NULL,
                    test_order_seq                      bigint           NOT NULL,
                    ordering_seq                        bigint           NOT NULL,
                    remark_text                         nvarchar(254)     NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (meas_loc_site,meas_loc_id,gmt_event,sample_order_seq,test_order_seq,ordering_seq)
  )
  ;

  CREATE TABLE test_histogram (
                    meas_loc_site                       char(16)         NOT NULL,
                    meas_loc_id                         bigint           NOT NULL,
                    gmt_event                           datetime(3)         NOT NULL,
                    sample_order_seq                    bigint           NOT NULL,
                    test_order_seq                      bigint           NOT NULL,
                    ordering_seq                        bigint           NOT NULL,
                    strn_db_site                        char(16)         NOT NULL,
                    strn_db_id                          bigint           NOT NULL,
                    str_num_type_code                   bigint           NOT NULL,
                    eu_db_site                          char(16)         NOT NULL,
                    eu_db_id                            bigint           NOT NULL,
                    eu_type_code                        bigint           NOT NULL,
                    min_screen_in_eu                    bigint           NOT NULL,
                    max_screen_in_eu                    bigint           NOT NULL,
                    resolution_lines                    bigint           NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    histogram_data                      longblob            NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (meas_loc_site,meas_loc_id,gmt_event,sample_order_seq,test_order_seq,ordering_seq)
  )
  ;

  CREATE TABLE test_nres_alarm (
                    meas_loc_site                       char(16)         NOT NULL,
                    meas_loc_id                         bigint           NOT NULL,
                    gmt_event                           datetime(3)         NOT NULL,
                    sample_order_seq                    bigint           NOT NULL,
                    test_order_seq                      bigint           NOT NULL,
                    ordering_seq                        bigint           NOT NULL,
                    al_db_site                          char(16)         NOT NULL,
                    al_db_id                            bigint           NOT NULL,
                    al_type_code                        bigint           NOT NULL,
                    gmt_acknowledged                    datetime(3)         NULL,
                    ack_loc_hr_delta                    smallint         NULL,
                    ack_loc_min_delta                   smallint         NULL,
                    org_agent_site                      char(16)         NULL,
                    agent_id                            bigint           NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (meas_loc_site,meas_loc_id,gmt_event,sample_order_seq,test_order_seq,ordering_seq,al_db_site,al_db_id,al_type_code)
  )
  ;

  CREATE TABLE test_al_assoc_reg (
                    meas_loc_site                       char(16)         NOT NULL,
                    meas_loc_id                         bigint           NOT NULL,
                    gmt_event                           datetime(3)         NOT NULL,
                    sample_order_seq                    bigint           NOT NULL,
                    test_order_seq                      bigint           NOT NULL,
                    ordering_seq                        bigint           NOT NULL,
                    al_db_site                          char(16)         NOT NULL,
                    al_db_id                            bigint           NOT NULL,
                    al_type_code                        bigint           NOT NULL,
                    alarm_db_site                       char(16)         NOT NULL,
                    alarm_db_id                         bigint           NOT NULL,
                    al_meas_loc_site                    char(16)         NOT NULL,
                    al_meas_loc_id                      bigint           NOT NULL,
                    al_ordering_seq                     bigint           NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (meas_loc_site,meas_loc_id,gmt_event,sample_order_seq,test_order_seq,ordering_seq,al_db_site,al_db_id,al_type_code,alarm_db_site,alarm_db_id,al_meas_loc_site,al_meas_loc_id,al_ordering_seq)
  )
  ;

  CREATE TABLE test_blob_results (
                    meas_loc_site                       char(16)         NOT NULL,
                    meas_loc_id                         bigint           NOT NULL,
                    gmt_event                           datetime(3)         NOT NULL,
                    sample_order_seq                    bigint           NOT NULL,
                    test_order_seq                      bigint           NOT NULL,
                    ordering_seq                        bigint           NOT NULL,
                    strb_db_site                        char(16)         NOT NULL,
                    strb_db_id                          bigint           NOT NULL,
                    str_blob_type_code                  bigint           NOT NULL,
                    bd_db_site                          char(16)         NOT NULL,
                    bd_db_id                            bigint           NOT NULL,
                    bd_type_code                        bigint           NOT NULL,
                    user_tag_ident                      nvarchar(254)    NULL,
                    name                                nvarchar(254)    NULL,
                    assoc_file_name                     nvarchar(254)    NULL,
                    image_data                          longblob            NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (meas_loc_site,meas_loc_id,gmt_event,sample_order_seq,test_order_seq,ordering_seq)
  )
  ;

  CREATE TABLE test_bres_alarm (
                    meas_loc_site                       char(16)         NOT NULL,
                    meas_loc_id                         bigint           NOT NULL,
                    gmt_event                           datetime(3)         NOT NULL,
                    sample_order_seq                    bigint           NOT NULL,
                    test_order_seq                      bigint           NOT NULL,
                    ordering_seq                        bigint           NOT NULL,
                    al_db_site                          char(16)         NOT NULL,
                    al_db_id                            bigint           NOT NULL,
                    al_type_code                        bigint           NOT NULL,
                    assoc_file_name                     nvarchar(254)     NULL,
                    gmt_acknowledged                    datetime(3)         NOT NULL,
                    ack_loc_hr_delta                    smallint         NULL,
                    ack_loc_min_delta                   smallint         NULL,
                    org_agent_site                      char(16)         NULL,
                    agent_id                            bigint           NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (meas_loc_site,meas_loc_id,gmt_event,sample_order_seq,test_order_seq,ordering_seq,al_db_site,al_db_id,al_type_code)
  )
  ;

  CREATE TABLE sg_type_blob_data (
                    db_site                             char(16)         NOT NULL,
                    db_id                               bigint           NOT NULL,
                    sg_db_site                          char(16)         NOT NULL,
                    sg_db_id                            bigint           NOT NULL,
                    sg_type_code                        bigint           NOT NULL,
                    bd_db_site                          char(16)         NOT NULL,
                    bd_db_id                            bigint           NOT NULL,
                    bd_type_code                        bigint           NOT NULL,
                    ordering_seq                        bigint           NOT NULL,
                    blct_db_site                        char(16)         NOT NULL,
                    blct_db_id                          bigint           NOT NULL,
                    blc_type_code                       bigint           NOT NULL,
                    user_tag_ident                      nvarchar(254)    NULL,
                    name                                nvarchar(254)    NULL,
                    assoc_file_name                     nvarchar(254)    NULL,
                    image_data                          longblob            NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (db_site,db_id,sg_db_site,sg_db_id,sg_type_code,bd_db_site,bd_db_id,bd_type_code,ordering_seq)
  )
  ;

  CREATE TABLE segment_blob_data (
                    db_site                             char(16)         NOT NULL,
                    db_id                               bigint           NOT NULL,
                    segment_site                        char(16)         NOT NULL,
                    segment_id                          bigint           NOT NULL,
                    bd_db_site                          char(16)         NOT NULL,
                    bd_db_id                            bigint           NOT NULL,
                    bd_type_code                        bigint           NOT NULL,
                    ordering_seq                        bigint           NOT NULL,
                    blct_db_site                        char(16)         NOT NULL,
                    blct_db_id                          bigint           NOT NULL,
                    blc_type_code                       bigint           NOT NULL,
                    user_tag_ident                      nvarchar(254)    NULL,
                    name                                nvarchar(254)    NULL,
                    assoc_file_name                     nvarchar(254)    NULL,
                    image_data                          longblob            NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (db_site,db_id,segment_site,segment_id,bd_db_site,bd_db_id,bd_type_code,ordering_seq)
  )
  ;

  CREATE TABLE model_blob_data (
                    db_site                             char(16)         NOT NULL,
                    db_id                               bigint           NOT NULL,
                    model_db_site                       char(16)         NOT NULL,
                    model_db_id                         bigint           NOT NULL,
                    model_id                            bigint           NOT NULL,
                    bd_db_site                          char(16)         NOT NULL,
                    bd_db_id                            bigint           NOT NULL,
                    bd_type_code                        bigint           NOT NULL,
                    ordering_seq                        bigint           NOT NULL,
                    blct_db_site                        char(16)         NOT NULL,
                    blct_db_id                          bigint           NOT NULL,
                    blc_type_code                       bigint           NOT NULL,
                    user_tag_ident                      nvarchar(254)    NULL,
                    name                                nvarchar(254)    NULL,
                    assoc_file_name                     nvarchar(254)    NULL,
                    image_data                          longblob            NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (db_site,db_id,model_db_site,model_db_id,model_id,bd_db_site,bd_db_id,bd_type_code,ordering_seq)
  )
  ;

  CREATE TABLE as_type_blob_data (
                    db_site                             char(16)         NOT NULL,
                    db_id                               bigint           NOT NULL,
                    as_db_site                          char(16)         NOT NULL,
                    as_db_id                            bigint           NOT NULL,
                    as_type_code                        bigint           NOT NULL,
                    bd_db_site                          char(16)         NOT NULL,
                    bd_db_id                            bigint           NOT NULL,
                    bd_type_code                        bigint           NOT NULL,
                    ordering_seq                        bigint           NOT NULL,
                    blct_db_site                        char(16)         NOT NULL,
                    blct_db_id                          bigint           NOT NULL,
                    blc_type_code                       bigint           NOT NULL,
                    user_tag_ident                      nvarchar(254)    NULL,
                    name                                nvarchar(254)    NULL,
                    assoc_file_name                     nvarchar(254)    NULL,
                    image_data                          longblob            NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (db_site,db_id,as_db_site,as_db_id,as_type_code,bd_db_site,bd_db_id,bd_type_code,ordering_seq)
  )
  ;

  CREATE TABLE asset_blob_data (
                    db_site                             char(16)         NOT NULL,
                    db_id                               bigint           NOT NULL,
                    asset_org_site                      char(16)         NOT NULL,
                    asset_id                            bigint           NOT NULL,
                    bd_db_site                          char(16)         NOT NULL,
                    bd_db_id                            bigint           NOT NULL,
                    bd_type_code                        bigint           NOT NULL,
                    ordering_seq                        bigint           NOT NULL,
                    blct_db_site                        char(16)         NOT NULL,
                    blct_db_id                          bigint           NOT NULL,
                    blc_type_code                       bigint           NOT NULL,
                    user_tag_ident                      nvarchar(254)    NULL,
                    name                                nvarchar(254)    NULL,
                    assoc_file_name                     nvarchar(254)    NULL,
                    image_data                          longblob            NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (db_site,db_id,asset_org_site,asset_id,bd_db_site,bd_db_id,bd_type_code,ordering_seq)
  )
  ;

  CREATE TABLE olist_blob_data (
                    db_site                             char(16)         NOT NULL,
                    db_id                               bigint           NOT NULL,
                    ord_list_db_site                    char(16)         NOT NULL,
                    ord_list_db_id                      bigint           NOT NULL,
                    ord_list_id                         bigint           NOT NULL,
                    bd_db_site                          char(16)         NOT NULL,
                    bd_db_id                            bigint           NOT NULL,
                    bd_type_code                        bigint           NOT NULL,
                    ordering_seq                        bigint           NOT NULL,
                    blct_db_site                        char(16)         NOT NULL,
                    blct_db_id                          bigint           NOT NULL,
                    blc_type_code                       bigint           NOT NULL,
                    user_tag_ident                      nvarchar(254)    NULL,
                    name                                nvarchar(254)    NULL,
                    assoc_file_name                     nvarchar(254)    NULL,
                    image_data                          longblob            NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (db_site,db_id,ord_list_db_site,ord_list_db_id,ord_list_id,bd_db_site,bd_db_id,bd_type_code,ordering_seq)
  )
  ;

  CREATE TABLE mevent_blob_data (
                    meas_loc_site                       char(16)         NOT NULL,
                    meas_loc_id                         bigint           NOT NULL,
                    gmt_event                           datetime(3)         NOT NULL,
                    mebt_db_site                        char(16)         NOT NULL,
                    mebt_db_id                          bigint           NOT NULL,
                    meb_type_code                       bigint           NOT NULL,
                    bd_db_site                          char(16)         NOT NULL,
                    bd_db_id                            bigint           NOT NULL,
                    bd_type_code                        bigint           NOT NULL,
                    name                                nvarchar(254)    NULL,
                    user_tag_ident                      nvarchar(254)    NULL,
                    assoc_file_name                     nvarchar(254)    NULL,
                    image_data                          longblob            NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (meas_loc_site,meas_loc_id,gmt_event,mebt_db_site,mebt_db_id,meb_type_code)
  )
  ;

  CREATE TABLE blob_grid_data (
                    meas_loc_site                       char(16)         NOT NULL,
                    meas_loc_id                         bigint           NOT NULL,
                    gmt_event                           datetime(3)         NOT NULL,
                    mebt_db_site                        char(16)         NOT NULL,
                    mebt_db_id                          bigint           NOT NULL,
                    meb_type_code                       bigint           NOT NULL,
                    grid_seq                            bigint           NOT NULL,
                    eu_db_site                          char(16)         NOT NULL,
                    eu_db_id                            bigint           NOT NULL,
                    eu_type_code                        bigint           NOT NULL,
                    x_resolution                        bigint           NOT NULL,
                    y_resolution                        bigint           NOT NULL,
                    data_origin_x                       bigint           NOT NULL,
                    data_origin_y                       bigint           NOT NULL,
                    data_end_x                          bigint           NOT NULL,
                    data_end_y                          bigint           NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    float_data                          longblob            NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (meas_loc_site,meas_loc_id,gmt_event,mebt_db_site,mebt_db_id,meb_type_code,grid_seq)
  )
  ;

  CREATE TABLE blob_alarm (
                    meas_loc_site                       char(16)         NOT NULL,
                    meas_loc_id                         bigint           NOT NULL,
                    gmt_event                           datetime(3)         NOT NULL,
                    mebt_db_site                        char(16)         NOT NULL,
                    mebt_db_id                          bigint           NOT NULL,
                    meb_type_code                       bigint           NOT NULL,
                    al_db_site                          char(16)         NOT NULL,
                    al_db_id                            bigint           NOT NULL,
                    al_type_code                        bigint           NOT NULL,
                    gmt_acknowledged                    datetime(3)         NOT NULL,
                    ack_loc_hr_delta                    smallint         NULL,
                    ack_loc_min_delta                   smallint         NULL,
                    org_agent_site                      char(16)         NULL,
                    agent_id                            bigint           NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (meas_loc_site,meas_loc_id,gmt_event,mebt_db_site,mebt_db_id,meb_type_code,al_db_site,al_db_id,al_type_code)
  )
  ;

  CREATE TABLE blob_area_alarm (
                    meas_loc_site                       char(16)         NOT NULL,
                    meas_loc_id                         bigint           NOT NULL,
                    gmt_event                           datetime(3)         NOT NULL,
                    mebt_db_site                        char(16)         NOT NULL,
                    mebt_db_id                          bigint           NOT NULL,
                    meb_type_code                       bigint           NOT NULL,
                    area_seq                            bigint           NOT NULL,
                    x_resolution                        bigint           NOT NULL,
                    y_resolution                        bigint           NOT NULL,
                    high_db_site                        char(16)         NOT NULL,
                    high_db_id                          bigint           NOT NULL,
                    high_type_code                      bigint           NOT NULL,
                    data_origin_x                       bigint           NOT NULL,
                    data_origin_y                       bigint           NOT NULL,
                    data_end_x                          bigint           NOT NULL,
                    data_end_y                          bigint           NOT NULL,
                    al_db_site                          char(16)         NOT NULL,
                    al_db_id                            bigint           NOT NULL,
                    al_type_code                        bigint           NOT NULL,
                    gmt_acknowledged                    datetime(3)         NOT NULL,
                    ack_loc_hr_delta                    smallint         NULL,
                    ack_loc_min_delta                   smallint         NULL,
                    org_agent_site                      char(16)         NULL,
                    agent_id                            bigint           NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (meas_loc_site,meas_loc_id,gmt_event,mebt_db_site,mebt_db_id,meb_type_code,area_seq)
  )
  ;

  CREATE TABLE segment_function (
                    db_site                             char(16)         NOT NULL,
                    db_id                               bigint           NOT NULL,
                    segment_site                        char(16)         NOT NULL,
                    segment_id                          bigint           NOT NULL,
                    ordering_seq                        bigint           NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    gmt_created                         datetime(3)         NULL,
                    cr_loc_hr_delta                     smallint         NULL,
                    cr_loc_min_delta                    smallint         NULL,
                    by_org_asite                        char(16)         NULL,
                    by_agent_id                         bigint           NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (db_site,db_id,segment_site,segment_id,ordering_seq)
  )
  ;

  CREATE TABLE asset_function (
                    db_site                             char(16)         NOT NULL,
                    db_id                               bigint           NOT NULL,
                    asset_org_site                      char(16)         NOT NULL,
                    asset_id                            bigint           NOT NULL,
                    ordering_seq                        bigint           NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    gmt_created                         datetime(3)         NULL,
                    cr_loc_hr_delta                     smallint         NULL,
                    cr_loc_min_delta                    smallint         NULL,
                    by_org_asite                        char(16)         NULL,
                    by_agent_id                         bigint           NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (db_site,db_id,asset_org_site,asset_id,ordering_seq)
  )
  ;

  CREATE TABLE sg_type_function (
                    db_site                             char(16)         NOT NULL,
                    db_id                               bigint           NOT NULL,
                    sg_db_site                          char(16)         NOT NULL,
                    sg_db_id                            bigint           NOT NULL,
                    sg_type_code                        bigint           NOT NULL,
                    ordering_seq                        bigint           NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    gmt_created                         datetime(3)         NULL,
                    cr_loc_hr_delta                     smallint         NULL,
                    cr_loc_min_delta                    smallint         NULL,
                    by_org_asite                        char(16)         NULL,
                    by_agent_id                         bigint           NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (db_site,db_id,sg_db_site,sg_db_id,sg_type_code,ordering_seq)
  )
  ;

  CREATE TABLE as_type_function (
                    db_site                             char(16)         NOT NULL,
                    db_id                               bigint           NOT NULL,
                    as_db_site                          char(16)         NOT NULL,
                    as_db_id                            bigint           NOT NULL,
                    as_type_code                        bigint           NOT NULL,
                    ordering_seq                        bigint           NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    gmt_created                         datetime(3)         NULL,
                    cr_loc_hr_delta                     smallint         NULL,
                    cr_loc_min_delta                    smallint         NULL,
                    by_org_asite                        char(16)         NULL,
                    by_agent_id                         bigint           NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (db_site,db_id,as_db_site,as_db_id,as_type_code,ordering_seq)
  )
  ;

  CREATE TABLE model_function (
                    db_site                             char(16)         NOT NULL,
                    db_id                               bigint           NOT NULL,
                    model_db_site                       char(16)         NOT NULL,
                    model_db_id                         bigint           NOT NULL,
                    model_id                            bigint           NOT NULL,
                    ordering_seq                        bigint           NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    gmt_created                         datetime(3)         NULL,
                    cr_loc_hr_delta                     smallint         NULL,
                    cr_loc_min_delta                    smallint         NULL,
                    by_org_asite                        char(16)         NULL,
                    by_agent_id                         bigint           NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (db_site,db_id,model_db_site,model_db_id,model_id,ordering_seq)
  )
  ;

  CREATE TABLE sg_ev_sg_func_link (
                    ev_segment_site                     char(16)         NOT NULL,
                    ev_segment_id                       bigint           NOT NULL,
                    ev_db_site                          char(16)         NOT NULL,
                    ev_db_id                            bigint           NOT NULL,
                    event_type_code                     bigint           NOT NULL,
                    gmt_event_start                     datetime(3)         NOT NULL,
                    fn_db_site                          char(16)         NOT NULL,
                    fn_db_id                            bigint           NOT NULL,
                    fn_segment_site                     char(16)         NOT NULL,
                    fn_segment_id                       bigint           NOT NULL,
                    ordering_seq                        bigint           NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    by_org_asite                        char(16)         NULL,
                    by_agent_id                         bigint           NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (ev_segment_site,ev_segment_id,ev_db_site,ev_db_id,event_type_code,gmt_event_start,fn_db_site,fn_db_id,fn_segment_site,fn_segment_id,ordering_seq)
  )
  ;

  CREATE TABLE as_ev_as_func_link (
                    asset_org_site                      char(16)         NOT NULL,
                    asset_id                            bigint           NOT NULL,
                    ev_db_site                          char(16)         NOT NULL,
                    ev_db_id                            bigint           NOT NULL,
                    event_type_code                     bigint           NOT NULL,
                    gmt_event_start                     datetime(3)         NOT NULL,
                    db_site                             char(16)         NOT NULL,
                    db_id                               bigint           NOT NULL,
                    fc_as_org_site                      char(16)         NOT NULL,
                    fc_as_id                            bigint           NOT NULL,
                    ordering_seq                        bigint           NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    by_org_asite                        char(16)         NULL,
                    by_agent_id                         bigint           NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (asset_org_site,asset_id,ev_db_site,ev_db_id,event_type_code,gmt_event_start,db_site,db_id,fc_as_org_site,fc_as_id,ordering_seq)
  )
  ;

  CREATE TABLE sg_event_num_data (
                    segment_site                        char(16)         NOT NULL,
                    segment_id                          bigint           NOT NULL,
                    ev_db_site                          char(16)         NOT NULL,
                    ev_db_id                            bigint           NOT NULL,
                    event_type_code                     bigint           NOT NULL,
                    gmt_event_start                     datetime(3)         NOT NULL,
                    en_db_site                          char(16)         NOT NULL,
                    en_db_id                            bigint           NOT NULL,
                    en_type_code                        bigint           NOT NULL,
                    eu_db_site                          char(16)         NOT NULL,
                    eu_db_id                            bigint           NOT NULL,
                    eu_type_code                        bigint           NOT NULL,
                    data_value                          float            NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (segment_site,segment_id,ev_db_site,ev_db_id,event_type_code,gmt_event_start,en_db_site,en_db_id,en_type_code)
  )
  ;

  CREATE TABLE as_event_num_data (
                    asset_org_site                      char(16)         NOT NULL,
                    asset_id                            bigint           NOT NULL,
                    ev_db_site                          char(16)         NOT NULL,
                    ev_db_id                            bigint           NOT NULL,
                    event_type_code                     bigint           NOT NULL,
                    gmt_event_start                     datetime(3)         NOT NULL,
                    en_db_site                          char(16)         NOT NULL,
                    en_db_id                            bigint           NOT NULL,
                    en_type_code                        bigint           NOT NULL,
                    eu_db_site                          char(16)         NOT NULL,
                    eu_db_id                            bigint           NOT NULL,
                    eu_type_code                        bigint           NOT NULL,
                    data_value                          float            NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (asset_org_site,asset_id,ev_db_site,ev_db_id,event_type_code,gmt_event_start,en_db_site,en_db_id,en_type_code)
  )
  ;

  CREATE TABLE sg_ev_meas_event (
                    segment_site                        char(16)         NOT NULL,
                    segment_id                          bigint           NOT NULL,
                    ev_db_site                          char(16)         NOT NULL,
                    ev_db_id                            bigint           NOT NULL,
                    event_type_code                     bigint           NOT NULL,
                    gmt_event_start                     datetime(3)         NOT NULL,
                    meas_loc_site                       char(16)         NOT NULL,
                    meas_loc_id                         bigint           NOT NULL,
                    gmt_event                           datetime(3)         NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    by_org_asite                        char(16)         NULL,
                    by_agent_id                         bigint           NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (segment_site,segment_id,ev_db_site,ev_db_id,event_type_code,gmt_event_start,meas_loc_site,meas_loc_id,gmt_event)
  )
  ;

  CREATE TABLE as_ev_meas_event (
                    asset_org_site                      char(16)         NOT NULL,
                    asset_id                            bigint           NOT NULL,
                    ev_db_site                          char(16)         NOT NULL,
                    ev_db_id                            bigint           NOT NULL,
                    event_type_code                     bigint           NOT NULL,
                    gmt_event_start                     datetime(3)         NOT NULL,
                    meas_loc_site                       char(16)         NOT NULL,
                    meas_loc_id                         bigint           NOT NULL,
                    gmt_event                           datetime(3)         NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    by_org_asite                        char(16)         NULL,
                    by_agent_id                         bigint           NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (asset_org_site,asset_id,ev_db_site,ev_db_id,event_type_code,gmt_event_start,meas_loc_site,meas_loc_id,gmt_event)
  )
  ;

  CREATE TABLE segment_event_link (
                    segment_site                        char(16)         NOT NULL,
                    segment_id                          bigint           NOT NULL,
                    ev_db_site                          char(16)         NOT NULL,
                    ev_db_id                            bigint           NOT NULL,
                    event_type_code                     bigint           NOT NULL,
                    gmt_event_start                     datetime(3)         NOT NULL,
                    caused_sg_site                      char(16)         NOT NULL,
                    caused_sg_id                        bigint           NOT NULL,
                    caused_ev_db_site                   char(16)         NOT NULL,
                    caused_ev_db_id                     bigint           NOT NULL,
                    caused_ev_code                      bigint           NOT NULL,
                    caused_gmt                          datetime(3)         NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (segment_site,segment_id,ev_db_site,ev_db_id,event_type_code,gmt_event_start,caused_sg_site,caused_sg_id,caused_ev_db_site,caused_ev_db_id,caused_ev_code,caused_gmt)
  )
  ;

  CREATE TABLE asset_event_link (
                    asset_org_site                      char(16)         NOT NULL,
                    asset_id                            bigint           NOT NULL,
                    ev_db_site                          char(16)         NOT NULL,
                    ev_db_id                            bigint           NOT NULL,
                    event_type_code                     bigint           NOT NULL,
                    gmt_event_start                     datetime(3)         NOT NULL,
                    caused_as_site                      char(16)         NOT NULL,
                    caused_as_id                        bigint           NOT NULL,
                    caused_ev_db_site                   char(16)         NOT NULL,
                    caused_ev_db_id                     bigint           NOT NULL,
                    caused_ev_code                      bigint           NOT NULL,
                    caused_gmt                          datetime(3)         NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (asset_org_site,asset_id,ev_db_site,ev_db_id,event_type_code,gmt_event_start,caused_as_site,caused_as_id,caused_ev_db_site,caused_ev_db_id,caused_ev_code,caused_gmt)
  )
  ;

  CREATE TABLE sg_hyp_event (
                    sg_hyp_db_site                      char(16)         NOT NULL,
                    sg_hyp_db_id                        bigint           NOT NULL,
                    sg_hyp_event_id                     bigint           NOT NULL,
                    segment_site                        char(16)         NOT NULL,
                    segment_id                          bigint           NOT NULL,
                    ev_db_site                          char(16)         NOT NULL,
                    ev_db_id                            bigint           NOT NULL,
                    event_type_code                     bigint           NOT NULL,
                    severity_lev_db_site                char(16)         NOT NULL,
                    severity_lev_db_id                  bigint           NOT NULL,
                    severity_lev_type_code              bigint           NOT NULL,
                    gmt_created                         datetime(3)         NULL,
                    cr_loc_hr_delta                     smallint         NULL,
                    cr_loc_min_delta                    smallint         NULL,
                    by_org_asite                        char(16)         NULL,
                    by_agent_id                         bigint           NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    assoc_file_name                     nvarchar(254)     NULL,
                    associated_blob                     longblob            NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (sg_hyp_db_site,sg_hyp_db_id,sg_hyp_event_id)
  )
  ;

  CREATE TABLE as_hyp_event (
                    as_hyp_db_site                      char(16)         NOT NULL,
                    as_hyp_db_id                        bigint           NOT NULL,
                    as_hyp_event_id                     bigint           NOT NULL,
                    asset_org_site                      char(16)         NOT NULL,
                    asset_id                            bigint           NOT NULL,
                    ev_db_site                          char(16)         NOT NULL,
                    ev_db_id                            bigint           NOT NULL,
                    event_type_code                     bigint           NOT NULL,
                    severity_lev_db_site                char(16)         NOT NULL,
                    severity_lev_db_id                  bigint           NOT NULL,
                    severity_lev_type_code              bigint           NOT NULL,
                    gmt_created                         datetime(3)         NULL,
                    cr_loc_hr_delta                     smallint         NULL,
                    cr_loc_min_delta                    smallint         NULL,
                    by_org_asite                        char(16)         NULL,
                    by_agent_id                         bigint           NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    assoc_file_name                     nvarchar(254)     NULL,
                    associated_blob                     longblob            NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (as_hyp_db_site,as_hyp_db_id,as_hyp_event_id)
  )
  ;

  CREATE TABLE sg_typ_hyp_event (
                    sgt_hyp_db_site                     char(16)         NOT NULL,
                    sgt_hyp_db_id                       bigint           NOT NULL,
                    sgt_hyp_event_id                    bigint           NOT NULL,
                    sg_db_site                          char(16)         NOT NULL,
                    sg_db_id                            bigint           NOT NULL,
                    sg_type_code                        bigint           NOT NULL,
                    ev_db_site                          char(16)         NOT NULL,
                    ev_db_id                            bigint           NOT NULL,
                    event_type_code                     bigint           NOT NULL,
                    severity_lev_db_site                char(16)         NOT NULL,
                    severity_lev_db_id                  bigint           NOT NULL,
                    severity_lev_type_code              bigint           NOT NULL,
                    gmt_created                         datetime(3)         NULL,
                    cr_loc_hr_delta                     smallint         NULL,
                    cr_loc_min_delta                    smallint         NULL,
                    by_org_asite                        char(16)         NULL,
                    by_agent_id                         bigint           NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    assoc_file_name                     nvarchar(254)     NULL,
                    associated_blob                     longblob            NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (sgt_hyp_db_site,sgt_hyp_db_id,sgt_hyp_event_id)
  )
  ;

  CREATE TABLE as_typ_hyp_event (
                    ast_hyp_db_site                     char(16)         NOT NULL,
                    ast_hyp_db_id                       bigint           NOT NULL,
                    ast_hyp_event_id                    bigint           NOT NULL,
                    as_db_site                          char(16)         NOT NULL,
                    as_db_id                            bigint           NOT NULL,
                    as_type_code                        bigint           NOT NULL,
                    ev_db_site                          char(16)         NOT NULL,
                    ev_db_id                            bigint           NOT NULL,
                    event_type_code                     bigint           NOT NULL,
                    severity_lev_db_site                char(16)         NOT NULL,
                    severity_lev_db_id                  bigint           NOT NULL,
                    severity_lev_type_code              bigint           NOT NULL,
                    gmt_created                         datetime(3)         NULL,
                    cr_loc_hr_delta                     smallint         NULL,
                    cr_loc_min_delta                    smallint         NULL,
                    by_org_asite                        char(16)         NULL,
                    by_agent_id                         bigint           NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    assoc_file_name                     nvarchar(254)     NULL,
                    associated_blob                     longblob            NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (ast_hyp_db_site,ast_hyp_db_id,ast_hyp_event_id)
  )
  ;

  CREATE TABLE model_hyp_event (
                    mod_hyp_db_site                     char(16)         NOT NULL,
                    mod_hyp_db_id                       bigint           NOT NULL,
                    mod_hyp_event_id                    bigint           NOT NULL,
                    model_db_site                       char(16)         NOT NULL,
                    model_db_id                         bigint           NOT NULL,
                    model_id                            bigint           NOT NULL,
                    ev_db_site                          char(16)         NOT NULL,
                    ev_db_id                            bigint           NOT NULL,
                    event_type_code                     bigint           NOT NULL,
                    severity_lev_db_site                char(16)         NOT NULL,
                    severity_lev_db_id                  bigint           NOT NULL,
                    severity_lev_type_code              bigint           NOT NULL,
                    gmt_created                         datetime(3)         NULL,
                    cr_loc_hr_delta                     smallint         NULL,
                    cr_loc_min_delta                    smallint         NULL,
                    by_org_asite                        char(16)         NULL,
                    by_agent_id                         bigint           NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    assoc_file_name                     nvarchar(254)     NULL,
                    associated_blob                     longblob            NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (mod_hyp_db_site,mod_hyp_db_id,mod_hyp_event_id)
  )
  ;

  CREATE TABLE sg_hyp_event_link (
                    sg_hyp_db_site                      char(16)         NOT NULL,
                    sg_hyp_db_id                        bigint           NOT NULL,
                    sg_hyp_event_id                     bigint           NOT NULL,
                    caused_db_site                      char(16)         NOT NULL,
                    caused_db_id                        bigint           NOT NULL,
                    caused_event_id                     bigint           NOT NULL,
                    likelihood_prob                     float            NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (sg_hyp_db_site,sg_hyp_db_id,sg_hyp_event_id,caused_db_site,caused_db_id,caused_event_id)
  )
  ;

  CREATE TABLE as_hyp_event_link (
                    as_hyp_db_site                      char(16)         NOT NULL,
                    as_hyp_db_id                        bigint           NOT NULL,
                    as_hyp_event_id                     bigint           NOT NULL,
                    caused_db_site                      char(16)         NOT NULL,
                    caused_db_id                        bigint           NOT NULL,
                    caused_event_id                     bigint           NOT NULL,
                    likelihood_prob                     float            NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (as_hyp_db_site,as_hyp_db_id,as_hyp_event_id,caused_db_site,caused_db_id,caused_event_id)
  )
  ;

  CREATE TABLE sg_typ_hyp_ev_link (
                    sgt_hyp_db_site                     char(16)         NOT NULL,
                    sgt_hyp_db_id                       bigint           NOT NULL,
                    sgt_hyp_event_id                    bigint           NOT NULL,
                    caused_db_site                      char(16)         NOT NULL,
                    caused_db_id                        bigint           NOT NULL,
                    caused_event_id                     bigint           NOT NULL,
                    likelihood_prob                     float            NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (sgt_hyp_db_site,sgt_hyp_db_id,sgt_hyp_event_id,caused_db_site,caused_db_id,caused_event_id)
  )
  ;

  CREATE TABLE as_typ_hyp_ev_link (
                    ast_hyp_db_site                     char(16)         NOT NULL,
                    ast_hyp_db_id                       bigint           NOT NULL,
                    ast_hyp_event_id                    bigint           NOT NULL,
                    caused_db_site                      char(16)         NOT NULL,
                    caused_db_id                        bigint           NOT NULL,
                    caused_event_id                     bigint           NOT NULL,
                    likelihood_prob                     float            NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (ast_hyp_db_site,ast_hyp_db_id,ast_hyp_event_id,caused_db_site,caused_db_id,caused_event_id)
  )
  ;

  CREATE TABLE model_hyp_ev_link (
                    mod_hyp_db_site                     char(16)         NOT NULL,
                    mod_hyp_db_id                       bigint           NOT NULL,
                    mod_hyp_event_id                    bigint           NOT NULL,
                    caused_db_site                      char(16)         NOT NULL,
                    caused_db_id                        bigint           NOT NULL,
                    caused_event_id                     bigint           NOT NULL,
                    likelihood_prob                     float            NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (mod_hyp_db_site,mod_hyp_db_id,mod_hyp_event_id,caused_db_site,caused_db_id,caused_event_id)
  )
  ;

  CREATE TABLE sg_hyp_ev_num_data (
                    sg_hyp_db_site                      char(16)         NOT NULL,
                    sg_hyp_db_id                        bigint           NOT NULL,
                    sg_hyp_event_id                     bigint           NOT NULL,
                    en_db_site                          char(16)         NOT NULL,
                    en_db_id                            bigint           NOT NULL,
                    en_type_code                        bigint           NOT NULL,
                    eu_db_site                          char(16)         NOT NULL,
                    eu_db_id                            bigint           NOT NULL,
                    eu_type_code                        bigint           NOT NULL,
                    data_value                          float            NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (sg_hyp_db_site,sg_hyp_db_id,sg_hyp_event_id,en_db_site,en_db_id,en_type_code)
  )
  ;

  CREATE TABLE as_hyp_ev_num_data (
                    as_hyp_db_site                      char(16)         NOT NULL,
                    as_hyp_db_id                        bigint           NOT NULL,
                    as_hyp_event_id                     bigint           NOT NULL,
                    en_db_site                          char(16)         NOT NULL,
                    en_db_id                            bigint           NOT NULL,
                    en_type_code                        bigint           NOT NULL,
                    eu_db_site                          char(16)         NOT NULL,
                    eu_db_id                            bigint           NOT NULL,
                    eu_type_code                        bigint           NOT NULL,
                    data_value                          float            NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (as_hyp_db_site,as_hyp_db_id,as_hyp_event_id,en_db_site,en_db_id,en_type_code)
  )
  ;

  CREATE TABLE sg_typ_hyp_ev_num_data (
                    sgt_hyp_db_site                     char(16)         NOT NULL,
                    sgt_hyp_db_id                       bigint           NOT NULL,
                    sgt_hyp_event_id                    bigint           NOT NULL,
                    en_db_site                          char(16)         NOT NULL,
                    en_db_id                            bigint           NOT NULL,
                    en_type_code                        bigint           NOT NULL,
                    eu_db_site                          char(16)         NOT NULL,
                    eu_db_id                            bigint           NOT NULL,
                    eu_type_code                        bigint           NOT NULL,
                    data_value                          float            NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (sgt_hyp_db_site,sgt_hyp_db_id,sgt_hyp_event_id,en_db_site,en_db_id,en_type_code)
  )
  ;

  CREATE TABLE as_typ_hyp_ev_num_data (
                    ast_hyp_db_site                     char(16)         NOT NULL,
                    ast_hyp_db_id                       bigint           NOT NULL,
                    ast_hyp_event_id                    bigint           NOT NULL,
                    en_db_site                          char(16)         NOT NULL,
                    en_db_id                            bigint           NOT NULL,
                    en_type_code                        bigint           NOT NULL,
                    eu_db_site                          char(16)         NOT NULL,
                    eu_db_id                            bigint           NOT NULL,
                    eu_type_code                        bigint           NOT NULL,
                    data_value                          float            NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (ast_hyp_db_site,ast_hyp_db_id,ast_hyp_event_id,en_db_site,en_db_id,en_type_code)
  )
  ;

  CREATE TABLE model_hyp_ev_num_data (
                    mod_hyp_db_site                     char(16)         NOT NULL,
                    mod_hyp_db_id                       bigint           NOT NULL,
                    mod_hyp_event_id                    bigint           NOT NULL,
                    en_db_site                          char(16)         NOT NULL,
                    en_db_id                            bigint           NOT NULL,
                    en_type_code                        bigint           NOT NULL,
                    eu_db_site                          char(16)         NOT NULL,
                    eu_db_id                            bigint           NOT NULL,
                    eu_type_code                        bigint           NOT NULL,
                    data_value                          float            NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (mod_hyp_db_site,mod_hyp_db_id,mod_hyp_event_id,en_db_site,en_db_id,en_type_code)
  )
  ;

  CREATE TABLE sg_hyp_ev_sg_func (
                    sg_hyp_db_site                      char(16)         NOT NULL,
                    sg_hyp_db_id                        bigint           NOT NULL,
                    sg_hyp_event_id                     bigint           NOT NULL,
                    db_site                             char(16)         NOT NULL,
                    db_id                               bigint           NOT NULL,
                    segment_site                        char(16)         NOT NULL,
                    segment_id                          bigint           NOT NULL,
                    ordering_seq                        bigint           NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    by_org_asite                        char(16)         NULL,
                    by_agent_id                         bigint           NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (sg_hyp_db_site,sg_hyp_db_id,sg_hyp_event_id,db_site,db_id,segment_site,segment_id,ordering_seq)
  )
  ;

  CREATE TABLE as_hyp_ev_as_func (
                    as_hyp_db_site                      char(16)         NOT NULL,
                    as_hyp_db_id                        bigint           NOT NULL,
                    as_hyp_event_id                     bigint           NOT NULL,
                    db_site                             char(16)         NOT NULL,
                    db_id                               bigint           NOT NULL,
                    asset_org_site                      char(16)         NOT NULL,
                    asset_id                            bigint           NOT NULL,
                    ordering_seq                        bigint           NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    by_org_asite                        char(16)         NULL,
                    by_agent_id                         bigint           NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (as_hyp_db_site,as_hyp_db_id,as_hyp_event_id,db_site,db_id,asset_org_site,asset_id,ordering_seq)
  )
  ;

  CREATE TABLE sg_typ_hyp_ev_func (
                    sgt_hyp_db_site                     char(16)         NOT NULL,
                    sgt_hyp_db_id                       bigint           NOT NULL,
                    sgt_hyp_event_id                    bigint           NOT NULL,
                    db_site                             char(16)         NOT NULL,
                    db_id                               bigint           NOT NULL,
                    sg_db_site                          char(16)         NOT NULL,
                    sg_db_id                            bigint           NOT NULL,
                    sg_type_code                        bigint           NOT NULL,
                    ordering_seq                        bigint           NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    by_org_asite                        char(16)         NULL,
                    by_agent_id                         bigint           NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (sgt_hyp_db_site,sgt_hyp_db_id,sgt_hyp_event_id,db_site,db_id,sg_db_site,sg_db_id,sg_type_code,ordering_seq)
  )
  ;

  CREATE TABLE as_typ_hyp_ev_func (
                    ast_hyp_db_site                     char(16)         NOT NULL,
                    ast_hyp_db_id                       bigint           NOT NULL,
                    ast_hyp_event_id                    bigint           NOT NULL,
                    db_site                             char(16)         NOT NULL,
                    db_id                               bigint           NOT NULL,
                    as_db_site                          char(16)         NOT NULL,
                    as_db_id                            bigint           NOT NULL,
                    as_type_code                        bigint           NOT NULL,
                    ordering_seq                        bigint           NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    by_org_asite                        char(16)         NULL,
                    by_agent_id                         bigint           NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (ast_hyp_db_site,ast_hyp_db_id,ast_hyp_event_id,db_site,db_id,as_db_site,as_db_id,as_type_code,ordering_seq)
  )
  ;

  CREATE TABLE model_hyp_ev_func (
                    mod_hyp_db_site                     char(16)         NOT NULL,
                    mod_hyp_db_id                       bigint           NOT NULL,
                    mod_hyp_event_id                    bigint           NOT NULL,
                    db_site                             char(16)         NOT NULL,
                    db_id                               bigint           NOT NULL,
                    model_db_site                       char(16)         NOT NULL,
                    model_db_id                         bigint           NOT NULL,
                    model_id                            bigint           NOT NULL,
                    ordering_seq                        bigint           NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    by_org_asite                        char(16)         NULL,
                    by_agent_id                         bigint           NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (mod_hyp_db_site,mod_hyp_db_id,mod_hyp_event_id,db_site,db_id,model_db_site,model_db_id,model_id,ordering_seq)
  )
  ;

  CREATE TABLE sg_proposed_event (
                    sg_prop_db_site                     char(16)         NOT NULL,
                    sg_prop_db_id                       bigint           NOT NULL,
                    sg_prop_event_id                    bigint           NOT NULL,
                    segment_site                        char(16)         NOT NULL,
                    segment_id                          bigint           NOT NULL,
                    ev_db_site                          char(16)         NOT NULL,
                    ev_db_id                            bigint           NOT NULL,
                    event_type_code                     bigint           NOT NULL,
                    severity_lev_db_site                char(16)         NOT NULL,
                    severity_lev_db_id                  bigint           NOT NULL,
                    severity_lev_type_code              bigint           NOT NULL,
                    gmt_proposed                        datetime(3)         NULL,
                    pr_loc_hr_delta                     smallint         NULL,
                    pr_loc_min_delta                    smallint         NULL,
                    by_org_asite                        char(16)         NULL,
                    by_agent_id                         bigint           NULL,
                    likelihood_prob                     float            NULL,
                    est_gmt_start                       datetime(3)         NULL,
                    st_loc_hr_delta                     smallint         NULL,
                    st_loc_min_delta                    smallint         NULL,
                    est_gmt_occur_end                   datetime(3)         NULL,
                    end_loc_hr_delta                    smallint         NULL,
                    end_loc_min_delta                   smallint         NULL,
                    ch_patt_db_site                     char(16)         NULL,
                    ch_patt_db_id                       bigint           NULL,
                    ch_patt_type_code                   bigint           NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    gmt_audited                         datetime(3)         NULL,
                    aud_loc_hr_delta                    smallint         NULL,
                    aud_loc_min_delta                   smallint         NULL,
                    aud_quality_code                    smallint         NULL,
                    aud_by_org_asite                    char(16)         NULL,
                    aud_by_agent_id                     bigint           NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (sg_prop_db_site,sg_prop_db_id,sg_prop_event_id)
  )
  ;

  CREATE TABLE as_proposed_event (
                    as_prop_db_site                     char(16)         NOT NULL,
                    as_prop_db_id                       bigint           NOT NULL,
                    as_prop_event_id                    bigint           NOT NULL,
                    asset_org_site                      char(16)         NOT NULL,
                    asset_id                            bigint           NOT NULL,
                    ev_db_site                          char(16)         NOT NULL,
                    ev_db_id                            bigint           NOT NULL,
                    event_type_code                     bigint           NOT NULL,
                    severity_lev_db_site                char(16)         NOT NULL,
                    severity_lev_db_id                  bigint           NOT NULL,
                    severity_lev_type_code              bigint           NOT NULL,
                    gmt_proposed                        datetime(3)         NULL,
                    pr_loc_hr_delta                     smallint         NULL,
                    pr_loc_min_delta                    smallint         NULL,
                    by_org_asite                        char(16)         NULL,
                    by_agent_id                         bigint           NULL,
                    likelihood_prob                     float            NULL,
                    est_gmt_start                       datetime(3)         NULL,
                    st_loc_hr_delta                     smallint         NULL,
                    st_loc_min_delta                    smallint         NULL,
                    est_gmt_occur_end                   datetime(3)         NULL,
                    end_loc_hr_delta                    smallint         NULL,
                    end_loc_min_delta                   smallint         NULL,
                    ch_patt_db_site                     char(16)         NULL,
                    ch_patt_db_id                       bigint           NULL,
                    ch_patt_type_code                   bigint           NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    gmt_audited                         datetime(3)         NULL,
                    aud_loc_hr_delta                    smallint         NULL,
                    aud_loc_min_delta                   smallint         NULL,
                    aud_quality_code                    smallint         NULL,
                    aud_by_org_asite                    char(16)         NULL,
                    aud_by_agent_id                     bigint           NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (as_prop_db_site,as_prop_db_id,as_prop_event_id)
  )
  ;

  CREATE TABLE sg_prop_ev_link (
                    sg_prop_db_site                     char(16)         NOT NULL,
                    sg_prop_db_id                       bigint           NOT NULL,
                    sg_prop_event_id                    bigint           NOT NULL,
                    caused_db_site                      char(16)         NOT NULL,
                    caused_db_id                        bigint           NOT NULL,
                    caused_event_id                     bigint           NOT NULL,
                    likelihood_prob                     float            NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (sg_prop_db_site,sg_prop_db_id,sg_prop_event_id,caused_db_site,caused_db_id,caused_event_id)
  )
  ;

  CREATE TABLE as_prop_ev_link (
                    as_prop_db_site                     char(16)         NOT NULL,
                    as_prop_db_id                       bigint           NOT NULL,
                    as_prop_event_id                    bigint           NOT NULL,
                    caused_db_site                      char(16)         NOT NULL,
                    caused_db_id                        bigint           NOT NULL,
                    caused_event_id                     bigint           NOT NULL,
                    likelihood_prob                     float            NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (as_prop_db_site,as_prop_db_id,as_prop_event_id,caused_db_site,caused_db_id,caused_event_id)
  )
  ;

  CREATE TABLE sg_prop_ev_ndat (
                    sg_prop_db_site                     char(16)         NOT NULL,
                    sg_prop_db_id                       bigint           NOT NULL,
                    sg_prop_event_id                    bigint           NOT NULL,
                    en_db_site                          char(16)         NOT NULL,
                    en_db_id                            bigint           NOT NULL,
                    en_type_code                        bigint           NOT NULL,
                    eu_db_site                          char(16)         NOT NULL,
                    eu_db_id                            bigint           NOT NULL,
                    eu_type_code                        bigint           NOT NULL,
                    data_value                          float            NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (sg_prop_db_site,sg_prop_db_id,sg_prop_event_id,en_db_site,en_db_id,en_type_code)
  )
  ;

  CREATE TABLE as_prop_ev_ndat (
                    as_prop_db_site                     char(16)         NOT NULL,
                    as_prop_db_id                       bigint           NOT NULL,
                    as_prop_event_id                    bigint           NOT NULL,
                    en_db_site                          char(16)         NOT NULL,
                    en_db_id                            bigint           NOT NULL,
                    en_type_code                        bigint           NOT NULL,
                    eu_db_site                          char(16)         NOT NULL,
                    eu_db_id                            bigint           NOT NULL,
                    eu_type_code                        bigint           NOT NULL,
                    data_value                          float            NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (as_prop_db_site,as_prop_db_id,as_prop_event_id,en_db_site,en_db_id,en_type_code)
  )
  ;

  CREATE TABLE sg_prop_ev_sg_func (
                    sg_prop_db_site                     char(16)         NOT NULL,
                    sg_prop_db_id                       bigint           NOT NULL,
                    sg_prop_event_id                    bigint           NOT NULL,
                    db_site                             char(16)         NOT NULL,
                    db_id                               bigint           NOT NULL,
                    segment_site                        char(16)         NOT NULL,
                    segment_id                          bigint           NOT NULL,
                    ordering_seq                        bigint           NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    by_org_asite                        char(16)         NULL,
                    by_agent_id                         bigint           NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (sg_prop_db_site,sg_prop_db_id,sg_prop_event_id,db_site,db_id,segment_site,segment_id,ordering_seq)
  )
  ;

  CREATE TABLE as_prop_ev_as_func (
                    as_prop_db_site                     char(16)         NOT NULL,
                    as_prop_db_id                       bigint           NOT NULL,
                    as_prop_event_id                    bigint           NOT NULL,
                    db_site                             char(16)         NOT NULL,
                    db_id                               bigint           NOT NULL,
                    asset_org_site                      char(16)         NOT NULL,
                    asset_id                            bigint           NOT NULL,
                    ordering_seq                        bigint           NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    by_org_asite                        char(16)         NULL,
                    by_agent_id                         bigint           NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (as_prop_db_site,as_prop_db_id,as_prop_event_id,db_site,db_id,asset_org_site,asset_id,ordering_seq)
  )
  ;

  CREATE TABLE sg_prop_ev_hyp_ev (
                    sg_prop_db_site                     char(16)         NOT NULL,
                    sg_prop_db_id                       bigint           NOT NULL,
                    sg_prop_event_id                    bigint           NOT NULL,
                    sg_hypev_db_site                    char(16)         NOT NULL,
                    sg_hypev_db_id                      bigint           NOT NULL,
                    sg_hyp_event_id                     bigint           NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    by_org_asite                        char(16)         NULL,
                    by_agent_id                         bigint           NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (sg_prop_db_site,sg_prop_db_id,sg_prop_event_id,sg_hypev_db_site,sg_hypev_db_id,sg_hyp_event_id)
  )
  ;

  CREATE TABLE as_prop_ev_hyp_ev (
                    as_prop_db_site                     char(16)         NOT NULL,
                    as_prop_db_id                       bigint           NOT NULL,
                    as_prop_event_id                    bigint           NOT NULL,
                    as_hypev_db_site                    char(16)         NOT NULL,
                    as_hypev_db_id                      bigint           NOT NULL,
                    as_hyp_event_id                     bigint           NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    by_org_asite                        char(16)         NULL,
                    by_agent_id                         bigint           NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (as_prop_db_site,as_prop_db_id,as_prop_event_id,as_hypev_db_site,as_hypev_db_id,as_hyp_event_id)
  )
  ;

  CREATE TABLE sg_prop_ev_sg_ev (
                    sg_prop_db_site                     char(16)         NOT NULL,
                    sg_prop_db_id                       bigint           NOT NULL,
                    sg_prop_event_id                    bigint           NOT NULL,
                    segment_site                        char(16)         NOT NULL,
                    segment_id                          bigint           NOT NULL,
                    ev_db_site                          char(16)         NOT NULL,
                    ev_db_id                            bigint           NOT NULL,
                    event_type_code                     bigint           NOT NULL,
                    gmt_event_start                     datetime(3)         NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    by_org_asite                        char(16)         NULL,
                    by_agent_id                         bigint           NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (sg_prop_db_site,sg_prop_db_id,sg_prop_event_id,segment_site,segment_id,ev_db_site,ev_db_id,event_type_code,gmt_event_start)
  )
  ;

  CREATE TABLE as_prop_ev_as_ev (
                    as_prop_db_site                     char(16)         NOT NULL,
                    as_prop_db_id                       bigint           NOT NULL,
                    as_prop_event_id                    bigint           NOT NULL,
                    asset_org_site                      char(16)         NOT NULL,
                    asset_id                            bigint           NOT NULL,
                    ev_db_site                          char(16)         NOT NULL,
                    ev_db_id                            bigint           NOT NULL,
                    event_type_code                     bigint           NOT NULL,
                    gmt_event_start                     datetime(3)         NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    by_org_asite                        char(16)         NULL,
                    by_agent_id                         bigint           NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (as_prop_db_site,as_prop_db_id,as_prop_event_id,asset_org_site,asset_id,ev_db_site,ev_db_id,event_type_code,gmt_event_start)
  )
  ;

  CREATE TABLE sg_prop_ev_meas_ev (
                    sg_prop_db_site                     char(16)         NOT NULL,
                    sg_prop_db_id                       bigint           NOT NULL,
                    sg_prop_event_id                    bigint           NOT NULL,
                    meas_loc_site                       char(16)         NOT NULL,
                    meas_loc_id                         bigint           NOT NULL,
                    gmt_event                           datetime(3)         NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    by_org_asite                        char(16)         NULL,
                    by_agent_id                         bigint           NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (sg_prop_db_site,sg_prop_db_id,sg_prop_event_id,meas_loc_site,meas_loc_id,gmt_event)
  )
  ;

  CREATE TABLE as_prop_ev_meas_ev (
                    as_prop_db_site                     char(16)         NOT NULL,
                    as_prop_db_id                       bigint           NOT NULL,
                    as_prop_event_id                    bigint           NOT NULL,
                    meas_loc_site                       char(16)         NOT NULL,
                    meas_loc_id                         bigint           NOT NULL,
                    gmt_event                           datetime(3)         NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    by_org_asite                        char(16)         NULL,
                    by_agent_id                         bigint           NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (as_prop_db_site,as_prop_db_id,as_prop_event_id,meas_loc_site,meas_loc_id,gmt_event)
  )
  ;

  CREATE TABLE segment_health (
                    segment_site                        char(16)         NOT NULL,
                    segment_id                          bigint           NOT NULL,
                    gmt_assessment                      datetime(3)         NOT NULL,
                    by_agent_site                       char(16)         NOT NULL,
                    by_agent_id                         bigint           NOT NULL,
                    loc_hr_delta                        smallint         NULL,
                    loc_min_delta                       smallint         NULL,
                    health_lev_db_site                  char(16)         NOT NULL,
                    health_lev_db_id                    bigint           NOT NULL,
                    health_lev_type_code                bigint           NOT NULL,
                    health_scale_precise                float            NULL,
                    likelihood_prob                     float            NULL,
                    gmt_created                         datetime(3)         NULL,
                    cr_loc_hr_delta                     smallint         NULL,
                    cr_loc_min_delta                    smallint         NULL,
                    ch_patt_db_site                     char(16)         NULL,
                    ch_patt_db_id                       bigint           NULL,
                    ch_patt_type_code                   bigint           NULL,
                    gmt_audited                         datetime(3)         NULL,
                    aud_loc_hr_delta                    smallint         NULL,
                    aud_loc_min_delta                   smallint         NULL,
                    aud_quality_code                    smallint         NULL,
                    aud_by_org_asite                    char(16)         NULL,
                    aud_by_agent_id                     bigint           NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (segment_site,segment_id,gmt_assessment,by_agent_site,by_agent_id)
  )
  ;

  CREATE TABLE asset_health (
                    asset_org_site                      char(16)         NOT NULL,
                    asset_id                            bigint           NOT NULL,
                    gmt_assessment                      datetime(3)         NOT NULL,
                    by_agent_site                       char(16)         NOT NULL,
                    by_agent_id                         bigint           NOT NULL,
                    loc_hr_delta                        smallint         NULL,
                    loc_min_delta                       smallint         NULL,
                    health_lev_db_site                  char(16)         NOT NULL,
                    health_lev_db_id                    bigint           NOT NULL,
                    health_lev_type_code                bigint           NOT NULL,
                    health_scale_precise                float            NULL,
                    likelihood_prob                     float            NULL,
                    gmt_created                         datetime(3)         NULL,
                    cr_loc_hr_delta                     smallint         NULL,
                    cr_loc_min_delta                    smallint         NULL,
                    ch_patt_db_site                     char(16)         NULL,
                    ch_patt_db_id                       bigint           NULL,
                    ch_patt_type_code                   bigint           NULL,
                    gmt_audited                         datetime(3)         NULL,
                    aud_loc_hr_delta                    smallint         NULL,
                    aud_loc_min_delta                   smallint         NULL,
                    aud_quality_code                    smallint         NULL,
                    aud_by_org_asite                    char(16)         NULL,
                    aud_by_agent_id                     bigint           NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (asset_org_site,asset_id,gmt_assessment,by_agent_site,by_agent_id)
  )
  ;

  CREATE TABLE sg_health_sg_event (
                    segment_site                        char(16)         NOT NULL,
                    segment_id                          bigint           NOT NULL,
                    gmt_assessment                      datetime(3)         NOT NULL,
                    by_agent_site                       char(16)         NOT NULL,
                    by_agent_id                         bigint           NOT NULL,
                    ev_sg_site                          char(16)         NOT NULL,
                    ev_sg_id                            bigint           NOT NULL,
                    ev_db_site                          char(16)         NOT NULL,
                    ev_db_id                            bigint           NOT NULL,
                    event_type_code                     bigint           NOT NULL,
                    gmt_event_start                     datetime(3)         NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    assoc_by_org_asite                  char(16)         NULL,
                    assoc_by_agent_id                   bigint           NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (segment_site,segment_id,gmt_assessment,by_agent_site,by_agent_id,ev_sg_site,ev_sg_id,ev_db_site,ev_db_id,event_type_code,gmt_event_start)
  )
  ;

  CREATE TABLE as_health_as_event (
                    asset_org_site                      char(16)         NOT NULL,
                    asset_id                            bigint           NOT NULL,
                    gmt_assessment                      datetime(3)         NOT NULL,
                    by_agent_site                       char(16)         NOT NULL,
                    by_agent_id                         bigint           NOT NULL,
                    ev_as_org_site                      char(16)         NOT NULL,
                    ev_as_id                            bigint           NOT NULL,
                    ev_db_site                          char(16)         NOT NULL,
                    ev_db_id                            bigint           NOT NULL,
                    event_type_code                     bigint           NOT NULL,
                    gmt_event_start                     datetime(3)         NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    assoc_by_org_asite                  char(16)         NULL,
                    assoc_by_agent_id                   bigint           NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (asset_org_site,asset_id,gmt_assessment,by_agent_site,by_agent_id,ev_as_org_site,ev_as_id,ev_db_site,ev_db_id,event_type_code,gmt_event_start)
  )
  ;

  CREATE TABLE sg_health_sg_prop_ev (
                    segment_site                        char(16)         NOT NULL,
                    segment_id                          bigint           NOT NULL,
                    gmt_assessment                      datetime(3)         NOT NULL,
                    by_agent_site                       char(16)         NOT NULL,
                    by_agent_id                         bigint           NOT NULL,
                    sg_prop_db_site                     char(16)         NOT NULL,
                    sg_prop_db_id                       bigint           NOT NULL,
                    sg_prop_event_id                    bigint           NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    assoc_by_org_asite                  char(16)         NULL,
                    assoc_by_agent_id                   bigint           NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (segment_site,segment_id,gmt_assessment,by_agent_site,by_agent_id,sg_prop_db_site,sg_prop_db_id,sg_prop_event_id)
  )
  ;

  CREATE TABLE as_health_as_prop_ev (
                    asset_org_site                      char(16)         NOT NULL,
                    asset_id                            bigint           NOT NULL,
                    gmt_assessment                      datetime(3)         NOT NULL,
                    by_agent_site                       char(16)         NOT NULL,
                    by_agent_id                         bigint           NOT NULL,
                    as_prop_db_site                     char(16)         NOT NULL,
                    as_prop_db_id                       bigint           NOT NULL,
                    as_prop_event_id                    bigint           NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    assoc_by_org_asite                  char(16)         NULL,
                    assoc_by_agent_id                   bigint           NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (asset_org_site,asset_id,gmt_assessment,by_agent_site,by_agent_id,as_prop_db_site,as_prop_db_id,as_prop_event_id)
  )
  ;

  CREATE TABLE sg_remaining_life (
                    segment_site                        char(16)         NOT NULL,
                    segment_id                          bigint           NOT NULL,
                    gmt_assessment                      datetime(3)         NOT NULL,
                    by_agent_site                       char(16)         NOT NULL,
                    by_agent_id                         bigint           NOT NULL,
                    loc_hr_delta                        smallint         NULL,
                    loc_min_delta                       smallint         NULL,
                    est_remaining_life                  float            NULL,
                    erl_eu_db_site                      char(16)         NULL,
                    erl_eu_db_id                        bigint           NULL,
                    erl_eu_type_code                    bigint           NULL,
                    error_estimate                      float            NULL,
                    err_eu_db_site                      char(16)         NULL,
                    err_eu_db_id                        bigint           NULL,
                    err_eu_type_code                    bigint           NULL,
                    likelihood_prob                     float            NULL,
                    gmt_created                         datetime(3)         NULL,
                    cr_loc_hr_delta                     smallint         NULL,
                    cr_loc_min_delta                    smallint         NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (segment_site,segment_id,gmt_assessment,by_agent_site,by_agent_id)
  )
  ;

  CREATE TABLE as_remaining_life (
                    asset_org_site                      char(16)         NOT NULL,
                    asset_id                            bigint           NOT NULL,
                    gmt_assessment                      datetime(3)         NOT NULL,
                    by_agent_site                       char(16)         NOT NULL,
                    by_agent_id                         bigint           NOT NULL,
                    loc_hr_delta                        smallint         NULL,
                    loc_min_delta                       smallint         NULL,
                    est_remaining_life                  float            NULL,
                    erl_eu_db_site                      char(16)         NULL,
                    erl_eu_db_id                        bigint           NULL,
                    erl_eu_type_code                    bigint           NULL,
                    error_estimate                      float            NULL,
                    err_eu_db_site                      char(16)         NULL,
                    err_eu_db_id                        bigint           NULL,
                    err_eu_type_code                    bigint           NULL,
                    likelihood_prob                     float            NULL,
                    gmt_created                         datetime(3)         NULL,
                    cr_loc_hr_delta                     smallint         NULL,
                    cr_loc_min_delta                    smallint         NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (asset_org_site,asset_id,gmt_assessment,by_agent_site,by_agent_id)
  )
  ;

  CREATE TABLE sg_recommendation (
                    segment_site                        char(16)         NOT NULL,
                    segment_id                          bigint           NOT NULL,
                    gmt_recommendation                  datetime(3)         NOT NULL,
                    by_agent_site                       char(16)         NOT NULL,
                    by_agent_id                         bigint           NOT NULL,
                    loc_hr_delta                        smallint         NULL,
                    loc_min_delta                       smallint         NULL,
                    priority_lev_db_site                char(16)         NULL,
                    priority_lev_db_id                  bigint           NULL,
                    priority_lev_type_code              bigint           NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (segment_site,segment_id,gmt_recommendation,by_agent_site,by_agent_id)
  )
  ;

  CREATE TABLE as_recommendation (
                    asset_org_site                      char(16)         NOT NULL,
                    asset_id                            bigint           NOT NULL,
                    gmt_recommendation                  datetime(3)         NOT NULL,
                    by_agent_site                       char(16)         NOT NULL,
                    by_agent_id                         bigint           NOT NULL,
                    loc_hr_delta                        smallint         NULL,
                    loc_min_delta                       smallint         NULL,
                    priority_lev_db_site                char(16)         NULL,
                    priority_lev_db_id                  bigint           NULL,
                    priority_lev_type_code              bigint           NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (asset_org_site,asset_id,gmt_recommendation,by_agent_site,by_agent_id)
  )
  ;

  CREATE TABLE ol_recommendation (
                    ord_list_db_site                    char(16)         NOT NULL,
                    ord_list_db_id                      bigint           NOT NULL,
                    ord_list_id                         bigint           NOT NULL,
                    gmt_recommendation                  datetime(3)         NOT NULL,
                    by_agent_site                       char(16)         NOT NULL,
                    by_agent_id                         bigint           NOT NULL,
                    loc_hr_delta                        smallint         NULL,
                    loc_min_delta                       smallint         NULL,
                    priority_lev_db_site                char(16)         NULL,
                    priority_lev_db_id                  bigint           NULL,
                    priority_lev_type_code              bigint           NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (ord_list_db_site,ord_list_db_id,ord_list_id,gmt_recommendation,by_agent_site,by_agent_id)
  )
  ;

  CREATE TABLE sg_type_recomm (
                    sg_db_site                          char(16)         NOT NULL,
                    sg_db_id                            bigint           NOT NULL,
                    sg_type_code                        bigint           NOT NULL,
                    gmt_recommendation                  datetime(3)         NOT NULL,
                    by_agent_site                       char(16)         NOT NULL,
                    by_agent_id                         bigint           NOT NULL,
                    loc_hr_delta                        smallint         NULL,
                    loc_min_delta                       smallint         NULL,
                    priority_lev_db_site                char(16)         NULL,
                    priority_lev_db_id                  bigint           NULL,
                    priority_lev_type_code              bigint           NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (sg_db_site,sg_db_id,sg_type_code,gmt_recommendation,by_agent_site,by_agent_id)
  )
  ;

  CREATE TABLE as_type_recomm (
                    as_db_site                          char(16)         NOT NULL,
                    as_db_id                            bigint           NOT NULL,
                    as_type_code                        bigint           NOT NULL,
                    gmt_recommendation                  datetime(3)         NOT NULL,
                    by_agent_site                       char(16)         NOT NULL,
                    by_agent_id                         bigint           NOT NULL,
                    loc_hr_delta                        smallint         NULL,
                    loc_min_delta                       smallint         NULL,
                    priority_lev_db_site                char(16)         NULL,
                    priority_lev_db_id                  bigint           NULL,
                    priority_lev_type_code              bigint           NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (as_db_site,as_db_id,as_type_code,gmt_recommendation,by_agent_site,by_agent_id)
  )
  ;

  CREATE TABLE model_recomm (
                    model_db_site                       char(16)         NOT NULL,
                    model_db_id                         bigint           NOT NULL,
                    model_id                            bigint           NOT NULL,
                    gmt_recommendation                  datetime(3)         NOT NULL,
                    by_agent_site                       char(16)         NOT NULL,
                    by_agent_id                         bigint           NOT NULL,
                    loc_hr_delta                        smallint         NULL,
                    loc_min_delta                       smallint         NULL,
                    priority_lev_db_site                char(16)         NULL,
                    priority_lev_db_id                  bigint           NULL,
                    priority_lev_type_code              bigint           NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (model_db_site,model_db_id,model_id,gmt_recommendation,by_agent_site,by_agent_id)
  )
  ;

  CREATE TABLE sg_rec_remark (
                    segment_site                        char(16)         NOT NULL,
                    segment_id                          bigint           NOT NULL,
                    gmt_recommendation                  datetime(3)         NOT NULL,
                    by_agent_site                       char(16)         NOT NULL,
                    by_agent_id                         bigint           NOT NULL,
                    ordering_seq                        bigint           NOT NULL,
                    remark_text                         nvarchar(254)     NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (segment_site,segment_id,gmt_recommendation,by_agent_site,by_agent_id,ordering_seq)
  )
  ;

  CREATE TABLE as_rec_remark (
                    asset_org_site                      char(16)         NOT NULL,
                    asset_id                            bigint           NOT NULL,
                    gmt_recommendation                  datetime(3)         NOT NULL,
                    by_agent_site                       char(16)         NOT NULL,
                    by_agent_id                         bigint           NOT NULL,
                    ordering_seq                        bigint           NOT NULL,
                    remark_text                         nvarchar(254)     NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (asset_org_site,asset_id,gmt_recommendation,by_agent_site,by_agent_id,ordering_seq)
  )
  ;

  CREATE TABLE ol_rec_remark (
                    ord_list_db_site                    char(16)         NOT NULL,
                    ord_list_db_id                      bigint           NOT NULL,
                    ord_list_id                         bigint           NOT NULL,
                    gmt_recommendation                  datetime(3)         NOT NULL,
                    by_agent_site                       char(16)         NOT NULL,
                    by_agent_id                         bigint           NOT NULL,
                    ordering_seq                        bigint           NOT NULL,
                    remark_text                         nvarchar(254)     NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (ord_list_db_site,ord_list_db_id,ord_list_id,gmt_recommendation,by_agent_site,by_agent_id,ordering_seq)
  )
  ;

  CREATE TABLE sg_type_rec_remark (
                    sg_db_site                          char(16)         NOT NULL,
                    sg_db_id                            bigint           NOT NULL,
                    sg_type_code                        bigint           NOT NULL,
                    gmt_recommendation                  datetime(3)         NOT NULL,
                    by_agent_site                       char(16)         NOT NULL,
                    by_agent_id                         bigint           NOT NULL,
                    ordering_seq                        bigint           NOT NULL,
                    remark_text                         nvarchar(254)     NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (sg_db_site,sg_db_id,sg_type_code,gmt_recommendation,by_agent_site,by_agent_id,ordering_seq)
  )
  ;

  CREATE TABLE as_type_rec_remark (
                    as_db_site                          char(16)         NOT NULL,
                    as_db_id                            bigint           NOT NULL,
                    as_type_code                        bigint           NOT NULL,
                    gmt_recommendation                  datetime(3)         NOT NULL,
                    by_agent_site                       char(16)         NOT NULL,
                    by_agent_id                         bigint           NOT NULL,
                    ordering_seq                        bigint           NOT NULL,
                    remark_text                         nvarchar(254)     NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (as_db_site,as_db_id,as_type_code,gmt_recommendation,by_agent_site,by_agent_id,ordering_seq)
  )
  ;

  CREATE TABLE model_rec_remark (
                    model_db_site                       char(16)         NOT NULL,
                    model_db_id                         bigint           NOT NULL,
                    model_id                            bigint           NOT NULL,
                    gmt_recommendation                  datetime(3)         NOT NULL,
                    by_agent_site                       char(16)         NOT NULL,
                    by_agent_id                         bigint           NOT NULL,
                    ordering_seq                        bigint           NOT NULL,
                    remark_text                         nvarchar(254)     NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (model_db_site,model_db_id,model_id,gmt_recommendation,by_agent_site,by_agent_id,ordering_seq)
  )
  ;

  CREATE TABLE sg_rec_blob (
                    segment_site                        char(16)         NOT NULL,
                    segment_id                          bigint           NOT NULL,
                    gmt_recommendation                  datetime(3)         NOT NULL,
                    by_agent_site                       char(16)         NOT NULL,
                    by_agent_id                         bigint           NOT NULL,
                    bd_db_site                          char(16)         NOT NULL,
                    bd_db_id                            bigint           NOT NULL,
                    bd_type_code                        bigint           NOT NULL,
                    ordering_seq                        bigint           NOT NULL,
                    user_tag_ident                      nvarchar(254)    NULL,
                    name                                nvarchar(254)    NULL,
                    assoc_file_name                     nvarchar(254)    NULL,
                    image_data                          longblob            NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (segment_site,segment_id,gmt_recommendation,by_agent_site,by_agent_id,bd_db_site,bd_db_id,bd_type_code,ordering_seq)
  )
  ;

  CREATE TABLE as_rec_blob (
                    asset_org_site                      char(16)         NOT NULL,
                    asset_id                            bigint           NOT NULL,
                    gmt_recommendation                  datetime(3)         NOT NULL,
                    by_agent_site                       char(16)         NOT NULL,
                    by_agent_id                         bigint           NOT NULL,
                    bd_db_site                          char(16)         NOT NULL,
                    bd_db_id                            bigint           NOT NULL,
                    bd_type_code                        bigint           NOT NULL,
                    ordering_seq                        bigint           NOT NULL,
                    user_tag_ident                      nvarchar(254)    NULL,
                    name                                nvarchar(254)    NULL,
                    assoc_file_name                     nvarchar(254)    NULL,
                    image_data                          longblob            NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (asset_org_site,asset_id,gmt_recommendation,by_agent_site,by_agent_id,bd_db_site,bd_db_id,bd_type_code,ordering_seq)
  )
  ;

  CREATE TABLE sg_type_rec_blob (
                    sg_db_site                          char(16)         NOT NULL,
                    sg_db_id                            bigint           NOT NULL,
                    sg_type_code                        bigint           NOT NULL,
                    gmt_recommendation                  datetime(3)         NOT NULL,
                    by_agent_site                       char(16)         NOT NULL,
                    by_agent_id                         bigint           NOT NULL,
                    bd_db_site                          char(16)         NOT NULL,
                    bd_db_id                            bigint           NOT NULL,
                    bd_type_code                        bigint           NOT NULL,
                    ordering_seq                        bigint           NOT NULL,
                    user_tag_ident                      nvarchar(254)    NULL,
                    name                                nvarchar(254)    NULL,
                    assoc_file_name                     nvarchar(254)    NULL,
                    image_data                          longblob            NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (sg_db_site,sg_db_id,sg_type_code,gmt_recommendation,by_agent_site,by_agent_id,bd_db_site,bd_db_id,bd_type_code,ordering_seq)
  )
  ;

  CREATE TABLE as_type_rec_blob (
                    as_db_site                          char(16)         NOT NULL,
                    as_db_id                            bigint           NOT NULL,
                    as_type_code                        bigint           NOT NULL,
                    gmt_recommendation                  datetime(3)         NOT NULL,
                    by_agent_site                       char(16)         NOT NULL,
                    by_agent_id                         bigint           NOT NULL,
                    bd_db_site                          char(16)         NOT NULL,
                    bd_db_id                            bigint           NOT NULL,
                    bd_type_code                        bigint           NOT NULL,
                    ordering_seq                        bigint           NOT NULL,
                    user_tag_ident                      nvarchar(254)    NULL,
                    name                                nvarchar(254)    NULL,
                    assoc_file_name                     nvarchar(254)    NULL,
                    image_data                          longblob            NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (as_db_site,as_db_id,as_type_code,gmt_recommendation,by_agent_site,by_agent_id,bd_db_site,bd_db_id,bd_type_code,ordering_seq)
  )
  ;

  CREATE TABLE model_rec_blob (
                    model_db_site                       char(16)         NOT NULL,
                    model_db_id                         bigint           NOT NULL,
                    model_id                            bigint           NOT NULL,
                    gmt_recommendation                  datetime(3)         NOT NULL,
                    by_agent_site                       char(16)         NOT NULL,
                    by_agent_id                         bigint           NOT NULL,
                    bd_db_site                          char(16)         NOT NULL,
                    bd_db_id                            bigint           NOT NULL,
                    bd_type_code                        bigint           NOT NULL,
                    ordering_seq                        bigint           NOT NULL,
                    user_tag_ident                      nvarchar(254)    NULL,
                    name                                nvarchar(254)    NULL,
                    assoc_file_name                     nvarchar(254)    NULL,
                    image_data                          longblob            NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (model_db_site,model_db_id,model_id,gmt_recommendation,by_agent_site,by_agent_id,bd_db_site,bd_db_id,bd_type_code,ordering_seq)
  )
  ;

  CREATE TABLE sg_rec_sg_health (
                    segment_site                        char(16)         NOT NULL,
                    segment_id                          bigint           NOT NULL,
                    gmt_recommendation                  datetime(3)         NOT NULL,
                    by_agent_site                       char(16)         NOT NULL,
                    by_agent_id                         bigint           NOT NULL,
                    hth_sg_site                         char(16)         NOT NULL,
                    hth_sg_id                           bigint           NOT NULL,
                    hth_gmt_assess                      datetime(3)         NOT NULL,
                    hth_by_agent_site                   char(16)         NOT NULL,
                    hth_by_agent_id                     bigint           NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (segment_site,segment_id,gmt_recommendation,by_agent_site,by_agent_id,hth_sg_site,hth_sg_id,hth_gmt_assess,hth_by_agent_site,hth_by_agent_id)
  )
  ;

  CREATE TABLE as_rec_as_health (
                    asset_org_site                      char(16)         NOT NULL,
                    asset_id                            bigint           NOT NULL,
                    gmt_recommendation                  datetime(3)         NOT NULL,
                    by_agent_site                       char(16)         NOT NULL,
                    by_agent_id                         bigint           NOT NULL,
                    hth_as_org_site                     char(16)         NOT NULL,
                    hth_asset_id                        bigint           NOT NULL,
                    hth_gmt_assess                      datetime(3)         NOT NULL,
                    hth_by_agent_site                   char(16)         NOT NULL,
                    hth_by_agent_id                     bigint           NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (asset_org_site,asset_id,gmt_recommendation,by_agent_site,by_agent_id,hth_as_org_site,hth_asset_id,hth_gmt_assess,hth_by_agent_site,hth_by_agent_id)
  )
  ;

  CREATE TABLE sg_rec_sg_event (
                    segment_site                        char(16)         NOT NULL,
                    segment_id                          bigint           NOT NULL,
                    gmt_recommendation                  datetime(3)         NOT NULL,
                    by_agent_site                       char(16)         NOT NULL,
                    by_agent_id                         bigint           NOT NULL,
                    ev_sg_site                          char(16)         NOT NULL,
                    ev_sg_id                            bigint           NOT NULL,
                    ev_db_site                          char(16)         NOT NULL,
                    ev_db_id                            bigint           NOT NULL,
                    event_type_code                     bigint           NOT NULL,
                    gmt_event_start                     datetime(3)         NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (segment_site,segment_id,gmt_recommendation,by_agent_site,by_agent_id,ev_sg_site,ev_sg_id,ev_db_site,ev_db_id,event_type_code,gmt_event_start)
  )
  ;

  CREATE TABLE as_rec_as_event (
                    asset_org_site                      char(16)         NOT NULL,
                    asset_id                            bigint           NOT NULL,
                    gmt_recommendation                  datetime(3)         NOT NULL,
                    by_agent_site                       char(16)         NOT NULL,
                    by_agent_id                         bigint           NOT NULL,
                    ev_as_org_site                      char(16)         NOT NULL,
                    ev_as_id                            bigint           NOT NULL,
                    ev_db_site                          char(16)         NOT NULL,
                    ev_db_id                            bigint           NOT NULL,
                    event_type_code                     bigint           NOT NULL,
                    gmt_event_start                     datetime(3)         NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (asset_org_site,asset_id,gmt_recommendation,by_agent_site,by_agent_id,ev_as_org_site,ev_as_id,ev_db_site,ev_db_id,event_type_code,gmt_event_start)
  )
  ;

  CREATE TABLE sg_rec_sg_hyp_ev (
                    segment_site                        char(16)         NOT NULL,
                    segment_id                          bigint           NOT NULL,
                    gmt_recommendation                  datetime(3)         NOT NULL,
                    by_agent_site                       char(16)         NOT NULL,
                    by_agent_id                         bigint           NOT NULL,
                    sg_hyp_db_site                      char(16)         NOT NULL,
                    sg_hyp_db_id                        bigint           NOT NULL,
                    sg_hyp_event_id                     bigint           NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (segment_site,segment_id,gmt_recommendation,by_agent_site,by_agent_id,sg_hyp_db_site,sg_hyp_db_id,sg_hyp_event_id)
  )
  ;

  CREATE TABLE as_rec_as_hyp_ev (
                    asset_org_site                      char(16)         NOT NULL,
                    asset_id                            bigint           NOT NULL,
                    gmt_recommendation                  datetime(3)         NOT NULL,
                    by_agent_site                       char(16)         NOT NULL,
                    by_agent_id                         bigint           NOT NULL,
                    as_hyp_db_site                      char(16)         NOT NULL,
                    as_hyp_db_id                        bigint           NOT NULL,
                    as_hyp_event_id                     bigint           NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (asset_org_site,asset_id,gmt_recommendation,by_agent_site,by_agent_id,as_hyp_db_site,as_hyp_db_id,as_hyp_event_id)
  )
  ;

  CREATE TABLE sg_type_rec_hyp_ev (
                    sg_db_site                          char(16)         NOT NULL,
                    sg_db_id                            bigint           NOT NULL,
                    sg_type_code                        bigint           NOT NULL,
                    gmt_recommendation                  datetime(3)         NOT NULL,
                    by_agent_site                       char(16)         NOT NULL,
                    by_agent_id                         bigint           NOT NULL,
                    sg_hyp_db_site                      char(16)         NOT NULL,
                    sg_hyp_db_id                        bigint           NOT NULL,
                    sg_hyp_event_id                     bigint           NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (sg_db_site,sg_db_id,sg_type_code,gmt_recommendation,by_agent_site,by_agent_id,sg_hyp_db_site,sg_hyp_db_id,sg_hyp_event_id)
  )
  ;

  CREATE TABLE as_type_rec_hyp_ev (
                    as_db_site                          char(16)         NOT NULL,
                    as_db_id                            bigint           NOT NULL,
                    as_type_code                        bigint           NOT NULL,
                    gmt_recommendation                  datetime(3)         NOT NULL,
                    by_agent_site                       char(16)         NOT NULL,
                    by_agent_id                         bigint           NOT NULL,
                    as_hyp_db_site                      char(16)         NOT NULL,
                    as_hyp_db_id                        bigint           NOT NULL,
                    as_hyp_event_id                     bigint           NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (as_db_site,as_db_id,as_type_code,gmt_recommendation,by_agent_site,by_agent_id,as_hyp_db_site,as_hyp_db_id,as_hyp_event_id)
  )
  ;

  CREATE TABLE model_rec_hyp_ev (
                    model_db_site                       char(16)         NOT NULL,
                    model_db_id                         bigint           NOT NULL,
                    model_id                            bigint           NOT NULL,
                    gmt_recommendation                  datetime(3)         NOT NULL,
                    by_agent_site                       char(16)         NOT NULL,
                    by_agent_id                         bigint           NOT NULL,
                    mod_hyp_db_site                     char(16)         NOT NULL,
                    mod_hyp_db_id                       bigint           NOT NULL,
                    mod_hyp_event_id                    bigint           NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (model_db_site,model_db_id,model_id,gmt_recommendation,by_agent_site,by_agent_id,mod_hyp_db_site,mod_hyp_db_id,mod_hyp_event_id)
  )
  ;

  CREATE TABLE sg_rec_sg_prop_ev (
                    segment_site                        char(16)         NOT NULL,
                    segment_id                          bigint           NOT NULL,
                    gmt_recommendation                  datetime(3)         NOT NULL,
                    by_agent_site                       char(16)         NOT NULL,
                    by_agent_id                         bigint           NOT NULL,
                    sg_prop_db_site                     char(16)         NOT NULL,
                    sg_prop_db_id                       bigint           NOT NULL,
                    sg_prop_event_id                    bigint           NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (segment_site,segment_id,gmt_recommendation,by_agent_site,by_agent_id,sg_prop_db_site,sg_prop_db_id,sg_prop_event_id)
  )
  ;

  CREATE TABLE as_rec_as_prop_ev (
                    asset_org_site                      char(16)         NOT NULL,
                    asset_id                            bigint           NOT NULL,
                    gmt_recommendation                  datetime(3)         NOT NULL,
                    by_agent_site                       char(16)         NOT NULL,
                    by_agent_id                         bigint           NOT NULL,
                    as_prop_db_site                     char(16)         NOT NULL,
                    as_prop_db_id                       bigint           NOT NULL,
                    as_prop_event_id                    bigint           NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (asset_org_site,asset_id,gmt_recommendation,by_agent_site,by_agent_id,as_prop_db_site,as_prop_db_id,as_prop_event_id)
  )
  ;

  CREATE TABLE sg_rec_mevent (
                    segment_site                        char(16)         NOT NULL,
                    segment_id                          bigint           NOT NULL,
                    gmt_recommendation                  datetime(3)         NOT NULL,
                    by_agent_site                       char(16)         NOT NULL,
                    by_agent_id                         bigint           NOT NULL,
                    meas_loc_site                       char(16)         NOT NULL,
                    meas_loc_id                         bigint           NOT NULL,
                    gmt_event                           datetime(3)         NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (segment_site,segment_id,gmt_recommendation,by_agent_site,by_agent_id,meas_loc_site,meas_loc_id,gmt_event)
  )
  ;

  CREATE TABLE as_rec_mevent (
                    asset_org_site                      char(16)         NOT NULL,
                    asset_id                            bigint           NOT NULL,
                    gmt_recommendation                  datetime(3)         NOT NULL,
                    by_agent_site                       char(16)         NOT NULL,
                    by_agent_id                         bigint           NOT NULL,
                    meas_loc_site                       char(16)         NOT NULL,
                    meas_loc_id                         bigint           NOT NULL,
                    gmt_event                           datetime(3)         NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (asset_org_site,asset_id,gmt_recommendation,by_agent_site,by_agent_id,meas_loc_site,meas_loc_id,gmt_event)
  )
  ;

  CREATE TABLE work_request (
                    work_req_db_site                    char(16)         NOT NULL,
                    work_req_db_id                      bigint           NOT NULL,
                    work_req_id                         bigint           NOT NULL,
                    work_order_id                       bigint           NULL,
                    work_order_db_id                    bigint           NULL,
                    work_order_db_site                  char(16)         NULL,
                    wm_type_db_site                     char(16)         NOT NULL,
                    wm_type_db_id                       bigint           NOT NULL,
                    wm_type_code                        bigint           NOT NULL,
                    task_db_site                        char(16)         NULL,
                    task_db_id                          bigint           NULL,
                    task_type_code                      bigint           NULL,
                    gmt_created                         datetime(3)         NULL,
                    loc_hr_delta                        smallint         NULL,
                    loc_min_delta                       smallint         NULL,
                    by_agent_site                       char(16)         NULL,
                    by_agent_id                         bigint           NULL,
                    start_before_gmt                    datetime(3)         NULL,
                    end_before_gmt                      datetime(3)         NULL,
                    start_after_gmt                     datetime(3)         NULL,
                    end_after_gmt                       datetime(3)         NULL,
                    repeat_interval                     bigint           NULL,
                    int_eu_db_site                      char(16)         NULL,
                    int_eu_db_id                        bigint           NULL,
                    int_eu_type_code                    bigint           NULL,
                    from_sy_agent_site                  char(16)         NULL,
                    from_sy_agent_id                    bigint           NULL,
                    to_agent_site                       char(16)         NULL,
                    to_agent_id                         bigint           NULL,
                    priority_lev_db_site                char(16)         NULL,
                    priority_lev_db_id                  bigint           NULL,
                    priority_lev_type_code              bigint           NULL,
                    eng_study_entry_db_site             char(16)         NULL,
                    eng_study_entry_db_id               bigint           NULL,
                    eng_study_entry_id                  bigint           NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    long_description                    nvarchar(4000)    NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (work_req_db_site,work_req_db_id,work_req_id)
  )
  ;

  CREATE TABLE solution_package (
                    sol_pack_db_site                    char(16)         NOT NULL,
                    sol_pack_db_id                      bigint           NOT NULL,
                    sol_pack_id                         bigint           NOT NULL,
                    sol_db_site                         char(16)         NOT NULL,
                    sol_db_id                           bigint           NOT NULL,
                    sol_type_code                       bigint           NOT NULL,
                    gmt_created                         datetime(3)         NULL,
                    loc_hr_delta                        smallint         NULL,
                    loc_min_delta                       smallint         NULL,
                    priority_lev_db_site                char(16)         NULL,
                    priority_lev_db_id                  bigint           NULL,
                    priority_lev_type_code              bigint           NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (sol_pack_db_site,sol_pack_db_id,sol_pack_id)
  )
  ;

  CREATE TABLE request (
                    req_db_site                         char(16)         NOT NULL,
                    req_db_id                           bigint           NOT NULL,
                    request_id                          bigint           NOT NULL,
                    gmt_created                         datetime(3)         NULL,
                    loc_hr_delta                        smallint         NULL,
                    loc_min_delta                       smallint         NULL,
                    by_agent_site                       char(16)         NULL,
                    by_agent_id                         bigint           NULL,
                    from_sy_agent_site                  char(16)         NULL,
                    from_sy_agent_id                    bigint           NULL,
                    priority_lev_db_site                char(16)         NULL,
                    priority_lev_db_id                  bigint           NULL,
                    priority_lev_type_code              bigint           NULL,
                    eng_study_entry_db_site             char(16)         NULL,
                    eng_study_entry_db_id               bigint           NULL,
                    eng_study_entry_id                  bigint           NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (req_db_site,req_db_id,request_id)
  )
  ;

  CREATE TABLE sg_req_for_work (
                    req_db_site                         char(16)         NOT NULL,
                    req_db_id                           bigint           NOT NULL,
                    request_id                          bigint           NOT NULL,
                    segment_site                        char(16)         NOT NULL,
                    segment_id                          bigint           NOT NULL,
                    wm_type_db_site                     char(16)         NOT NULL,
                    wm_type_db_id                       bigint           NOT NULL,
                    wm_type_code                        bigint           NOT NULL,
                    task_db_site                        char(16)         NOT NULL,
                    task_db_id                          bigint           NOT NULL,
                    task_type_code                      bigint           NOT NULL,
                    auto_approve                        char(1)          NULL,
                    start_before_gmt                    datetime(3)         NULL,
                    end_before_gmt                      datetime(3)         NULL,
                    start_after_gmt                     datetime(3)         NULL,
                    end_after_gmt                       datetime(3)         NULL,
                    repeat_interval                     bigint           NULL,
                    int_eu_db_site                      char(16)         NULL,
                    int_eu_db_id                        bigint           NULL,
                    int_eu_type_code                    bigint           NULL,
                    to_agent_site                       char(16)         NULL,
                    to_agent_id                         bigint           NULL,
                    sol_pack_db_site                    char(16)         NULL,
                    sol_pack_db_id                      bigint           NULL,
                    sol_pack_id                         bigint           NULL,
                    rec_segment_site                    char(16)         NULL,
                    rec_segment_id                      bigint           NULL,
                    rec_gmt_recomm                      datetime(3)         NULL,
                    rec_by_agent_site                   char(16)         NULL,
                    rec_by_agent_id                     bigint           NULL,
                    work_req_db_site                    char(16)         NULL,
                    work_req_db_id                      bigint           NULL,
                    work_req_id                         bigint           NULL,
                    work_order_db_site                  char(16)         NULL,
                    work_order_db_id                    bigint           NULL,
                    work_order_id                       bigint           NULL,
                    name                                nvarchar(254)     NULL,
                    long_description                    nvarchar(4000)    NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (req_db_site,req_db_id,request_id)
     ,CHECK (auto_approve in ('Y','N'))
                                     )
  ;

  CREATE TABLE as_req_for_work (
                    req_db_site                         char(16)         NOT NULL,
                    req_db_id                           bigint           NOT NULL,
                    request_id                          bigint           NOT NULL,
                    asset_org_site                      char(16)         NOT NULL,
                    asset_id                            bigint           NOT NULL,
                    wm_type_db_site                     char(16)         NOT NULL,
                    wm_type_db_id                       bigint           NOT NULL,
                    wm_type_code                        bigint           NOT NULL,
                    task_db_site                        char(16)         NOT NULL,
                    task_db_id                          bigint           NOT NULL,
                    task_type_code                      bigint           NOT NULL,
                    auto_approve                        char(1)          NULL,
                    start_before_gmt                    datetime(3)         NULL,
                    end_before_gmt                      datetime(3)         NULL,
                    start_after_gmt                     datetime(3)         NULL,
                    end_after_gmt                       datetime(3)         NULL,
                    repeat_interval                     bigint           NULL,
                    int_eu_db_site                      char(16)         NULL,
                    int_eu_db_id                        bigint           NULL,
                    int_eu_type_code                    bigint           NULL,
                    to_agent_site                       char(16)         NULL,
                    to_agent_id                         bigint           NULL,
                    sol_pack_db_site                    char(16)         NULL,
                    sol_pack_db_id                      bigint           NULL,
                    sol_pack_id                         bigint           NULL,
                    rec_asset_org_site                  char(16)         NULL,
                    rec_asset_id                        bigint           NULL,
                    rec_gmt_recomm                      datetime(3)         NULL,
                    rec_by_agent_site                   char(16)         NULL,
                    rec_by_agent_id                     bigint           NULL,
                    work_req_db_site                    char(16)         NULL,
                    work_req_db_id                      bigint           NULL,
                    work_req_id                         bigint           NULL,
                    work_order_db_site                  char(16)         NULL,
                    work_order_db_id                    bigint           NULL,
                    work_order_id                       bigint           NULL,
                    name                                nvarchar(254)     NULL,
                    long_description                    nvarchar(4000)    NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (req_db_site,req_db_id,request_id)
     ,CHECK (auto_approve in ('Y','N'))
                                     )
  ;

  CREATE TABLE ol_req_for_work (
                    req_db_site                         char(16)         NOT NULL,
                    req_db_id                           bigint           NOT NULL,
                    request_id                          bigint           NOT NULL,
                    ord_list_db_site                    char(16)         NOT NULL,
                    ord_list_db_id                      bigint           NOT NULL,
                    ord_list_id                         bigint           NOT NULL,
                    wm_type_db_site                     char(16)         NOT NULL,
                    wm_type_db_id                       bigint           NOT NULL,
                    wm_type_code                        bigint           NOT NULL,
                    task_db_site                        char(16)         NOT NULL,
                    task_db_id                          bigint           NOT NULL,
                    task_type_code                      bigint           NOT NULL,
                    auto_approve                        char(1)          NULL,
                    start_before_gmt                    datetime(3)         NULL,
                    end_before_gmt                      datetime(3)         NULL,
                    start_after_gmt                     datetime(3)         NULL,
                    end_after_gmt                       datetime(3)         NULL,
                    repeat_interval                     bigint           NULL,
                    int_eu_db_site                      char(16)         NULL,
                    int_eu_db_id                        bigint           NULL,
                    int_eu_type_code                    bigint           NULL,
                    to_agent_site                       char(16)         NULL,
                    to_agent_id                         bigint           NULL,
                    sol_pack_db_site                    char(16)         NULL,
                    sol_pack_db_id                      bigint           NULL,
                    sol_pack_id                         bigint           NULL,
                    rec_ord_db_site                     char(16)         NULL,
                    rec_ord_db_id                       bigint           NULL,
                    rec_ord_list_id                     bigint           NULL,
                    rec_gmt_recomm                      datetime(3)         NULL,
                    rec_by_agent_site                   char(16)         NULL,
                    rec_by_agent_id                     bigint           NULL,
                    work_req_db_site                    char(16)         NULL,
                    work_req_db_id                      bigint           NULL,
                    work_req_id                         bigint           NULL,
                    work_order_db_site                  char(16)         NULL,
                    work_order_db_id                    bigint           NULL,
                    work_order_id                       bigint           NULL,
                    name                                nvarchar(254)     NULL,
                    long_description                    nvarchar(4000)    NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (req_db_site,req_db_id,request_id)
     ,CHECK (auto_approve in ('Y','N'))
                                     )
  ;

  CREATE TABLE work_req_sg_recomm (
                    work_req_db_site                    char(16)         NOT NULL,
                    work_req_db_id                      bigint           NOT NULL,
                    work_req_id                         bigint           NOT NULL,
                    segment_site                        char(16)         NOT NULL,
                    segment_id                          bigint           NOT NULL,
                    gmt_recommendation                  datetime(3)         NOT NULL,
                    by_agent_site                       char(16)         NOT NULL,
                    by_agent_id                         bigint           NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (work_req_db_site,work_req_db_id,work_req_id,segment_site,segment_id,gmt_recommendation,by_agent_site,by_agent_id)
  )
  ;

  CREATE TABLE work_req_as_recomm (
                    work_req_db_site                    char(16)         NOT NULL,
                    work_req_db_id                      bigint           NOT NULL,
                    work_req_id                         bigint           NOT NULL,
                    asset_org_site                      char(16)         NOT NULL,
                    asset_id                            bigint           NOT NULL,
                    gmt_recommendation                  datetime(3)         NOT NULL,
                    by_agent_site                       char(16)         NOT NULL,
                    by_agent_id                         bigint           NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (work_req_db_site,work_req_db_id,work_req_id,asset_org_site,asset_id,gmt_recommendation,by_agent_site,by_agent_id)
  )
  ;

  CREATE TABLE work_req_sol_pack (
                    work_req_db_site                    char(16)         NOT NULL,
                    work_req_db_id                      bigint           NOT NULL,
                    work_req_id                         bigint           NOT NULL,
                    sol_pack_db_site                    char(16)         NOT NULL,
                    sol_pack_db_id                      bigint           NOT NULL,
                    sol_pack_id                         bigint           NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (work_req_db_site,work_req_db_id,work_req_id,sol_pack_db_site,sol_pack_db_id,sol_pack_id)
  )
  ;

  CREATE TABLE work_req_num_data (
                    work_req_db_site                    char(16)         NOT NULL,
                    work_req_db_id                      bigint           NOT NULL,
                    work_req_id                         bigint           NOT NULL,
                    wn_db_site                          char(16)         NOT NULL,
                    wn_db_id                            bigint           NOT NULL,
                    wn_type_code                        bigint           NOT NULL,
                    eu_db_site                          char(16)         NOT NULL,
                    eu_db_id                            bigint           NOT NULL,
                    eu_type_code                        bigint           NOT NULL,
                    data_value                          float            NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (work_req_db_site,work_req_db_id,work_req_id,wn_db_site,wn_db_id,wn_type_code)
  )
  ;

  CREATE TABLE work_req_chr_data (
                    work_req_db_site                    char(16)         NOT NULL,
                    work_req_db_id                      bigint           NOT NULL,
                    work_req_id                         bigint           NOT NULL,
                    wc_db_site                          char(16)         NOT NULL,
                    wc_db_id                            bigint           NOT NULL,
                    wc_type_code                        bigint           NOT NULL,
                    eu_db_site                          char(16)         NOT NULL,
                    eu_db_id                            bigint           NOT NULL,
                    eu_type_code                        bigint           NOT NULL,
                    data_value                          nvarchar(254)     NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (work_req_db_site,work_req_db_id,work_req_id,wc_db_site,wc_db_id,wc_type_code)
  )
  ;

  CREATE TABLE work_request_audit (
                    work_req_db_site                    char(16)         NOT NULL,
                    work_req_db_id                      bigint           NOT NULL,
                    work_req_id                         bigint           NOT NULL,
                    waudit_db_site                      char(16)         NOT NULL,
                    waudit_db_id                        bigint           NOT NULL,
                    waudit_type_code                    bigint           NOT NULL,
                    gmt_audit_posted                    datetime(3)         NOT NULL,
                    loc_hr_delta                        smallint         NULL,
                    loc_min_delta                       smallint         NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    long_description                    nvarchar(4000)    NULL,
                    by_agent_site                       char(16)         NULL,
                    by_agent_id                         bigint           NULL,
                    from_sy_agent_site                  char(16)         NULL,
                    from_sy_agent_id                    bigint           NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (work_req_db_site,work_req_db_id,work_req_id,waudit_db_site,waudit_db_id,waudit_type_code,gmt_audit_posted)
  )
  ;

  CREATE TABLE work_order (
                    work_order_db_site                  char(16)         NOT NULL,
                    work_order_db_id                    bigint           NOT NULL,
                    work_order_id                       bigint           NOT NULL,
                    wm_type_db_site                     char(16)         NOT NULL,
                    wm_type_db_id                       bigint           NOT NULL,
                    wm_type_code                        bigint           NOT NULL,
                    task_db_site                        char(16)         NULL,
                    task_db_id                          bigint           NULL,
                    task_type_code                      bigint           NULL,
                    gmt_created                         datetime(3)         NULL,
                    loc_hr_delta                        smallint         NULL,
                    loc_min_delta                       smallint         NULL,
                    by_agent_site                       char(16)         NULL,
                    by_agent_id                         bigint           NULL,
                    start_before_gmt                    datetime(3)         NULL,
                    end_before_gmt                      datetime(3)         NULL,
                    start_after_gmt                     datetime(3)         NULL,
                    end_after_gmt                       datetime(3)         NULL,
                    repeat_interval                     bigint           NULL,
                    int_eu_db_site                      char(16)         NULL,
                    int_eu_db_id                        bigint           NULL,
                    int_eu_type_code                    bigint           NULL,
                    from_sy_agent_site                  char(16)         NULL,
                    from_sy_agent_id                    bigint           NULL,
                    to_agent_site                       char(16)         NULL,
                    to_agent_id                         bigint           NULL,
                    priority_lev_db_site                char(16)         NULL,
                    priority_lev_db_id                  bigint           NULL,
                    priority_lev_type_code              bigint           NULL,
                    eng_study_entry_db_site             char(16)         NULL,
                    eng_study_entry_db_id               bigint           NULL,
                    eng_study_entry_id                  bigint           NULL,
                    sol_pack_db_site                    char(16)         NULL,
                    sol_pack_db_id                      bigint           NULL,
                    sol_pack_id                         bigint           NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    long_description                    nvarchar(4000)    NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (work_order_db_site,work_order_db_id,work_order_id)
  )
  ;

  CREATE TABLE work_order_child (
                    work_order_db_site                  char(16)         NOT NULL,
                    work_order_db_id                    bigint           NOT NULL,
                    work_order_id                       bigint           NOT NULL,
                    child_wo_db_site                    char(16)         NOT NULL,
                    child_wo_db_id                      bigint           NOT NULL,
                    child_wo_id                         bigint           NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (work_order_db_site,work_order_db_id,work_order_id,child_wo_db_site,child_wo_db_id,child_wo_id)
  )
  ;

  CREATE TABLE work_order_num_data (
                    work_order_db_site                  char(16)         NOT NULL,
                    work_order_db_id                    bigint           NOT NULL,
                    work_order_id                       bigint           NOT NULL,
                    wn_db_site                          char(16)         NOT NULL,
                    wn_db_id                            bigint           NOT NULL,
                    wn_type_code                        bigint           NOT NULL,
                    eu_db_site                          char(16)         NOT NULL,
                    eu_db_id                            bigint           NOT NULL,
                    eu_type_code                        bigint           NOT NULL,
                    data_value                          float            NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (work_order_db_site,work_order_db_id,work_order_id,wn_db_site,wn_db_id,wn_type_code)
  )
  ;

  CREATE TABLE work_order_chr_data (
                    work_order_db_site                  char(16)         NOT NULL,
                    work_order_db_id                    bigint           NOT NULL,
                    work_order_id                       bigint           NOT NULL,
                    wc_db_site                          char(16)         NOT NULL,
                    wc_db_id                            bigint           NOT NULL,
                    wc_type_code                        bigint           NOT NULL,
                    eu_db_site                          char(16)         NOT NULL,
                    eu_db_id                            bigint           NOT NULL,
                    eu_type_code                        bigint           NOT NULL,
                    data_value                          nvarchar(254)     NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (work_order_db_site,work_order_db_id,work_order_id,wc_db_site,wc_db_id,wc_type_code)
  )
  ;

  CREATE TABLE work_order_audit (
                    work_order_db_site                  char(16)         NOT NULL,
                    work_order_db_id                    bigint           NOT NULL,
                    work_order_id                       bigint           NOT NULL,
                    waudit_db_site                      char(16)         NOT NULL,
                    waudit_db_id                        bigint           NOT NULL,
                    waudit_type_code                    bigint           NOT NULL,
                    gmt_audit_posted                    datetime(3)         NOT NULL,
                    loc_hr_delta                        smallint         NULL,
                    loc_min_delta                       smallint         NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    long_description                    nvarchar(4000)    NULL,
                    by_agent_site                       char(16)         NULL,
                    by_agent_id                         bigint           NULL,
                    from_sy_agent_site                  char(16)         NULL,
                    from_sy_agent_id                    bigint           NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (work_order_db_site,work_order_db_id,work_order_id,waudit_db_site,waudit_db_id,waudit_type_code,gmt_audit_posted)
  )
  ;

  CREATE TABLE work_order_step (
                    work_order_db_site                  char(16)         NOT NULL,
                    work_order_db_id                    bigint           NOT NULL,
                    work_order_id                       bigint           NOT NULL,
                    work_ord_step_seq                   bigint           NOT NULL,
                    gmt_created                         datetime(3)         NULL,
                    loc_hr_delta                        smallint         NULL,
                    loc_min_delta                       smallint         NULL,
                    by_agent_site                       char(16)         NULL,
                    by_agent_id                         bigint           NULL,
                    sol_pack_db_site                    char(16)         NULL,
                    sol_pack_db_id                      bigint           NULL,
                    sol_pack_id                         bigint           NULL,
                    start_before_gmt                    datetime(3)         NULL,
                    end_before_gmt                      datetime(3)         NULL,
                    start_after_gmt                     datetime(3)         NULL,
                    end_after_gmt                       datetime(3)         NULL,
                    from_sy_agent_site                  char(16)         NULL,
                    from_sy_agent_id                    bigint           NULL,
                    to_agent_site                       char(16)         NULL,
                    to_agent_id                         bigint           NULL,
                    priority_lev_db_site                char(16)         NULL,
                    priority_lev_db_id                  bigint           NULL,
                    priority_lev_type_code              bigint           NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    long_description                    nvarchar(4000)    NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (work_order_db_site,work_order_db_id,work_order_id,work_ord_step_seq)
  )
  ;

  CREATE TABLE wo_step_num_data (
                    work_order_db_site                  char(16)         NOT NULL,
                    work_order_db_id                    bigint           NOT NULL,
                    work_order_id                       bigint           NOT NULL,
                    work_ord_step_seq                   bigint           NOT NULL,
                    wn_db_site                          char(16)         NOT NULL,
                    wn_db_id                            bigint           NOT NULL,
                    wn_type_code                        bigint           NOT NULL,
                    eu_db_site                          char(16)         NOT NULL,
                    eu_db_id                            bigint           NOT NULL,
                    eu_type_code                        bigint           NOT NULL,
                    data_value                          float            NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (work_order_db_site,work_order_db_id,work_order_id,work_ord_step_seq,wn_db_site,wn_db_id,wn_type_code)
  )
  ;

  CREATE TABLE wo_step_chr_data (
                    work_order_db_site                  char(16)         NOT NULL,
                    work_order_db_id                    bigint           NOT NULL,
                    work_order_id                       bigint           NOT NULL,
                    work_ord_step_seq                   bigint           NOT NULL,
                    wc_db_site                          char(16)         NOT NULL,
                    wc_db_id                            bigint           NOT NULL,
                    wc_type_code                        bigint           NOT NULL,
                    eu_db_site                          char(16)         NOT NULL,
                    eu_db_id                            bigint           NOT NULL,
                    eu_type_code                        bigint           NOT NULL,
                    data_value                          nvarchar(254)     NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (work_order_db_site,work_order_db_id,work_order_id,work_ord_step_seq,wc_db_site,wc_db_id,wc_type_code)
  )
  ;

  CREATE TABLE wo_step_audit (
                    work_order_db_site                  char(16)         NOT NULL,
                    work_order_db_id                    bigint           NOT NULL,
                    work_order_id                       bigint           NOT NULL,
                    work_ord_step_seq                   bigint           NOT NULL,
                    waudit_db_site                      char(16)         NOT NULL,
                    waudit_db_id                        bigint           NOT NULL,
                    waudit_type_code                    bigint           NOT NULL,
                    gmt_audit_posted                    datetime(3)         NOT NULL,
                    loc_hr_delta                        smallint         NULL,
                    loc_min_delta                       smallint         NULL,
                    name                                nvarchar(254)     NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    long_description                    nvarchar(4000)    NULL,
                    by_agent_site                       char(16)         NULL,
                    by_agent_id                         bigint           NULL,
                    from_sy_agent_site                  char(16)         NULL,
                    from_sy_agent_id                    bigint           NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (work_order_db_site,work_order_db_id,work_order_id,work_ord_step_seq,waudit_db_site,waudit_db_id,waudit_type_code,gmt_audit_posted)
  )
  ;

  CREATE TABLE wo_step_sg_recomm (
                    work_order_db_site                  char(16)         NOT NULL,
                    work_order_db_id                    bigint           NOT NULL,
                    work_order_id                       bigint           NOT NULL,
                    work_ord_step_seq                   bigint           NOT NULL,
                    segment_site                        char(16)         NOT NULL,
                    segment_id                          bigint           NOT NULL,
                    gmt_recommendation                  datetime(3)         NOT NULL,
                    by_agent_site                       char(16)         NOT NULL,
                    by_agent_id                         bigint           NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (work_order_db_site,work_order_db_id,work_order_id,work_ord_step_seq,segment_site,segment_id,gmt_recommendation,by_agent_site,by_agent_id)
  )
  ;

  CREATE TABLE wo_step_as_recomm (
                    work_order_db_site                  char(16)         NOT NULL,
                    work_order_db_id                    bigint           NOT NULL,
                    work_order_id                       bigint           NOT NULL,
                    work_ord_step_seq                   bigint           NOT NULL,
                    asset_org_site                      char(16)         NOT NULL,
                    asset_id                            bigint           NOT NULL,
                    gmt_recommendation                  datetime(3)         NOT NULL,
                    by_agent_site                       char(16)         NOT NULL,
                    by_agent_id                         bigint           NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (work_order_db_site,work_order_db_id,work_order_id,work_ord_step_seq,asset_org_site,asset_id,gmt_recommendation,by_agent_site,by_agent_id)
  )
  ;

  CREATE TABLE wo_step_work_req (
                    work_order_db_site                  char(16)         NOT NULL,
                    work_order_db_id                    bigint           NOT NULL,
                    work_order_id                       bigint           NOT NULL,
                    work_ord_step_seq                   bigint           NOT NULL,
                    work_req_db_site                    char(16)         NOT NULL,
                    work_req_db_id                      bigint           NOT NULL,
                    work_req_id                         bigint           NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (work_order_db_site,work_order_db_id,work_order_id,work_ord_step_seq,work_req_db_site,work_req_db_id,work_req_id)
  )
  ;

  CREATE TABLE sg_completed_work (
                    segment_site                        char(16)         NOT NULL,
                    segment_id                          bigint           NOT NULL,
                    task_db_site                        char(16)         NOT NULL,
                    task_db_id                          bigint           NOT NULL,
                    task_type_code                      bigint           NOT NULL,
                    gmt_completed                       datetime(3)         NOT NULL,
                    cp_loc_hr_delta                     smallint         NULL,
                    cp_loc_min_delta                    smallint         NULL,
                    gmt_started                         datetime(3)         NULL,
                    st_loc_hr_delta                     smallint         NULL,
                    st_loc_min_delta                    smallint         NULL,
                    by_agent_site                       char(16)         NULL,
                    by_agent_id                         bigint           NULL,
                    from_sy_agent_site                  char(16)         NULL,
                    from_sy_agent_id                    bigint           NULL,
                    priority_lev_db_site                char(16)         NULL,
                    priority_lev_db_id                  bigint           NULL,
                    priority_lev_type_code              bigint           NULL,
                    work_order_db_site                  char(16)         NULL,
                    work_order_db_id                    bigint           NULL,
                    work_order_id                       bigint           NULL,
                    work_req_db_site                    char(16)         NULL,
                    work_req_db_id                      bigint           NULL,
                    work_req_id                         bigint           NULL,
                    work_step_db_site                   char(16)         NULL,
                    work_step_db_id                     bigint           NULL,
                    work_step_id                        bigint           NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    long_description                    nvarchar(4000)    NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
                    work_ord_step_seq                   smallint         NULL,
               
               PRIMARY KEY (segment_site,segment_id,task_db_site,task_db_id,task_type_code,gmt_completed)
  )
  ;

  CREATE TABLE as_completed_work (
                    asset_org_site                      char(16)         NOT NULL,
                    asset_id                            bigint           NOT NULL,
                    task_db_site                        char(16)         NOT NULL,
                    task_db_id                          bigint           NOT NULL,
                    task_type_code                      bigint           NOT NULL,
                    gmt_completed                       datetime(3)         NOT NULL,
                    cp_loc_hr_delta                     smallint         NULL,
                    cp_loc_min_delta                    smallint         NULL,
                    gmt_started                         datetime(3)         NULL,
                    st_loc_hr_delta                     smallint         NULL,
                    st_loc_min_delta                    smallint         NULL,
                    by_agent_site                       char(16)         NULL,
                    by_agent_id                         bigint           NULL,
                    from_sy_agent_site                  char(16)         NULL,
                    from_sy_agent_id                    bigint           NULL,
                    priority_lev_db_site                char(16)         NULL,
                    priority_lev_db_id                  bigint           NULL,
                    priority_lev_type_code              bigint           NULL,
                    work_order_db_site                  char(16)         NULL,
                    work_order_db_id                    bigint           NULL,
                    work_order_id                       bigint           NULL,
                    work_req_db_site                    char(16)         NULL,
                    work_req_db_id                      bigint           NULL,
                    work_req_id                         bigint           NULL,
                    work_step_db_site                   char(16)         NULL,
                    work_step_db_id                     bigint           NULL,
                    work_step_id                        bigint           NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    long_description                    nvarchar(4000)    NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
                    work_ord_step_seq                   smallint         NULL,
               
               PRIMARY KEY (asset_org_site,asset_id,task_db_site,task_db_id,task_type_code,gmt_completed)
  )
  ;

  CREATE TABLE ol_completed_work (
                    ord_list_db_site                    char(16)         NOT NULL,
                    ord_list_db_id                      bigint           NOT NULL,
                    ord_list_id                         bigint           NOT NULL,
                    task_db_site                        char(16)         NOT NULL,
                    task_db_id                          bigint           NOT NULL,
                    task_type_code                      bigint           NOT NULL,
                    gmt_completed                       datetime(3)         NOT NULL,
                    cp_loc_hr_delta                     smallint         NULL,
                    cp_loc_min_delta                    smallint         NULL,
                    gmt_started                         datetime(3)         NULL,
                    st_loc_hr_delta                     smallint         NULL,
                    st_loc_min_delta                    smallint         NULL,
                    by_agent_site                       char(16)         NULL,
                    by_agent_id                         bigint           NULL,
                    from_sy_agent_site                  char(16)         NULL,
                    from_sy_agent_id                    bigint           NULL,
                    priority_lev_db_site                char(16)         NULL,
                    priority_lev_db_id                  bigint           NULL,
                    priority_lev_type_code              bigint           NULL,
                    work_order_db_site                  char(16)         NULL,
                    work_order_db_id                    bigint           NULL,
                    work_order_id                       bigint           NULL,
                    work_req_db_site                    char(16)         NULL,
                    work_req_db_id                      bigint           NULL,
                    work_req_id                         bigint           NULL,
                    work_step_db_site                   char(16)         NULL,
                    work_step_db_id                     bigint           NULL,
                    work_step_id                        bigint           NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    long_description                    nvarchar(4000)    NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
                    work_ord_step_seq                   smallint         NULL,
               
               PRIMARY KEY (ord_list_db_site,ord_list_db_id,ord_list_id,task_db_site,task_db_id,task_type_code,gmt_completed)
  )
  ;

  CREATE TABLE db_mim_interface (
                    db_site                             char(16)         NOT NULL,
                    db_id                               bigint           NOT NULL,
                    interf_type_code                    bigint           NOT NULL,
                    gmt_snap_refresh                    datetime(3)         NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (db_site,db_id,interf_type_code)
  )
  ;

  CREATE TABLE mloc_type_child (
                    ml_db_site                          char(16)         NOT NULL,
                    ml_db_id                            bigint           NOT NULL,
                    ml_type_code                        bigint           NOT NULL,
                    child_ml_db_site                    char(16)         NOT NULL,
                    child_ml_db_id                      bigint           NOT NULL,
                    child_ml_type_code                  bigint           NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (ml_db_site,ml_db_id,ml_type_code,child_ml_db_site,child_ml_db_id,child_ml_type_code)
  )
  ;

  CREATE TABLE as_sol_pack (
                    asset_org_site                      char(16)         NOT NULL,
                    asset_id                            bigint           NOT NULL,
                    sol_pack_db_site                    char(16)         NOT NULL,
                    sol_pack_db_id                      bigint           NOT NULL,
                    sol_pack_id                         bigint           NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (asset_org_site,asset_id,sol_pack_db_site,sol_pack_db_id,sol_pack_id)
  )
  ;

  CREATE TABLE sg_sol_pack (
                    segment_site                        char(16)         NOT NULL,
                    segment_id                          bigint           NOT NULL,
                    sol_pack_db_site                    char(16)         NOT NULL,
                    sol_pack_db_id                      bigint           NOT NULL,
                    sol_pack_id                         bigint           NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (segment_site,segment_id,sol_pack_db_site,sol_pack_db_id,sol_pack_id)
  )
  ;

  CREATE TABLE ol_sol_pack (
                    ord_list_db_site                    char(16)         NOT NULL,
                    ord_list_db_id                      bigint           NOT NULL,
                    ord_list_id                         bigint           NOT NULL,
                    sol_pack_db_site                    char(16)         NOT NULL,
                    sol_pack_db_id                      bigint           NOT NULL,
                    sol_pack_id                         bigint           NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (ord_list_db_site,ord_list_db_id,ord_list_id,sol_pack_db_site,sol_pack_db_id,sol_pack_id)
  )
  ;

  CREATE TABLE meas_loc_assoc (
                    meas_loc_site                       char(16)         NOT NULL,
                    meas_loc_id                         bigint           NOT NULL,
                    related_mloc_site                   char(16)         NOT NULL,
                    related_mloc_id                     bigint           NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (meas_loc_site,meas_loc_id,related_mloc_site,related_mloc_id)
  )
  ;

  CREATE TABLE amb_set_type (
                    amb_set_db_site                     char(16)         NOT NULL,
                    amb_set_db_id                       bigint           NOT NULL,
                    amb_set_type_code                   bigint           NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (amb_set_db_site,amb_set_db_id,amb_set_type_code)
  )
  ;

  CREATE TABLE log_connector_type (
                    lc_db_site                          char(16)         NOT NULL,
                    lc_db_id                            bigint           NOT NULL,
                    lc_type_code                        bigint           NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (lc_db_site,lc_db_id,lc_type_code)
  )
  ;

  CREATE TABLE ev_chr_data_type (
                    ec_db_site                          char(16)         NOT NULL,
                    ec_db_id                            bigint           NOT NULL,
                    ec_type_code                        bigint           NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (ec_db_site,ec_db_id,ec_type_code)
  )
  ;

  CREATE TABLE mloc_num_data_type (
                    mln_db_site                         char(16)         NOT NULL,
                    mln_db_id                           bigint           NOT NULL,
                    mln_type_code                       bigint           NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (mln_db_site,mln_db_id,mln_type_code)
  )
  ;

  CREATE TABLE mloc_chr_data_type (
                    mlc_db_site                         char(16)         NOT NULL,
                    mlc_db_id                           bigint           NOT NULL,
                    mlc_type_code                       bigint           NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (mlc_db_site,mlc_db_id,mlc_type_code)
  )
  ;

  CREATE TABLE sg_hyp_ev_amb_set (
                    sg_hyp_amb_set_db_site              char(16)         NOT NULL,
                    sg_hyp_amb_set_db_id                bigint           NOT NULL,
                    sg_hyp_amb_set_id                   bigint           NOT NULL,
                    segment_site                        char(16)         NOT NULL,
                    segment_id                          bigint           NOT NULL,
                    amb_set_db_site                     char(16)         NOT NULL,
                    amb_set_db_id                       bigint           NOT NULL,
                    amb_set_type_code                   bigint           NOT NULL,
                    by_agent_site                       char(16)         NOT NULL,
                    by_agent_id                         bigint           NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (sg_hyp_amb_set_db_site,sg_hyp_amb_set_db_id,sg_hyp_amb_set_id)
  )
  ;

  CREATE TABLE sg_hyp_ev_log_conn (
                    sg_hyp_amb_set_db_site              char(16)         NOT NULL,
                    sg_hyp_amb_set_db_id                bigint           NOT NULL,
                    sg_hyp_amb_set_id                   bigint           NOT NULL,
                    log_conn_id                         bigint           NOT NULL,
                    lc_db_site                          char(16)         NOT NULL,
                    lc_db_id                            bigint           NOT NULL,
                    lc_type_code                        bigint           NOT NULL,
                    sg_hyp_db_site                      char(16)         NULL,
                    sg_hyp_db_id                        bigint           NULL,
                    sg_hyp_event_id                     bigint           NULL,
                    par_log_conn_id                     bigint           NULL,
                    likelihood_prob                     float            NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (sg_hyp_amb_set_db_site,sg_hyp_amb_set_db_id,sg_hyp_amb_set_id,log_conn_id)
  )
  ;

  CREATE TABLE sg_prop_ev_amb_set (
                    sg_prop_amb_set_db_site             char(16)         NOT NULL,
                    sg_prop_amb_set_db_id               bigint           NOT NULL,
                    sg_prop_amb_set_id                  bigint           NOT NULL,
                    segment_site                        char(16)         NOT NULL,
                    segment_id                          bigint           NOT NULL,
                    by_agent_site                       char(16)         NOT NULL,
                    by_agent_id                         bigint           NOT NULL,
                    gmt_proposed                        datetime(3)         NOT NULL,
                    pr_loc_hr_delta                     smallint         NULL,
                    pr_loc_min_delta                    smallint         NULL,
                    est_gmt_start                       datetime(3)         NULL,
                    st_loc_hr_delta                     smallint         NULL,
                    st_loc_min_delta                    smallint         NULL,
                    est_gmt_occur_end                   datetime(3)         NULL,
                    end_loc_hr_delta                    smallint         NULL,
                    end_loc_min_delta                   smallint         NULL,
                    sg_hyp_amb_set_db_site              char(16)         NOT NULL,
                    sg_hyp_amb_set_db_id                bigint           NOT NULL,
                    sg_hyp_amb_set_id                   bigint           NOT NULL,
                    amb_set_db_site                     char(16)         NOT NULL,
                    amb_set_db_id                       bigint           NOT NULL,
                    amb_set_type_code                   bigint           NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (sg_prop_amb_set_db_site,sg_prop_amb_set_db_id,sg_prop_amb_set_id)
  )
  ;

  CREATE TABLE sg_prop_ev_log_conn (
                    sg_prop_amb_set_db_site             char(16)         NOT NULL,
                    sg_prop_amb_set_db_id               bigint           NOT NULL,
                    sg_prop_amb_set_id                  bigint           NOT NULL,
                    log_conn_id                         bigint           NOT NULL,
                    segment_site                        char(16)         NOT NULL,
                    segment_id                          bigint           NOT NULL,
                    by_agent_site                       char(16)         NOT NULL,
                    by_agent_id                         bigint           NOT NULL,
                    gmt_proposed                        datetime(3)         NOT NULL,
                    lc_db_site                          char(16)         NOT NULL,
                    lc_db_id                            bigint           NOT NULL,
                    lc_type_code                        bigint           NOT NULL,
                    sg_prop_db_site                     char(16)         NULL,
                    sg_prop_db_id                       bigint           NULL,
                    sg_prop_event_id                    bigint           NULL,
                    par_log_conn_id                     bigint           NULL,
                    likelihood_prob                     float            NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (sg_prop_amb_set_db_site,sg_prop_amb_set_db_id,sg_prop_amb_set_id,log_conn_id)
  )
  ;

  CREATE TABLE sg_pr_ev_amb_set_sg_ev (
                    sg_prop_amb_set_db_site             char(16)         NOT NULL,
                    sg_prop_amb_set_db_id               bigint           NOT NULL,
                    sg_prop_amb_set_id                  bigint           NOT NULL,
                    segment_site                        char(16)         NOT NULL,
                    segment_id                          bigint           NOT NULL,
                    ev_db_site                          char(16)         NOT NULL,
                    ev_db_id                            bigint           NOT NULL,
                    event_type_code                     bigint           NOT NULL,
                    gmt_event_start                     datetime(3)         NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (sg_prop_amb_set_db_site,sg_prop_amb_set_db_id,sg_prop_amb_set_id,segment_site,segment_id,ev_db_site,ev_db_id,event_type_code,gmt_event_start)
  )
  ;

  CREATE TABLE num_al_reg_num_data (
                    alarm_db_site                       char(16)         NOT NULL,
                    alarm_db_id                         bigint           NOT NULL,
                    al_meas_loc_site                    char(16)         NOT NULL,
                    al_meas_loc_id                      bigint           NOT NULL,
                    al_ordering_seq                     bigint           NOT NULL,
                    en_db_site                          char(16)         NOT NULL,
                    en_db_id                            bigint           NOT NULL,
                    en_type_code                        bigint           NOT NULL,
                    eu_db_site                          char(16)         NOT NULL,
                    eu_db_id                            bigint           NOT NULL,
                    eu_type_code                        bigint           NOT NULL,
                    data_value                          float            NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (alarm_db_site,alarm_db_id,al_meas_loc_site,al_meas_loc_id,al_ordering_seq,en_db_site,en_db_id,en_type_code)
  )
  ;

  CREATE TABLE num_al_reg_chr_data (
                    alarm_db_site                       char(16)         NOT NULL,
                    alarm_db_id                         bigint           NOT NULL,
                    al_meas_loc_site                    char(16)         NOT NULL,
                    al_meas_loc_id                      bigint           NOT NULL,
                    al_ordering_seq                     bigint           NOT NULL,
                    ec_db_site                          char(16)         NOT NULL,
                    ec_db_id                            bigint           NOT NULL,
                    ec_type_code                        bigint           NOT NULL,
                    eu_db_site                          char(16)         NOT NULL,
                    eu_db_id                            bigint           NOT NULL,
                    eu_type_code                        bigint           NOT NULL,
                    data_value                          nvarchar(254)     NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (alarm_db_site,alarm_db_id,al_meas_loc_site,al_meas_loc_id,al_ordering_seq,ec_db_site,ec_db_id,ec_type_code)
  )
  ;

  CREATE TABLE num_al_reg_blob_data (
                    alarm_db_site                       char(16)         NOT NULL,
                    alarm_db_id                         bigint           NOT NULL,
                    al_meas_loc_site                    char(16)         NOT NULL,
                    al_meas_loc_id                      bigint           NOT NULL,
                    al_ordering_seq                     bigint           NOT NULL,
                    bd_db_site                          char(16)         NOT NULL,
                    bd_db_id                            bigint           NOT NULL,
                    bd_type_code                        bigint           NOT NULL,
                    ordering_seq                        bigint           NOT NULL,
                    blct_db_site                        char(16)         NOT NULL,
                    blct_db_id                          bigint           NOT NULL,
                    blc_type_code                       bigint           NOT NULL,
                    user_tag_ident                      nvarchar(254)    NULL,
                    name                                nvarchar(254)    NULL,
                    assoc_file_name                     nvarchar(254)    NULL,
                    image_data                          longblob            NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (alarm_db_site,alarm_db_id,al_meas_loc_site,al_meas_loc_id,al_ordering_seq,bd_db_site,bd_db_id,bd_type_code,ordering_seq)
  )
  ;

  CREATE TABLE meas_loc_num_data (
                    meas_loc_site                       char(16)         NOT NULL,
                    meas_loc_id                         bigint           NOT NULL,
                    mln_db_site                         char(16)         NOT NULL,
                    mln_db_id                           bigint           NOT NULL,
                    mln_type_code                       bigint           NOT NULL,
                    eu_db_site                          char(16)         NOT NULL,
                    eu_db_id                            bigint           NOT NULL,
                    eu_type_code                        bigint           NOT NULL,
                    data_value                          float            NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (meas_loc_site,meas_loc_id,mln_db_site,mln_db_id,mln_type_code)
  )
  ;

  CREATE TABLE meas_loc_chr_data (
                    meas_loc_site                       char(16)         NOT NULL,
                    meas_loc_id                         bigint           NOT NULL,
                    mlc_db_site                         char(16)         NOT NULL,
                    mlc_db_id                           bigint           NOT NULL,
                    mlc_type_code                       bigint           NOT NULL,
                    eu_db_site                          char(16)         NOT NULL,
                    eu_db_id                            bigint           NOT NULL,
                    eu_type_code                        bigint           NOT NULL,
                    data_value                          nvarchar(254)     NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (meas_loc_site,meas_loc_id,mlc_db_site,mlc_db_id,mlc_type_code)
  )
  ;

  CREATE TABLE meas_loc_blob_data (
                    meas_loc_site                       char(16)         NOT NULL,
                    meas_loc_id                         bigint           NOT NULL,
                    bd_db_site                          char(16)         NOT NULL,
                    bd_db_id                            bigint           NOT NULL,
                    bd_type_code                        bigint           NOT NULL,
                    ordering_seq                        bigint           NOT NULL,
                    blct_db_site                        char(16)         NOT NULL,
                    blct_db_id                          bigint           NOT NULL,
                    blc_type_code                       bigint           NOT NULL,
                    user_tag_ident                      nvarchar(254)    NULL,
                    name                                nvarchar(254)    NULL,
                    assoc_file_name                     nvarchar(254)    NULL,
                    image_data                          longblob            NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (meas_loc_site,meas_loc_id,bd_db_site,bd_db_id,bd_type_code)
  )
  ;

  CREATE TABLE geo_position (
                    geo_db_site                         char(16)         NOT NULL,
                    geo_db_id                           bigint           NOT NULL,
                    geo_position_id                     bigint           NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    description                         nvarchar(254)     NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (geo_db_site,geo_db_id,geo_position_id)
  )
  ;

  CREATE TABLE gps_datum_type (
                    datum_db_site                       char(16)         NOT NULL,
                    datum_db_id                         bigint           NOT NULL,
                    datum_type_code                     bigint           NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    default_mnemonic                    nvarchar(254)     NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (datum_db_site,datum_db_id,datum_type_code)
  )
  ;

  CREATE TABLE gps_precision_type (
                    precision_db_site                   char(16)         NOT NULL,
                    precision_db_id                     bigint           NOT NULL,
                    precision_type_code                 bigint           NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    default_mnemonic                    nvarchar(254)     NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (precision_db_site,precision_db_id,precision_type_code)
  )
  ;

  CREATE TABLE gps_elevation_type (
                    elevation_db_site                   char(16)         NOT NULL,
                    elevation_db_id                     bigint           NOT NULL,
                    elevation_type_code                 bigint           NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    default_mnemonic                    nvarchar(254)     NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (elevation_db_site,elevation_db_id,elevation_type_code)
  )
  ;

  CREATE TABLE gps_location (
                    geo_db_site                         char(16)         NOT NULL,
                    geo_db_id                           bigint           NOT NULL,
                    geo_position_id                     bigint           NOT NULL,
                    ordering_sequence                   bigint           NOT NULL,
                    latitude                            float            NOT NULL,
                    longitude                           float            NOT NULL,
                    elevation                           float            NULL,
                    datum_db_site                       char(16)         NOT NULL,
                    datum_db_id                         bigint           NOT NULL,
                    datum_type_code                     bigint           NOT NULL,
                    precision_db_site                   char(16)         NOT NULL,
                    precision_db_id                     bigint           NOT NULL,
                    precision_type_code                 bigint           NOT NULL,
                    elevation_db_site                   char(16)         NOT NULL,
                    elevation_db_id                     bigint           NOT NULL,
                    elevation_type_code                 bigint           NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (geo_db_site,geo_db_id,geo_position_id,ordering_sequence)
  )
  ;

  CREATE TABLE segment_geo_position (
                    segment_site                        char(16)         NOT NULL,
                    segment_id                          bigint           NOT NULL,
                    geo_db_site                         char(16)         NOT NULL,
                    geo_db_id                           bigint           NOT NULL,
                    geo_position_id                     bigint           NOT NULL,
                    gmt_at_location                     datetime(3)         NOT NULL,
                    loc_hr_delta                        smallint         NULL,
                    loc_min_delta                       smallint         NULL,
                    duration                            float            NULL,
                    dur_eu_db_site                      char(16)         NULL,
                    dur_eu_db_id                        bigint           NULL,
                    dur_eu_type_code                    bigint           NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (segment_site,segment_id,geo_db_site,geo_db_id,geo_position_id,gmt_at_location)
  )
  ;

  CREATE TABLE asset_geo_position (
                    asset_org_site                      char(16)         NOT NULL,
                    asset_id                            bigint           NOT NULL,
                    geo_db_site                         char(16)         NOT NULL,
                    geo_db_id                           bigint           NOT NULL,
                    geo_position_id                     bigint           NOT NULL,
                    gmt_at_location                     datetime(3)         NOT NULL,
                    loc_hr_delta                        smallint         NULL,
                    loc_min_delta                       smallint         NULL,
                    duration                            float            NULL,
                    dur_eu_db_site                      char(16)         NULL,
                    dur_eu_db_id                        bigint           NULL,
                    dur_eu_type_code                    bigint           NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (asset_org_site,asset_id,geo_db_site,geo_db_id,geo_position_id,gmt_at_location)
  )
  ;

  CREATE TABLE sg_event_chr_data (
                    segment_site                        char(16)         NOT NULL,
                    segment_id                          bigint           NOT NULL,
                    ev_db_site                          char(16)         NOT NULL,
                    ev_db_id                            bigint           NOT NULL,
                    event_type_code                     bigint           NOT NULL,
                    gmt_event_start                     datetime(3)         NOT NULL,
                    ec_db_site                          char(16)         NOT NULL,
                    ec_db_id                            bigint           NOT NULL,
                    ec_type_code                        bigint           NOT NULL,
                    eu_db_site                          char(16)         NOT NULL,
                    eu_db_id                            bigint           NOT NULL,
                    eu_type_code                        bigint           NOT NULL,
                    data_value                          nvarchar(254)     NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (segment_site,segment_id,ev_db_site,ev_db_id,event_type_code,gmt_event_start,ec_db_site,ec_db_id,ec_type_code)
  )
  ;

  CREATE TABLE as_event_chr_data (
                    asset_org_site                      char(16)         NOT NULL,
                    asset_id                            bigint           NOT NULL,
                    ev_db_site                          char(16)         NOT NULL,
                    ev_db_id                            bigint           NOT NULL,
                    event_type_code                     bigint           NOT NULL,
                    gmt_event_start                     datetime(3)         NOT NULL,
                    ec_db_site                          char(16)         NOT NULL,
                    ec_db_id                            bigint           NOT NULL,
                    ec_type_code                        bigint           NOT NULL,
                    eu_db_site                          char(16)         NOT NULL,
                    eu_db_id                            bigint           NOT NULL,
                    eu_type_code                        bigint           NOT NULL,
                    data_value                          nvarchar(254)     NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (asset_org_site,asset_id,ev_db_site,ev_db_id,event_type_code,gmt_event_start,ec_db_site,ec_db_id,ec_type_code)
  )
  ;

  CREATE TABLE logistic_resource_type (
                    resource_type_db_site               char(16)         NOT NULL,
                    resource_type_db_id                 bigint           NOT NULL,
                    resource_type_code                  bigint           NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (resource_type_db_site,resource_type_db_id,resource_type_code)
  )
  ;

  CREATE TABLE logistic_resource_type_child (
                    resource_type_db_site               char(16)         NOT NULL,
                    resource_type_db_id                 bigint           NOT NULL,
                    resource_type_code                  bigint           NOT NULL,
                    child_resource_type_db_site         char(16)         NOT NULL,
                    child_resource_type_db_id           bigint           NOT NULL,
                    child_resource_type_code            bigint           NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (resource_type_db_site,resource_type_db_id,resource_type_code,child_resource_type_db_site,child_resource_type_db_id,child_resource_type_code)
  )
  ;

  CREATE TABLE mat_item_conn_type (
                    mat_conn_type_code                  smallint         NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (mat_conn_type_code)
  )
  ;

  CREATE TABLE resource_num_dat_type (
                    rsn_type_db_site                    char(16)         NOT NULL,
                    rsn_type_db_id                      bigint           NOT NULL,
                    rsn_type_code                       bigint           NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    default_ru_type                     bigint           NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (rsn_type_db_site,rsn_type_db_id,rsn_type_code)
  )
  ;

  CREATE TABLE resource_chr_dat_type (
                    rsc_type_db_site                    char(16)         NOT NULL,
                    rsc_type_db_id                      bigint           NOT NULL,
                    rsc_type_code                       bigint           NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    default_ru_type                     bigint           NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (rsc_type_db_site,rsc_type_db_id,rsc_type_code)
  )
  ;

  CREATE TABLE ord_list_num_dat_type (
                    ordn_db_site                        char(16)         NOT NULL,
                    ordn_db_id                          bigint           NOT NULL,
                    ordn_type_code                      bigint           NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    default_ru_type                     bigint           NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (ordn_db_site,ordn_db_id,ordn_type_code)
  )
  ;

  CREATE TABLE ord_list_chr_dat_type (
                    ordc_db_site                        char(16)         NOT NULL,
                    ordc_db_id                          bigint           NOT NULL,
                    ordc_type_code                      bigint           NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    default_ru_type                     bigint           NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (ordc_db_site,ordc_db_id,ordc_type_code)
  )
  ;

  CREATE TABLE ordered_list_type (
                    ord_list_type_db_site               char(16)         NOT NULL,
                    ord_list_type_db_id                 bigint           NOT NULL,
                    ord_list_type_code                  bigint           NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (ord_list_type_db_site,ord_list_type_db_id,ord_list_type_code)
  )
  ;

  CREATE TABLE test_type (
                    test_type_db_site                   char(16)         NOT NULL,
                    test_type_db_id                     bigint           NOT NULL,
                    test_type_code                      bigint           NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (test_type_db_site,test_type_db_id,test_type_code)
  )
  ;

  CREATE TABLE test_comp_type (
                    tc_type_db_site                     char(16)         NOT NULL,
                    tc_type_db_id                       bigint           NOT NULL,
                    tc_type_code                        bigint           NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (tc_type_db_site,tc_type_db_id,tc_type_code)
  )
  ;

  CREATE TABLE test_comp_group_type (
                    tcg_type_db_site                    char(16)         NOT NULL,
                    tcg_type_db_id                      bigint           NOT NULL,
                    tcg_type_code                       bigint           NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (tcg_type_db_site,tcg_type_db_id,tcg_type_code)
  )
  ;

  CREATE TABLE criticality_scale_type (
                    cs_type_db_site                     char(16)         NOT NULL,
                    cs_type_db_id                       bigint           NOT NULL,
                    cs_type_code                        bigint           NOT NULL,
                    min_value                           bigint           NOT NULL,
                    max_value                           bigint           NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (cs_type_db_site,cs_type_db_id,cs_type_code)
  )
  ;

  CREATE TABLE eng_study_type (
                    eng_study_type_db_site              char(16)         NOT NULL,
                    eng_study_type_db_id                bigint           NOT NULL,
                    eng_study_type_code                 bigint           NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (eng_study_type_db_site,eng_study_type_db_id,eng_study_type_code)
  )
  ;

  CREATE TABLE eng_study_code (
                    eng_study_code_db_site              char(16)         NOT NULL,
                    eng_study_code_db_id                bigint           NOT NULL,
                    eng_study_code_id                   bigint           NOT NULL,
                    name                                nvarchar(254)     NULL,
                    description                         nvarchar(254)     NULL,
                    long_description                    nvarchar(4000)    NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (eng_study_code_db_site,eng_study_code_db_id,eng_study_code_id)
  )
  ;

  CREATE TABLE eng_study_entry (
                    eng_study_entry_db_site             char(16)         NOT NULL,
                    eng_study_entry_db_id               bigint           NOT NULL,
                    eng_study_entry_id                  bigint           NOT NULL,
                    eng_study_type_db_site              char(16)         NOT NULL,
                    eng_study_type_db_id                bigint           NOT NULL,
                    eng_study_type_code                 bigint           NOT NULL,
                    eng_study_code_db_site              char(16)         NOT NULL,
                    eng_study_code_db_id                bigint           NOT NULL,
                    eng_study_code_id                   bigint           NOT NULL,
                    parent_db_site                      char(16)         NULL,
                    parent_db_id                        bigint           NULL,
                    parent_id                           bigint           NULL,
                    ev_db_site                          char(16)         NULL,
                    ev_db_id                            bigint           NULL,
                    event_type_code                     bigint           NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (eng_study_entry_db_site,eng_study_entry_db_id,eng_study_entry_id)
  )
  ;

  CREATE TABLE network_conn_type (
                    net_conn_type_db_site               char(16)         NOT NULL,
                    net_conn_type_db_id                 bigint           NOT NULL,
                    net_conn_type_code                  bigint           NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    description                         nvarchar(254)     NULL,
                    long_description                    nvarchar(254)     NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (net_conn_type_db_site,net_conn_type_db_id,net_conn_type_code)
  )
  ;

  CREATE TABLE standard_data_type (
                    std_data_type_code                  smallint         NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (std_data_type_code)
  )
  ;

  CREATE TABLE network_num_dat_type (
                    nn_type_db_site                     char(16)         NOT NULL,
                    nn_type_db_id                       bigint           NOT NULL,
                    nn_type_code                        bigint           NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    default_ru_type                     bigint           NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (nn_type_db_site,nn_type_db_id,nn_type_code)
  )
  ;

  CREATE TABLE network_chr_dat_type (
                    nc_type_db_site                     char(16)         NOT NULL,
                    nc_type_db_id                       bigint           NOT NULL,
                    nc_type_code                        bigint           NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    default_ru_type                     bigint           NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (nc_type_db_site,nc_type_db_id,nc_type_code)
  )
  ;

  CREATE TABLE ordered_list_child (
                    ord_list_db_site                    char(16)         NOT NULL,
                    ord_list_db_id                      bigint           NOT NULL,
                    ord_list_id                         bigint           NOT NULL,
                    child_ord_list_db_site              char(16)         NOT NULL,
                    child_ord_list_db_id                bigint           NOT NULL,
                    child_ord_list_id                   bigint           NOT NULL,
                    ordering_seq                        bigint           NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (ord_list_db_site,ord_list_db_id,ord_list_id,child_ord_list_db_site,child_ord_list_db_id,child_ord_list_id)
  )
  ;

  CREATE TABLE valid_as_type_on_sg_type (
                    db_site                             char(16)         NOT NULL,
                    db_id                               bigint           NOT NULL,
                    as_db_site                          char(16)         NOT NULL,
                    as_db_id                            bigint           NOT NULL,
                    as_type_code                        bigint           NOT NULL,
                    sg_db_site                          char(16)         NOT NULL,
                    sg_db_id                            bigint           NOT NULL,
                    sg_type_code                        bigint           NOT NULL,
                    ordering_seq                        bigint           NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (db_site,db_id,as_db_site,as_db_id,as_type_code,sg_db_site,sg_db_id,sg_type_code)
  )
  ;

  CREATE TABLE valid_sg_type_eng_study_entry (
                    db_site                             char(16)         NOT NULL,
                    db_id                               bigint           NOT NULL,
                    sg_db_site                          char(16)         NOT NULL,
                    sg_db_id                            bigint           NOT NULL,
                    sg_type_code                        bigint           NOT NULL,
                    eng_study_entry_db_site             char(16)         NOT NULL,
                    eng_study_entry_db_id               bigint           NOT NULL,
                    eng_study_entry_id                  bigint           NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (db_site,db_id,sg_db_site,sg_db_id,sg_type_code,eng_study_entry_db_site,eng_study_entry_db_id,eng_study_entry_id)
  )
  ;

  CREATE TABLE valid_segment_eng_study_entry (
                    db_site                             char(16)         NOT NULL,
                    db_id                               bigint           NOT NULL,
                    segment_site                        char(16)         NOT NULL,
                    segment_id                          bigint           NOT NULL,
                    eng_study_entry_db_site             char(16)         NOT NULL,
                    eng_study_entry_db_id               bigint           NOT NULL,
                    eng_study_entry_id                  bigint           NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (db_site,db_id,segment_site,segment_id,eng_study_entry_db_site,eng_study_entry_db_id,eng_study_entry_id)
  )
  ;

  CREATE TABLE valid_as_type_eng_study_entry (
                    db_site                             char(16)         NOT NULL,
                    db_id                               bigint           NOT NULL,
                    as_db_site                          char(16)         NOT NULL,
                    as_db_id                            bigint           NOT NULL,
                    as_type_code                        bigint           NOT NULL,
                    eng_study_entry_db_site             char(16)         NOT NULL,
                    eng_study_entry_db_id               bigint           NOT NULL,
                    eng_study_entry_id                  bigint           NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (db_site,db_id,as_db_site,as_db_id,as_type_code,eng_study_entry_db_site,eng_study_entry_db_id,eng_study_entry_id)
  )
  ;

  CREATE TABLE valid_asset_eng_study_entry (
                    db_site                             char(16)         NOT NULL,
                    db_id                               bigint           NOT NULL,
                    asset_org_site                      char(16)         NOT NULL,
                    asset_id                            bigint           NOT NULL,
                    eng_study_entry_db_site             char(16)         NOT NULL,
                    eng_study_entry_db_id               bigint           NOT NULL,
                    eng_study_entry_id                  bigint           NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (db_site,db_id,asset_org_site,asset_id,eng_study_entry_db_site,eng_study_entry_db_id,eng_study_entry_id)
  )
  ;

  CREATE TABLE asset_model_history (
                    asset_org_site                      char(16)         NOT NULL,
                    asset_id                            bigint           NOT NULL,
                    model_db_site                       char(16)         NOT NULL,
                    model_db_id                         bigint           NOT NULL,
                    model_id                            bigint           NOT NULL,
                    gmt_start                           datetime(3)         NOT NULL,
                    gmt_end                             datetime(3)         NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (asset_org_site,asset_id,model_db_site,model_db_id,model_id)
  )
  ;

  CREATE TABLE segment_config_network_history (
                    segment_site                        char(16)         NOT NULL,
                    segment_id                          bigint           NOT NULL,
                    network_db_site                     char(16)         NOT NULL,
                    network_db_id                       bigint           NOT NULL,
                    network_id                          bigint           NOT NULL,
                    gmt_start                           datetime(3)         NOT NULL,
                    gmt_end                             datetime(3)         NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (segment_site,segment_id,network_db_site,network_db_id,network_id,gmt_start)
  )
  ;

  CREATE TABLE model_config_network_history (
                    model_db_site                       char(16)         NOT NULL,
                    model_db_id                         bigint           NOT NULL,
                    model_id                            bigint           NOT NULL,
                    network_db_site                     char(16)         NOT NULL,
                    network_db_id                       bigint           NOT NULL,
                    network_id                          bigint           NOT NULL,
                    gmt_start                           datetime(3)         NOT NULL,
                    gmt_end                             datetime(3)         NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (model_db_site,model_db_id,model_id,network_db_site,network_db_id,network_id,gmt_start)
  )
  ;

  CREATE TABLE asset_config_network_history (
                    asset_org_site                      char(16)         NOT NULL,
                    asset_id                            bigint           NOT NULL,
                    network_db_site                     char(16)         NOT NULL,
                    network_db_id                       bigint           NOT NULL,
                    network_id                          bigint           NOT NULL,
                    gmt_start                           datetime(3)         NOT NULL,
                    gmt_end                             datetime(3)         NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (asset_org_site,asset_id,network_db_site,network_db_id,network_id,gmt_start)
  )
  ;

  CREATE TABLE ag_role_type_config_net_hist (
                    ag_role_db_site                     char(16)         NOT NULL,
                    ag_role_db_id                       bigint           NOT NULL,
                    ag_role_type_code                   bigint           NOT NULL,
                    network_db_site                     char(16)         NOT NULL,
                    network_db_id                       bigint           NOT NULL,
                    network_id                          bigint           NOT NULL,
                    gmt_start                           datetime(3)         NOT NULL,
                    gmt_end                             datetime(3)         NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (ag_role_db_site,ag_role_db_id,ag_role_type_code,network_db_site,network_db_id,network_id,gmt_start)
  )
  ;

  CREATE TABLE child_network_config_history (
                    network_db_site                     char(16)         NOT NULL,
                    network_db_id                       bigint           NOT NULL,
                    network_id                          bigint           NOT NULL,
                    child_network_db_site               char(16)         NOT NULL,
                    child_network_db_id                 bigint           NOT NULL,
                    child_network_id                    bigint           NOT NULL,
                    gmt_start                           datetime(3)         NOT NULL,
                    gmt_end                             datetime(3)         NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (network_db_site,network_db_id,network_id,child_network_db_site,child_network_db_id,child_network_id,gmt_start)
  )
  ;

  CREATE TABLE logistic_resource (
                    resource_db_site                    char(16)         NOT NULL,
                    resource_db_id                      bigint           NOT NULL,
                    resource_id                         bigint           NOT NULL,
                    resource_type_db_site               char(16)         NOT NULL,
                    resource_type_db_id                 bigint           NOT NULL,
                    resource_type_code                  bigint           NOT NULL,
                    segment_site                        char(16)         NULL,
                    segment_id                          bigint           NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (resource_db_site,resource_db_id,resource_id)
  )
  ;

  CREATE TABLE resource_child (
                    resource_db_site                    char(16)         NOT NULL,
                    resource_db_id                      bigint           NOT NULL,
                    resource_id                         bigint           NOT NULL,
                    child_resource_db_site              char(16)         NOT NULL,
                    child_resource_db_id                bigint           NOT NULL,
                    child_resource_id                   bigint           NOT NULL,
                    ordering_seq                        bigint           NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (resource_db_site,resource_db_id,resource_id,child_resource_db_site,child_resource_db_id,child_resource_id)
  )
  ;

  CREATE TABLE resource_num_data (
                    resource_db_site                    char(16)         NOT NULL,
                    resource_db_id                      bigint           NOT NULL,
                    resource_id                         bigint           NOT NULL,
                    rsn_type_db_site                    char(16)         NOT NULL,
                    rsn_type_db_id                      bigint           NOT NULL,
                    rsn_type_code                       bigint           NOT NULL,
                    eu_db_site                          char(16)         NOT NULL,
                    eu_db_id                            bigint           NOT NULL,
                    eu_type_code                        bigint           NOT NULL,
                    data_value                          float            NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (resource_db_site,resource_db_id,resource_id,rsn_type_db_site,rsn_type_db_id,rsn_type_code)
  )
  ;

  CREATE TABLE resource_chr_data (
                    resource_db_site                    char(16)         NOT NULL,
                    resource_db_id                      bigint           NOT NULL,
                    resource_id                         bigint           NOT NULL,
                    rsc_type_db_site                    char(16)         NOT NULL,
                    rsc_type_db_id                      bigint           NOT NULL,
                    rsc_type_code                       bigint           NOT NULL,
                    eu_db_site                          char(16)         NOT NULL,
                    eu_db_id                            bigint           NOT NULL,
                    eu_type_code                        bigint           NOT NULL,
                    data_value                          nvarchar(254)     NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (resource_db_site,resource_db_id,resource_id,rsc_type_db_site,rsc_type_db_id,rsc_type_code)
  )
  ;

  CREATE TABLE resource_blob_data (
                    resource_db_site                    char(16)         NOT NULL,
                    resource_db_id                      bigint           NOT NULL,
                    resource_id                         bigint           NOT NULL,
                    bd_db_site                          char(16)         NOT NULL,
                    bd_db_id                            bigint           NOT NULL,
                    bd_type_code                        bigint           NOT NULL,
                    ordering_seq                        bigint           NOT NULL,
                    blct_db_site                        char(16)         NOT NULL,
                    blct_db_id                          bigint           NOT NULL,
                    blc_type_code                       bigint           NOT NULL,
                    name                                nvarchar(254)    NULL,
                    assoc_file_name                     nvarchar(254)    NULL,
                    image_data                          longblob            NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (resource_db_site,resource_db_id,resource_id,bd_db_site,bd_db_id,bd_type_code,ordering_seq)
  )
  ;

  CREATE TABLE materiel_master_item (
                    mm_resource_db_site                 char(16)         NOT NULL,
                    mm_resource_db_id                   bigint           NOT NULL,
                    mm_resource_id                      bigint           NOT NULL,
                    as_db_site                          char(16)         NULL,
                    as_db_id                            bigint           NULL,
                    as_type_code                        bigint           NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (mm_resource_db_site,mm_resource_db_id,mm_resource_id)
  )
  ;

  CREATE TABLE materiel_item (
                    resource_db_site                    char(16)         NOT NULL,
                    resource_db_id                      bigint           NOT NULL,
                    resource_id                         bigint           NOT NULL,
                    mat_conn_type_code                  smallint         NOT NULL,
                    as_db_site                          char(16)         NULL,
                    as_db_id                            bigint           NULL,
                    as_type_code                        bigint           NULL,
                    model_db_site                       char(16)         NULL,
                    model_db_id                         bigint           NULL,
                    model_id                            bigint           NULL,
                    asset_org_site                      char(16)         NULL,
                    asset_id                            bigint           NULL,
                    mm_resource_db_site                 char(16)         NULL,
                    mm_resource_db_id                   bigint           NULL,
                    mm_resource_id                      bigint           NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (resource_db_site,resource_db_id,resource_id)
  )
  ;

  CREATE TABLE valid_model_for_mat_item (
                    db_site                             char(16)         NOT NULL,
                    db_id                               bigint           NOT NULL,
                    resource_db_site                    char(16)         NOT NULL,
                    resource_db_id                      bigint           NOT NULL,
                    resource_id                         bigint           NOT NULL,
                    model_db_site                       char(16)         NOT NULL,
                    model_db_id                         bigint           NOT NULL,
                    model_id                            bigint           NOT NULL,
                    gmt_valid_start                     datetime(3)         NOT NULL,
                    gmt_valid_end                       datetime(3)         NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (db_site,db_id,resource_db_site,resource_db_id,resource_id,model_db_site,model_db_id,model_id,gmt_valid_start)
  )
  ;

  CREATE TABLE valid_mat_item_on_sg (
                    db_site                             char(16)         NOT NULL,
                    db_id                               bigint           NOT NULL,
                    segment_site                        char(16)         NOT NULL,
                    segment_id                          bigint           NOT NULL,
                    resource_db_site                    char(16)         NOT NULL,
                    resource_db_id                      bigint           NOT NULL,
                    resource_id                         bigint           NOT NULL,
                    gmt_valid_start                     datetime(3)         NOT NULL,
                    gmt_valid_end                       datetime(3)         NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (db_site,db_id,segment_site,segment_id,resource_db_site,resource_db_id,resource_id,gmt_valid_start)
  )
  ;

  CREATE TABLE valid_mat_item_on_sg_num_data (
                    db_site                             char(16)         NOT NULL,
                    db_id                               bigint           NOT NULL,
                    segment_site                        char(16)         NOT NULL,
                    segment_id                          bigint           NOT NULL,
                    resource_db_site                    char(16)         NOT NULL,
                    resource_db_id                      bigint           NOT NULL,
                    resource_id                         bigint           NOT NULL,
                    gmt_valid_start                     datetime(3)         NOT NULL,
                    rsn_type_db_site                    char(16)         NOT NULL,
                    rsn_type_db_id                      bigint           NOT NULL,
                    rsn_type_code                       bigint           NOT NULL,
                    eu_db_site                          char(16)         NOT NULL,
                    eu_db_id                            bigint           NOT NULL,
                    eu_type_code                        bigint           NOT NULL,
                    data_value                          float            NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (db_site,db_id,segment_site,segment_id,resource_db_site,resource_db_id,resource_id,gmt_valid_start,rsn_type_db_site,rsn_type_db_id,rsn_type_code)
  )
  ;

  CREATE TABLE valid_mat_item_on_sg_chr_data (
                    db_site                             char(16)         NOT NULL,
                    db_id                               bigint           NOT NULL,
                    segment_site                        char(16)         NOT NULL,
                    segment_id                          bigint           NOT NULL,
                    resource_db_site                    char(16)         NOT NULL,
                    resource_db_id                      bigint           NOT NULL,
                    resource_id                         bigint           NOT NULL,
                    gmt_valid_start                     datetime(3)         NOT NULL,
                    rsc_type_db_site                    char(16)         NOT NULL,
                    rsc_type_db_id                      bigint           NOT NULL,
                    rsc_type_code                       bigint           NOT NULL,
                    eu_db_site                          char(16)         NOT NULL,
                    eu_db_id                            bigint           NOT NULL,
                    eu_type_code                        bigint           NOT NULL,
                    data_value                          float            NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (db_site,db_id,segment_site,segment_id,resource_db_site,resource_db_id,resource_id,gmt_valid_start,rsc_type_db_site,rsc_type_db_id,rsc_type_code)
  )
  ;

  CREATE TABLE valid_mat_item_on_sg_blob_data (
                    db_site                             char(16)         NOT NULL,
                    db_id                               bigint           NOT NULL,
                    segment_site                        char(16)         NOT NULL,
                    segment_id                          bigint           NOT NULL,
                    resource_db_site                    char(16)         NOT NULL,
                    resource_db_id                      bigint           NOT NULL,
                    resource_id                         bigint           NOT NULL,
                    gmt_valid_start                     datetime(3)         NOT NULL,
                    bd_db_site                          char(16)         NOT NULL,
                    bd_db_id                            bigint           NOT NULL,
                    bd_type_code                        bigint           NOT NULL,
                    ordering_seq                        bigint           NOT NULL,
                    blct_db_site                        char(16)         NOT NULL,
                    blct_db_id                          bigint           NOT NULL,
                    blc_type_code                       bigint           NOT NULL,
                    name                                nvarchar(254)    NULL,
                    assoc_file_name                     nvarchar(254)    NULL,
                    image_data                          longblob            NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (db_site,db_id,segment_site,segment_id,resource_db_site,resource_db_id,resource_id,gmt_valid_start,bd_db_site,bd_db_id,bd_type_code,ordering_seq)
  )
  ;

  CREATE TABLE ord_list_resource (
                    ord_list_db_site                    char(16)         NOT NULL,
                    ord_list_db_id                      bigint           NOT NULL,
                    ord_list_id                         bigint           NOT NULL,
                    ordering_seq                        bigint           NOT NULL,
                    resource_db_site                    char(16)         NOT NULL,
                    resource_db_id                      bigint           NOT NULL,
                    resource_id                         bigint           NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    quantity                            float            NULL,
                    eu_db_site                          char(16)         NULL,
                    eu_db_id                            bigint           NULL,
                    eu_type_code                        bigint           NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (ord_list_db_site,ord_list_db_id,ord_list_id,ordering_seq)
  )
  ;

  CREATE TABLE ord_list_resource_num_data (
                    ord_list_db_site                    char(16)         NOT NULL,
                    ord_list_db_id                      bigint           NOT NULL,
                    ord_list_id                         bigint           NOT NULL,
                    ordering_seq                        bigint           NOT NULL,
                    rsn_type_db_site                    char(16)         NOT NULL,
                    rsn_type_db_id                      bigint           NOT NULL,
                    rsn_type_code                       bigint           NOT NULL,
                    eu_db_site                          char(16)         NOT NULL,
                    eu_db_id                            bigint           NOT NULL,
                    eu_type_code                        bigint           NOT NULL,
                    data_value                          float            NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (ord_list_db_site,ord_list_db_id,ord_list_id,ordering_seq,rsn_type_db_site,rsn_type_db_id,rsn_type_code)
  )
  ;

  CREATE TABLE ord_list_resource_chr_data (
                    ord_list_db_site                    char(16)         NOT NULL,
                    ord_list_db_id                      bigint           NOT NULL,
                    ord_list_id                         bigint           NOT NULL,
                    ordering_seq                        bigint           NOT NULL,
                    rsc_type_db_site                    char(16)         NOT NULL,
                    rsc_type_db_id                      bigint           NOT NULL,
                    rsc_type_code                       bigint           NOT NULL,
                    eu_db_site                          char(16)         NOT NULL,
                    eu_db_id                            bigint           NOT NULL,
                    eu_type_code                        bigint           NOT NULL,
                    data_value                          float            NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (ord_list_db_site,ord_list_db_id,ord_list_id,ordering_seq,rsc_type_db_site,rsc_type_db_id,rsc_type_code)
  )
  ;

  CREATE TABLE ord_list_resource_blob_data (
                    ord_list_db_site                    char(16)         NOT NULL,
                    ord_list_db_id                      bigint           NOT NULL,
                    ord_list_id                         bigint           NOT NULL,
                    ord_list_ord_seq                    bigint           NOT NULL,
                    bd_db_site                          char(16)         NOT NULL,
                    bd_db_id                            bigint           NOT NULL,
                    bd_type_code                        bigint           NOT NULL,
                    ordering_seq                        bigint           NOT NULL,
                    blct_db_site                        char(16)         NOT NULL,
                    blct_db_id                          bigint           NOT NULL,
                    blc_type_code                       bigint           NOT NULL,
                    user_tag_ident                      nvarchar(254)    NULL,
                    name                                nvarchar(254)    NULL,
                    assoc_file_name                     nvarchar(254)    NULL,
                    image_data                          longblob            NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (ord_list_db_site,ord_list_db_id,ord_list_id,ord_list_ord_seq,bd_db_site,bd_db_id,bd_type_code,ordering_seq)
  )
  ;

  CREATE TABLE sg_config_ord_list_history (
                    segment_site                        char(16)         NOT NULL,
                    segment_id                          bigint           NOT NULL,
                    ord_list_db_site                    char(16)         NOT NULL,
                    ord_list_db_id                      bigint           NOT NULL,
                    ord_list_id                         bigint           NOT NULL,
                    gmt_start                           datetime(3)         NOT NULL,
                    gmt_end                             datetime(3)         NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (segment_site,segment_id,ord_list_db_site,ord_list_db_id,ord_list_id,gmt_start)
  )
  ;

  CREATE TABLE as_config_ord_list_history (
                    asset_org_site                      char(16)         NOT NULL,
                    asset_id                            bigint           NOT NULL,
                    ord_list_db_site                    char(16)         NOT NULL,
                    ord_list_db_id                      bigint           NOT NULL,
                    ord_list_id                         bigint           NOT NULL,
                    gmt_start                           datetime(3)         NOT NULL,
                    gmt_end                             datetime(3)         NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (asset_org_site,asset_id,ord_list_db_site,ord_list_db_id,ord_list_id,gmt_start)
  )
  ;

  CREATE TABLE md_config_ord_list_history (
                    model_db_site                       char(16)         NOT NULL,
                    model_db_id                         bigint           NOT NULL,
                    model_id                            bigint           NOT NULL,
                    ord_list_db_site                    char(16)         NOT NULL,
                    ord_list_db_id                      bigint           NOT NULL,
                    ord_list_id                         bigint           NOT NULL,
                    gmt_start                           datetime(3)         NOT NULL,
                    gmt_end                             datetime(3)         NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (model_db_site,model_db_id,model_id,ord_list_db_site,ord_list_db_id,ord_list_id,gmt_start)
  )
  ;

  CREATE TABLE sg_prop_event_chr_data (
                    sg_prop_db_site                     char(16)         NOT NULL,
                    sg_prop_db_id                       bigint           NOT NULL,
                    sg_prop_event_id                    bigint           NOT NULL,
                    ec_db_site                          char(16)         NOT NULL,
                    ec_db_id                            bigint           NOT NULL,
                    ec_type_code                        bigint           NOT NULL,
                    eu_db_site                          char(16)         NOT NULL,
                    eu_db_id                            bigint           NOT NULL,
                    eu_type_code                        bigint           NOT NULL,
                    data_value                          nvarchar(254)     NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (sg_prop_db_site,sg_prop_db_id,sg_prop_event_id,ec_db_site,ec_db_id,ec_type_code)
  )
  ;

  CREATE TABLE as_prop_event_chr_data (
                    as_prop_db_site                     char(16)         NOT NULL,
                    as_prop_db_id                       bigint           NOT NULL,
                    as_prop_event_id                    bigint           NOT NULL,
                    ec_db_site                          char(16)         NOT NULL,
                    ec_db_id                            bigint           NOT NULL,
                    ec_type_code                        bigint           NOT NULL,
                    eu_db_site                          char(16)         NOT NULL,
                    eu_db_id                            bigint           NOT NULL,
                    eu_type_code                        bigint           NOT NULL,
                    data_value                          nvarchar(254)     NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (as_prop_db_site,as_prop_db_id,as_prop_event_id,ec_db_site,ec_db_id,ec_type_code)
  )
  ;

  CREATE TABLE sg_prop_event_blob_data (
                    sg_prop_db_site                     char(16)         NOT NULL,
                    sg_prop_db_id                       bigint           NOT NULL,
                    sg_prop_event_id                    bigint           NOT NULL,
                    bd_db_site                          char(16)         NOT NULL,
                    bd_db_id                            bigint           NOT NULL,
                    bd_type_code                        bigint           NOT NULL,
                    ordering_seq                        bigint           NOT NULL,
                    user_tag_ident                      nvarchar(254)    NULL,
                    name                                nvarchar(254)    NULL,
                    assoc_file_name                     nvarchar(254)    NULL,
                    image_data                          longblob            NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (sg_prop_db_site,sg_prop_db_id,sg_prop_event_id,bd_db_id,bd_type_code,ordering_seq)
  )
  ;

  CREATE TABLE as_prop_event_blob_data (
                    as_prop_db_site                     char(16)         NOT NULL,
                    as_prop_db_id                       bigint           NOT NULL,
                    as_prop_event_id                    bigint           NOT NULL,
                    bd_db_site                          char(16)         NOT NULL,
                    bd_db_id                            bigint           NOT NULL,
                    bd_type_code                        bigint           NOT NULL,
                    ordering_seq                        bigint           NOT NULL,
                    user_tag_ident                      nvarchar(254)    NULL,
                    name                                nvarchar(254)    NULL,
                    assoc_file_name                     nvarchar(254)    NULL,
                    image_data                          longblob            NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (as_prop_db_site,as_prop_db_id,as_prop_event_id,bd_db_id,bd_type_code,ordering_seq)
  )
  ;

  CREATE TABLE sg_event_blob_data (
                    segment_site                        char(16)         NOT NULL,
                    segment_id                          bigint           NOT NULL,
                    ev_db_site                          char(16)         NOT NULL,
                    ev_db_id                            bigint           NOT NULL,
                    event_type_code                     bigint           NOT NULL,
                    gmt_event_start                     datetime(3)         NOT NULL,
                    bd_db_site                          char(16)         NOT NULL,
                    bd_db_id                            bigint           NOT NULL,
                    bd_type_code                        bigint           NOT NULL,
                    ordering_seq                        bigint           NOT NULL,
                    blct_db_site                        char(16)         NOT NULL,
                    blct_db_id                          bigint           NOT NULL,
                    blc_type_code                       bigint           NOT NULL,
                    user_tag_ident                      nvarchar(254)    NULL,
                    name                                nvarchar(254)    NULL,
                    assoc_file_name                     nvarchar(254)    NULL,
                    image_data                          longblob            NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (segment_site,segment_id,ev_db_site,ev_db_id,event_type_code,gmt_event_start,bd_db_site,bd_db_id,bd_type_code,ordering_seq)
  )
  ;

  CREATE TABLE as_event_blob_data (
                    asset_org_site                      char(16)         NOT NULL,
                    asset_id                            bigint           NOT NULL,
                    ev_db_site                          char(16)         NOT NULL,
                    ev_db_id                            bigint           NOT NULL,
                    event_type_code                     bigint           NOT NULL,
                    gmt_event_start                     datetime(3)         NOT NULL,
                    bd_db_site                          char(16)         NOT NULL,
                    bd_db_id                            bigint           NOT NULL,
                    bd_type_code                        bigint           NOT NULL,
                    ordering_seq                        bigint           NOT NULL,
                    blct_db_site                        char(16)         NOT NULL,
                    blct_db_id                          bigint           NOT NULL,
                    blc_type_code                       bigint           NOT NULL,
                    user_tag_ident                      nvarchar(254)    NULL,
                    name                                nvarchar(254)    NULL,
                    assoc_file_name                     nvarchar(254)    NULL,
                    image_data                          longblob            NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (asset_org_site,asset_id,ev_db_site,ev_db_id,event_type_code,gmt_event_start,bd_db_site,bd_db_id,bd_type_code,ordering_seq)
  )
  ;

  CREATE TABLE binary_num_data (
                    meas_loc_site                       char(16)         NOT NULL,
                    meas_loc_id                         bigint           NOT NULL,
                    gmt_event                           datetime(3)         NOT NULL,
                    ordering_seq                        bigint           NOT NULL,
                    gmt_reference                       datetime(3)         NOT NULL,
                    total_data_items                    bigint           NOT NULL,
                    offsets_eu_db_site                  char(16)         NOT NULL,
                    offsets_eu_db_id                    bigint           NOT NULL,
                    offsets_eu_type_code                bigint           NOT NULL,
                    offsets_std_data_type_code          smallint         NOT NULL,
                    values_eu_db_site                   char(16)         NOT NULL,
                    values_eu_db_id                     bigint           NOT NULL,
                    values_eu_type_code                 bigint           NOT NULL,
                    values_std_data_type_code           smallint         NOT NULL,
                    offsets_binary_data                 longblob            NOT NULL,
                    values_binary_data                  longblob            NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (meas_loc_site,meas_loc_id,gmt_event,ordering_seq)
  )
  ;

  CREATE TABLE ord_list_num_data (
                    ord_list_db_site                    char(16)         NOT NULL,
                    ord_list_db_id                      bigint           NOT NULL,
                    ord_list_id                         bigint           NOT NULL,
                    ordn_db_site                        char(16)         NOT NULL,
                    ordn_db_id                          bigint           NOT NULL,
                    ordn_type_code                      bigint           NOT NULL,
                    eu_db_site                          char(16)         NOT NULL,
                    eu_db_id                            bigint           NOT NULL,
                    eu_type_code                        bigint           NOT NULL,
                    data_value                          float            NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (ord_list_db_site,ord_list_db_id,ord_list_id,ordn_db_site,ordn_db_id,ordn_type_code)
  )
  ;

  CREATE TABLE ord_list_chr_data (
                    ord_list_db_site                    char(16)         NOT NULL,
                    ord_list_db_id                      bigint           NOT NULL,
                    ord_list_id                         bigint           NOT NULL,
                    ordc_db_site                        char(16)         NOT NULL,
                    ordc_db_id                          bigint           NOT NULL,
                    ordc_type_code                      bigint           NOT NULL,
                    eu_db_site                          char(16)         NOT NULL,
                    eu_db_id                            bigint           NOT NULL,
                    eu_type_code                        bigint           NOT NULL,
                    data_value                          nvarchar(254)     NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (ord_list_db_site,ord_list_db_id,ord_list_id,ordc_db_site,ordc_db_id,ordc_type_code)
  )
  ;

  CREATE TABLE ord_list_blob_data (
                    ord_list_db_site                    char(16)         NOT NULL,
                    ord_list_db_id                      bigint           NOT NULL,
                    ord_list_id                         bigint           NOT NULL,
                    bd_db_site                          char(16)         NOT NULL,
                    bd_db_id                            bigint           NOT NULL,
                    bd_type_code                        bigint           NOT NULL,
                    bd_ordering_seq                     bigint           NOT NULL,
                    blct_db_site                        char(16)         NOT NULL,
                    blct_db_id                          bigint           NOT NULL,
                    blc_type_code                       bigint           NOT NULL,
                    user_tag_ident                      nvarchar(254)    NULL,
                    name                                nvarchar(254)    NULL,
                    assoc_file_name                     nvarchar(254)    NULL,
                    image_data                          longblob            NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (ord_list_db_site,ord_list_db_id,ord_list_id,bd_db_site,bd_db_id,bd_type_code,bd_ordering_seq)
  )
  ;

  CREATE TABLE mloc_test_comp_alarm_rg (
                    alarm_db_site                       char(16)         NOT NULL,
                    alarm_db_id                         bigint           NOT NULL,
                    meas_loc_site                       char(16)         NOT NULL,
                    meas_loc_id                         bigint           NOT NULL,
                    ordering_seq                        bigint           NOT NULL,
                    test_type_db_site                   char(16)         NOT NULL,
                    test_type_db_id                     bigint           NOT NULL,
                    test_type_code                      bigint           NOT NULL,
                    tc_type_db_site                     char(16)         NOT NULL,
                    tc_type_db_id                       bigint           NOT NULL,
                    tc_type_code                        bigint           NOT NULL,
                    al_db_site                          char(16)         NOT NULL,
                    al_db_id                            bigint           NOT NULL,
                    al_type_code                        bigint           NOT NULL,
                    ml_db_site                          char(16)         NULL,
                    ml_db_id                            bigint           NULL,
                    ml_type_code                        bigint           NULL,
                    mc_db_site                          char(16)         NULL,
                    mc_db_id                            bigint           NULL,
                    mc_type_code                        bigint           NULL,
                    mat_resource_db_site                char(16)         NULL,
                    mat_resource_db_id                  bigint           NULL,
                    mat_resource_id                     bigint           NULL,
                    eu_db_site                          char(16)         NOT NULL,
                    eu_db_id                            bigint           NOT NULL,
                    eu_type_code                        bigint           NOT NULL,
                    gmt_alarm_start                     datetime(3)         NOT NULL,
                    st_loc_hr_delta                     smallint         NULL,
                    st_loc_min_delta                    smallint         NULL,
                    min_data_value                      float            NULL,
                    max_data_value                      float            NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (alarm_db_site,alarm_db_id,meas_loc_site,meas_loc_id,ordering_seq)
  )
  ;

  CREATE TABLE test (
                    meas_loc_site                       char(16)         NOT NULL,
                    meas_loc_id                         bigint           NOT NULL,
                    gmt_event                           datetime(3)         NOT NULL,
                    ordering_seq                        bigint           NOT NULL,
                    by_agent_site                       char(16)         NULL,
                    by_agent_id                         bigint           NULL,
                    gmt_recorded                        datetime(3)         NOT NULL,
                    rec_loc_hr_delta                    smallint         NULL,
                    rec_loc_min_delta                   smallint         NULL,
                    test_type_db_site                   char(16)         NOT NULL,
                    test_type_db_id                     bigint           NOT NULL,
                    test_type_code                      bigint           NOT NULL,
                    gmt_started                         datetime(3)         NULL,
                    st_loc_hr_delta                     smallint         NULL,
                    st_loc_min_delta                    smallint         NULL,
                    gmt_ended                           datetime(3)         NULL,
                    end_loc_hr_delta                    smallint         NULL,
                    end_loc_min_delta                   smallint         NULL,
                    ds_asset_site                       char(16)         NULL,
                    ds_asset_id                         bigint           NULL,
                    tr_asset_site                       char(16)         NULL,
                    tr_asset_id                         bigint           NULL,
                    mat_resource_db_site                char(16)         NULL,
                    mat_resource_db_id                  bigint           NULL,
                    mat_resource_id                     bigint           NULL,
                    sample_meas_loc_site                char(16)         NULL,
                    sample_meas_loc_id                  bigint           NULL,
                    sample_gmt_event                    datetime(3)         NULL,
                    sample_order_seq                    bigint           NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (meas_loc_site,meas_loc_id,gmt_event,ordering_seq)
  )
  ;

  CREATE TABLE test_component (
                    test_meas_loc_site                  char(16)         NOT NULL,
                    test_meas_loc_id                    bigint           NOT NULL,
                    test_gmt_event                      datetime(3)         NOT NULL,
                    test_ordering_seq                   bigint           NOT NULL,
                    ordering_seq                        bigint           NOT NULL,
                    tc_type_db_site                     char(16)         NOT NULL,
                    tc_type_db_id                       bigint           NOT NULL,
                    tc_type_code                        bigint           NOT NULL,
                    gmt_started                         datetime(3)         NULL,
                    st_loc_hr_delta                     smallint         NULL,
                    st_loc_min_delta                    smallint         NULL,
                    gmt_ended                           datetime(3)         NULL,
                    end_loc_hr_delta                    smallint         NULL,
                    end_loc_min_delta                   smallint         NULL,
                    ncb_data_flag                       char(1)          NOT NULL,
                    eu_db_site                          char(16)         NULL,
                    eu_db_id                            bigint           NULL,
                    eu_type_code                        bigint           NULL,
                    num_data_value                      float            NULL,
                    chr_data_value                      nvarchar(254)    NULL,
                    blct_db_site                        char(16)         NULL,
                    blct_db_id                          bigint           NULL,
                    blc_type_code                       bigint           NULL,
                    assoc_file_name                     nvarchar(254)    NULL,
                    image_data                          longblob            NULL,
                    user_tag_ident                      nvarchar(254)    NULL,
                    name                                nvarchar(254)    NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (test_meas_loc_site,test_meas_loc_id,test_gmt_event,test_ordering_seq,ordering_seq)
     ,CHECK (ncb_data_flag in ('N','C','B'))
                                     )
  ;

  CREATE TABLE test_comp_group (
                    test_meas_loc_site                  char(16)         NOT NULL,
                    test_meas_loc_id                    bigint           NOT NULL,
                    test_gmt_event                      datetime(3)         NOT NULL,
                    test_ordering_seq                   bigint           NOT NULL,
                    ordering_seq                        bigint           NOT NULL,
                    tcg_type_db_site                    char(16)         NOT NULL,
                    tcg_type_db_id                      bigint           NOT NULL,
                    tcg_type_code                       bigint           NOT NULL,
                    gmt_started                         datetime(3)         NULL,
                    st_loc_hr_delta                     smallint         NULL,
                    st_loc_min_delta                    smallint         NULL,
                    gmt_ended                           datetime(3)         NULL,
                    end_loc_hr_delta                    smallint         NULL,
                    end_loc_min_delta                   smallint         NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (test_meas_loc_site,test_meas_loc_id,test_gmt_event,test_ordering_seq,ordering_seq)
  )
  ;

  CREATE TABLE test_comp_in_group (
                    tcg_test_meas_loc_site              char(16)         NOT NULL,
                    tcg_test_meas_loc_id                bigint           NOT NULL,
                    tcg_test_gmt_event                  datetime(3)         NOT NULL,
                    tcg_test_ordering_seq               bigint           NOT NULL,
                    tcg_ordering_seq                    bigint           NOT NULL,
                    tc_test_meas_loc_site               char(16)         NOT NULL,
                    tc_test_meas_loc_id                 bigint           NOT NULL,
                    tc_test_gmt_event                   datetime(3)         NOT NULL,
                    tc_test_ordering_seq                bigint           NOT NULL,
                    tc_ordering_seq                     bigint           NOT NULL,
                    ordering_seq                        bigint           NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (tcg_test_meas_loc_site,tcg_test_meas_loc_id,tcg_test_gmt_event,tcg_test_ordering_seq,tcg_ordering_seq,tc_test_meas_loc_site,tc_test_meas_loc_id,tc_test_gmt_event,tc_test_ordering_seq,tc_ordering_seq,ordering_seq)
  )
  ;

  CREATE TABLE test_comp_alarm_rg (
                    tc_test_meas_loc_site               char(16)         NOT NULL,
                    tc_test_meas_loc_id                 bigint           NOT NULL,
                    tc_test_gmt_event                   datetime(3)         NOT NULL,
                    tc_test_ordering_seq                bigint           NOT NULL,
                    tc_ordering_seq                     bigint           NOT NULL,
                    ordering_seq                        bigint           NOT NULL,
                    al_db_site                          char(16)         NOT NULL,
                    al_db_id                            bigint           NOT NULL,
                    al_type_code                        bigint           NOT NULL,
                    eu_db_site                          char(16)         NULL,
                    eu_db_id                            bigint           NULL,
                    eu_type_code                        bigint           NULL,
                    min_data_value                      float            NULL,
                    max_data_value                      float            NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (tc_test_meas_loc_site,tc_test_meas_loc_id,tc_test_gmt_event,tc_test_ordering_seq,tc_ordering_seq,ordering_seq)
  )
  ;

  CREATE TABLE test_comp_alarm (
                    tc_test_meas_loc_site               char(16)         NOT NULL,
                    tc_test_meas_loc_id                 bigint           NOT NULL,
                    tc_test_gmt_event                   datetime(3)         NOT NULL,
                    tc_test_ordering_seq                bigint           NOT NULL,
                    tc_ordering_seq                     bigint           NOT NULL,
                    ordering_seq                        bigint           NOT NULL,
                    al_db_site                          char(16)         NOT NULL,
                    al_db_id                            bigint           NOT NULL,
                    al_type_code                        bigint           NOT NULL,
                    gmt_acknowledged                    datetime(3)         NULL,
                    ack_loc_hr_delta                    smallint         NULL,
                    ack_loc_min_delta                   smallint         NULL,
                    org_agent_site                      char(16)         NULL,
                    agent_id                            bigint           NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (tc_test_meas_loc_site,tc_test_meas_loc_id,tc_test_gmt_event,tc_test_ordering_seq,tc_ordering_seq,ordering_seq)
  )
  ;

  CREATE TABLE test_comp_alarm_assoc_mloc_rg (
                    tca_test_meas_loc_site              char(16)         NOT NULL,
                    tca_test_meas_loc_id                bigint           NOT NULL,
                    tca_test_gmt_event                  datetime(3)         NOT NULL,
                    tca_test_ordering_seq               bigint           NOT NULL,
                    tca_comp_ordering_seq               bigint           NOT NULL,
                    tca_ordering_seq                    bigint           NOT NULL,
                    alarm_db_site                       char(16)         NOT NULL,
                    alarm_db_id                         bigint           NOT NULL,
                    al_meas_loc_site                    char(16)         NOT NULL,
                    al_meas_loc_id                      bigint           NOT NULL,
                    al_ordering_seq                     bigint           NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (tca_test_meas_loc_site,tca_test_meas_loc_id,tca_test_gmt_event,tca_test_ordering_seq,tca_comp_ordering_seq,tca_ordering_seq,alarm_db_site,alarm_db_id,al_meas_loc_site,al_meas_loc_id,al_ordering_seq)
  )
  ;

  CREATE TABLE test_comp_alarm_assoc_num_rg (
                    tca_test_meas_loc_site              char(16)         NOT NULL,
                    tca_test_meas_loc_id                bigint           NOT NULL,
                    tca_test_gmt_event                  datetime(3)         NOT NULL,
                    tca_test_ordering_seq               bigint           NOT NULL,
                    tca_comp_ordering_seq               bigint           NOT NULL,
                    tca_ordering_seq                    bigint           NOT NULL,
                    tcar_test_meas_loc_site             char(16)         NOT NULL,
                    tcar_test_meas_loc_id               bigint           NOT NULL,
                    tcar_test_gmt_event                 datetime(3)         NOT NULL,
                    tcar_test_ordering_seq              bigint           NOT NULL,
                    tcar_comp_ordering_seq              bigint           NOT NULL,
                    tcar_ordering_seq                   bigint           NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (tca_test_meas_loc_site,tca_test_meas_loc_id,tca_test_gmt_event,tca_test_ordering_seq,tca_comp_ordering_seq,tca_ordering_seq,tcar_test_meas_loc_site,tcar_test_meas_loc_id,tcar_test_gmt_event,tcar_test_ordering_seq,tcar_comp_ordering_seq,tcar_ordering_seq)
  )
  ;

  CREATE TABLE request_ord_list_needed (
                    req_db_site                         char(16)         NOT NULL,
                    req_db_id                           bigint           NOT NULL,
                    request_id                          bigint           NOT NULL,
                    ord_list_db_site                    char(16)         NOT NULL,
                    ord_list_db_id                      bigint           NOT NULL,
                    ord_list_id                         bigint           NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (req_db_site,req_db_id,request_id,ord_list_db_site,ord_list_db_id,ord_list_id)
  )
  ;

  CREATE TABLE solution_package_num_data (
                    sol_pack_db_site                    char(16)         NOT NULL,
                    sol_pack_db_id                      bigint           NOT NULL,
                    sol_pack_id                         bigint           NOT NULL,
                    wn_db_site                          char(16)         NOT NULL,
                    wn_db_id                            bigint           NOT NULL,
                    wn_type_code                        bigint           NOT NULL,
                    eu_db_site                          char(16)         NOT NULL,
                    eu_db_id                            bigint           NOT NULL,
                    eu_type_code                        bigint           NOT NULL,
                    data_value                          float            NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (sol_pack_db_site,sol_pack_db_id,sol_pack_id,wn_db_site,wn_db_id,wn_type_code)
  )
  ;

  CREATE TABLE solution_package_chr_data (
                    sol_pack_db_site                    char(16)         NOT NULL,
                    sol_pack_db_id                      bigint           NOT NULL,
                    sol_pack_id                         bigint           NOT NULL,
                    wc_db_site                          char(16)         NOT NULL,
                    wc_db_id                            bigint           NOT NULL,
                    wc_type_code                        bigint           NOT NULL,
                    eu_db_site                          char(16)         NOT NULL,
                    eu_db_id                            bigint           NOT NULL,
                    eu_type_code                        bigint           NOT NULL,
                    data_value                          nvarchar(254)     NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (sol_pack_db_site,sol_pack_db_id,sol_pack_id,wc_db_site,wc_db_id,wc_type_code)
  )
  ;

  CREATE TABLE solution_package_blob_data (
                    sol_pack_db_site                    char(16)         NOT NULL,
                    sol_pack_db_id                      bigint           NOT NULL,
                    sol_pack_id                         bigint           NOT NULL,
                    bd_db_site                          char(16)         NOT NULL,
                    bd_db_id                            bigint           NOT NULL,
                    bd_type_code                        bigint           NOT NULL,
                    bd_ordering_seq                     bigint           NOT NULL,
                    blct_db_site                        char(16)         NOT NULL,
                    blct_db_id                          bigint           NOT NULL,
                    blc_type_code                       bigint           NOT NULL,
                    user_tag_ident                      nvarchar(254)    NULL,
                    name                                nvarchar(254)    NULL,
                    assoc_file_name                     nvarchar(254)    NULL,
                    image_data                          longblob            NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (sol_pack_db_site,sol_pack_db_id,sol_pack_id,bd_db_site,bd_db_id,bd_type_code,bd_ordering_seq)
  )
  ;

  CREATE TABLE solution_package_step (
                    sol_pack_step_db_site               char(16)         NOT NULL,
                    sol_pack_step_db_id                 bigint           NOT NULL,
                    sol_pack_step_id                    bigint           NOT NULL,
                    sol_pack_db_site                    char(16)         NOT NULL,
                    sol_pack_db_id                      bigint           NOT NULL,
                    sol_pack_id                         bigint           NOT NULL,
                    seq_num                             bigint           NULL,
                    gmt_created                         datetime(3)         NULL,
                    loc_hr_delta                        smallint         NULL,
                    loc_min_delta                       smallint         NULL,
                    priority_lev_db_site                char(16)         NULL,
                    priority_lev_db_id                  bigint           NULL,
                    priority_lev_type_code              bigint           NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    long_description                    nvarchar(4000)    NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (sol_pack_step_db_site,sol_pack_step_db_id,sol_pack_step_id)
  )
  ;

  CREATE TABLE solution_package_step_num_data (
                    sol_pack_step_db_site               char(16)         NOT NULL,
                    sol_pack_step_db_id                 bigint           NOT NULL,
                    sol_pack_step_id                    bigint           NOT NULL,
                    wn_db_site                          char(16)         NOT NULL,
                    wn_db_id                            bigint           NOT NULL,
                    wn_type_code                        bigint           NOT NULL,
                    eu_db_site                          char(16)         NOT NULL,
                    eu_db_id                            bigint           NOT NULL,
                    eu_type_code                        bigint           NOT NULL,
                    data_value                          float            NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (sol_pack_step_db_site,sol_pack_step_db_id,sol_pack_step_id,wn_db_site,wn_db_id,wn_type_code)
  )
  ;

  CREATE TABLE solution_package_step_chr_data (
                    sol_pack_step_db_site               char(16)         NOT NULL,
                    sol_pack_step_db_id                 bigint           NOT NULL,
                    sol_pack_step_id                    bigint           NOT NULL,
                    wc_db_site                          char(16)         NOT NULL,
                    wc_db_id                            bigint           NOT NULL,
                    wc_type_code                        bigint           NOT NULL,
                    eu_db_site                          char(16)         NOT NULL,
                    eu_db_id                            bigint           NOT NULL,
                    eu_type_code                        bigint           NOT NULL,
                    data_value                          nvarchar(254)     NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (sol_pack_step_db_site,sol_pack_step_db_id,sol_pack_step_id,wc_db_site,wc_db_id,wc_type_code)
  )
  ;

  CREATE TABLE solution_package_step_blob_dat (
                    sol_pack_step_db_site               char(16)         NOT NULL,
                    sol_pack_step_db_id                 bigint           NOT NULL,
                    sol_pack_step_id                    bigint           NOT NULL,
                    bd_db_site                          char(16)         NOT NULL,
                    bd_db_id                            bigint           NOT NULL,
                    bd_type_code                        bigint           NOT NULL,
                    bd_ordering_seq                     bigint           NOT NULL,
                    blct_db_site                        char(16)         NOT NULL,
                    blct_db_id                          bigint           NOT NULL,
                    blc_type_code                       bigint           NOT NULL,
                    user_tag_ident                      nvarchar(254)    NULL,
                    name                                nvarchar(254)    NULL,
                    assoc_file_name                     nvarchar(254)    NULL,
                    image_data                          longblob            NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (sol_pack_step_db_site,sol_pack_step_db_id,sol_pack_step_id,bd_db_site,bd_db_id,bd_type_code,bd_ordering_seq)
  )
  ;

  CREATE TABLE sol_pack_step_ord_list_needed (
                    sol_pack_step_db_site               char(16)         NOT NULL,
                    sol_pack_step_db_id                 bigint           NOT NULL,
                    sol_pack_step_id                    bigint           NOT NULL,
                    ord_list_db_site                    char(16)         NOT NULL,
                    ord_list_db_id                      bigint           NOT NULL,
                    ord_list_id                         bigint           NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (sol_pack_step_db_site,sol_pack_step_db_id,sol_pack_step_id,ord_list_db_site,ord_list_db_id,ord_list_id)
  )
  ;

  CREATE TABLE work_req_blob_data (
                    work_req_db_site                    char(16)         NOT NULL,
                    work_req_db_id                      bigint           NOT NULL,
                    work_req_id                         bigint           NOT NULL,
                    bd_db_site                          char(16)         NOT NULL,
                    bd_db_id                            bigint           NOT NULL,
                    bd_type_code                        bigint           NOT NULL,
                    ordering_seq                        bigint           NOT NULL,
                    blct_db_site                        char(16)         NOT NULL,
                    blct_db_id                          bigint           NOT NULL,
                    blc_type_code                       bigint           NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    assoc_file_name                     nvarchar(254)     NULL,
                    associated_blob                     longblob            NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (work_req_db_site,work_req_db_id,work_req_id,bd_db_site,bd_db_id,bd_type_code,ordering_seq)
  )
  ;

  CREATE TABLE work_order_blob_data (
                    work_order_db_site                  char(16)         NOT NULL,
                    work_order_db_id                    bigint           NOT NULL,
                    work_order_id                       bigint           NOT NULL,
                    bd_db_site                          char(16)         NOT NULL,
                    bd_db_id                            bigint           NOT NULL,
                    bd_type_code                        bigint           NOT NULL,
                    ordering_seq                        bigint           NOT NULL,
                    blct_db_site                        char(16)         NOT NULL,
                    blct_db_id                          bigint           NOT NULL,
                    blc_type_code                       bigint           NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    assoc_file_name                     nvarchar(254)     NULL,
                    associated_blob                     longblob            NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (work_order_db_site,work_order_db_id,work_order_id,bd_db_site,bd_db_id,bd_type_code,ordering_seq)
  )
  ;

  CREATE TABLE work_step (
                    work_step_db_site                   char(16)         NOT NULL,
                    work_step_db_id                     bigint           NOT NULL,
                    work_step_id                        bigint           NOT NULL,
                    work_order_db_site                  char(16)         NOT NULL,
                    work_order_db_id                    bigint           NOT NULL,
                    work_order_id                       bigint           NOT NULL,
                    work_step_seq                       bigint           NULL,
                    wm_type_db_site                     char(16)         NULL,
                    wm_type_db_id                       bigint           NULL,
                    wm_type_code                        bigint           NULL,
                    task_db_site                        char(16)         NULL,
                    task_db_id                          bigint           NULL,
                    task_type_code                      bigint           NULL,
                    gmt_created                         datetime(3)         NULL,
                    loc_hr_delta                        smallint         NULL,
                    loc_min_delta                       smallint         NULL,
                    by_agent_site                       char(16)         NULL,
                    by_agent_id                         bigint           NULL,
                    sol_pack_step_db_site               char(16)         NULL,
                    sol_pack_step_db_id                 bigint           NULL,
                    sol_pack_step_id                    bigint           NULL,
                    start_before_gmt                    datetime(3)         NULL,
                    end_before_gmt                      datetime(3)         NULL,
                    start_after_gmt                     datetime(3)         NULL,
                    end_after_gmt                       datetime(3)         NULL,
                    from_sy_agent_site                  char(16)         NULL,
                    from_sy_agent_id                    bigint           NULL,
                    to_agent_site                       char(16)         NULL,
                    to_agent_id                         bigint           NULL,
                    priority_lev_db_site                char(16)         NULL,
                    priority_lev_db_id                  bigint           NULL,
                    priority_lev_type_code              bigint           NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    long_description                    nvarchar(4000)    NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (work_step_db_site,work_step_db_id,work_step_id)
  )
  ;

  CREATE TABLE work_step_num_data (
                    work_step_db_site                   char(16)         NOT NULL,
                    work_step_db_id                     bigint           NOT NULL,
                    work_step_id                        bigint           NOT NULL,
                    wn_db_site                          char(16)         NOT NULL,
                    wn_db_id                            bigint           NOT NULL,
                    wn_type_code                        bigint           NOT NULL,
                    eu_db_site                          char(16)         NOT NULL,
                    eu_db_id                            bigint           NOT NULL,
                    eu_type_code                        bigint           NOT NULL,
                    data_value                          float            NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (work_step_db_site,work_step_db_id,work_step_id,wn_db_site,wn_db_id,wn_type_code)
  )
  ;

  CREATE TABLE work_step_chr_data (
                    work_step_db_site                   char(16)         NOT NULL,
                    work_step_db_id                     bigint           NOT NULL,
                    work_step_id                        bigint           NOT NULL,
                    wc_db_site                          char(16)         NOT NULL,
                    wc_db_id                            bigint           NOT NULL,
                    wc_type_code                        bigint           NOT NULL,
                    eu_db_site                          char(16)         NOT NULL,
                    eu_db_id                            bigint           NOT NULL,
                    eu_type_code                        bigint           NOT NULL,
                    data_value                          nvarchar(254)     NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (work_step_db_site,work_step_db_id,work_step_id,wc_db_site,wc_db_id,wc_type_code)
  )
  ;

  CREATE TABLE work_step_blob_data (
                    work_step_db_site                   char(16)         NOT NULL,
                    work_step_db_id                     bigint           NOT NULL,
                    work_step_id                        bigint           NOT NULL,
                    bd_db_site                          char(16)         NOT NULL,
                    bd_db_id                            bigint           NOT NULL,
                    bd_type_code                        bigint           NOT NULL,
                    bd_ordering_seq                     bigint           NOT NULL,
                    blct_db_site                        char(16)         NOT NULL,
                    blct_db_id                          bigint           NOT NULL,
                    blc_type_code                       bigint           NOT NULL,
                    user_tag_ident                      nvarchar(254)    NULL,
                    name                                nvarchar(254)    NULL,
                    assoc_file_name                     nvarchar(254)    NULL,
                    image_data                          longblob            NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (work_step_db_site,work_step_db_id,work_step_id,bd_db_site,bd_db_id,bd_type_code,bd_ordering_seq)
  )
  ;

  CREATE TABLE work_step_ord_list_needed (
                    work_step_db_site                   char(16)         NOT NULL,
                    work_step_db_id                     bigint           NOT NULL,
                    work_step_id                        bigint           NOT NULL,
                    ord_list_db_site                    char(16)         NOT NULL,
                    ord_list_db_id                      bigint           NOT NULL,
                    ord_list_id                         bigint           NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (work_step_db_site,work_step_db_id,work_step_id,ord_list_db_site,ord_list_db_id,ord_list_id)
  )
  ;

  CREATE TABLE work_step_audit (
                    work_step_db_site                   char(16)         NOT NULL,
                    work_step_db_id                     bigint           NOT NULL,
                    work_step_id                        bigint           NOT NULL,
                    waudit_db_site                      char(16)         NOT NULL,
                    waudit_db_id                        bigint           NOT NULL,
                    waudit_type_code                    bigint           NOT NULL,
                    gmt_audit_posted                    datetime(3)         NOT NULL,
                    loc_hr_delta                        smallint         NULL,
                    loc_min_delta                       smallint         NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    long_description                    nvarchar(4000)    NULL,
                    by_agent_site                       char(16)         NULL,
                    by_agent_id                         bigint           NULL,
                    from_sy_agent_site                  char(16)         NULL,
                    from_sy_agent_id                    bigint           NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (work_step_db_site,work_step_db_id,work_step_id,waudit_db_site,waudit_db_id,waudit_type_code,gmt_audit_posted)
  )
  ;

  CREATE TABLE work_step_sg_recomm (
                    work_step_db_site                   char(16)         NOT NULL,
                    work_step_db_id                     bigint           NOT NULL,
                    work_step_id                        bigint           NOT NULL,
                    segment_site                        char(16)         NOT NULL,
                    segment_id                          bigint           NOT NULL,
                    gmt_recommendation                  datetime(3)         NOT NULL,
                    by_agent_site                       char(16)         NOT NULL,
                    by_agent_id                         bigint           NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (work_step_db_site,work_step_db_id,work_step_id,segment_site,segment_id,gmt_recommendation,by_agent_site,by_agent_id)
  )
  ;

  CREATE TABLE work_step_as_recomm (
                    work_step_db_site                   char(16)         NOT NULL,
                    work_step_db_id                     bigint           NOT NULL,
                    work_step_id                        bigint           NOT NULL,
                    asset_org_site                      char(16)         NOT NULL,
                    asset_id                            bigint           NOT NULL,
                    gmt_recommendation                  datetime(3)         NOT NULL,
                    by_agent_site                       char(16)         NOT NULL,
                    by_agent_id                         bigint           NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (work_step_db_site,work_step_db_id,work_step_id,asset_org_site,asset_id,gmt_recommendation,by_agent_site,by_agent_id)
  )
  ;

  CREATE TABLE sg_completed_work_asset_util (
                    segment_site                        char(16)         NOT NULL,
                    segment_id                          bigint           NOT NULL,
                    task_db_site                        char(16)         NOT NULL,
                    task_db_id                          bigint           NOT NULL,
                    task_type_code                      bigint           NOT NULL,
                    gmt_completed                       datetime(3)         NOT NULL,
                    used_asset_org_site                 char(16)         NOT NULL,
                    used_asset_id                       bigint           NOT NULL,
                    on_segment_site                     char(16)         NOT NULL,
                    on_segment_id                       bigint           NOT NULL,
                    gmt_installed                       datetime(3)         NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (segment_site,segment_id,task_db_site,task_db_id,task_type_code,gmt_completed,used_asset_org_site,used_asset_id,on_segment_site,on_segment_id,gmt_installed)
  )
  ;

  CREATE TABLE sg_completed_work_num_data (
                    segment_site                        char(16)         NOT NULL,
                    segment_id                          bigint           NOT NULL,
                    task_db_site                        char(16)         NOT NULL,
                    task_db_id                          bigint           NOT NULL,
                    task_type_code                      bigint           NOT NULL,
                    gmt_completed                       datetime(3)         NOT NULL,
                    wn_db_site                          char(16)         NOT NULL,
                    wn_db_id                            bigint           NOT NULL,
                    wn_type_code                        bigint           NOT NULL,
                    eu_db_site                          char(16)         NOT NULL,
                    eu_db_id                            bigint           NOT NULL,
                    eu_type_code                        bigint           NOT NULL,
                    data_value                          float            NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (segment_site,segment_id,task_db_site,task_db_id,task_type_code,gmt_completed,wn_db_site,wn_db_id,wn_type_code)
  )
  ;

  CREATE TABLE sg_completed_work_chr_data (
                    segment_site                        char(16)         NOT NULL,
                    segment_id                          bigint           NOT NULL,
                    task_db_site                        char(16)         NOT NULL,
                    task_db_id                          bigint           NOT NULL,
                    task_type_code                      bigint           NOT NULL,
                    gmt_completed                       datetime(3)         NOT NULL,
                    wc_db_site                          char(16)         NOT NULL,
                    wc_db_id                            bigint           NOT NULL,
                    wc_type_code                        bigint           NOT NULL,
                    eu_db_site                          char(16)         NOT NULL,
                    eu_db_id                            bigint           NOT NULL,
                    eu_type_code                        bigint           NOT NULL,
                    data_value                          nvarchar(254)     NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (segment_site,segment_id,task_db_site,task_db_id,task_type_code,gmt_completed,wc_db_site,wc_db_id,wc_type_code)
  )
  ;

  CREATE TABLE sg_completed_work_blob_data (
                    segment_site                        char(16)         NOT NULL,
                    segment_id                          bigint           NOT NULL,
                    task_db_site                        char(16)         NOT NULL,
                    task_db_id                          bigint           NOT NULL,
                    task_type_code                      bigint           NOT NULL,
                    gmt_completed                       datetime(3)         NOT NULL,
                    bd_db_site                          char(16)         NOT NULL,
                    bd_db_id                            bigint           NOT NULL,
                    bd_type_code                        bigint           NOT NULL,
                    ordering_seq                        bigint           NOT NULL,
                    blct_db_site                        char(16)         NOT NULL,
                    blct_db_id                          bigint           NOT NULL,
                    blc_type_code                       bigint           NOT NULL,
                    user_tag_ident                      nvarchar(254)    NULL,
                    name                                nvarchar(254)    NULL,
                    assoc_file_name                     nvarchar(254)    NULL,
                    image_data                          longblob            NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (segment_site,segment_id,task_db_site,task_db_id,task_type_code,gmt_completed,bd_db_site,bd_db_id,bd_type_code,ordering_seq)
  )
  ;

  CREATE TABLE sg_completed_work_olist_used (
                    segment_site                        char(16)         NOT NULL,
                    segment_id                          bigint           NOT NULL,
                    task_db_site                        char(16)         NOT NULL,
                    task_db_id                          bigint           NOT NULL,
                    task_type_code                      bigint           NOT NULL,
                    gmt_completed                       datetime(3)         NOT NULL,
                    ord_list_db_site                    char(16)         NOT NULL,
                    ord_list_db_id                      bigint           NOT NULL,
                    ord_list_id                         bigint           NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (segment_site,segment_id,task_db_site,task_db_id,task_type_code,gmt_completed,ord_list_db_site,ord_list_db_id,ord_list_id)
  )
  ;

  CREATE TABLE sg_completed_work_olist_rem (
                    segment_site                        char(16)         NOT NULL,
                    segment_id                          bigint           NOT NULL,
                    task_db_site                        char(16)         NOT NULL,
                    task_db_id                          bigint           NOT NULL,
                    task_type_code                      bigint           NOT NULL,
                    gmt_completed                       datetime(3)         NOT NULL,
                    ord_list_db_site                    char(16)         NOT NULL,
                    ord_list_db_id                      bigint           NOT NULL,
                    ord_list_id                         bigint           NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (segment_site,segment_id,task_db_site,task_db_id,task_type_code,gmt_completed,ord_list_db_site,ord_list_db_id,ord_list_id)
  )
  ;

  CREATE TABLE sg_comp_work_for_sg_prop_event (
                    segment_site                        char(16)         NOT NULL,
                    segment_id                          bigint           NOT NULL,
                    task_db_site                        char(16)         NOT NULL,
                    task_db_id                          bigint           NOT NULL,
                    task_type_code                      bigint           NOT NULL,
                    gmt_completed                       datetime(3)         NOT NULL,
                    sg_prop_db_site                     char(16)         NOT NULL,
                    sg_prop_db_id                       bigint           NOT NULL,
                    sg_prop_event_id                    bigint           NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (segment_site,segment_id,task_db_site,task_db_id,task_type_code,gmt_completed,sg_prop_db_site,sg_prop_db_id,sg_prop_event_id)
  )
  ;

  CREATE TABLE sg_comp_work_for_as_prop_event (
                    segment_site                        char(16)         NOT NULL,
                    segment_id                          bigint           NOT NULL,
                    task_db_site                        char(16)         NOT NULL,
                    task_db_id                          bigint           NOT NULL,
                    task_type_code                      bigint           NOT NULL,
                    gmt_completed                       datetime(3)         NOT NULL,
                    as_prop_db_site                     char(16)         NOT NULL,
                    as_prop_db_id                       bigint           NOT NULL,
                    as_prop_event_id                    bigint           NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (segment_site,segment_id,task_db_site,task_db_id,task_type_code,gmt_completed,as_prop_db_site,as_prop_db_id,as_prop_event_id)
  )
  ;

  CREATE TABLE sg_completed_work_for_sg_event (
                    segment_site                        char(16)         NOT NULL,
                    segment_id                          bigint           NOT NULL,
                    task_db_site                        char(16)         NOT NULL,
                    task_db_id                          bigint           NOT NULL,
                    task_type_code                      bigint           NOT NULL,
                    gmt_completed                       datetime(3)         NOT NULL,
                    ev_segment_site                     char(16)         NOT NULL,
                    ev_segment_id                       bigint           NOT NULL,
                    ev_db_site                          char(16)         NOT NULL,
                    ev_db_id                            bigint           NOT NULL,
                    event_type_code                     bigint           NOT NULL,
                    gmt_event_start                     datetime(3)         NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (segment_site,segment_id,task_db_site,task_db_id,task_type_code,gmt_completed,ev_segment_site,ev_segment_id,ev_db_site,ev_db_id,event_type_code,gmt_event_start)
  )
  ;

  CREATE TABLE sg_completed_work_for_as_event (
                    segment_site                        char(16)         NOT NULL,
                    segment_id                          bigint           NOT NULL,
                    task_db_site                        char(16)         NOT NULL,
                    task_db_id                          bigint           NOT NULL,
                    task_type_code                      bigint           NOT NULL,
                    gmt_completed                       datetime(3)         NOT NULL,
                    ev_asset_org_site                   char(16)         NOT NULL,
                    ev_asset_id                         bigint           NOT NULL,
                    ev_db_site                          char(16)         NOT NULL,
                    ev_db_id                            bigint           NOT NULL,
                    event_type_code                     bigint           NOT NULL,
                    gmt_event_start                     datetime(3)         NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (segment_site,segment_id,task_db_site,task_db_id,task_type_code,gmt_completed,ev_asset_org_site,ev_asset_id,ev_db_site,ev_db_id,event_type_code,gmt_event_start)
  )
  ;

  CREATE TABLE as_completed_work_asset_util (
                    asset_org_site                      char(16)         NOT NULL,
                    asset_id                            bigint           NOT NULL,
                    task_db_site                        char(16)         NOT NULL,
                    task_db_id                          bigint           NOT NULL,
                    task_type_code                      bigint           NOT NULL,
                    gmt_completed                       datetime(3)         NOT NULL,
                    used_asset_org_site                 char(16)         NOT NULL,
                    used_asset_id                       bigint           NOT NULL,
                    on_segment_site                     char(16)         NOT NULL,
                    on_segment_id                       bigint           NOT NULL,
                    gmt_installed                       datetime(3)         NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (asset_org_site,asset_id,task_db_site,task_db_id,task_type_code,gmt_completed,used_asset_org_site,used_asset_id,on_segment_site,on_segment_id,gmt_installed)
  )
  ;

  CREATE TABLE as_completed_work_num_data (
                    asset_org_site                      char(16)         NOT NULL,
                    asset_id                            bigint           NOT NULL,
                    task_db_site                        char(16)         NOT NULL,
                    task_db_id                          bigint           NOT NULL,
                    task_type_code                      bigint           NOT NULL,
                    gmt_completed                       datetime(3)         NOT NULL,
                    wn_db_site                          char(16)         NOT NULL,
                    wn_db_id                            bigint           NOT NULL,
                    wn_type_code                        bigint           NOT NULL,
                    eu_db_site                          char(16)         NOT NULL,
                    eu_db_id                            bigint           NOT NULL,
                    eu_type_code                        bigint           NOT NULL,
                    data_value                          float            NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (asset_org_site,asset_id,task_db_site,task_db_id,task_type_code,gmt_completed,wn_db_site,wn_db_id,wn_type_code)
  )
  ;

  CREATE TABLE as_completed_work_chr_data (
                    asset_org_site                      char(16)         NOT NULL,
                    asset_id                            bigint           NOT NULL,
                    task_db_site                        char(16)         NOT NULL,
                    task_db_id                          bigint           NOT NULL,
                    task_type_code                      bigint           NOT NULL,
                    gmt_completed                       datetime(3)         NOT NULL,
                    wc_db_site                          char(16)         NOT NULL,
                    wc_db_id                            bigint           NOT NULL,
                    wc_type_code                        bigint           NOT NULL,
                    eu_db_site                          char(16)         NOT NULL,
                    eu_db_id                            bigint           NOT NULL,
                    eu_type_code                        bigint           NOT NULL,
                    data_value                          nvarchar(254)     NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (asset_org_site,asset_id,task_db_site,task_db_id,task_type_code,gmt_completed,wc_db_site,wc_db_id,wc_type_code)
  )
  ;

  CREATE TABLE as_completed_work_blob_data (
                    asset_org_site                      char(16)         NOT NULL,
                    asset_id                            bigint           NOT NULL,
                    task_db_site                        char(16)         NOT NULL,
                    task_db_id                          bigint           NOT NULL,
                    task_type_code                      bigint           NOT NULL,
                    gmt_completed                       datetime(3)         NOT NULL,
                    bd_db_site                          char(16)         NOT NULL,
                    bd_db_id                            bigint           NOT NULL,
                    bd_type_code                        bigint           NOT NULL,
                    ordering_seq                        bigint           NOT NULL,
                    blct_db_site                        char(16)         NOT NULL,
                    blct_db_id                          bigint           NOT NULL,
                    blc_type_code                       bigint           NOT NULL,
                    user_tag_ident                      nvarchar(254)    NULL,
                    name                                nvarchar(254)    NULL,
                    assoc_file_name                     nvarchar(254)    NULL,
                    image_data                          longblob            NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (asset_org_site,asset_id,task_db_site,task_db_id,task_type_code,gmt_completed,bd_db_site,bd_db_id,bd_type_code,ordering_seq)
  )
  ;

  CREATE TABLE as_completed_work_olist_used (
                    asset_org_site                      char(16)         NOT NULL,
                    asset_id                            bigint           NOT NULL,
                    task_db_site                        char(16)         NOT NULL,
                    task_db_id                          bigint           NOT NULL,
                    task_type_code                      bigint           NOT NULL,
                    gmt_completed                       datetime(3)         NOT NULL,
                    ord_list_db_site                    char(16)         NOT NULL,
                    ord_list_db_id                      bigint           NOT NULL,
                    ord_list_id                         bigint           NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (asset_org_site,asset_id,task_db_site,task_db_id,task_type_code,gmt_completed,ord_list_db_site,ord_list_db_id,ord_list_id)
  )
  ;

  CREATE TABLE as_completed_work_olist_rem (
                    asset_org_site                      char(16)         NOT NULL,
                    asset_id                            bigint           NOT NULL,
                    task_db_site                        char(16)         NOT NULL,
                    task_db_id                          bigint           NOT NULL,
                    task_type_code                      bigint           NOT NULL,
                    gmt_completed                       datetime(3)         NOT NULL,
                    ord_list_db_site                    char(16)         NOT NULL,
                    ord_list_db_id                      bigint           NOT NULL,
                    ord_list_id                         bigint           NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (asset_org_site,asset_id,task_db_site,task_db_id,task_type_code,gmt_completed,ord_list_db_site,ord_list_db_id,ord_list_id)
  )
  ;

  CREATE TABLE as_comp_work_for_sg_prop_event (
                    asset_org_site                      char(16)         NOT NULL,
                    asset_id                            bigint           NOT NULL,
                    task_db_site                        char(16)         NOT NULL,
                    task_db_id                          bigint           NOT NULL,
                    task_type_code                      bigint           NOT NULL,
                    gmt_completed                       datetime(3)         NOT NULL,
                    sg_prop_db_site                     char(16)         NOT NULL,
                    sg_prop_db_id                       bigint           NOT NULL,
                    sg_prop_event_id                    bigint           NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (asset_org_site,asset_id,task_db_site,task_db_id,task_type_code,gmt_completed,sg_prop_db_site,sg_prop_db_id,sg_prop_event_id)
  )
  ;

  CREATE TABLE as_comp_work_for_as_prop_event (
                    asset_org_site                      char(16)         NOT NULL,
                    asset_id                            bigint           NOT NULL,
                    task_db_site                        char(16)         NOT NULL,
                    task_db_id                          bigint           NOT NULL,
                    task_type_code                      bigint           NOT NULL,
                    gmt_completed                       datetime(3)         NOT NULL,
                    as_prop_db_site                     char(16)         NOT NULL,
                    as_prop_db_id                       bigint           NOT NULL,
                    as_prop_event_id                    bigint           NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (asset_org_site,asset_id,task_db_site,task_db_id,task_type_code,gmt_completed,as_prop_db_site,as_prop_db_id,as_prop_event_id)
  )
  ;

  CREATE TABLE as_completed_work_for_sg_event (
                    asset_org_site                      char(16)         NOT NULL,
                    asset_id                            bigint           NOT NULL,
                    task_db_site                        char(16)         NOT NULL,
                    task_db_id                          bigint           NOT NULL,
                    task_type_code                      bigint           NOT NULL,
                    gmt_completed                       datetime(3)         NOT NULL,
                    ev_segment_site                     char(16)         NOT NULL,
                    ev_segment_id                       bigint           NOT NULL,
                    ev_db_site                          char(16)         NOT NULL,
                    ev_db_id                            bigint           NOT NULL,
                    event_type_code                     bigint           NOT NULL,
                    gmt_event_start                     datetime(3)         NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (asset_org_site,asset_id,task_db_site,task_db_id,task_type_code,gmt_completed,ev_segment_site,ev_segment_id,ev_db_site,ev_db_id,event_type_code,gmt_event_start)
  )
  ;

  CREATE TABLE as_completed_work_for_as_event (
                    asset_org_site                      char(16)         NOT NULL,
                    asset_id                            bigint           NOT NULL,
                    task_db_site                        char(16)         NOT NULL,
                    task_db_id                          bigint           NOT NULL,
                    task_type_code                      bigint           NOT NULL,
                    gmt_completed                       datetime(3)         NOT NULL,
                    ev_asset_org_site                   char(16)         NOT NULL,
                    ev_asset_id                         bigint           NOT NULL,
                    ev_db_site                          char(16)         NOT NULL,
                    ev_db_id                            bigint           NOT NULL,
                    event_type_code                     bigint           NOT NULL,
                    gmt_event_start                     datetime(3)         NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (asset_org_site,asset_id,task_db_site,task_db_id,task_type_code,gmt_completed,ev_asset_org_site,ev_asset_id,ev_db_site,ev_db_id,event_type_code,gmt_event_start)
  )
  ;

  CREATE TABLE ol_completed_work_asset_util (
                    ord_list_db_site                    char(16)         NOT NULL,
                    ord_list_db_id                      bigint           NOT NULL,
                    ord_list_id                         bigint           NOT NULL,
                    task_db_site                        char(16)         NOT NULL,
                    task_db_id                          bigint           NOT NULL,
                    task_type_code                      bigint           NOT NULL,
                    gmt_completed                       datetime(3)         NOT NULL,
                    used_asset_org_site                 char(16)         NOT NULL,
                    used_asset_id                       bigint           NOT NULL,
                    on_segment_site                     char(16)         NOT NULL,
                    on_segment_id                       bigint           NOT NULL,
                    gmt_installed                       datetime(3)         NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (ord_list_db_site,ord_list_db_id,ord_list_id,task_db_site,task_db_id,task_type_code,gmt_completed,used_asset_org_site,used_asset_id,on_segment_site,on_segment_id,gmt_installed)
  )
  ;

  CREATE TABLE ol_completed_work_num_data (
                    ord_list_db_site                    char(16)         NOT NULL,
                    ord_list_db_id                      bigint           NOT NULL,
                    ord_list_id                         bigint           NOT NULL,
                    task_db_site                        char(16)         NOT NULL,
                    task_db_id                          bigint           NOT NULL,
                    task_type_code                      bigint           NOT NULL,
                    gmt_completed                       datetime(3)         NOT NULL,
                    wn_db_site                          char(16)         NOT NULL,
                    wn_db_id                            bigint           NOT NULL,
                    wn_type_code                        bigint           NOT NULL,
                    eu_db_site                          char(16)         NOT NULL,
                    eu_db_id                            bigint           NOT NULL,
                    eu_type_code                        bigint           NOT NULL,
                    data_value                          float            NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (ord_list_db_site,ord_list_db_id,ord_list_id,task_db_site,task_db_id,task_type_code,gmt_completed,wn_db_site,wn_db_id,wn_type_code)
  )
  ;

  CREATE TABLE ol_completed_work_chr_data (
                    ord_list_db_site                    char(16)         NOT NULL,
                    ord_list_db_id                      bigint           NOT NULL,
                    ord_list_id                         bigint           NOT NULL,
                    task_db_site                        char(16)         NOT NULL,
                    task_db_id                          bigint           NOT NULL,
                    task_type_code                      bigint           NOT NULL,
                    gmt_completed                       datetime(3)         NOT NULL,
                    wc_db_site                          char(16)         NOT NULL,
                    wc_db_id                            bigint           NOT NULL,
                    wc_type_code                        bigint           NOT NULL,
                    eu_db_site                          char(16)         NOT NULL,
                    eu_db_id                            bigint           NOT NULL,
                    eu_type_code                        bigint           NOT NULL,
                    data_value                          nvarchar(254)     NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (ord_list_db_site,ord_list_db_id,ord_list_id,task_db_site,task_db_id,task_type_code,gmt_completed,wc_db_site,wc_db_id,wc_type_code)
  )
  ;

  CREATE TABLE ol_completed_work_blob_data (
                    ord_list_db_site                    char(16)         NOT NULL,
                    ord_list_db_id                      bigint           NOT NULL,
                    ord_list_id                         bigint           NOT NULL,
                    task_db_site                        char(16)         NOT NULL,
                    task_db_id                          bigint           NOT NULL,
                    task_type_code                      bigint           NOT NULL,
                    gmt_completed                       datetime(3)         NOT NULL,
                    bd_db_site                          char(16)         NOT NULL,
                    bd_db_id                            bigint           NOT NULL,
                    bd_type_code                        bigint           NOT NULL,
                    ordering_seq                        bigint           NOT NULL,
                    blct_db_site                        char(16)         NOT NULL,
                    blct_db_id                          bigint           NOT NULL,
                    blc_type_code                       bigint           NOT NULL,
                    user_tag_ident                      nvarchar(254)    NULL,
                    name                                nvarchar(254)    NULL,
                    assoc_file_name                     nvarchar(254)    NULL,
                    image_data                          longblob            NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (ord_list_db_site,ord_list_db_id,ord_list_id,task_db_site,task_db_id,task_type_code,gmt_completed,bd_db_site,bd_db_id,bd_type_code,ordering_seq)
  )
  ;

  CREATE TABLE ol_completed_work_olist_used (
                    ord_list_db_site                    char(16)         NOT NULL,
                    ord_list_db_id                      bigint           NOT NULL,
                    ord_list_id                         bigint           NOT NULL,
                    task_db_site                        char(16)         NOT NULL,
                    task_db_id                          bigint           NOT NULL,
                    task_type_code                      bigint           NOT NULL,
                    gmt_completed                       datetime(3)         NOT NULL,
                    used_ord_list_db_site               char(16)         NOT NULL,
                    used_ord_list_db_id                 bigint           NOT NULL,
                    used_ord_list_id                    bigint           NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (ord_list_db_site,ord_list_db_id,ord_list_id,task_db_site,task_db_id,task_type_code,gmt_completed,used_ord_list_db_site,used_ord_list_db_id,used_ord_list_id)
  )
  ;

  CREATE TABLE ol_completed_work_olist_rem (
                    ord_list_db_site                    char(16)         NOT NULL,
                    ord_list_db_id                      bigint           NOT NULL,
                    ord_list_id                         bigint           NOT NULL,
                    task_db_site                        char(16)         NOT NULL,
                    task_db_id                          bigint           NOT NULL,
                    task_type_code                      bigint           NOT NULL,
                    gmt_completed                       datetime(3)         NOT NULL,
                    rem_ord_list_db_site                char(16)         NOT NULL,
                    rem_ord_list_db_id                  bigint           NOT NULL,
                    rem_ord_list_id                     bigint           NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (ord_list_db_site,ord_list_db_id,ord_list_id,task_db_site,task_db_id,task_type_code,gmt_completed,rem_ord_list_db_site,rem_ord_list_db_id,rem_ord_list_id)
  )
  ;

  CREATE TABLE ol_comp_work_for_sg_prop_event (
                    ord_list_db_site                    char(16)         NOT NULL,
                    ord_list_db_id                      bigint           NOT NULL,
                    ord_list_id                         bigint           NOT NULL,
                    task_db_site                        char(16)         NOT NULL,
                    task_db_id                          bigint           NOT NULL,
                    task_type_code                      bigint           NOT NULL,
                    gmt_completed                       datetime(3)         NOT NULL,
                    sg_prop_db_site                     char(16)         NOT NULL,
                    sg_prop_db_id                       bigint           NOT NULL,
                    sg_prop_event_id                    bigint           NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (ord_list_db_site,ord_list_db_id,ord_list_id,task_db_site,task_db_id,task_type_code,gmt_completed,sg_prop_db_site,sg_prop_db_id,sg_prop_event_id)
  )
  ;

  CREATE TABLE ol_comp_work_for_as_prop_event (
                    ord_list_db_site                    char(16)         NOT NULL,
                    ord_list_db_id                      bigint           NOT NULL,
                    ord_list_id                         bigint           NOT NULL,
                    task_db_site                        char(16)         NOT NULL,
                    task_db_id                          bigint           NOT NULL,
                    task_type_code                      bigint           NOT NULL,
                    gmt_completed                       datetime(3)         NOT NULL,
                    as_prop_db_site                     char(16)         NOT NULL,
                    as_prop_db_id                       bigint           NOT NULL,
                    as_prop_event_id                    bigint           NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (ord_list_db_site,ord_list_db_id,ord_list_id,task_db_site,task_db_id,task_type_code,gmt_completed,as_prop_db_site,as_prop_db_id,as_prop_event_id)
  )
  ;

  CREATE TABLE ol_completed_work_for_sg_event (
                    ord_list_db_site                    char(16)         NOT NULL,
                    ord_list_db_id                      bigint           NOT NULL,
                    ord_list_id                         bigint           NOT NULL,
                    task_db_site                        char(16)         NOT NULL,
                    task_db_id                          bigint           NOT NULL,
                    task_type_code                      bigint           NOT NULL,
                    gmt_completed                       datetime(3)         NOT NULL,
                    ev_segment_site                     char(16)         NOT NULL,
                    ev_segment_id                       bigint           NOT NULL,
                    ev_db_site                          char(16)         NOT NULL,
                    ev_db_id                            bigint           NOT NULL,
                    event_type_code                     bigint           NOT NULL,
                    gmt_event_start                     datetime(3)         NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (ord_list_db_site,ord_list_db_id,ord_list_id,task_db_site,task_db_id,task_type_code,gmt_completed,ev_segment_site,ev_segment_id,ev_db_site,ev_db_id,event_type_code,gmt_event_start)
  )
  ;

  CREATE TABLE ol_completed_work_for_as_event (
                    ord_list_db_site                    char(16)         NOT NULL,
                    ord_list_db_id                      bigint           NOT NULL,
                    ord_list_id                         bigint           NOT NULL,
                    task_db_site                        char(16)         NOT NULL,
                    task_db_id                          bigint           NOT NULL,
                    task_type_code                      bigint           NOT NULL,
                    gmt_completed                       datetime(3)         NOT NULL,
                    ev_asset_org_site                   char(16)         NOT NULL,
                    ev_asset_id                         bigint           NOT NULL,
                    ev_db_site                          char(16)         NOT NULL,
                    ev_db_id                            bigint           NOT NULL,
                    event_type_code                     bigint           NOT NULL,
                    gmt_event_start                     datetime(3)         NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (ord_list_db_site,ord_list_db_id,ord_list_id,task_db_site,task_db_id,task_type_code,gmt_completed,ev_asset_org_site,ev_asset_id,ev_db_site,ev_db_id,event_type_code,gmt_event_start)
  )
  ;

  CREATE TABLE request_num_data (
                    req_db_site                         char(16)         NOT NULL,
                    req_db_id                           bigint           NOT NULL,
                    request_id                          bigint           NOT NULL,
                    wn_db_site                          char(16)         NOT NULL,
                    wn_db_id                            bigint           NOT NULL,
                    wn_type_code                        bigint           NOT NULL,
                    eu_db_site                          char(16)         NOT NULL,
                    eu_db_id                            bigint           NOT NULL,
                    eu_type_code                        bigint           NOT NULL,
                    data_value                          float            NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (req_db_site,req_db_id,request_id,wn_db_site,wn_db_id,wn_type_code)
  )
  ;

  CREATE TABLE request_chr_data (
                    req_db_site                         char(16)         NOT NULL,
                    req_db_id                           bigint           NOT NULL,
                    request_id                          bigint           NOT NULL,
                    wc_db_site                          char(16)         NOT NULL,
                    wc_db_id                            bigint           NOT NULL,
                    wc_type_code                        bigint           NOT NULL,
                    eu_db_site                          char(16)         NOT NULL,
                    eu_db_id                            bigint           NOT NULL,
                    eu_type_code                        bigint           NOT NULL,
                    data_value                          float            NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (req_db_site,req_db_id,request_id,wc_db_site,wc_db_id,wc_type_code)
  )
  ;

  CREATE TABLE request_blob_data (
                    req_db_site                         char(16)         NOT NULL,
                    req_db_id                           bigint           NOT NULL,
                    request_id                          bigint           NOT NULL,
                    bd_db_site                          char(16)         NOT NULL,
                    bd_db_id                            bigint           NOT NULL,
                    bd_type_code                        bigint           NOT NULL,
                    bd_ordering_seq                     bigint           NOT NULL,
                    blct_db_site                        char(16)         NOT NULL,
                    blct_db_id                          bigint           NOT NULL,
                    blc_type_code                       bigint           NOT NULL,
                    user_tag_ident                      nvarchar(254)    NULL,
                    name                                nvarchar(254)    NULL,
                    assoc_file_name                     nvarchar(254)    NULL,
                    image_data                          longblob            NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (req_db_site,req_db_id,request_id,bd_db_site,bd_db_id,bd_type_code,bd_ordering_seq)
  )
  ;

  CREATE TABLE request_for_sg_prop_event (
                    req_db_site                         char(16)         NOT NULL,
                    req_db_id                           bigint           NOT NULL,
                    request_id                          bigint           NOT NULL,
                    sg_prop_db_site                     char(16)         NOT NULL,
                    sg_prop_db_id                       bigint           NOT NULL,
                    sg_prop_event_id                    bigint           NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (req_db_site,req_db_id,request_id,sg_prop_db_site,sg_prop_db_id,sg_prop_event_id)
  )
  ;

  CREATE TABLE request_for_as_prop_event (
                    req_db_site                         char(16)         NOT NULL,
                    req_db_id                           bigint           NOT NULL,
                    request_id                          bigint           NOT NULL,
                    as_prop_db_site                     char(16)         NOT NULL,
                    as_prop_db_id                       bigint           NOT NULL,
                    as_prop_event_id                    bigint           NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (req_db_site,req_db_id,request_id,as_prop_db_site,as_prop_db_id,as_prop_event_id)
  )
  ;

  CREATE TABLE work_request_for_sg_prop_event (
                    work_req_db_site                    char(16)         NOT NULL,
                    work_req_db_id                      bigint           NOT NULL,
                    work_req_id                         bigint           NOT NULL,
                    sg_prop_db_site                     char(16)         NOT NULL,
                    sg_prop_db_id                       bigint           NOT NULL,
                    sg_prop_event_id                    bigint           NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (work_req_db_site,work_req_db_id,work_req_id,sg_prop_db_site,sg_prop_db_id,sg_prop_event_id)
  )
  ;

  CREATE TABLE work_request_for_as_prop_event (
                    work_req_db_site                    char(16)         NOT NULL,
                    work_req_db_id                      bigint           NOT NULL,
                    work_req_id                         bigint           NOT NULL,
                    as_prop_db_site                     char(16)         NOT NULL,
                    as_prop_db_id                       bigint           NOT NULL,
                    as_prop_event_id                    bigint           NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (work_req_db_site,work_req_db_id,work_req_id,as_prop_db_site,as_prop_db_id,as_prop_event_id)
  )
  ;

  CREATE TABLE work_order_for_sg_prop_event (
                    work_order_db_site                  char(16)         NOT NULL,
                    work_order_db_id                    bigint           NOT NULL,
                    work_order_id                       bigint           NOT NULL,
                    sg_prop_db_site                     char(16)         NOT NULL,
                    sg_prop_db_id                       bigint           NOT NULL,
                    sg_prop_event_id                    bigint           NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (work_order_db_site,work_order_db_id,work_order_id,sg_prop_db_site,sg_prop_db_id,sg_prop_event_id)
  )
  ;

  CREATE TABLE work_order_for_as_prop_event (
                    work_order_db_site                  char(16)         NOT NULL,
                    work_order_db_id                    bigint           NOT NULL,
                    work_order_id                       bigint           NOT NULL,
                    as_prop_db_site                     char(16)         NOT NULL,
                    as_prop_db_id                       bigint           NOT NULL,
                    as_prop_event_id                    bigint           NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (work_order_db_site,work_order_db_id,work_order_id,as_prop_db_site,as_prop_db_id,as_prop_event_id)
  )
  ;

  CREATE TABLE request_for_sg_event (
                    req_db_site                         char(16)         NOT NULL,
                    req_db_id                           bigint           NOT NULL,
                    request_id                          bigint           NOT NULL,
                    ev_segment_site                     char(16)         NOT NULL,
                    ev_segment_id                       bigint           NOT NULL,
                    ev_db_site                          char(16)         NOT NULL,
                    ev_db_id                            bigint           NOT NULL,
                    event_type_code                     bigint           NOT NULL,
                    gmt_event_start                     datetime(3)         NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (req_db_site,req_db_id,request_id,ev_segment_site,ev_segment_id,ev_db_site,ev_db_id,event_type_code,gmt_event_start)
  )
  ;

  CREATE TABLE request_for_as_event (
                    req_db_site                         char(16)         NOT NULL,
                    req_db_id                           bigint           NOT NULL,
                    request_id                          bigint           NOT NULL,
                    ev_asset_org_site                   char(16)         NOT NULL,
                    ev_asset_id                         bigint           NOT NULL,
                    ev_db_site                          char(16)         NOT NULL,
                    ev_db_id                            bigint           NOT NULL,
                    event_type_code                     bigint           NOT NULL,
                    gmt_event_start                     datetime(3)         NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (req_db_site,req_db_id,request_id,ev_asset_org_site,ev_asset_id,ev_db_site,ev_db_id,event_type_code,gmt_event_start)
  )
  ;

  CREATE TABLE work_request_for_sg_event (
                    work_req_db_site                    char(16)         NOT NULL,
                    work_req_db_id                      bigint           NOT NULL,
                    work_req_id                         bigint           NOT NULL,
                    ev_segment_site                     char(16)         NOT NULL,
                    ev_segment_id                       bigint           NOT NULL,
                    ev_db_site                          char(16)         NOT NULL,
                    ev_db_id                            bigint           NOT NULL,
                    event_type_code                     bigint           NOT NULL,
                    gmt_event_start                     datetime(3)         NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (work_req_db_site,work_req_db_id,work_req_id,ev_segment_site,ev_segment_id,ev_db_site,ev_db_id,event_type_code,gmt_event_start)
  )
  ;

  CREATE TABLE work_request_for_as_event (
                    work_req_db_site                    char(16)         NOT NULL,
                    work_req_db_id                      bigint           NOT NULL,
                    work_req_id                         bigint           NOT NULL,
                    ev_asset_org_site                   char(16)         NOT NULL,
                    ev_asset_id                         bigint           NOT NULL,
                    ev_db_site                          char(16)         NOT NULL,
                    ev_db_id                            bigint           NOT NULL,
                    event_type_code                     bigint           NOT NULL,
                    gmt_event_start                     datetime(3)         NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (work_req_db_site,work_req_db_id,work_req_id,ev_asset_org_site,ev_asset_id,ev_db_site,ev_db_id,event_type_code,gmt_event_start)
  )
  ;

  CREATE TABLE work_order_for_sg_event (
                    work_order_db_site                  char(16)         NOT NULL,
                    work_order_db_id                    bigint           NOT NULL,
                    work_order_id                       bigint           NOT NULL,
                    ev_segment_site                     char(16)         NOT NULL,
                    ev_segment_id                       bigint           NOT NULL,
                    ev_db_site                          char(16)         NOT NULL,
                    ev_db_id                            bigint           NOT NULL,
                    event_type_code                     bigint           NOT NULL,
                    gmt_event_start                     datetime(3)         NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (work_order_db_site,work_order_db_id,work_order_id,ev_segment_site,ev_segment_id,ev_db_site,ev_db_id,event_type_code,gmt_event_start)
  )
  ;

  CREATE TABLE work_order_for_as_event (
                    work_order_db_site                  char(16)         NOT NULL,
                    work_order_db_id                    bigint           NOT NULL,
                    work_order_id                       bigint           NOT NULL,
                    ev_asset_org_site                   char(16)         NOT NULL,
                    ev_asset_id                         bigint           NOT NULL,
                    ev_db_site                          char(16)         NOT NULL,
                    ev_db_id                            bigint           NOT NULL,
                    event_type_code                     bigint           NOT NULL,
                    gmt_event_start                     datetime(3)         NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (work_order_db_site,work_order_db_id,work_order_id,ev_asset_org_site,ev_asset_id,ev_db_site,ev_db_id,event_type_code,gmt_event_start)
  )
  ;

  CREATE TABLE network_num_data (
                    network_db_site                     char(16)         NOT NULL,
                    network_db_id                       bigint           NOT NULL,
                    network_id                          bigint           NOT NULL,
                    nn_type_db_site                     char(16)         NOT NULL,
                    nn_type_db_id                       bigint           NOT NULL,
                    nn_type_code                        bigint           NOT NULL,
                    eu_db_site                          char(16)         NOT NULL,
                    eu_db_id                            bigint           NOT NULL,
                    eu_type_code                        bigint           NOT NULL,
                    data_value                          float            NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (network_db_site,network_db_id,network_id,nn_type_db_site,nn_type_db_id,nn_type_code)
  )
  ;

  CREATE TABLE network_chr_data (
                    network_db_site                     char(16)         NOT NULL,
                    network_db_id                       bigint           NOT NULL,
                    network_id                          bigint           NOT NULL,
                    nc_type_db_site                     char(16)         NOT NULL,
                    nc_type_db_id                       bigint           NOT NULL,
                    nc_type_code                        bigint           NOT NULL,
                    eu_db_site                          char(16)         NOT NULL,
                    eu_db_id                            bigint           NOT NULL,
                    eu_type_code                        bigint           NOT NULL,
                    data_value                          nvarchar(254)     NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (network_db_site,network_db_id,network_id,nc_type_db_site,nc_type_db_id,nc_type_code)
  )
  ;

  CREATE TABLE network_blob_data (
                    network_db_site                     char(16)         NOT NULL,
                    network_db_id                       bigint           NOT NULL,
                    network_id                          bigint           NOT NULL,
                    bd_db_site                          char(16)         NOT NULL,
                    bd_db_id                            bigint           NOT NULL,
                    bd_type_code                        bigint           NOT NULL,
                    bd_ordering_seq                     bigint           NOT NULL,
                    blct_db_site                        char(16)         NOT NULL,
                    blct_db_id                          bigint           NOT NULL,
                    blc_type_code                       bigint           NOT NULL,
                    user_tag_ident                      nvarchar(254)    NULL,
                    name                                nvarchar(254)    NULL,
                    assoc_file_name                     nvarchar(254)    NULL,
                    image_data                          longblob            NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (network_db_site,network_db_id,network_id,bd_db_site,bd_db_id,bd_type_code,bd_ordering_seq)
  )
  ;

  CREATE TABLE cris_instance (
                    database_version                    nvarchar(254)     NOT NULL,
               
               PRIMARY KEY (database_version)
  )
  ;

  CREATE TABLE work_item_type (
                    work_item_db_site                   char(16)         NOT NULL,
                    work_item_db_id                     bigint           NOT NULL,
                    work_item_type_code                 bigint           NOT NULL,
                    user_tag_ident                      nvarchar(254)     NULL,
                    name                                nvarchar(254)     NOT NULL,
                    gmt_last_updated                    datetime(3)         NULL,
                    last_upd_db_site                    char(16)         NULL,
                    last_upd_db_id                      bigint           NULL,
                    rstat_type_code                     smallint         NULL,
               
               PRIMARY KEY (work_item_db_site,work_item_db_id,work_item_type_code)
  )
  ;
  
SET foreign_key_checks=1;