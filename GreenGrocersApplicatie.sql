prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- Oracle APEX export file
--
-- You should run this script using a SQL client connected to the database as
-- the owner (parsing schema) of the application or as a database user with the
-- APEX_ADMINISTRATOR_ROLE role.
--
-- This export file has been automatically generated. Modifying this file is not
-- supported by Oracle and can lead to unexpected application and/or instance
-- behavior now or in the future.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_imp.import_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.2'
,p_default_workspace_id=>1505940895549826531
,p_default_application_id=>163610
,p_default_id_offset=>11404058648721397739
,p_default_owner=>'WKSP_DBOUNASAT'
);
end;
/
 
prompt APPLICATION 163610 - GreenGrocers
--
-- Application Export:
--   Application:     163610
--   Name:            GreenGrocers
--   Date and Time:   21:15 Monday March 3, 2025
--   Exported By:     O.SAMUELS@UNASAT.SR
--   Flashback:       0
--   Export Type:     Application Export
--     Pages:                     73
--       Items:                  217
--       Processes:              112
--       Regions:                135
--       Buttons:                152
--       Dynamic Actions:         38
--     Shared Components:
--       Logic:
--         Build Options:          1
--       Navigation:
--         Lists:                  2
--         Breadcrumbs:            1
--           Entries:             46
--       Security:
--         Authentication:         3
--         Authorization:          4
--       User Interface:
--         Themes:                 1
--         Templates:
--         LOVs:                  26
--       PWA:
--       Globalization:
--       Reports:
--       E-Mail:
--     Supporting Objects:  Included
--   Version:         24.2.2
--   Instance ID:     63113759365424
--

prompt --application/delete_application
begin
wwv_flow_imp.remove_flow(wwv_flow.g_flow_id);
end;
/
prompt --application/create_application
begin
wwv_imp_workspace.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_owner=>nvl(wwv_flow_application_install.get_schema,'WKSP_DBOUNASAT')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'GreenGrocers')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'GREENGROCERS163610')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'B87ECE696FC60D317C011616B32149641669B41DEBE87639EF6D37C8AA50F02C'
,p_bookmark_checksum_function=>'SH512'
,p_compatibility_mode=>'24.2'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_allow_feedback_yn=>'Y'
,p_date_format=>'DS'
,p_timestamp_format=>'DS'
,p_timestamp_tz_format=>'DS'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication_id=>wwv_flow_imp.id(16213984864469593383)
,p_application_tab_set=>0
,p_logo_type=>'T'
,p_logo_text=>'GreenGrocers'
,p_proxy_server=>nvl(wwv_flow_application_install.get_proxy,'')
,p_no_proxy_domains=>nvl(wwv_flow_application_install.get_no_proxy_domains,'')
,p_flow_version=>'Release 1.0'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_flow_unavailable_text=>'This application is currently unavailable at this time.'
,p_exact_substitutions_only=>'Y'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_rejoin_existing_sessions=>'N'
,p_csv_encoding=>'Y'
,p_auto_time_zone=>'N'
,p_substitution_string_01=>'APP_NAME'
,p_substitution_value_01=>'GreenGrocers'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_files_version=>13
,p_version_scn=>15609091623761
,p_print_server_type=>'INSTANCE'
,p_file_storage=>'DB'
,p_is_pwa=>'Y'
,p_pwa_is_installable=>'Y'
,p_pwa_manifest_display=>'fullscreen'
,p_pwa_manifest_orientation=>'any'
,p_pwa_apple_status_bar_style=>'default'
,p_pwa_is_push_enabled=>'N'
);
end;
/
prompt --application/user_interfaces
begin
wwv_flow_imp_shared.create_user_interface(
 p_id=>wwv_flow_imp.id(163610)
,p_theme_id=>42
,p_home_url=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_login_url=>'f?p=&APP_ID.:LOGIN:&APP_SESSION.::&DEBUG.:::'
,p_theme_style_by_user_pref=>false
,p_built_with_love=>false
,p_global_page_id=>0
,p_navigation_list_id=>wwv_flow_imp.id(16199429019254615232)
,p_navigation_list_position=>'SIDE'
,p_navigation_list_template_id=>2467739217141810545
,p_nav_list_template_options=>'#DEFAULT#:js-defaultCollapsed:js-navCollapsed--hidden:t-TreeNav--styleA'
,p_nav_bar_type=>'LIST'
,p_nav_bar_list_id=>wwv_flow_imp.id(16199430169991615235)
,p_nav_bar_list_template_id=>2847543055748234966
,p_nav_bar_template_options=>'#DEFAULT#'
);
end;
/
prompt --application/shared_components/navigation/lists/navigation_menu
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(16199429019254615232)
,p_name=>'Navigation Menu'
,p_list_status=>'PUBLIC'
,p_version_scn=>15608981718660
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(13512971497482948464)
,p_list_item_display_sequence=>2
,p_list_item_link_text=>'Catalog'
,p_list_item_link_target=>'f?p=&APP_ID.:46:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-store'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'46'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(17517981494646900196)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Medewerkers'
,p_list_item_link_target=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-users'
,p_security_scheme=>wwv_flow_imp.id(14371552832635043722)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'3'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(17820779854820239549)
,p_list_item_display_sequence=>100
,p_list_item_link_text=>'Producten'
,p_list_item_link_target=>'f?p=&APP_ID.:34:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-cubes'
,p_security_scheme=>wwv_flow_imp.id(14371552832635043722)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'34'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(18417873765142789405)
,p_list_item_display_sequence=>120
,p_list_item_link_text=>'Persoonlijke informatie'
,p_list_item_link_target=>'f?p=&APP_ID.:9:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-address-card'
,p_security_scheme=>wwv_flow_imp.id(14371552832635043722)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'9'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(21881725234361642715)
,p_list_item_display_sequence=>380
,p_list_item_link_text=>'AddresBoek'
,p_list_item_link_target=>'f?p=&APP_ID.:54:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-address-book-o'
,p_parent_list_item_id=>wwv_flow_imp.id(18417873765142789405)
,p_security_scheme=>wwv_flow_imp.id(14371552832635043722)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'54,55'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(12223621752872895749)
,p_list_item_display_sequence=>470
,p_list_item_link_text=>'Bestelling geschiedenis'
,p_list_item_link_target=>'f?p=&APP_ID.:64:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-server-clock'
,p_parent_list_item_id=>wwv_flow_imp.id(18417873765142789405)
,p_security_scheme=>wwv_flow_imp.id(14371552832635043722)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'64'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(18529793787981625683)
,p_list_item_display_sequence=>160
,p_list_item_link_text=>'Route beheer'
,p_list_item_link_target=>'f?p=&APP_ID.:18:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-truck'
,p_security_scheme=>wwv_flow_imp.id(14371552832635043722)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'18,19'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(18533109710957969881)
,p_list_item_display_sequence=>170
,p_list_item_link_text=>'Woon wijken'
,p_list_item_link_target=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-map-pin-circle'
,p_parent_list_item_id=>wwv_flow_imp.id(18529793787981625683)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'20,21'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(18538884028383784168)
,p_list_item_display_sequence=>180
,p_list_item_link_text=>'Delivery Routes'
,p_list_item_link_target=>'f?p=&APP_ID.:26:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-package'
,p_parent_list_item_id=>wwv_flow_imp.id(18529793787981625683)
,p_security_scheme=>wwv_flow_imp.id(14371552832635043722)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'26,27'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(20170380064221039371)
,p_list_item_display_sequence=>270
,p_list_item_link_text=>'ProductBloeiSeizoen'
,p_list_item_link_target=>'f?p=&APP_ID.:25:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-table'
,p_security_scheme=>wwv_flow_imp.id(14371552832635043722)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'25,29'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(20972089558956706001)
,p_list_item_display_sequence=>340
,p_list_item_link_text=>'mandje'
,p_list_item_link_target=>'f?p=&APP_ID.:49:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-shopping-basket'
,p_security_scheme=>wwv_flow_imp.id(14371552832635043722)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'49'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(21278530497566089944)
,p_list_item_display_sequence=>350
,p_list_item_link_text=>'Auditlog'
,p_list_item_link_target=>'f?p=&APP_ID.:44:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-clock-o'
,p_security_scheme=>wwv_flow_imp.id(14371552832635043722)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'44'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(22217889412468392849)
,p_list_item_display_sequence=>410
,p_list_item_link_text=>'Betaling Beheer'
,p_list_item_link_target=>'f?p=&APP_ID.:47:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-credit-card-terminal'
,p_security_scheme=>wwv_flow_imp.id(14371552832635043722)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'47'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(12220386257011647060)
,p_list_item_display_sequence=>440
,p_list_item_link_text=>'Bestellingen Processen'
,p_list_item_link_target=>'f?p=&APP_ID.:52:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-cash-register'
,p_security_scheme=>wwv_flow_imp.id(14371552832635043722)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'52'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(12222089698550756346)
,p_list_item_display_sequence=>450
,p_list_item_link_text=>'Verzonden bestellingen'
,p_list_item_link_target=>'f?p=&APP_ID.:56:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-truck'
,p_parent_list_item_id=>wwv_flow_imp.id(12220386257011647060)
,p_security_scheme=>wwv_flow_imp.id(14371552832635043722)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'56'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(12223356215932593246)
,p_list_item_display_sequence=>460
,p_list_item_link_text=>'Geleverd bestellingen'
,p_list_item_link_target=>'f?p=&APP_ID.:60:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-check-circle'
,p_parent_list_item_id=>wwv_flow_imp.id(12220386257011647060)
,p_security_scheme=>wwv_flow_imp.id(14371552832635043722)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'60'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(12589935323016966454)
,p_list_item_display_sequence=>480
,p_list_item_link_text=>'Uitchecken'
,p_list_item_link_target=>'f?p=&APP_ID.:66:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-calculator'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(12931165210752714263)
,p_list_item_display_sequence=>530
,p_list_item_link_text=>'Rapporten'
,p_list_item_link_target=>'f?p=&APP_ID.:69:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-table-file'
,p_security_scheme=>wwv_flow_imp.id(14371552832635043722)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'69'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(12893762259501232993)
,p_list_item_display_sequence=>500
,p_list_item_link_text=>'Bestelling rapport'
,p_list_item_link_target=>'f?p=&APP_ID.:58:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-table'
,p_parent_list_item_id=>wwv_flow_imp.id(12931165210752714263)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'58'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(12921427044614194923)
,p_list_item_display_sequence=>510
,p_list_item_link_text=>'Voorraad rapport'
,p_list_item_link_target=>'f?p=&APP_ID.:65:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-table'
,p_parent_list_item_id=>wwv_flow_imp.id(12931165210752714263)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'65'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(12923328767291528881)
,p_list_item_display_sequence=>520
,p_list_item_link_text=>'Omzet rapport'
,p_list_item_link_target=>'f?p=&APP_ID.:67:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-table'
,p_parent_list_item_id=>wwv_flow_imp.id(12931165210752714263)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'67'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(12936137452902896319)
,p_list_item_display_sequence=>550
,p_list_item_link_text=>'Dashboard'
,p_list_item_link_target=>'f?p=&APP_ID.:72:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-dashboard'
,p_security_scheme=>wwv_flow_imp.id(14371552832635043722)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'72'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(13503674743800367129)
,p_list_item_display_sequence=>570
,p_list_item_link_text=>'Auth Beheer'
,p_list_item_link_target=>'f?p=&APP_ID.:23:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-users-alt'
,p_security_scheme=>wwv_flow_imp.id(14371552832635043722)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'23'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(18551771138759492133)
,p_list_item_display_sequence=>190
,p_list_item_link_text=>'Rollen'
,p_list_item_link_target=>'f?p=&APP_ID.:28:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-badges'
,p_parent_list_item_id=>wwv_flow_imp.id(13503674743800367129)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'28'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(19849985694730820242)
,p_list_item_display_sequence=>209
,p_list_item_link_text=>'Auth Privileges'
,p_list_item_link_target=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-lock_user'
,p_parent_list_item_id=>wwv_flow_imp.id(13503674743800367129)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'6,7'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(14367546733763959636)
,p_list_item_display_sequence=>210
,p_list_item_link_text=>'Rollen Privileges'
,p_list_item_link_target=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-file-lock'
,p_parent_list_item_id=>wwv_flow_imp.id(13503674743800367129)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(20166754312189828054)
,p_list_item_display_sequence=>260
,p_list_item_link_text=>'User Roles Assignment'
,p_list_item_link_target=>'f?p=&APP_ID.:17:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-user-wrench'
,p_parent_list_item_id=>wwv_flow_imp.id(13503674743800367129)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'17,22'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(13506142768934527544)
,p_list_item_display_sequence=>580
,p_list_item_link_text=>'Waardebon beheer'
,p_list_item_link_target=>'f?p=&APP_ID.:37:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-money'
,p_security_scheme=>wwv_flow_imp.id(14371552832635043722)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'37'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(20200518582255819648)
,p_list_item_display_sequence=>300
,p_list_item_link_text=>'Promo codes'
,p_list_item_link_target=>'f?p=&APP_ID.:40:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-receipt'
,p_parent_list_item_id=>wwv_flow_imp.id(13506142768934527544)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'40,41'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(22221606082672576845)
,p_list_item_display_sequence=>420
,p_list_item_link_text=>'Korting'
,p_list_item_link_target=>'f?p=&APP_ID.:62:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-receipt'
,p_parent_list_item_id=>wwv_flow_imp.id(13506142768934527544)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'62,63'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(13511413794307859095)
,p_list_item_display_sequence=>590
,p_list_item_link_text=>'Views'
,p_list_item_link_target=>'f?p=&APP_ID.:39:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-view'
,p_security_scheme=>wwv_flow_imp.id(14371552832635043722)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'39'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(20198932024069466039)
,p_list_item_display_sequence=>280
,p_list_item_link_text=>'Klanten View'
,p_list_item_link_target=>'f?p=&APP_ID.:31:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-users'
,p_parent_list_item_id=>wwv_flow_imp.id(13511413794307859095)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'31'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(20199505045908772339)
,p_list_item_display_sequence=>290
,p_list_item_link_text=>'VoorraadView'
,p_list_item_link_target=>'f?p=&APP_ID.:35:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-table'
,p_parent_list_item_id=>wwv_flow_imp.id(13511413794307859095)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'35'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(15689133051833016099)
,p_list_item_display_sequence=>620
,p_list_item_link_text=>'Meest verkochte producten'
,p_list_item_link_target=>'f?p=&APP_ID.:61:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-table'
,p_parent_list_item_id=>wwv_flow_imp.id(13511413794307859095)
,p_security_scheme=>wwv_flow_imp.id(14371552832635043722)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'61'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(14363141966476807822)
,p_list_item_display_sequence=>610
,p_list_item_link_text=>'Tracker'
,p_list_item_link_target=>'f?p=&APP_ID.:53:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-map-marker'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'53'
);
end;
/
prompt --application/shared_components/navigation/lists/navigation_bar
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(16199430169991615235)
,p_name=>'Navigation Bar'
,p_list_status=>'PUBLIC'
,p_version_scn=>15608760886090
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(17322533943064711380)
,p_list_item_display_sequence=>1
,p_list_item_link_text=>'Install App'
,p_list_item_link_target=>'#action$a-pwa-install'
,p_list_item_icon=>'fa-cloud-download'
,p_list_text_02=>'a-pwaInstall'
,p_list_item_current_type=>'NEVER'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(16199442274462615251)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'&APP_USER.'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-user'
,p_list_text_02=>'has-username'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(16199442840690615251)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'---'
,p_list_item_link_target=>'separator'
,p_list_item_disp_cond_type=>'USER_IS_NOT_PUBLIC_USER'
,p_parent_list_item_id=>wwv_flow_imp.id(16199442274462615251)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(16199443222210615251)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Sign Out'
,p_list_item_link_target=>'&LOGOUT_URL.'
,p_list_item_icon=>'fa-sign-out'
,p_list_item_disp_cond_type=>'USER_IS_NOT_PUBLIC_USER'
,p_parent_list_item_id=>wwv_flow_imp.id(16199442274462615251)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(13451041610179309500)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Mandje'
,p_list_item_link_target=>'f?p=&APP_ID.:49:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-cart-empty'
,p_parent_list_item_id=>wwv_flow_imp.id(16199442274462615251)
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/listentry
begin
null;
end;
/
prompt --application/shared_components/files/icons_app_icon_32_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7AF4000000097048597300000B1300000B1301009A9C18000000017352474200AECE1CE90000000467414D410000B18F0BFC6105000002F4494441547801C5574F4F134114';
wwv_flow_imp.g_varchar2_table(2) := '7F4B081720563C502F7451BC7868CBC58304CAA5241E44FC003536E1E0C1448CF5A6D1446F985012A31E54907E00850BB1BD580824EA81B6070FF2A7AD17CA015A423994CBF8DEEC6EBB946D771696F697BCCE74E7EDBEDFBCF7E6CD8C0482608C39B019';
wwv_flow_imp.g_varchar2_table(3) := '43F1A178516414873A5C40C9A02450E228DF24492A801D40C3324A1825CFAC6186DE85D382668C32C5CE8E29D57B96679D66F621CD44BD818A5E66AF713D096FA3676E4442D6DB9474C6294E6BA064F7792283D2AFAD9256DDC00B3B8D678B3B10CF2561';
wwv_flow_imp.g_varchar2_table(4) := 'FFA808C9DD2DF83818D28664D5D663FAD3423FAA5B26C026BC4ECCC18DF90710598F42E8E707B250AD32A185A2457DF0126CC4DC7A0C6EF70CC0522E05AE8E6E78DE1F3052E31396D4D8E7C1020A4787B0F06F05B2073BFCBFE7D25518EDB9591E5F42D7';
wwv_flow_imp.g_varchar2_table(5) := 'FB179F82A3AD1D62B726C1DDD567F819945ECA81311004C5757CF90D37500D6DA681BE1128940EE1D7E87B70757623898E5A9FE3A59D080C83A071FF6288B7F5C851FBCC1B0041F888804744737C79B26C9C5CFBF0FA5D74FB0086A3086FFF7CC590ACF2';
wwv_flow_imp.g_varchar2_table(6) := 'E71852B0002FBD60BAC9C4B713ACEDB3BF2CF39995133A5FFE7E67F9D201B3883C79C074A348EE6E96FB9E2E4C38979270948CA93D654CEE74627F4BF5500726DE151080A355448B0C69B8A04BAAD4DE06CFF66A5022EA0A4F5D501D303D385086578C6E';
wwv_flow_imp.g_varchar2_table(7) := '9AA923C9761044810864CCB47C972B794A4917D988F2FE90D303A560940BCDBAACEF14CA6B428642408BBAEE36491E1872BA796523D0728B6FA7E0DEB5114E6821BB5A2645BA5A8E08204195F03E7666CC34B3C51C8F77AD3AA0E1F79D77B52A9F11825A';
wwv_flow_imp.g_varchar2_table(8) := '294E83C06A2012AFD62238DBD8893137AE8E4F834FAC18275CE4E7012411C6E691E85B4424814B735F5D1DB434693FB088593C1304350232285E68247A9140866FC7D4C1661A1A8769D566F38F64C7C09A70283522D1BC63F9397A22CDAC5ED39872350B';
wwv_flow_imp.g_varchar2_table(9) := 'B3B383BE61ED6A66E08D59660D79D5B06CF67D0904C12AD7F36150F60E171CBF9E6741B99EFF000BD7F3FF9630AE57B8F9D16B0000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(16199431288911615237)
,p_file_name=>'icons/app-icon-32.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/icons_app_icon_144_rounded_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000090000000900806000000E746E2B8000000097048597300000B1300000B1301009A9C18000000017352474200AECE1CE90000000467414D410000B18F0BFC610500000EEA494441547801ED9D7F7014E519';
wwv_flow_imp.g_varchar2_table(2) := 'C79F632CDA42CA05A72368873B14528B335CD2A276F8954345AB8E0958E90FA70938605BAD41519CFE63801047FE30AD3841E98CED8889ED1FFE0042DBB1965A131CED88B509B462AB0817A622FE4003080A42B6EF777FDCED5D7277BB7BBB977D779F0F';
wwv_flow_imp.g_varchar2_table(3) := 'F3B23F6EF78E61BFF33CCFFBBCCFFB6E8446104551A26293142D2E5A42DFC6F58FE3C49819102D65DAF68BD62D5A5F241219A011224265C42418B47A6291B8458A343175615B4E41954540423849B1B99334E14489F19A4DA27509216D258FF14C40BAB5';
wwv_flow_imp.g_varchar2_table(4) := '8168EE2216CD489112AD8534AB94220F705D402C1C5F92126D9310510BB98CAB0212E2592236AB89631BBF9212AD45086913B9842B0212C2898BCDE3A4C5388CFF416CB4C20DB7368A4A448807AEAA97583C32B140B45EDD639484630BA4C73A70577711';
wwv_flow_imp.g_varchar2_table(5) := '2333EB85255A410E712420DD656D11AD9A9820D027DA42272ECDB68074F1BC481C28078D9468F3EC8AC89680583C81274536456459402C9ED090221B22B22420164FE848914511591510BAE91C30870B04D6F38A0DCC16CD0309F13C442C9E308267BEBA';
wwv_flow_imp.g_varchar2_table(6) := 'D845052D909E687A9C9830838CF5FA7C1FE615901EF7C075F1806840E8FFF47DD10ED1DC09093BB7C185D5E48B870AB930B82E168FE40C9C3A4E1D7BFF428B5E58439775FD8CA2A3C7924DA081BC5EE8ACE14EEAAE6B0131D200EBB2EBE377540B933AF6';
wwv_flow_imp.g_varchar2_table(7) := '011D508FF7AAE70D6263CFA3E9E32F220724A189E146F1CFCA7343D1E08919196051B61D7899761DDE37AC480A3177C2742A81D542445B737B654304242EE27A1E1F0291AC7C75A310CF2BE494BA49B3A804E2A40D9CAF319FCC0AA23961E84FDAF76C16';
wwv_flow_imp.g_varchar2_table(8) := 'E2F975D1EBA2A3C7D024E1A6A2A32B545796EBBEDE5AD4492502EB33D96C85722D5092583CBEE2FEBE0E6AED7D32EFE710CD8FA75C4DB5A267B5FB9377A8E7BDDDB4E3D0AE21D795E8BED23F47395628D702ED2716906F28647960519AAB1BE886D82CDA';
wwv_flow_imp.g_varchar2_table(9) := '20AE6B7F63B31A1FE5E3AD451DE29E09E40203C202551A07690B24C4835E579C185F00F7737FEFF02EE78E690BA9B9A681767FBC4FED9A170BA21BA6CC774B3C208A695A4244DD3830BB30EEB6FB8856219E5C8B0277F5D4156BA87662A2A86B3303B1B9';
wwv_flow_imp.g_varchar2_table(10) := '0C66DD74634715905E9EBA9818DF80EEB9198867FBB50F8A3CCE145BE271D9FA18202F1445306D64A293C4F80AB827338FCDBE57150FE222ABE281E83CB03EEA5793AE194340ECBE7C06826403C43C75B1997A2EA87877DEE03E11647B607D0C92F8CB10';
wwv_flow_imp.g_varchar2_table(11) := '502D31BE02AE074048CB2F59A8EECF7F6EA5ADFB9B2EB9913C048B63D0283DFE8913E32BF0F05517A45B110C885A1DB2C07857DBE5B791C7C4A11D04D15C2CE643306AFEF4956BD2AE2C5F973E178807C1B6835177272421A02431BEC4A8DBB16A7D102B';
wwv_flow_imp.g_varchar2_table(12) := 'FDD27BCB63260E01C589F135C5AC0F86291030233F54661210508C18DF82712DC3FAD44D9A29928B9FAAFB888B12E32F5447D86315E7D108311902E2AA431FD3F1F676759B10B10D62229F116317E673E09E509AD12846DCFD484474C51462188794BC3E';
wwv_flow_imp.g_varchar2_table(13) := '10136E58404C499C458C5A367144F46E72732D48C66925A26388199ED00908A3DC3D87FAD4590D9806734004A8852AF90C90E1454FA876E27435C1671EEC0C33A108A2771CDA4D5DFDAFD0937B9FB724162B40448D53E78B414B7FF68ECA45600504A174';
wwv_flow_imp.g_varchar2_table(14) := '0AC16CEBFFFBB045E66E014BD438F56A554861B44A811410C68E90FEB73A7AED066A917B4D43E82C52A00404C12C7BA9CD538B530C0808420A8B350A8C803A85D5C1CC4DB7629C528078B65FDB160A11054240768ACCCB0552008FCD59A90E800619E905';
wwv_flow_imp.g_varchar2_table(15) := 'E447F198F98D105190E322A933D17E170F404C06F71A54A415900CE231C04C8ADD22691944A47461E86D553DEDC97C27CF4040BDB37E63B96A95CB8694028278DCCCF1A0E606431571F190C7E90F18636329F11BB01CC864BB01026A1F16859584746361';
wwv_flow_imp.g_varchar2_table(16) := '705D6E880716A169DA426A1059E4625601055D1D6F8BE4649F33970981A2200CBF1534A4B240100E26D79522208CACA300DDC9A43B0869FE73F7DA5A526E848ADDCB86541608635BA588474BF03DE878BA2FEEC3FDC5441406E1184865814A897D4A158F';
wwv_flow_imp.g_varchar2_table(17) := '997C96284CC231904640589974D10BCE5E3A0CB7851E909B0B0D60BC0D220261148E81342E0C65194EF162950AD4033D367BA56AD9C2281C03692C9053F7E5D2EAA44C1EA4C8446B2BB03B8B7DB0BA05E31D52080841AB53E64E7465795B260F7258A0C3';
wwv_flow_imp.g_varchar2_table(18) := 'FBC8092882F770852E862409A24BE9BA3BF9AD9E32543462582308E3629208C8990B73F2661AFCD6AD2FB591D7C4BEDBA64E11921D9E99CA94040B882909161053125208689CC360D358CD8BF10E2904E4B4B772C407537CF211AF08C6941F2904E4747E';
wwv_flow_imp.g_varchar2_table(19) := 'D5484E302C4650E68C055A40C8E9F8D18D0569C2A114024A9CEBE84DC32A9DFA22957E2248D9712912891892404D8F9369CB78496D93FEAE092B2060B7F37A4858B8DC37EB14C3A5D74FFA0269EA81905576323B027110EEB3FAD012EAAB02AC67A251E4';
wwv_flow_imp.g_varchar2_table(20) := '6F5F40C1A91F92260F54CA1CF37B5EDD485E8018ABC3A68BD40AD0826381A4119036FDC6D95A8598DBB5D20311B53A58832848EE0B482320E4826E28C10AB5EFD922DC8D7B9589705D4EE6BC374CB98682845443198D254ECC83C5704344765E3B692668';
wwv_flow_imp.g_varchar2_table(21) := 'EE0B482520049FA5BA008808F5D54EAC077A812B776EB4F5DA4933412CAF956E6E3CEA752EEBBACD9595C8D4E9CDA28B9F183F25AF30F13B88A14A5DE535A8C5FD522EAED0DADBE1789E7A2162398B2BA0B9B62C70C534F5D54C89F3A6D0F40953297A76';
wwv_flow_imp.g_varchar2_table(22) := '3056E990768532CC91776BD50CCF39F60529474F891D8522E20FFEC3EBABE65043F5755457359764465A01D95DE860C4383D48CAFB9F9132384891488428E77F3B31A18A9EF9FE3A8A4527928C48BD4622621358223FACCC3A2CAA784E109D29FC5F1C3D';
wwv_flow_imp.g_varchar2_table(23) := 'A7829A6B9752D3777E40B221FD229BBE15D1A042CA21F16F3A35683A292C50DA0465F615F52842ABE62DA5FB92CB482602B1CCAFEFDC19C47330573C40498B25F73CA9B19142BFBAF66E6A9A298F250ACC42E31011723C9D7B47B87CE38B41FAEAC722E9';
wwv_flow_imp.g_varchar2_table(24) := '39FD7A11DF4CA558A516DB0C7C7E8CB6EDD9419DBD7F32F432D418E9DBEDCB1EA5DAC9DF261908DCBB32B4A5E83A47C41A8DFBEC4BD436F3766AACBE3EEF35A94F0ED2B267D652CFBE7FAAC711DD18E12944CF194B4DB37E48CB67FF488D8B6420902F5B';
wwv_flow_imp.g_varchar2_table(25) := '31D634DC20C6BFCA121B9D384DB13395B4BD6143DAE21463E9D32DD4F9FA1FD3C74D4234CD57DD2A8D700C02FDBE3008A9E7BDDDDE5924211C65E024454F9E4DAFADF89D65F118CC78E866AABEE01BD43CFF27B6EFF50BA1796B73CF7BBBD4EA441498D9';
wwv_flow_imp.g_varchar2_table(26) := '2D00CB42C438CAD193223928C473FC949ADB69ABBB9B96CFB999C248285FFB8D32D45D87DF515300580BFA80A9F81E966ADCE8316AF9089A3AB4F1F969EA78792BD1F1D35A0FCBF822C42D5FAEA0B7EFFB83BA0D23A17CE92E848165E9AC2E4DD7BEE3F7';
wwv_flow_imp.g_varchar2_table(27) := '181CCB4A221B1DA7DA0BBF155AF1007E6BB305521F1D144311866832C93F9010314C21063E13DDF77FBD98D56337DF1FC9FAD6EC6B1A2FAB23BFC302B2C0C089A3C2750D9A1E722611582C023872E2182DED5C6D5C3DE4FE8CA214AD4F6F6C1416507050';
wwv_flow_imp.g_varchar2_table(28) := '4C4D0519E648E6B322B7AA6A5094CC3D1125FDA12196CC09FD5892C8940564053CCCC1CC4357D14570E4F8D1E2F79F5174ED28998CB37138DCA88644F0F22E16A8FE7A9526A04125634DCE68C7FD87DF2DFE058A7EEFA0795FC908D3F86C30F359B1D8CA';
wwv_flow_imp.g_varchar2_table(29) := '2FB005B2C0A4F1E7EB16C83C8045EA71CF7FFF2162A46314FDCAF03D31DC11AB3C9F860E8069F41F3EA8EF659F8F8F9723B1C802B2406DD5A57AD8937163E837217E19F8F4286DEBFB1B35CEAC1FF6DED8B9E7D3DE757FCEFBDD17FDE21AD58A4522265F';
wwv_flow_imp.g_varchar2_table(30) := '26BE7FEED4192403ECC22C00EB525B3523CB8D454CEEA7B5EB51D50AD965ADB8EFC047EFE6B832EDFBEB6BAE2019600159A4B9EEF6F40356CE646F531FFC8F6E6A5F6E4B44C82DB56E7D245B387A83F5899D7B01C9000BC822B5175F9A766562FC472416';
wwv_flow_imp.g_varchar2_table(31) := '9574408CFD9E3D3BE9AA754BA8FFA3E24175CF7F5E13D72E4E07CE11754BEAF7A02D9E554FB210CAB130A7F4BC2944F2C0122DFED12B088754178AC3C6D90BA871CE424AC42E4E07D7FDC2E2F4F5BF49EDCF770801EDD4FBEF4AA62048A7AEE64A7A7645';
wwv_flow_imp.g_varchar2_table(32) := '3BC902049412DB18319658BB7903B56E7E44EB5329191D808829B7985B7098F58109737E11636AAF3FB085625F93C37D0906B81766935537DEA10AA1F5D90DDA09C52416434894BD35EAA0558BA5648D5A647DC76F7FBA4E26F1801462A0FDC4D862D5F7';
wwv_flow_imp.g_varchar2_table(33) := 'EEA0E61B7F9E09AA8D3846ED4D51563CA39882E388A997A5988E2BCF192BC4F300D5CFB89224E30804D44F8C6D56DDD444CFDCF3889AE7D14424065BCF0CA6C591110DA583E58CA048BB4EEC26265D4C7F5DD5498DB5F6DF22ED03F62306BA4BEC3C448C';
wwv_flow_imp.g_varchar2_table(34) := '639EE8DE4C6B9F6AA7FE0FDF4D8F8C1A89C1AC1E8AC97525E2DFA43BAF5B4C8DF3A4148E410B04B440EC6C21A66476EDDF433D6FECA49E7FBFAA9680F47FA80D53A0A31B1D5341D5423489C968D3A8F692CB2900CC8380A262E7136218FB548E12A67680';
wwv_flow_imp.g_varchar2_table(35) := '380E62EC9382768C4CF45662187B74E3AF51E60386B14117FED2EAE4B43808F9A028318C352AD32E4C8F837A8861ACB149D74CD668FC7A62186B74193B59437BC295A13BCF6E8C29047A5F938D83DC7AA08789610AD3623EC8B5401C4C33854811B2CF91';
wwv_flow_imp.g_varchar2_table(36) := '48CA38916581F4C088AD10938F27CCE201B9D3DA0C2BD42B5A9C18264356EC6330A4265AB7422DC430D90CAB8948BEAB85257A516C92C430A2DB2E0CCB82E13E2824A03869AE8C03EA70038F54931BFB18E49DD6A3DFC0AE8C59914F3CA0E0BC307123B2';
wwv_flow_imp.g_varchar2_table(37) := 'D3DC2B0B2F0F0B0D6C2A7441848AA0F7CA100F55131326FA84786A8A5D547466AADE2BC38BD753C484851469CFBC28452D90811E54C312C589093229CAC93617C2B280008B28F0A4C88678802D010116516049914DF100DBAB73E83F304FB43E6282029E';
wwv_flow_imp.g_varchar2_table(38) := 'A56DF10047CBBBE087F4089DBBF8F28367E8483CC0B60BCB45B8B425A4CD6CE58CB55CA8639E7AAECF31250B08E87111FE21F2AC8C146E50FFBEC4A9D531E3CA0A65BA4BC360DB2DC4F9223F9312ED16F1AC926E8807B86281721116698DD82C26EEA9F9';
wwv_flow_imp.g_varchar2_table(39) := '05A35070BD319BC22D3C1110D0DD5A52B4D5C4421A293C138E81670232A3AF0082B69818AF31E6F84134DDE431651190813E309B244D4CB5C496C92DB03806D637E846F3CADA0C475905948B2E288CF2274913131ACEC588D302B9182BA8A4F4D6A76FCB';
wwv_flow_imp.g_varchar2_table(40) := '2A985CFE0F28A39C86322B3BD80000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(16199431551076615238)
,p_file_name=>'icons/app-icon-144-rounded.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/icons_app_icon_192_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000000C0000000C0080600000052DC6C07000000097048597300000B1300000B1301009A9C18000000017352474200AECE1CE90000000467414D410000B18F0BFC610500001279494441547801ED9D0B705CD579';
wwv_flow_imp.g_varchar2_table(2) := 'C7BFDB499926864898A460CC780DC83C53ADC1899938419AE298B699DAC249A0C98C253A21B4A1B13D1350FA9858E05A9ED2198C3BE307D060325389B6D342149099A1209C20D3D2C1066C298379583692432C48B02CBF8331BA39DF7D9EBDBB2BB4BBE7';
wwv_flow_imp.g_varchar2_table(3) := 'DEDD7BCEFF37B3DE7BEFDE7D78F4FDCFF9CE77BEF31DCB16100086F27B0480C14000C068200060341000301A0800180D04008C06020046030100A3810080D14000C068200060341000301A0800A49ADE032F5225400020956C7F7790163DFD03EADEFB2C';
wwv_flow_imp.g_varchar2_table(4) := '55C22708801A67FCF4091A1CDB470363433470683F6D3DF07FCE3566CB97DBA91220005013B0411F397D5C18F93E1A39FE2E0D1FFB351D38FE9E63F423E2B918D9F32EA54A800040E20C8EEDA7DD5E6B3E15232F46E6ECF3A9713A04005200FBEC9DBBBA';
wwv_flow_imp.g_varchar2_table(5) := '85F10F05EE4BA5345DD0489502018058F10D7FFBBB03A49AD6863FA14A8100406CACDDDD258CFF512A15766D9A2EC83A638261311E6097A9D03DCD33D003801AA514E3AF3F6B9AE3CBB736DC288C3A4BDD43CF52FFE8E0A4BD46C7DC5652010400943355';
wwv_flow_imp.g_varchar2_table(6) := 'E367C35F7ED5525A71F5D79CC1F086D77E4AB7FFEF3A9A0A4D0A5A7F0602004AE178FDC719BF6CF8449623988DC2F8A74A6BC322E1025D402A80008052BEB16DF5A4AF73E466CBF5ED8E01F300F93B2FDC577208B4E31A35EE0F03010065F48A19DAC98C';
wwv_flow_imp.g_varchar2_table(7) := '7995F0DB7DE3DDB8A787DA5F7A884A4565EBCF400040195D7BFB8ABE261B7FB9D1214665EBCF20190E28E38522511B55C6AFBAF5672000A08C4233BC3CD8F58DBF4B8437CB357E8EFBAB6EFD19080028838D347A7EFF757738C73C36582B6684CB85E3FE';
wwv_flow_imp.g_varchar2_table(8) := 'AA5B7F060200CA583C6B41CEF9BAF97704C7DF79615D59096F0CF722AD736EA438800080325A32A100D85F5FE29DB3EB536E2E10CF10FBBD481C400040199CBFB3FCAA9B9C633951AD5CD7875DA8C717DE4371823028504AC7356D74440C86FD44356EFD';
wwv_flow_imp.g_varchar2_table(9) := 'CBCDF5EFFBB3FB62F1FB652CEC1003E2E4B2C75A4B1600CF163FB67035D59F7536C50D7A00101BA5B6FE9C23C473066E8E503240002036A6EAFBB3E12F6BB891565EBD347697270A04006281A33E72EBCF6E0D27BFF9F88B5EB2D32F71429C49B83B8580';
wwv_flow_imp.g_varchar2_table(10) := '00402CC879411C12DD72FD0FA81641181428875B7E5ED5E5B332419FBE54D00300E5B07BF3DF37DC435B0FBCE884442B2D5D1227088302A3810B048C06020046030100A3810080D14000C06820006034980728135EFFCAD5CCB8CCF7C8B1F78269FF62C9';
wwv_flow_imp.g_varchar2_table(11) := '5F3CD55F77D6342746CE35EDF95C457563501910C014E13C16AE63BF7DF41765D7B32F044F12714E0CAFA682209207136193C046FFE4C88BF4E8D033CA6ADA4F0667452E9EF5256A9B7323C4901010400436F44D7B7A68E36B3D89187D31FC32205C3119';
wwv_flow_imp.g_varchar2_table(12) := 'C40704E011E7460E950021C48BF102605F9E4B76D49AE1478110E2C15801D48AAB532A2C001642B40815280F2305C035ECB98CB7AA484ED2B8E54256D7749A715A304E005C969BD7AAA6A9D52F06178CE2AA69A07C8C1240FB8E074BDA89240DB03BB46A';
wwv_flow_imp.g_varchar2_table(13) := 'AEFAA2B1A6608400B8B56FDFF100754F52BF3ECDAC10BDC0BA18CB07EA8CF60260E35FF474BBE3F7EB4C2D2F3CAF65B44F86BBFD85FBB4377EA67BA8CFD96F0B9486D602609FBFF7C08B640A2C82B5BBCBAFC16F22DA0AA0D4AD37758167B337ED31EFFF';
wwv_flow_imp.g_varchar2_table(14) := '5D2E5A8E0138BECF45594D6667CB83982798025A0AA09C8AC4AAE08CCE3A2FF79F73FEF9771C397D3CF179079E2CDB214450AD92836941BBF500ECFA2469FC9CB6EC3EB2C14297428C0B110C1CDAE7544CE3C4BBB87F230B808507014C8E563D4052AE0F';
wwv_flow_imp.g_varchar2_table(15) := 'B7F23C03CB65BCCB35B0AEBDCF3A0356D5426031F2C458F38C2C818F472B017056A75C93320E56CD5D5691E1CB70AFD0B9AB4B0C5A9FA04A81E19787360288BBF5F7F7AB6A9CDE40AA6111ACDD5DDEFEB930FCCAD0660CD0B92BBEF8F792595FA487C52C';
wwv_flow_imp.g_varchar2_table(16) := '6B5CFE34EFABC59422029EF975D3A293DD504237B41040B41CB74A924A31988A08FCB107AF1986E1AB410B0174ED7D86E280E3E849E6D7B00806C7F6E7CD5EAB187483C26831068823EE9FD4369D5178607CB9F8FFF0BC010C3F7E52DF030C8CED8B25A6';
wwv_flow_imp.g_varchar2_table(17) := 'DE31B73AFE351BFA7DF3EF10FFA77761F809907A016C1F55BF989D5D1FDEB8AD5AB4CDC1C2F7A4487D325C1CD99E1D5861650CA91780EA5C7FF6FD976416103083540B80FD7FD549668B67C1F84D22D502E081A26A96CCFA12017348B7008EA98FFE64CF';
wwv_flow_imp.g_varchar2_table(18) := 'BB848039A43A0A34AC38FC999D7EA9B2B023BB669C8E5C2BF01A059E5700B9A45A00AAE3FF750A63EE5C72B196D6E7F2E0FEAD9BB15E384AAA5D20D52D2CEA6D9A07F60893D059004734280519071080218CD7D078A496800080D14000C068200089B4EE';
wwv_flow_imp.g_varchar2_table(19) := '17301530C02F4CAA05A03A5DB996E2F6AA415A7561D003480C685C44B70E022848AA05909DAE366D815D205DA32598052E4CAA051047ABC66B72750475420B936A01C4510BA77FB4B6B74B2D972C045090940F82CF57DEB573DD4E1D997D0EA2408548FD';
wwv_flow_imp.g_varchar2_table(20) := '205875D7CE1B66EB26028E00C1052A4CEA17C5F31F56B5C172E15A2E3958096D731655FC19BCDCB37DC743542930FEE2A45E002D9905CA7744E12A7395EEC6CE731495CE53A84AA75E82659E4549BD0BC475F9E308F171A5E96AA2D2156B9E51594FA433';
wwv_flow_imp.g_varchar2_table(21) := '5A4C842D6B505F47870DB09A7B6DA91220F76270818AA385005A622A63C215A7AB911FA472971B54B9981C2D04C06E50A3E259618667857993ED2445C085BE3A7795B7574021565EBD944071B4C9056A6B88A79C201B7F5222E0A8CFED0A37BBCE9E7B29';
wwv_flow_imp.g_varchar2_table(22) := 'D5FD3E728026439B1D62E4AACA71C0B1748E0C71B5E638E0969F8D5FE5EFB7C73F203A79C639CED4CFA0D97533A8F1FC066ACE5C4BD9F3E750A60E7B0C68B54758255B0D4D152E9CB5EEBAEF2ACBAF67838F6553EF8F26C87EEF947BECFC892DF7D8728F';
wwv_flow_imp.g_varchar2_table(23) := 'F80A8B60C5FC5B8420AE1162984126A2DD3EC149ED11DC2A5C2EAEE25CEE64171BFEA63D3D4EF994587AADC3BF25FBC499FCEB962704F244C17F7E71ADADF1ABD4D1FC6DE384A09D00387CB9E8E9E47675E13988A60BE652D38C3FA2ECF406A76788F60E';
wwv_flow_imp.g_varchar2_table(24) := 'EE66D92768F7D8100D1CDAEFF8FAFC3B63835BFF8327DD63BFB997ED9E5CA30FAE7B22A8FF83B3458FF0174208B7912968B953FC5D2F3DA064EBD1B4621F3C2E4440816193F427F68FACE89BC47D6C0A7C7DB6182FF4DDBAD91937E88E962BC278AF2D63';
wwv_flow_imp.g_varchar2_table(25) := 'D7C08E9F263A6387461F69DF2C3BD7F8FD979DEBDEF1F0F8287DE15F6FA527DFE827DDD152001CB1D9727D3B19C719E1FA8C0BDF7FC2769B7ADB7BE6F3090A9B7F9B82EB96776E4F4C84EF11D7C74F1EA59BFFF3EFA9F3F92DA433DAAE09E6C9B175F3BF';
wwv_flow_imp.g_varchar2_table(26) := '4BC6208CD61E3DE1BAF76CD679466FE73C1C9104F7498299F03FD0759D3A7FB6853A7FAEAF08B45E14CF9BCCAD9ABB8C4CC0FECD29C7F5B10323F75F8818B767EC967FCD79B2C35E8148EA11DC0B2C804DFFFF5FA4235A0E82A324313F50550E7F40F6D8';
wwv_flow_imp.g_varchar2_table(27) := '6FDD633FEA231DCB41A0E03A9114050ADFE2BC6CB937F983629FBEDB1EA4E68BAF259D3042008CB62218FB80EA4E7E829A2E9E47CD975C4BB3CE1533BEF51752FD27CFA6E1C3079D5B0647F752FFFE5769FBDBAFD2F807C7DCF739462F0C3C271CEA7DA6';
wwv_flow_imp.g_varchar2_table(28) := '742C8BA7FE93E7D0CEE5DD5A45878C1100A39B089AEAAEA2E557DC240C7F9E88E19F33A5F774BDF214756E7B98468E8C92DCFCCB1AB0BC90A88F1584522DBAFFCFBF4F2B167C9374C12801303C01C5B9F6692F83C8037C1EE39403F70CED4FFD0BF5EEE9';
wwv_flow_imp.g_varchar2_table(29) := 'F70C9E3C77274C97609C6BDECC7193707D1EF9C63D943957AFB901E304C0F0E67A9CEBDF3DD4476983E7371E5F780F358A59E74A59F3DC8FA8F3B98783B9B2C01DF2668AD9349A845B75F757FECAE96574C44801F8F0E2775E779B96DEA071DA6CEABB69';
wwv_flow_imp.g_varchar2_table(30) := 'BDD23A9F6BFA7E446B85081CA401318F273A16E96BF83E460B80E1DE60C36B3DB59D3AF1E104654ED5515FEB26CA4C57EF827CE5A1BFA6EDFB5FF10C7F9E6BF897EA6DF83EC60BC0A726DD228ED91F1233BBE2B1F7EF7A63317E66784C8C09B6AEA7155F';
wwv_flow_imp.g_varchar2_table(31) := 'FE963186EF0301446021F48F0E56D735920CDFFE6882DA3EBF981EF9E66A02EA81002681EB84728D202E4F12BB18D8E83987FFE887649FF830E7A5A11F3E155BEB6F3A10C014F17B060EA3F23E02155791167E3D9D3AE31AFBA98FC4F3E9F0B5201A43D4';
wwv_flow_imp.g_varchar2_table(32) := 'F2B9667AFCDBEB09C4030450010387F6396B91B977F07B083E97B724AD3B6B9A13B5E18533C3EF1FA48DCF74119DFEC8C9CBB1A339083E520EFF23DFFA476A9BBF98403CA4BE346235C99E575AC1A9277FF13C6D10AD3E156972820C04CFF8F93C3BF332';
wwv_flow_imp.g_varchar2_table(33) := '02F1010124C8E03B6FBABE3E23AFD4F28E7353CF6C77E1FACCCB09C407049020874F1D0D5A7F7F29AE83DFE27B176DEF86CCB91752B974BDD44B5D3BB6869F6FE52D82F47A9CBC5C518A2E9C0C7E6BE4B6FB97B653F6A2740B140248902327FD4C4C9B72';
wwv_flow_imp.g_varchar2_table(34) := '875E61FAA56D87D51A2A89FC0C1F3A48FD6FED8C5C8DE64147BFDE8EDC47D2FDDE75295374FCD4314A3B104092F8CB13E5D4E3E0059244E1F508158427FCA58EF93FC0BF415E3433C97DFE87F90291D2462100503AF2CAAB496FB29C75B9657F8DBFE24B';
wwv_flow_imp.g_varchar2_table(35) := '4E7073B0C21BA434678AD44EF1B3409D774D504404EE6BBC3E20ED40000952C70613F8FB164D1A81B678617AF92D6CD803D8057B9BDCD3FCAE20EFB779D9A272944A07208004E1C253BEC1C9361429DD437E2B7BA40201846B8323FEBCEC7E1532E4A87B';
wwv_flow_imp.g_varchar2_table(36) := '26BDDD59272C8D0378D559DAC14EF1099239EFC2DC45EA728506DF35721EAE22C64F1CA5914307A96CFCEF21E9FB266C8A568898F4F509F91A85E31867903E93D20E049020732FBA2262E8F2236A98EEF5FE37775239E40C8227FC6A1145BE3BA809143E';
wwv_flow_imp.g_varchar2_table(37) := '6C9BA490AD151186EBFFD77F2AFD6300082041C21E20DA0B90744E39AFF5BFF5329585FF195E6DA020A214ED7D7C37292210F97EB7448A15DE2768D464820E638004E116332B7A81815FBE41AE955164101A3D26EADDB58DC66FF9DB925BDBD62F2EA1A6';
wwv_flow_imp.g_varchar2_table(38) := 'CB3E5FD27BD66C7D80B6BFF972919F6207FF5A4204CD257E76AD0201240C1BE5C08137DC93C0F82DB7448937C09417A88F9F38461B9EEBA6BB97FC0D95C2ECCFCC741EA530F2E383E1209DE47960FFE7FA8AB0A8F9F22F900EC0054A98966B6EA07C5FDF';
wwv_flow_imp.g_varchar2_table(39) := '76E7A5BC6B56C44DD9D8D75D5148742A6C10DF31F2FEAF82B1821571C5FCDF6579D11F080094051B0E0F20ED02BEBF637413E1B97F0FF702B7FDF88714179CA6BDE1D947DD9E276FAC4094334D607B22D60408A00AAC58D41AB4F281107C22BD827FDCFB';
wwv_flow_imp.g_varchar2_table(40) := 'CA365AF3C403140777FDC7BD4204EF84BF2988F84813145214A875410BE902045005560A01D439BD80E46AE45469A6BCDE8185D2F9C4662182CDA4924E21AADE577F961701B21D714E84BFCD7B6DB68864355F319F740102A8021CD16111140A87DAD235';
wwv_flow_imp.g_varchar2_table(41) := 'DBB6A571819BD3D3F9D3CD74E7BFFF33A9E04ED1F2AF119F973F0711FAFBD1F14A474B6983F15A074B22AB0427BACD5BF5353AF07E38D31BC658A8E0B5205224C88808CFDD4BBF476DD7DF44A5D2FFFA4EA727D9FEFA8EE033C3A84F2EF2F7673E73210D';
wwv_flow_imp.g_varchar2_table(42) := 'AD7F8E740202A822FDC20017FED3ADCEB1252D840FC390D23A010A13E8E4670E752EBEF6066A99B7909AAF2CEE9A7084E749318EE0B1040B401613E50438ADE04A340CFAF2DA1ECA66AE209D8000AACC9D8FDE4B1BFFA7AB600B5CAC47C84F5E0EAF39F1';
wwv_flow_imp.g_varchar2_table(43) := 'FFCFCE0CAEBDFD9B5FD151D1DB1C1661544BCA84262ADCE25391CF5EF1A76DB47ED93F906E400055865DA1856BDB6870E4CDA2F7846E8A6CEA44611F11FE09C3FBE4D63CCC38B5F23E2FF77D96242FFFDBD8F579F9DE27B4C8FD8982417095A9FFD4A7E9';
wwv_flow_imp.g_varchar2_table(44) := '27DFDF4CB372F284C201B05D6070EC476ADCB5BAE180D52A103E8D6679DA39936E61142A77F01DBE97F397B6ADEAD2D2F819F40035C2B070551676B6D28878A69C7638DF15CA1D18BB57AC9C9405CA5BF09E5F6F8228779411FD0EDB11E7B68E2ECACEBE';
wwv_flow_imp.g_varchar2_table(45) := '92740502A82158045F5FF73D1A1879DD392FE6A64C05A99E43D177C803DEE8E7F338E227776DD6DAF81908A00659F3D8465AF3F826EF2C8C07F967C5C88DE9846D7EAEFF1F257FF8CD46DFD3BE99329F4DFF82978F0302A8511C9768F532CF257209E2F5';
wwv_flow_imp.g_varchar2_table(46) := 'C1461685FE7485CDFCE37A0FFFF5955FFD4BBAFBE6E5543FEDD3640210408DF36F3FEF717A041642A17141487E4B4E34D9B82197E6ABE70BC35F219EAF2393800052020BA1EBF91EEA7FED25926702F2C39AF9C3E6C946028EE1DFB2D238C3F7810052C6';
wwv_flow_imp.g_varchar2_table(47) := 'F0AFDF1122D841BD3BFA68F7DBAF072ED25407C81CCE64A36FFEDC75D4F6C75F37C6D52906049072B872C480108253414288A3D0C299CC1F5EE418FEDC8BAF748E410804008C0633C1C068200060341000301A0800180D04008C06020046030100A38100';
wwv_flow_imp.g_varchar2_table(48) := '80D14000C068200060341000301A0800180D04008C06020046030100A3810080D14000C068200060341000301A0800180D04008C06020046030100A3810080D14000C068200060341000301A0800180D04008C06020046030100A3810080D14000C06820';
wwv_flow_imp.g_varchar2_table(49) := '0060341000301A0800180D04008CE6773BE157590E7F16E60000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(16199431861178615238)
,p_file_name=>'icons/app-icon-192.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/icons_app_icon_256_rounded_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000001000000010008060000005C72A866000000097048597300000B1300000B1301009A9C18000000017352474200AECE1CE90000000467414D410000B18F0BFC610500001CB2494441547801ED9D09701CD599';
wwv_flow_imp.g_varchar2_table(2) := 'C7BFCE52C96609B180258140AC3171384C05D92431C56149609C14D9423E36EC511BD9A462B6626293C322B50702DBF2560E9C84200728F00690BCA11613DB82ADB06003165716C3C6926B31100B18793198C346C2366003EABCAFBB5FCFEB9E9ED11CDD';
wwv_flow_imp.g_varchar2_table(3) := 'AF7BA6FFBFAA768F7A7A0EB9F4FDDF77BCF73D8362C434CD06716A1547461C4DCE39E33C9D2100EA8711716495F3B038B68863C0308C118A098334A2183C1FB309460E0093255B0CFAF8AC5310B4088030FC5671FA2ED986DF40008062DC2E8E3E21041B';
wwv_flow_imp.g_varchar2_table(4) := '296222130067B467A3FF1EC1E801A884AC389693ED15642902421700183E00A19315C7ED42049653C8842A00C2F82F13A76B09B13D00519015C7722104B75348842200C2F033E2741BD9313E00205A3837F0FD30C2828F509508E367577F1BC1F801D0C5';
wwv_flow_imp.g_varchar2_table(5) := '1C716C733CEEAAA8D80370627D76F7BF470080B8B85E7802DFA70AA948001C977F8338A61200206E06C431B79290A06C01708CFF6142A20F80249115C705E58A40590200E30720D164A94C1128590060FC00D404592A43044A1200183F003545964A1481';
wwv_flow_imp.g_varchar2_table(6) := '520580CB7C48F801503B7062F082F116168D3B0F4018FF2F08C60F40ADC1367BED783715F5009C8906B71100A056E11983D7177AB2A00038713FBBFE58D00340EDC221C0B442F980622100BBFE307E006A1BB6E1825E7CA00038AEFF1C0200D403AD85D6';
wwv_flow_imp.g_varchar2_table(7) := '0D048600E2E69708253F00EA892CD9A180A72A90E70108E3C77A7E00EA8F0C052CDCF3780098F003405DC3A3FF24D50BF07B00AD04E307A05EE184A0C70BF07B0088FD01A86F46840770B4FCC1F50084F173D63F4300807AA6C169D36FA1860028FB0190';
wwv_flow_imp.g_varchar2_table(8) := '0EBE2B1F5802E0B4F75A40008058B967D713A48156C7E65D0FA0950000B13172F820756CBD897A773E401A905BF4D111CE05B8FF0068868DFE913D8374CFF01374EFAEC7AD9F574D5F449A6815C74629002D0400880C36EE5D075EA3817D4334B8F745CB';
wwv_flow_imp.g_varchar2_table(9) := 'F0B7EF7B21EFBE9613CE244DF0E6BCDF3BC28905320400A89A6161E483C2B0870FECA1ECFED72DA31F1446CFD7C7A3F1139FA6338FF91C6922C3B6CF1E009A7D005006D51879319A8FD736FA4B5A59005A090010888CD3FB5FDD6EB9ECDB85A1F3B52868';
wwv_flow_imp.g_varchar2_table(10) := '9B781E6926C302902100808747F66CA7EE67D65BC61F95C1AB347CF413D4D6782E69A68905A091000016ECC62F7C749565F83AB964E2391403935800D0F5070041F78EF5B4725B6FA8237EC3478FA4096274678AE5086270FF994684000008163E761DF5';
wwv_flow_imp.g_varchar2_table(11) := 'EEDC44D5C0C67E8930E4A6634EB6B2F9DBDF7AC12AF9C91A7F2138FB1F83FB6F010F00A49E6A8C9F8D7EF194B92283DF246AF84D56EEA04B78112B074AF72462C8FE4B3247100029C69E7E5BBEF1B3D15E3DB5DD327A36F4DEA1FBE9F2C75655540AEC9C';
wwv_flow_imp.g_varchar2_table(12) := 'D64E71010100A9A567E80191E9DF50D66B54C397EFC179834AE700B44D3C578400C7535C4000402A618365C32D158ED36F3DBFC335FCB0AA058BA7CCA33881008054D255C6A8CD313EBBE90D4E36BF578CFA1D4FDE5475B5C0CE1BC416FF5B400040EA60';
wwv_flow_imp.g_varchar2_table(13) := 'C367232E8555D3BF4D4BCEC88DD22B077A8478ACA530E050226E20002075F497E0B67376FFAE0B97B92E3F1346A9509284D19F810080D4315ED30D36FE4D175F276AF993DD6B611A3FB366C6524A02E36E0F0E40BD11B40E5FE5D6F3AFF2187FA5A5C242';
wwv_flow_imp.g_varchar2_table(14) := 'B44F9E156BE65F0502005247B1E41DC7E5EAAC3C8EF9CB2D151683AB0971D6FDFD400040EA60173F081E9955E3E4646158093F49A71098A48CFE0C0400A48E19C737E55DF38FCCEC25CCBAAF83C284CB89ED9FFF0A25090800481D3CD2FB59228C531D99';
wwv_flow_imp.g_varchar2_table(15) := 'D9F5AFB6C38F4AD25C7F090400A48ED98DE7590629E1C76AAD9F0D3FECB89FAB0A7222519280008054B26646CEBDEFF44DC859F8E87514169C6FB87BE6B5898AFB5520002095F0449CC553E658A3F3254AD69F17F7F092DE30089A4F90340C534000A414';
wwv_flow_imp.g_varchar2_table(16) := 'DE94432DFB9DB2AE3D94D8BF168C9F810700528D6AFCBCB22F0CE3E76E405B67DF9478E3673015180087AE32960717C2BF7230E9400000203BF35F4DECEF6F14522B400000A0CA47FF5A357C090400A49EA0FE006CD87C5DCD0970626FA2A81A3489D89E';
wwv_flow_imp.g_varchar2_table(17) := '9FE7FC41ADB8FA85800080D4E3EF0F604FDC59653D1E397C80460F1DA4091F3BB2E68D3D080800483DFEDE80EAC42036FA7A347C09CA8020D5D8BBFC7A4B7FCD09E8D4A30B4C0402A987DD7C9E1074EFAE27688288F3D7CCB88AD2020400801483100080';
wwv_flow_imp.g_varchar2_table(18) := '1403010020C5A00A502770226BF4F0412B9E65B207F6B8CFA9996C3E739CABAE8707E905025043B09173CD9AB79C1E1586CE19EC5DC2D02BDDA1864580D7A9F3E295CC519F7227B880F480246082E1B9E983FB864486FAF7B45D9CABDD8AAA5478AD7C5B';
wwv_flow_imp.g_varchar2_table(19) := 'E339D472FC54210E2713A85F200009820D9C7BD6F7EC7C4094A41ED766F0C5B0DB65CDA5B689E7216CA8432000098047FA3E51875E3B747F228CBE10EC19D862702E81FA000210136CE8BDC2E0D9BDAF768B69DDC80EB7ED9393D5E21A940F0440336CF8';
wwv_flow_imp.g_varchar2_table(20) := 'AB77ACA7EE67D6277AB42F050841ED0301D048B7307C5E7852EB86EF47AE9E438EA0F680006880637C6E351DE64613498437D7B8BA86DA61010840A4F0481FF6E6924907DE406D01018888B48CFA85E0DCC0D55393B71516F0020188008EF53B9EBC99D2';
wwv_flow_imp.g_varchar2_table(21) := '0E8704ABCE5E4420B9400042845DFE8EAD3752EFCE4D046C789AF1DD33972124482810809090DB49F34C3EE0057981E4020108018EF3D9F8D31AEF9702442099A01F4095C0F84B03FF4FC904025005F8A32E0FFC7F250F8400158298BF72380CE0CD3331';
wwv_flow_imp.g_varchar2_table(22) := '61287EE0015448C79337C1F82B843D804B1F5C4E207E200015C0B3FBFC5B4981F2E015902CA2205E200065C2A37ED7B6B504AAA77BC7065ABD233DD3A4930804A00C38EEFFFA83CB088407EFCA8B502A3E90042C838EAD372572610FEF5ACB33EEACE69E';
wwv_flow_imp.g_varchar2_table(23) := '22C1364124D7FCF576EE16BC4BC4DE5971B0FBBD7DDF8B941490148C0F74052E114E5C25C9F8D968DA27CFB2DA7455B237BDDC0E8B7319BC70292EB80B312F1A82F1C7033C801239655D7B22EAD7DC8F6FF194B915197D21860FECB15CF1DE217D6B1858';
wwv_flow_imp.g_varchar2_table(24) := 'BCB8935098BF07281F084009F48851F2F24757519CB44D3CC75A59C77DFCA382BB115F25C29CA83A1671A8728910305E2A1CE5EF014A07025002718EFEECEADF7A7E87B69192BD8159F75D15EAEFCB86CF5ECB9233E6C1D54F181080718873F467379947';
wwv_flow_imp.g_varchar2_table(25) := '7DDD46C322C0D58E6A138530FCE403011887B8467F4E8CB1AB1C179C24B4A73A972F0230FCDA010250042E97B13BAC9BB88D5F526E3800C3AF3D50062C424F0C9D7D9262FC0C27EA365D7C1D4DEF5B543431686D1F260CBFFDF35F81E1D718F0000AC0A3';
wwv_flow_imp.g_varchar2_table(26) := '1EBBFF3AE14CFFBA99C95B24C39B98746CCDEF71C8138FAE740C1FD426F0000AD0AF79BB2E1E4593DA40935DFA7B763DE14E1892937750C3AF7D200005E8DDA977B55FE7D464D7C6D7CCE8B03A1D873D0909C40B4280027CEC367D6E2D97FBD6CCD09F6C';
wwv_flow_imp.g_varchar2_table(27) := '0400AB0103D0BD5B6F52927E207D400002E81B7E8274C18B79302D16C4050420009DEBD3E70BF71F80B8800004A04B00B8668E121A881308808F4161FC51AD86F3C3E53400E20402E063F4F001D205C7FF00C40904C0C7E05E7DF13FCFA403204E20003E';
wwv_flow_imp.g_varchar2_table(28) := '74B9FF4CCB09080140BC6026A00F5D4B7F9B348CFE973EB44CAB4713264BCE984B4BA6CC23102D10001FBC0456071334AC9A1B3974A066F7E11B39A4CF134B3308016282D7CE83C26003513D4000626202D6CD83040001F0A16BE499000F00240008404C';
wwv_flow_imp.g_varchar2_table(29) := 'A0730E480210809818D138E108804240007CE872CD470F23CB0DE20702E003AE39481310001FBAB2F3287315C7BFBB31880608808F066D02A067C21100C58000F8D095038007501C78007A8000F8C868FCC3D3D979A8D6409B343D40007C341EA54F0006';
wwv_flow_imp.g_varchar2_table(30) := '6A74A18E0E3247C103D00104C047D33193491772A30D900F42003D40007CF01F9EAE853AF7EED2D77DB8966842A3146D40000298A869F4E1D980F002F2C1E8AF0F0840003A7BF5F50D3F4EC00B7A25EA030D4102D0E982AE1DDA64ED0C14C5FC03CEA437';
wwv_flow_imp.g_varchar2_table(31) := '7E22FC7223374E8DB2751A7A25EA037B0306C0AEF9A7FF435F3B2ADE69B796B6075BFAE44DB47AC7068A0216C2D7FE613D013D20040880FF08CF3CE664D2051B532DAD0E8C327989BD12F402012840DBC47349176CFC2BB7F5522DB072A027D2598C3AFF';
wwv_flow_imp.g_varchar2_table(32) := 'DF0104A0202D27E84D44750B2F20E93303D9F07B766EA2286946AB74AD40000A60EFDAABB71CF5F50797253A14E8125E4A94A33F764AD60F04A008ED9A77EE65E3EA1009B624D2BD633DF50E3D4051829D92F5832A4011745703245C11E0CA405260619A';
wwv_flow_imp.g_varchar2_table(33) := 'DEF7EDC8774D3AD338919A4F9A462D13A75273E359D4F0313467891A08C0382C7CF43A31F2451BF70691141160E39F755F47F4CB97DF799FCC91C39E4B2D8DD3A8FDCCAF51DBA9CD10838880008CC3237B0685015C4571C019F155672F8A6D6AAC36E367';
wwv_flow_imp.g_varchar2_table(34) := 'DE7C8FCC431F88078638C49FA4615827FEB171C2F1420CCEA2CEE66F598F417840004A808D20AE39FB6CFC9B2E5EA55D04B822C149492DC6FFFE1899AFBD633F66C377711440FE898A87F38547D0D9C242700281EA810094409C5E80A47DF257ACB0206A';
wwv_flow_imp.g_varchar2_table(35) := '21E0387FB548F875699C9760EE13A3FFC1F7857D1BAE03E0227F567421238CFF6A2102F39BBE46A03A20002512572EC04F5442C086DF3B743F753FB3416FBBB20FC4E8FF2A8FFEA6C7D0590C4CE7424E13BC4AC0026079030DF0062A05025022DCC4737A';
wwv_flow_imp.g_varchar2_table(36) := 'DFA2C833E1A5C235F3F99F9F55F57C050E6DFA869FA0B5C2F863F9DDF6DAA37FA5B0F16F5EF02B8840854000CAA0FB99F5D4B1F5664A1A2C00DCC988D72F704BB34C81C934592162BC922FBBFF752BC6DFBE6F285E413BF0BEE5FE5BA883BB69E672019E';
wwv_flow_imp.g_varchar2_table(37) := 'EB64790586274F40D4F0E747D1AAAF7E97E64FFD2B02E501012893381382F586B9FB8008014CCBE0E51FA1A1FC6BFBFEB222E05302EBF95CA580CF9D177C8B3A5B1712281DCC042C9335333AB4B50CAB67CC914356F65F66F8D9860DA902D6353397FD77';
wwv_flow_imp.g_varchar2_table(38) := 'C728E73A05DC278EAE87D75807281D084099F05CF524CDD2AB4944E28FDE3A94B367D5AE159BB79CD331D3738F65F363F9D7E56B5900BA7FFF9F044A030250014BCE98478BA7CC215001C270CD570E3A164ECA613A066E5A87611D965FA0DC6B3A5E821D';
wwv_flow_imp.g_varchar2_table(39) := '0A989EF7305D2158FABB9F53FF4B7F20303EC8015408AF13E07CC0F67D2F12289D2FFCD96789F61FA2E1B74442F2BDFDB92794FABF1BED1BCE45DF5FA8375FE07B8D0327069F5ADC8BEAC0384000AA804B833C4108DB7C9586BFF5D9881080C157FF48F7';
wwv_flow_imp.g_varchar2_table(40) := '3CDB4FF7EC788486475E5526FFE5CCDC97F4B73D043501484AE1C01511939A4E38859E5EBC9640612000550211280D5E5ABD6646F1D9943D7FF82FEA7A708D1082574875F36D01B0ADDB3674FFF440FFD4411BF602D67DE3A7D432E92C02C14000420022';
wwv_flow_imp.g_varchar2_table(41) := '501CEEF2FBD4ECD2FB1CACD87C0BAD7CC89BCDF7BBF8FE6BD663A75CC886BFF8BCBFA32BC5C18F4161200021011108868D7FD3C5D795DDF6BCEF992D74F9DD5D5698E0591FA0A4058C80D75D3D73215D79FEDFC3F04B040210222C02BC820E89411BEEF0';
wwv_flow_imp.g_varchar2_table(42) := 'BB6EE6B28AF73CC8BEF50ACDBAE5DB2224D8A378F9A6D7F89D517FFE172FA1CE8B2EA7C6A391F42B07084004746DEBA19503E94E3E9512F397C2E02B7FB444803D013919501DF99B4FFE22FDFBA5D7C2F02B040210113D3B1F1022D09BCA9020EC8D4E7A';
wwv_flow_imp.g_varchar2_table(43) := 'FEF75E5A78D70ACFC83F4324F6AE99F58FD4F2B92F12A81C0840847048B0F4C99B53B30B302F4ABAF5FC8E485AAAFFA0EF67B4FAF13BAD11BF13861F1A10000DA4C11B689B780EDD2A5CFE28F6386446DEDD6F850330FC7081006882BD01EEB29384A622';
wwv_flow_imp.g_varchar2_table(44) := '61C2A3FEAAE98BA8AD113BFAD4221000CDD48B10F08AC8C553E65AEB22A21AF541F4400062A2568500865F5F4000628685A0FFD5ED89CF11C0F0EB1308408218DCFB82B50517771C4A84187C28FE34DEFB80DA8E9B4EEBFEF62704EA8F23082486A6633F';
wwv_flow_imp.g_varchar2_table(45) := 'E74E9E6131E076E42C067CD6D6BBEFF018D1DB87C81C3D4CF4EE07648E99D4FC05BD3B25037DC003A8115810B8A9274F33E6869EFC7897F0122A16061EDD0F7F681BF9BBE27CF803A283E2F1876A6B1E7BDACDE6C5B750CBE42F11A83F2000350E372619';
wwv_flow_imp.g_varchar2_table(46) := 'DEFF9ABBAD7850E8D0B161158D8C8E9265D46284373F1CB30580EC1574A6DB974FF6E2CF3DE6F3533FBC939A4E3C95AAFEAEA296DFBDE537B9CF703EDBF31DE43A7F22F7F3FD98CAF25FF57EFF6BFCAF6F3CE6049A7F761B811C08016A1C4EC8351C5B3C';
wwv_flow_imp.g_varchar2_table(47) := '29B7E29DEB6964FF617F631DA7E96EEEAA6D30B2CB96E95E6B3CE6331406A3420056DC577E5B75FF6641953255881804C00B7A02A681A0A6BAA6E934D5B58D5E76DE35D57B9CD7347C3CC4A5B5A6A91CCAE7FB9F737045CA244FDFBFFC86A0AEDB404E27';
wwv_flow_imp.g_varchar2_table(48) := '41F7F586739D3D10E0051E400AD8B5EF557B4477ED2AD77DDFB2A13133D7835F86FE6314BCE0BE0A4C9FB070874F2BD4503FD73D9BEE6D39027A049AFE0F70C20AA58390FB3244BB79C00348011345EC9B6728A632B25AD7C8FBD87F2D2CD4917BCCCCFF';
wwv_flow_imp.g_varchar2_table(49) := '0ECED9EA08ACDEEBF11A28FFFB7AEE0BFEDD42F564EA04780069C075ABCB1DD2EDD7B0EB1C9AF17804C5F0B905CE35923908D52D200ADE3AB8D007E43F37015D82F28007900694D151C6FB8171B72F3697E7D177428C9DF33E87F26379E579C3F7FD73F7';
wwv_flow_imp.g_varchar2_table(50) := '1A9E7BDD3C469EC7A01CA1BB33B50F04200564388BEFFCFD9B1E1739C0204CE71FC5E0065E7E8EA2C10C366EC57537C7F25D79FBB1F7FAD8D818E58512EA6B4CE7FF01784008900264194FC9AD150E09E475A7D13EDFB16BEF2B1406EE684EF99F618DE1';
wwv_flow_imp.g_varchar2_table(51) := '321969DDE26BFD3D662A1B85A8A183FDD850771676A30775D3000AAD9C594F40005240E3B19F217B075E7F0C5DC025764B6A76243EF8FFCF531898EA7B93F733BC3715B8E07BAD5B41C8BD3979F712373D6FD3F4D9EA2733D51B080152402E040888BBFD';
wwv_flow_imp.g_varchar2_table(52) := 'EEB599EF72F70D3C44A1E1FB1C6F2E820A8704018719788F59F0B50D1FFF24012F108014D07CEA973C46612A23BC2CC7E50CDFF01A9060E4E07EEA7FFE690A055F45C21CA3DCE7121511019302137CEEDBAAC2A57A05B9D7B49C82F50C7E1002A480CCB1';
wwv_flow_imp.g_varchar2_table(53) := '2752C35F1C45234E36DF933137E4765BD6C5DC04204F2C6D7B012DA75667405C4ADCBCF4D7540D7DDB1EA2EE87D6BADFCB15040BD5F09DC7CEEFD37412DCFF20200029A1ADE942BAE3F18DCEBE7A0AA65A6A7394C075106C2BE3E77BC56BAFB964912524';
wwv_flow_imp.g_varchar2_table(54) := '95C2AF6D39F5CB540DDFBAED6AEFC8EEE6031C5C0123CFEFD37C4A759F5BAF20044809CDC2FDB54C5975A38928B8B66E5FB7E7D1DBB3F546DE799B6ED8DC4B7172C7E37D34FCE6EE8038DF1BB278C3195BC8664FBB90403E580E9C12D8FD3F6EC939AE8D';
wwv_flow_imp.g_varchar2_table(55) := '149A4367A88F7D45037EF8C24F1FB0AB0A3130F9875FA5ECDEDD79DB8205A1460819F17D87C4F706F9C0034809D2FD364C2BECA7A02A80A13EE6B393A073D7EA8BD3BCEE2BDD5C824EBA37F5D2F0DEDDDEEF3D1690EC9367C59369390DEE7F21200029A2';
wwv_flow_imp.g_varchar2_table(56) := 'B3ED0AAFEB2FF164D69D0BCAD3861B32983438FC2C2DBDF3C7A493EC9BAFD08ABE1B3DA18B19F87D4DF77BCA9F59C8E69F3B874030108014C123A1351ABAF6611B8CA996E5CC5C9F00539607AD27C8F50C7A1EDB485D1B6F241DB0B771D14F2E13A5C8B7';
wwv_flow_imp.g_varchar2_table(57) := 'C9F4E5279C2FEC19F16559512636B902020FA030108094D139FB3BB60149D75E1ABB3996332EC5D80B4DBA59B1F157B4F437D17A0296F1FFF8321A7E63B71BA278BF1379BE93FCCEEAF5CED95710280C92802964E68F2EA3FEE7B6BA3F7B1382B939F8EA';
wwv_flow_imp.g_varchar2_table(58) := 'E461D94244F6D9931378271D77126DFEA7DBA8F12F4FA430C98A6CFF45E27B5A597FCFD7531B7E90E7DB79173B90F59D867E565F5BB1850D3C801472CD9C2BDCD1521AB685E9FE43327EB69E55CA6D86CF4BC8BEF1324D5E3A4B780437E61B6B05F0A8DF';
wwv_flow_imp.g_varchar2_table(59) := '25BC8B2F77CEB3DECF3F3CB9AB039D61DE74BEB3A9CC3034D5DF1314051E404AF9C1DA1FD10DF7F7588FDDCEBA06E5F20186F405726DBBECEEBDB945762AFCAA4962C46D3EFDCB347FC6DCB2E3EE6191E8EB797403FDF2BFEFA0D177ED0EC7FE8EC1D6A4';
wwv_flow_imp.g_varchar2_table(60) := '2423773D08F95CD3C4D3E8E995EB0914070290527862CF97FE759EE56AAB2EBD85498A81E5FAEA194A58409EC7E4995FC08F8F1665C7E6D3A65353E3E9C215FF0C658E3BD17D9647794EEA8D8AEF30B8EB79EA7F76AB25006AE9413179F727C5D9F7DC97';
wwv_flow_imp.g_varchar2_table(61) := 'BB96BB77E8E79BA9F1B870C3927A04029062B8A437F3DF16581D7FA421A90615748D28D8103DD7E552FF02EF4705DE537DC2DF1F346006B34B2E8CB165EC9A79DF11C76202E3831C408AE1D1F967DFF867DB6D5632FDA6531A9413830C25EB6ECA129C52';
wwv_flow_imp.g_varchar2_table(62) := '1D3095FBAC7BC64CCA65E94D6FC69ED4CFC97D96BB3CD8C8BD8F3C93CF3B919F6528EF2F6B9BB3CFBA10C65F06108094B3A079AE65306A2B6D43C9B1CBCEBDA6AFF69EBB66B873064C75128E62D432A16898A62B0E86A300524CE4BA037285C874430CC3';
wwv_flow_imp.g_varchar2_table(63) := '1115F7BAFC4EF2B3C87E3E23428D9FB7FF0B81D24108002C56DCBD9ABAD6AFCE8BE5E5A8AC0EC44ACED0E3A6CB3C8174C529EFB91C66DE1B90BA10910CDF7D6A28E00F25988C48403ED8D983B8BF4C2000C0854560C56F572BC665FF69184A694D4DC9C9';
wwv_flow_imp.g_varchar2_table(64) := 'EB7E63A4BC7B83927779A61EF84EFEBD01F375C3B4E722C0F82B0202003CDCF0BB3B8410745B997A37B9A696DE9C6138684351EB67E71E358BEF799EF28582947B89CCC0E7DD8D44C95B21E0EAC2E66B60FC950201007964DFD84D3397B7DB53701D8232';
wwv_flow_imp.g_varchar2_table(65) := 'FA44F9CB87ADB3A93C6F502E49E8AB0EC86BEEFB296F2ADF43AD2AA8F0EB9AA74CA7DF76DC58559392B40301000559B1AE5B1CAB3D25385504E4CFF97902E54F4AB6FD566B799EBA9EB23FA09A0C90F7791204F6FB1E7DE427A9F3D22574E5D71610A80E';
wwv_flow_imp.g_varchar2_table(66) := '0800280A7B035D4208EED8929B556728FF9A7248F7E34F1A28F70486017E65A1FCF0816911A3FEAFAFF831357EEA2402D503010025D1FFCC93B4E2AE6EEADFB175DC7B0BC5F941D7FDD70ABD960DFF9ABF59422D679C4D203C2000A02CB2AFBF6C0B8110';
wwv_flow_imp.g_varchar2_table(67) := '84E137D41D830A64F5FDF53C4F1E9F28BFAD97E11181963360F85102010015C322D0B77533F5FFDFFFD0E0F073815942CF629EA00CA2EFAF8F137A4D934EA7D9D32FA2F917FC35351C89CD3CA2040200428117F70CBEF42C0D669F155EC26EF1788765E0';
wwv_flow_imp.g_varchar2_table(68) := '5C491839F0B6DD47D049FEB1914F1086DD70E451A28C779215CF379D7C3A4D6D3C4D18FF1402FA8000009062B01600801403010020C54000004831100000520C0400801403010020C54000004831100000520C0400801403010020C54000004831100000';
wwv_flow_imp.g_varchar2_table(69) := '520C0400801403010020C54000004831100000520C0BC0300100D2C8083C0000D24B9605E0250200A49151840000A4979758000608009046865900B2040048235BB82D788378F0160100D2C6D11F310C6384900700206D64D9F6651970230100D2C416FE';
wwv_flow_imp.g_varchar2_table(70) := 'E723EA0F0080D4D0C7FF58DB353A79009E0FD04000803470B41B023879807E0200A481DB1D9BF72C06BA9E000069A04F3E30D4AB2214E07220C20000EA17CEFE4F923FF81703FD920000F5CC72F507BF0780642000F54B561C17080F202B2F783C002731';
wwv_flow_imp.g_varchar2_table(71) := '002F0080FAE40ED5F819C37F87E3056C1347860000F58227F697E4350471BC80E50400A827026DDA2874B7F0041E16A7560200D43A7D62609F13F4443101C8901D0A20210840EDC21EFD347FEC2F29D813D079014201006A9BEF17327EA6685350F1429E';
wwv_flow_imp.g_varchar2_table(72) := '1D88AA0000B5C92F850DDF5EEC0683C6C1A90A703E602A01006A850161FCD3C6BB69DCB6E04E55602EA1751800B542966C9B1D97713D00899314644F20430080A49225DF6CBF62942C000C4400804493A5328C9F294B001888000089244B651A3F53F6D6';
wwv_flow_imp.g_varchar2_table(73) := '60CE075C40D84F0080A4C0B658B6F13315ED0DC81FE46418512204205ED8062B327EA6EC10C08F08092E13A75F10660C02A0136BCD8E3357A762AA1600C6C90BF017994D0080A8E1FE9D97553AEAAB84B23DB81312F062836F12E60B00101559717C53D8';
wwv_flow_imp.g_varchar2_table(74) := '5A6B18C6CF84E201F8111EC132715A40A814001006B251CFF5B29B6F584422008C1316B48AE35A82100050099119BE243201501162C0E1011F0B0800500CB947071BFD168A182D0220711616B5922D062D04CF00008637E7E5FD39B7F011D5681F845601';
wwv_flow_imp.g_varchar2_table(75) := 'F0E30802AF326C255B0CF8E06B8D84B222A82FE40EDC59E71870CE5A0DDECF9F001B9245CFEB2782D50000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(16199432194318615239)
,p_file_name=>'icons/app-icon-256-rounded.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/icons_app_icon_512_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000200000002000806000000F478D4FA000000097048597300000B1300000B1301009A9C18000000017352474200AECE1CE90000000467414D410000B18F0BFC610500004477494441547801EDDD0BB85D6579';
wwv_flow_imp.g_varchar2_table(2) := 'E0F177393E782198106C49D4C94108A8D0C901813002C971E4F2149540505AA735C119D1914AE8F348783AD312A484AA2DA1B6066546B0339E63DB79462692D4D64AA063A0D201B5217906500898A40AF1424848B805C837EB5D7B5DBEEF5B6BEDB3CF65';
wwv_flow_imp.g_varchar2_table(3) := '9FB3F7FAFEBFF6B0F75E7BADB5F7D93B9EF7FDDEEFB22213130000109457090000080E0900000001220100002040240000000488040000800091000000102012000000024402000040804800000008100900000001220100002040240000000488040000';
wwv_flow_imp.g_varchar2_table(4) := '80009100000010201200000002440200004080480000000810090000000122010000204024000000048804000080009100000010201200000002440200004080480000000810090000000122010000204024000000048804000080009100000010201200';
wwv_flow_imp.g_varchar2_table(5) := '00000244020000408048000000081009000000012201000020402400000004880400008000910000001020120000000244020000408048000000081009000000012201000020402400000004880400008000910000001020120000000244020000408048';
wwv_flow_imp.g_varchar2_table(6) := '00000008100900000001220100002040240000008C62C3CE7BA569480000006863EBEEC764C30E120000008271FD032372EAFACB6470F631D234AF16000090DB73E0D9B8E4FF5DB97EF388ECD8FFB364DB02120000009AE9EE5D5B657D5CEAFFDAB66F27';
wwv_flow_imp.g_varchar2_table(7) := '49806D68EE02691A1200004090B296FE96A71EAF0CFA99C57306A589480000008DA7C17D675CCEDFB4EB8124E0DFBD6B4B5EDE1FCDE239CD6BFD2B12000040A36860DFB2FBB1F876D798837D152A000000F4882CC8EF39B03F09F23B93C7DB2614E8ABCC';
wwv_flow_imp.g_varchar2_table(8) := '3A644623FBFF15090000A0E768C97EAF06F7B425BF7DDFCFBB16E4DB696AF95F91000000A68D5FAEDF1B07FEA90EF2ED2C9977BA3415090000A0EB762403F0E2BEF87D3F4BEE4FB45F7EAA2C6E68F95F91000000269596EF75F95C9D53AFB75BE3167DDD';
wwv_flow_imp.g_varchar2_table(9) := '14BB5EA683FF0666CC91A6220100004C9806F8916DDF960D3BFEA96F03BE6FF9FC73A4C948000000E3D66EF5BC7ED7E4F2BF220100008C9906FED59B4792BEFC266A7AF95F910000003AA6ADFC95F7DD1C97FBEF90266B7AF95F910000003AB2F6A175C9';
wwv_flow_imp.g_varchar2_table(10) := '15F29A56EAAFD2F4F2BF22010000B495B4FAEFFF928C3CBA517ADDC08C2365E6218726F775E1A0F1242B2194FF15090000A096CED53FE75B2B7B6ACEFEAC38C06B909E1707FBC1D9C7243F6AEF4BCF260312755C824E3F1CAF10CAFF2A32310100C0A341';
wwv_flow_imp.g_varchar2_table(11) := '5483FF7497FCB5557FFEBCD393403FA4ADF3C38E4CB67763EAA1BED623178F4808A80000004AA63BF8EB1AFCBA0CEF927967E4015FE9FBD1B1081AF4BB3103A1C96BFFFB480000008EE90AFE59D05F76ECB9C955F86C3AED70ED83EB92A0DFCDF7B5EAA4';
wwv_flow_imp.g_varchar2_table(12) := '65120A120000404EFBFA3F78D7B55316FCB53FFFC3F3CF4D02FFD0DCC1D2F3C3DBEE48061F4EC57A03A10CFECB90000000121AF4A76AC09F06FECB8F5F2A2B4EB8A8D4DA571AF875CAE1540E3E0C65F05F8604000090D0057EBA1D707B31F02B1DFCA75D';
wwv_flow_imp.g_varchar2_table(13) := '0F2121010000B44AED5D5CDD6FB4C03FDD4B0BAF3A319CBEFF0C090000044E5BDBDAEAEE9625F3DE25B72CBAAA32F06BB7C3F50F0CCBDA07BF21D3455BFF21ACFCE723010080C0ADEE52C95D03EB2D67AEAC1CDCA7B4D57FE93D374CFB22433AFB20A4C1';
wwv_flow_imp.g_varchar2_table(14) := '7F19120000089806DF6E94FEB5DCAF53EAAA5AFD6AE5FD374F6BABDF16D2D43F1B090000046CF52497FEB5AFFFEAB83F5DFBFAAB68C271E93D6B7AE632C2CBE69F1364EB5F91000040A026BBF5AF25FFDBCEFAB42C983DBFF2795D6048D718E8A5EB0A84';
wwv_flow_imp.g_varchar2_table(15) := 'DAFA5724000010A8C96CFD2F987D4C12FCEB5AD31B76DE2B1F8BFBFB7BE952C221B7FE15090000046AB2CAF01A48D79C76596D7FBF5619B4ECDF4BB45A1172EB5F910000408034F84F46295E83FFAD8BAEAA7D5EA7F8ADDEFC35E935CBE69F1B74EB5FBD';
wwv_flow_imp.g_varchar2_table(16) := '4A0000C1D9F4E45699A87E0DFEB4FE5B4800002040132DFFEBE23EED82BF96FD7B31F8AB1057FDAB42020000019A48F93F59E0A74DF0D7D1FEBDD6E79FD1AA45686BFED721010080008D3701D0E0BFF1BC1B6A07FC659713EE5594FE0B240000808EB59B';
wwv_flow_imp.g_varchar2_table(17) := 'EA379597131E0F5DA028F4817F361200000890AED837561A40EB16F951537139E1F162E05F1909000004685E1C10C7422F98D32E80AE7D685D572F273C51DA6D01170900000468F19CC18EF7D56AC1AD8B56D63EDFEDCB094F14A5FF6A24000010A00B06';
wwv_flow_imp.g_varchar2_table(18) := '4EEF78DFD102A8F6FBF7D212BF369DAE48E9BF1A0900000448D7EEEF641C80F69DD75DD94FE9623FBDDCEFAF4B14A31A0900000448A7F15D7EFCD251F75BB3B03E806AE0EFD5C57E94F6FB53FAAF47020000815A3ECA8238BA68CE92365D05AB7BB8DF7F';
wwv_flow_imp.g_varchar2_table(19) := 'CDC24F10FC474102000081D20079F5891FAE7DBE5DDFF9F0B63B7A76D4BF8E5968D76D8116120000089806CAAAB1004BE69DDEB605DDABA3FEB55B83417F9D2101008080E958805B2AA6F85D7E7C7D0B5A5BFFBD38F04FBB2C6E64D05FC748000020704B';
wwv_flow_imp.g_varchar2_table(20) := 'E69D1107FC0BF3C73A7A7E68EE82CA7D7B75CEFF6897264619090000202E9B2F9705B38F6EDD6F73B9DC916DDFEEB9D63FC17F7C480000004957C06D675D9BB4FECFAF19F9AF817FF8D18DD24BB4CF9FE03F3E9189090000A257F4DB5F7BA95F5DF4A797';
wwv_flow_imp.g_varchar2_table(21) := 'E6FDEB687F06FC8DDFAB050080545DF057BDD2FAD7590BBA40D1B251D631407B2400008051F5CAC87FEDA26085BFC94102000018552F8CFCCFE6F8B7AB52A07324000080B6A6BBF5AF172ED2A57D87E6767E09638C8E040000D0D6DA07D7C974D0BE7E96';
wwv_flow_imp.g_varchar2_table(22) := 'F5ED1E12000040ADBB776D91ADBB1F97A9A4815FCBFDAD658A29F7770B090000A0D6548EFC5F3C6741720D021DDD4FE0EF3E1200004025EDF7EFF615FF928587E2A0AF819F3EFEA945020000A834FCE8B7DB3EAFC15B5BED77EFDADAF120C1D631833238';
wwv_flow_imp.g_varchar2_table(23) := 'FBE8E41A0403871D29981E240000804A23DBDA97FFF59A01D9623C5B9E7A4CB6EFDFE58C17D0BEFC9971297F667C7BE2ECF932F3358752DAEF212C050C0028D1A97F1FBB674DDB7D1EB978980579FA1817030200948C3CDABEEF5FAFC047F0EF6F240000';
wwv_flow_imp.g_varchar2_table(24) := '0087F6E76BBF7E3B573037BFEF910000001CAB4759F65707F1E9EA7CE86F24000000C7CC435EDFF6F9E571F91FFD8F41800080923D07F6CB861DF726EB00D8DD013A8DEF918BA7FFC2409838120000405B3BF6EF924D4F6E4D92019DBBBFE284A582FE47';
wwv_flow_imp.g_varchar2_table(25) := '0200004080180300004080580910E8923D079E95BD713FAA4EA9D215D2F4FEF67D3F4F6EF7C6CFED499EDB95EF3F96EBAD6B3FACD255D666A53FBADA9A6E9FF59A4393F9D9BA4D476AEB6A6C00E0A30B0098000DF23BE3C0FDC0EE6DB263DFCF9220BE65';
wwv_flow_imp.g_varchar2_table(26) := 'F763F1B65DC973BD421381A3E2A460C1ECA365F088E23E80709100001DD280BE350EEE5BE260BFE5A9C793EBA48FA5D5DE8BB2F9DC437317C8607C9B551600341F0900504303FE869DDFCD83BD06FFA6CBAED4A60981DE921000CD450200A434E06BA0D7';
wwv_flow_imp.g_varchar2_table(27) := 'E94E7F1307FE7E6FDD4F06AD0E682270C9B1E7D26500340C090082A6415E5BF91B76FC5312FC514FAB01E7CF3B43AE3861299501A0014800101C0DFABAA089B6F409FAE3A395014D04E82600FA17090082A0E5FD916DDFA6A5DF05CBE69F2BCBE32E82C5';
wwv_flow_imp.g_varchar2_table(28) := '73160880FE410280C6CA46EDEB95CD08FADDA7958055272DA32A00F4091200348E06FE9B1E5A276B1F5CD75373F143A255014D06480480DE450280C6D02B96D1DAEF2D240240EF220140DF1BDE76878C3CBA91C0DFC3480480DE430280BEA581FFFAB8C5';
wwv_flow_imp.g_varchar2_table(29) := 'CF7CFDFE412200F40E1200F41D027FFF231100A61F0900FA86F6F15F7ACF0D04FE86C8660D68320060EA9100A0E731B8AFD93411D878DE1AAA01C014230140CFD2297CD73F302C6B1FFC86A0F9561CBF54AE8E2B02B30E992100BA8F04003D69ED43EB92';
wwv_flow_imp.g_varchar2_table(30) := '7E7EE6F18745AB00B72EBA8A550581294002809EA2FDFB97DEB386727FE0746CC0D5272E1300DD4302809E41AB1F36C60600DD4502806947AB1F75743CC09AD33EC14C01A00B480030AD7484FFC5777D9A563FDAA24B00987C240098362BEFBF9911FEE8';
wwv_flow_imp.g_varchar2_table(31) := 'D882D9C7C86D675D4B97003049480030E528F963BC1817004C1E12004CA9ADBB1F930FDE752DABF961DC745CC02D8B56CA9279A70B80F12301C09419D97687ACBCEF66FAFB31296E3CED32B9FCF8A502607C480030257445BFD59BBF26C064627020307E';
wwv_flow_imp.g_varchar2_table(32) := '2400E83A06FBA19B7409E135713500C0D89000A06BB4D4BFF2FE2FC9C8A31B05E8A665F3CF49961006D0391200748506FF73BEB53219F4074C85C57306E5EB677D9A8B09011D2201C0A423F863BAE85A011BCFBB812400E800090026954EEFD3E0CF343F';
wwv_flow_imp.g_varchar2_table(33) := '4C179200A03324009834DAF25FB8FE13047F4C3B92006074AF12601264657F823F7A81763F7DEC9E3502A01E090026057DFEE8351B76DE2B97DE738300A846028009BBF41F6F20F8A3278D6CDB98AC3E09A08C040013A22BFC31CF1FBD6CED43DF88FF9D';
wwv_flow_imp.g_varchar2_table(34) := '8E0800170900C68DE57DD12F566F1E919B1E62354AC0C62C008CCBDDBBB626FDFE403FD14B092F9EB340005001C038E8487F0657A11F5DCCA5A8811C15008CD9715F5FC61F51F4AD811947CAFD17DCCC1A01081E15008C895ED98FE08F7EA6FF7E592300';
wwv_flow_imp.g_varchar2_table(35) := '2001C0180C6FBB83CBFAA211748D00660620742400E888B69AAEDFCC1F4C3487CE0CD0C1AC40A84800D0914BE39229A57F348D0E66E5DF354245028051E97CFFBB776D11A0695A335A180F8030310B006DE91F481DF58FEE9875C8A132F39019C9C8F481';
wwv_flow_imp.g_varchar2_table(36) := '1973E2FB87B61D9DBEE7C07ED97BE0D9F87BD995DCDF197F3F7A21264CCC8DA75D26971FBF5480909000A0AD73BE7515ADFF49B260F6D1B278CEA01C15077BBD1D38ECC849998AA689C096A71E4BAEC7A07DDA5BE25BCADA63F7C8C5C349120684820400';
wwv_flow_imp.g_varchar2_table(37) := 'B574D43FD3A5C64F579CD3EBD22F9977BA0C1E71CC94CE3BD78440138191F83B64A05B7BFA3D5D7DE232199A3B284048480050495B90BAD42F2DC9B1D160A2017FD9B1E7F6CC4233DA5DB061C7BDC94571F83E0B047E848E040095746094B61E313AEDC7';
wwv_flow_imp.g_varchar2_table(38) := 'D7FEE315275CD4F3ABCB0D3F7A4732FF3DE44480C00FB49000A084817F9DE9E740126222B06CFE39B2E2F88B92EE18002400A840EBBFBDA6B42075F0E0EACDC372D343B74B536975E6C3F3CF952B4E58CA003FC0430200878EF8D791FF286B6AE958BFF3';
wwv_flow_imp.g_varchar2_table(39) := 'A62DF4D44FDD32C074210180832BFD956930D1C0AFC1A4A974A0A02601FD3E6380C00F748E040039A6FD9569305975D2B260828976095CFFC0D7A4DF10F881B12301408ED67F4103CA2D675E254B064E97D0AC7D709DACBCFFBF4A3F20F003E3F76A0144';
wwv_flow_imp.g_varchar2_table(40) := '2F8FFA5D827F4AFBFA6F5DB432D841631A4C759542AD06F5EA32C3BA74F2AAB85BE6FC384123F003E3430500095DF48715E35A257F5D171E922C2DACFF2E7A2909D0E46CF9FC73938596004C0C090018F99F5AB3F0138D1EE8371EBD9204B0780F30F9E8';
wwv_flow_imp.g_varchar2_table(41) := '02800C3FBA514277EB992B695556D06B196C3C6F8D9CBA7E7AAA22047EA07BA800042EF455FF7410D9C6F36E8803DD7C413D5D18EAD2299C2142E007BA8F0A40E0566F1E919011FC3BB32CEE77DFBE6F57D7A70812F881A943021038EDFF0F9596FD09FE';
wwv_flow_imp.g_varchar2_table(42) := '9D5B75D2F264F9E06E2C1DACEBF46B9241E007A60E0940C0429EFAA7AD4CFAFCC74E93009D2DB275F7E33251ACD30F4C2F128080853AF84F83BFAEEE87B1D339F7B79D75AD2C5C7FD9B86706B0780FD01B180418A85007FFE9A8F6EF5D70B36062C6B35A';
wwv_flow_imp.g_varchar2_table(43) := '20811FE82D540002B529C0BE7F5D3DEEB6B33E2D98380DE2DA15B061E7BDA3EE4BE0077A130940A0461EBD4342A34BC7D2D73C796E59B452EE8EAB48755D01047EA0B791000448CBFFA12DFB9B8C3267D0DFA4D2A0AEE329FCAE00ADB4AC8803BF7EDE04';
wwv_flow_imp.g_varchar2_table(44) := '7EA07791000428B4F27F72E11806FD7585B6EEB51B40134A1D5F71451AF801F43E1280006DD8317ABF6D9350FAEF2EBD78D2D32FEE670E3FD067480002744F401580C5730669917699B6FC01F49F570982A22BFFF5EA35DEBBE1D645570A00A08C042030';
wwv_flow_imp.g_varchar2_table(45) := 'EB032AFFEBC03F4AFF00508D0420307A7DF7505C71C2450200A846021010BD904B28D3FFB4EF9FBE6900A847021090905AFFCBE3F23F00A01E094040363D1946EB5FE7FD33F21F00DA230108C8DD814CFF5B3C67810000DA23010848285D000CFE0380D1';
wwv_flow_imp.g_varchar2_table(46) := '91000442D7FF0F61FEBF96FF19FC0700A3230108C48EFDBB2404E7CF3B5D0000A3230108C496A7C228FF2F997786000046470210884D81CCFF1F9ACB004000E804094020F61ED82F4DA78BFF00003A4302108810660030FD0F003A470210005D02388419';
wwv_flow_imp.g_varchar2_table(47) := '00540000A073240001D0298021183CE26801007486042000214C019C75C88CE40700D019128000ECD8D7FC0A008BFF00C0D8BC5AD07821F4FF2F98DDBCF2FFEACD2382DE3278C431B284C5A6D01024000108610CC05133E648D35CFF000940AFD1E04F02';
wwv_flow_imp.g_varchar2_table(48) := '80A6A00B20007B02580340AF0100745B28036A110612800084B008D04C0600620A84904C231C24000108E18FD6518751010080B1200108C0DE402E030C741B5D006812120000000244021080A6B75A68FD03C0D8910000C018D00D80A620010000204024';
wwv_flow_imp.g_varchar2_table(49) := '00E87B5C030000C68E04007D8F35000060EC4800000008100900FA5E082B1D02C064230140DF63795600183B120000188399871C2A4013900000C01830EB044D41021080A6AF94C7C22C00307624000000048804008D4015005381EB4EA04948000210C2';
wwv_flow_imp.g_varchar2_table(50) := '1F2DA602622AD0FF8F2621010840082BE56DDF470500DDC7AA93681212800084D06AA10B005361165300D12024000108A10B60FBFE5D02741B150034090940004268B5ECA4028029C0204034090940004268B56CD9FD9800DDC620403409094000068F38';
wwv_flow_imp.g_varchar2_table(51) := '469A4EC700704D0074DB82D9CDFFDF12C241021080505A2D5B773F2E40371DFE1A0601A239480002A0FD96218C03D8F214DD00E8AE798C014083900004827100C0C468258D3100681212804084D077F9373BEF15A05BE8FF47D39000042284E94B3A0890';
wwv_flow_imp.g_varchar2_table(52) := '0581D02D2C0284A6210108C46020AD970D3BA802A03B16CF1914A04948000211C25440B5816E0074095D00681A12804084B282D9D6DD8FB11E00BAE2A8C37E558026210108848E5E5E30FB68693A0DFE740360B2E9FF7E0666CC11A04948000232387BBE';
wwv_flow_imp.g_varchar2_table(53) := '846064DB46012613E57F34110940400603A800A8BB776DA11B00932A84EA19C243021090C573C319C5BCF6C16F0830598698018006220108884E050C652E338B0261320D1E410500CDF36A4150B42FF3EE5D5BA5E9745960FD3D17CF5920FDAADF676EEC';
wwv_flow_imp.g_varchar2_table(54) := '8DBB61F61C7856FA9D26CE0C00441391000466C9BCD3834800D4EACD23B2F1BC1BA45F3D72F188F4B3E3BEBEAC110900FDFF682ABA000213CA82404A07038692ECF41AFDEC9BB22C33FDFF682A1280C0E872A621AD69AE55004CBDE1479B331573F1DCFE';
wwv_flow_imp.g_varchar2_table(55) := 'ED4602DA210108D0F9F3CE90505005987ADAF21FD976873401FDFF6832128000F5F3C0B8F1B8F2BE9B0553A74955974581FD6F0561210108D09281D325247A7D809B1E625D80A9D0A4D6BF5A1250B50CE121010890AE6B1E5A15405BA54D1994D6CB2EBD';
wwv_flow_imp.g_varchar2_table(56) := 'A77F675DF8F47F2743F4FFA3C1480002A5D30143A24B035F7ACF1A41F70CC72DFF268DB7387FDEBB0468321280402D3BF65C098D0E08A42BA03BB4BA727DC3665C50FE47D39100042AC46E0045574077AC7D685DA33E57FDDF47686365109EC8C404415A';
wwv_flow_imp.g_varchar2_table(57) := 'BFE3BBF21BFFF087121A5D62F7FE0B6E4EFEC863E236ECBC572EBEEB5A6994E75F16B3E7800CCC9A2B47CDD4698046161C796C7CFF4D32103F3E6AD61C59F0ABC70AD0CF480002A6FDE26F6BC872AD63B56CFE3972EBA2AB0413A3ADFE73BEB5B2715515';
wwv_flow_imp.g_varchar2_table(58) := 'B3FB0591175E89FF42665BA2E46EF2E732DB16DF1D9CA349C15C593CEF9DF1FDF9F1ED4902F40B1280C0E91CF950FBC5579DB44CAE3E719960FCB4E5BFA169575E7CE5A0989F3D2F511449FEE73189FE9D1D3E34F04E5972DCA2F8F6A4A46A00F42A1280';
wwv_flow_imp.g_varchar2_table(59) := 'C0E9C0B873BE156E4B982460FCAE7F6058566FFE9A34CE735AFE7F51268376176842B07CC17B65F100D501F41612002425DC9097CBBD75D1CAB84B20BC591113D1C87EFF94F9F9F3222F1F4C4BFE52B4FEFD5BFD4F14559C40ACAE83E2B126034BDEB658';
wwv_flow_imp.g_varchar2_table(60) := 'AE58F89BC97D60BA910020F82A80BAF1B4CBE4F2E3970A46A7FDFD0BD77FA29963475E8ACBFF3F7F2E7DE007773BB257DDCFBA0BA22241A8CA044492EE816583EF4D2A03C074210140E2C8BF5C1AE460401BDD01A36BEAA0BF8C79FA85A40BA0C5EEF84F';
wwv_flow_imp.g_varchar2_table(61) := 'EF2731BC540A68DD8FFF94B69EF68FCBCFEE9D3792A366CD95AB17FF4712014C8B7F756D4C10BC175E3910FC55F3F4F7D7BFDD8BB9FE7BA5A6077F1DFC274FBF9856F6A3B4FE9FAA8AF9A5E75A3305DCBCC07A90250FD679F7BCB04F363C72B70C6FF93B';
wwv_flow_imp.g_varchar2_table(62) := '99F5BAC364904183984254009008794AA04F97495E137709E87A0168697CF057CFBD2466F7E40CFE7366108C81AE3B70CDD047651915014C011200E4566F1E96EB1F68E0A8EE71D0E0BFF1BC352401D2BA9AE207EFBAB6F12B289A5D71F2FBB22955EFB5';
wwv_flow_imp.g_varchar2_table(63) := '5D6F640C7F266BAAFF7A8EA86AD060054D04BEB2E46A660EA0AB480090A30A5016FAB800BDB4EFCAFB6E6EFEBF096DFD3FF5A217B46B06FD65D303EC606E8FFFAB9C3120A5EE832421B0CF9F0F1E2C5E6FF9E07B65555C11D08400986C2400705005280B';
wwv_flow_imp.g_varchar2_table(64) := 'B51AB0F2FE9B65ED83612C12659E7C3699FAD7526EA59782B5930C48797BE5808136ADFFD2D802939F6160D69B922440930160329100C04115A0DE8AE397CA8A132E6A7C22A083217585482DFD07E1D9975A4BFFD68ED8AF62245F15382A2706FA67352F';
wwv_flow_imp.g_varchar2_table(65) := 'F767D582E20029270B6D5E2BFD13BDFCC4F7510DC0A42201400955807A1AFCB55BA0890B0769D2A7ABFB85D2EACF9827F68BBC226EA0B65505F2D613E234DBADE7B2F05E0C06EC702D61FBB5FCF3C6B7BA80D06DBFF9C7C935088089220140A5E3E22A00';
wwv_flow_imp.g_varchar2_table(66) := '97CDAD972502E7CF3B43661D72A8F4330DFC373DB42E0EFCEBC2ABFC68EBFFA91792BBFE603F936E6BC5DFBA8E7D91F67303C7AA93E32259F5EE8F26D500602248005089D5013BA38980AE1BA0C940BF750D041DF85349EBFF657B9EBE4C8E719FCB5E70';
wwv_flow_imp.g_varchar2_table(67) := 'A8FD9E579CF62159F3EBBF2BC0789100A056E8D708182B4D04961F7B4E72DBCBC9807EA7AB378F24495ED0F617ADFFB6E3F54A2BFABA330092FE7EDDC11B0A906FB7CF57F51AED660DF8BCF7A25D01DA25C0B8008C0709006AEDD8BF2BEE0A582E183B4D';
wwv_flow_imp.g_varchar2_table(68) := '02960CBC4B86E69C280B661F2DD3495BF73AA06FFD8E7BE56BDBBECD00CFCC4FF78B79B9D33F7FE526B933D0AFA38ABF3548D09E5510698BBFEABA03AD13BB3310CA0666CD913B3FF22592008C190900DA6240E0C4E91881C5692230347730BE3DA66BE3';
wwv_flow_imp.g_varchar2_table(69) := '0634B8EFDCFF337960F736D9F2D4E3492B3F98D1FC63905CEE77EF81F4813589BFB463F65CD6F0F75BFEE2CE0230521E3458F71EFCE3AB061F3AE730CE72C276A1409711DE1827010C0EC4589000A02D9D16B870FD650C089C649A002C983D3FBE9D21F3';
wwv_flow_imp.g_varchar2_table(70) := 'E2EE027D3C70D891C963FD69677B5C99517BE3EF66FBBE9F27B7FAFD68C586EFA9032F1F8CFBFE9F13397850CA57EE4B6FF3167D79705F31D87F0CA3FBAD167CD1A237F940C3FA958444A4F67911FF9AC5B72E5D954C17043A410280513120104D627EF9';
wwv_flow_imp.g_varchar2_table(71) := '7CD2FFDFD22E808F61EA9E19CB39EA3AFCDBBD56F17CFBC242142701579304A023AF126014DA9F7DF9F1170AD0F79E7B59CCBE97AC786DDC1B6F35BED25DE3EE93DC3F9896E6B3E79CE78BE7DC83C4DF2852F5D2C9ADD5EACFD61232FE3E92572C3EBA6E';
wwv_flow_imp.g_varchar2_table(72) := 'B50C6FFE5B01464305001DA12B004D60FE655F31ED6F32A6EF57CCDAB3EF8FF97C16E73C6D5EBB4ED21D70129500D4A302808E68BFF4AD8B560AD0AFCCD32FE6C13FEFC22FED94DE642BFA55B48F9C6D562E91297AF765DCC1DF3F67A551CE7DE93756CB';
wwv_flow_imp.g_varchar2_table(73) := 'FA873709508704001DA32B007DEBA5837119EBC5BCFC1ED555E14DAB8E1FA5FDFAC552BEC53E9175D5BEFC39EF36AAAAEEE7DD04457260DF2F97F44DE5F1E52E85BA7D8D5C1A77076C79F25101AA9000604C6E3CED77E244608100FD24B9DA5F559F7956';
wwv_flow_imp.g_varchar2_table(74) := '46775AFA51E5BEA622C84675FB8A7D5EE39CBFD5879F260A62CF42909ABEFFD6FED9FFE5BF93B15F282A270EB1BD2FEC970FFED555B263CF9302F848003066DA1510DAA571D1C774B53FAD00B48DD4F66D763F72F6C9FBF84DD10C37D9AD9D20A4D3FC8C';
wwv_flow_imp.g_varchar2_table(75) := '73D1A02A265F16484AEFABA22490251CE97B281F6BDCF79DD2E07FF6572E933D2FEC13C0460280311B983187F100E80FCF1C682DFA63C7C42CE8A72D74E397D6F311F7592B5DAC46BC7146E1672DF828B246E7A7F2AE027BDE7E9A2C48F1489CD67B9E70';
wwv_flow_imp.g_varchar2_table(76) := '58EF47B2D74ACFE5771B54BD7FE7776925011FFCCBDF13C046028071D1F1006B167E42809E15B7FA93817FAAA2919DDD542EB99FADB4670774EF71BA637E223B863B815A8AC7C6F8D3F8A272402FBD19E7A6782F35BB9A9A8D77FFF80772E5DF7D5E800C';
wwv_flow_imp.g_varchar2_table(77) := 'D300312157DEF725B9E9A1DB05E8353AE56FE0F547CAE0DCE364E0F03972D4AC37C9CCD7CE9099AF3B4C66BDF630A92C973FFD64DC6FFEAC6CDFF3D364F09C96CDB7D60CA2F317E4C92B04C9C0C1F273FE8ABFD1A8C3FCDBFC6E793522EA60BA80EBEBBF';
wwv_flow_imp.g_varchar2_table(78) := 'FD2772C13B86042001C0849DBAFE13B275F7E302F48AAB4F5C262BDE71611AE8274693004D06363CFC1DD9F4E37F96AD4FA40941B654BFB44AF9CE95FF6AFEAA962EEC932705D685852A9AFAA52B0B9AF45C693743E9F55B07897D31A12CDDD1EB067CEF';
wwv_flow_imp.g_varchar2_table(79) := 'F2112E1E0412004C1C8B04A1975C7EFC52B9F1B4CBA45BB63FFD840CFFF3DFCA48FCB363CF136960ADBA9A5FC595FFC40ECA227680B6F775B6D9C941E935C47B7DBF53232D3D787FE517BFF59D72E7A5370BC246028049A117A2D1EB059004603AE99516';
wwv_flow_imp.g_varchar2_table(80) := 'BF77C1D405B6E17FFEA6ACBEEB963811D895D7F95B01DB2DF567E3095A81DCEE7AF0D7F82F0F168CAC4A43CE5E6AD0EF6F488FCD5ECB7DBAD8F6A7EFFB94AC38E3438270310810934267066C3CEF86AE5DE616188D4E4DBDEDAC4FCB545AFECEF7CBA357';
wwv_flow_imp.g_varchar2_table(81) := 'AD975B2F5A25F30E9FEB0CE8D350EBCE18907C847E718D00E33E6FED635F0538B91B45CE4043533520D11A68D87A8D287FCA7EDDA1A34F96C5F10FC2460500934AAF3D7FCEB75626D7A507A68A067F4D4035119D2E7B9EDF27D7C5D5809BEEFD9FA5E7EC';
wwv_flow_imp.g_varchar2_table(82) := 'C2BCDFFE6F3768A028EF9BCA73645D0822EDC70266FB6BE97FD5591F4B1200800400938E24005349AB4E1AFC17CC9E2FBD60FD43DF912BBFF979D9F9F493ADC09B0FDACB5AF555A5F9545E40F00605D60F317037675DFEA6988DA0868E26F0A38C04005D';
wwv_flow_imp.g_varchar2_table(83) := '411280A9F2F5F75C2B4B064E975EA2030557C649C0868736C974D124425BFCD79CFD71023F2A9100A06B4802D06DB79EB952961D7BAEF4AAEBEEFCB25C1F770B64A57C7FC4BF88946600644AA3FFDB4C2FB4E97986DE7AB2AC3A9B163FDA23014057313B';
wwv_flow_imp.g_varchar2_table(84) := '00DDD2EBC13FF385EFFE75520D30D60580EC7E7BFF0F7016F4F3FDFD2B1266FBB59E74B6E9DC7E0DFCCB4F7EBF00A3210140D7910460B2F54BF0CF0CFFE09B72E9D7AF1377EEBECD4D058AC17F227E8A5031D35F0E7FED61B2E6FC4F11F8312624009812';
wwv_flow_imp.g_varchar2_table(85) := 'BA58D0C7EE59231B76DE2BC078E980BF350B2FEBABE09F6925017F98DCCFAE0FE4CE06A8569E3550DCD7950E2F3FF34372C599FF7E52563D4458480030A5566F1E96EB1FF89A0063D56BA3FDC7234B02ECBFBA91F51F7B1121BF7BA0585CC8C8E1AF7B83';
wwv_flow_imp.g_varchar2_table(86) := '5C7E461CF81711F8317E240098726B1F5C172701230C0E44C77A619EFF64B96EE39765F59DB788BF1280CF546C39FCB56F68B5F809FC9804240098168C0B40A774795F5DE1AF09C13FF3D1FF75AD0C7FFF9BCEB67CF09F142BF965DB66BE6686AC88833E';
wwv_flow_imp.g_varchar2_table(87) := '811F93890400D346C705ACBCEF6619D9B651802ACBE69F236B4EBB2C2EFFCF9026D155034FF9B3DF4A2E3FAC4A57F2CBC47F9D572CFA90AC3AFBE3C955FC80C944028069479700AAAC59F8095971C245D2545B9E78444EFDF3DFB6A60766FF6D4D12BCE4';
wwv_flow_imp.g_varchar2_table(88) := 'E4F365D5B91F9781C3B96C2FBA8304003D812E0164B4BFFF963357CAD0DC4169BAD577E878802F5B4BF88A0C1D73B2DC78FE9532F8E6E304E8261200F4146609846DF19C0572EBA2958DEAEF1FCD299FFFADA41AA0817FD5391F4F6E81A94002809EA3D5';
wwv_flow_imp.g_varchar2_table(89) := '800FDE75AD6CDDFDB8200C3AC5EFEA139735BAE45F4783BF8E0920F063AA9100A0670D3F7A473236806E81660BB1D50FF4021200F434AD06ACDE3CC24C81060AB9D50FF4021200F4054D042EBD678DDCBD6BABA0FFD1EA07A61F0900FA0ADD02FD4D47F8';
wwv_flow_imp.g_varchar2_table(90) := 'EB5AFE4B064E1700D38B04007D8944A0BF68B9FFF2E39726E5FEA62DEA03F42B1200F4351281DED7D4D5FC807E470280462011E841FB0EC8BCE767CAA3BFB75E00F49E5709D000CB8F3D571EB97844EEF8F51B921627A6D1D32F8A79FC1939B87D9F0CCD';
wwv_flow_imp.g_varchar2_table(91) := '3B4900F4262A0068A46CFAA0CE1AA02A30050EC67F4676BF20E697F1CF4B07F36BDADCF61F6E9425FFE6DD02A0F79000A0F1B47B6064DB1D4C21EC86175E1679E680985F3C2FE660EB42B6D9A56CD52F3EB389ABD8013D8A0400C1D0AAC0A627B7CADA87';
wwv_flow_imp.g_varchar2_table(92) := 'D6B1CCF044BC12FFC9783A6EE96BE0DFFF52ED6E43F34F963B3F798B00E84DAF162010BAE8CCF263E724E3053419D8B0E35ED9B0F35E2A039DD0A0FFFCCB7189FF7991675F4A1E3B2D8756E33FA777171F738A00E85D540010BCAC32F0374932B045F61C';
wwv_flow_imp.g_varchar2_table(93) := '785620ADA0BFF7C5A2A51F3F6E5DB2D68BF609779BEEB7F1935F8EAB00240140AF2201003C9B9EDC1277113C965407F4369884206BE5EF3D90F4EDB72BEF27FDFCED1EC71B7E4EFF3FD0D3480080516C79EAB1A432B0254E06F4A731E3070E1C6C057C0D';
wwv_flow_imp.g_varchar2_table(94) := 'F43A984FEF6B12A0A1DCFBAB10C5113DF953114579B0CF837EB23DD92BAF01CC7CED0CF9C5E7EE1600BD8B3100C028068F3826F9B1699560CF81FDC9F8815695607FEF26061AD40FBCD20AF0CFBFD2BABF3F6EE51F6CC5EE16AF3D5F44F7D6B3267F261F';
wwv_flow_imp.g_varchar2_table(95) := 'E16FEC767FBAAF49F75AF0E6B70980DE4602008CC3D0DCC1E4F68281339CED5A2DD06440D71E287E7625CFE9FDBDF17393D9A5A017D7C96EB7FCF861D9B37F6F1CE0E330FC4AAB75AFC1BED5AA77E52D7A7B5BFC7F59682FF2812CC8BB898064FBF9E74D';
wwv_flow_imp.g_varchar2_table(96) := 'CE61E4F0D7B1EC2FD0EB48008049E4570AEA6892B0F7C55622B03D4D1046A36BE967EBE9CF7CCDA1A5B5F50FF9DD77B6DAE0697DDEE997CFEE44EEE32460A7257CBD4D06F939C7186FBC9F71EF46EEFD2CA918EC930AC0757FFFDF64C7534FE48FEDCFAC';
wwv_flow_imp.g_varchar2_table(97) := '3CCE21B26A1C557BB8EC6E12FBD6DF473ADC5E753E71DE5FE55752DADFFB275049F7B9F5B7FF50D06C2400C034B083F9C06147CA64705AF47551228F1026FD7FBB84EFC67C3F7968CD00908A172EEF37B34F06FFDDFDE8F76553FC53AD08A7A5DFBD7DEC';
wwv_flow_imp.g_varchar2_table(98) := 'AF3DCF68B2D7C91331D3E673EFF05CCEFDBA0CA2E2F75973D14A0671361CD702001A60C7EEAC155BFC15AF0D1AA6FEB9C8B40EAC8CF3C6E4614CBB10EC97735AAAF1B6FE0C1C556DEAF4197F50E4980272FB6CC1FFECF25BE36EEBF4958A9359AF7ED04D';
wwv_flow_imp.g_varchar2_table(99) := 'F49CB7634CC5DB33B2F7F9FD82662301001A2419875FFAE36EF2467FB1AD2804E401204B0C222B8C78C7E48D472F2A99F475B29F81D96F92BE60AC6CA82238E69F84F10FB33E437B1F23155597BC7FC47AEC1E567A4D632ACE21CE77E57E37263F57767C';
wwv_flow_imp.g_varchar2_table(100) := '3E58337DFD48ECDFA7EEFCD66B745EE2409F2201009A22F9A39FDD9722F08835E0CFAA0397D7F329F67182507293860F275058FB7658E2EE3DD9EF553CCA339D2C88DA9F47FEB95A65752B604656F74A29E9726EC549988AF3DBDFA111374171BB24B28C';
wwv_flow_imp.g_varchar2_table(101) := '2DB27F87FCE0C87D3D692502C64B1CA2BC8B20F23E138480040068803DCFED4BEF959A87DE8035EFD6C9188ADBECC23EEEF95ADB8C778CB1834E1F361AAB7220C907FB790994B5BDBC844A24C649B08ACFACEA15ED36B9A9FDE0FCC06CAC73FBBCE4A2EA';
wwv_flow_imp.g_varchar2_table(102) := '39FBDF86295ED758C94D5DD503CD43020034C0DEE7D304C08EFD76F028B540FD96BC75B23C86D5959BD39D9C634CB616507FB15AF945408C24B20273F67BE5CB1C996CBB5FD6B7EE3BF1B6F81C232BF13262CA9FB1BD7F76FED2675FFD7BE4EFCDA9DC48';
wwv_flow_imp.g_varchar2_table(103) := '39F69B8A6DD9EF660D3E44F3310B00680A3F8867AD3BABC5E7CCFF37A31DDFC1F3D6B6BE5F54346B607BEDF1BC951CB981DD9F41D1F6F36C7DF8E5991AED1863BFA5DAE34AEF239251BFEBD23A10C914D028CD2388FEA1A00200348033EDCE6FD1E7DBCD';
wwv_flow_imp.g_varchar2_table(104) := 'A40669A78FBB09FC9676D61ACF9EABF94C33ED8B1FF5DD23132E9AD4241EE6E04129BF565AD9A8A826988E7F1734050900D000F9B43BA71568D2B2B358256591DAB2BE537EF65494B4DD018715F7FB81FDF9D8E5702F0246F670087BFFC81D61919F2FB9';
wwv_flow_imp.g_varchar2_table(105) := '6FAA3F53FB739722F0660301EDC4CA88FB7AA3265D767743E47EDFF9EC8DEC27F2DE8FF55AFD5ECC4167E802001AA0157C9288646DB05A7B523C4E2397B75FB6CD1E3D1E55ECEB7216A9B1A2D59E6C4C42CF33D5C1CE19D8E8AEFFE73E979EC3FAACFC32';
wwv_flow_imp.g_varchar2_table(106) := '7A5E5ACFB7476E42966E36CEF1DEFEFE7B359138D99EB1BFBFEC3CC6FB95A2627FA97A3FCEDE82E6A30200344079129713598A016CD54D51F7D61F286837099D24C378C1AE1841BEF7B93E4900BCD678BE310FD0D676AB3B20F23F71EF73B19F77671044';
wwv_flow_imp.g_varchar2_table(107) := 'B56FC41E7A689518C4F9FC4BA3F4226F9687FFDD45A5D729B2113BAD29FFBB98F97A56016C3A2A0040030C1CA10BEFD8AD55916258BEB12A0499F4BE3DB02DDD3D9B135E1EE4E60717B14AC9ADF36403E5F63CF78CF40FE394329216BBD865F2F4396B9F';
wwv_flow_imp.g_varchar2_table(108) := 'FCF3CC1BDC6E75C00EFAADF389387D04A6EA5D549558C4CBCFACEF24CAA61BA6F78DB77F9E3CD49C2B8A4AEF35FD0092FB2C03DC7C24004053F8B5ECAAD66BE918F761DE4F5CF3FCA8E748EFF74F1780782DEAAADFBF487CF20B02999AE428658FB22F0D';
wwv_flow_imp.g_varchar2_table(109) := 'BC1CE533B52F3A54F5BDE5E7AEA94E94B675FAD8DA7EF8EBDF20683EBA008086D0E577A38AFEFAA8B6EC2CA57DED39F1FE73A31E6FEDBBF3A927A56F8CF659F99F4F8552A1BD4D12551AC857CA0FAA3FFFC83E77DDF1954584A8FE7953FD3BCFE472CE41';
wwv_flow_imp.g_varchar2_table(110) := '2001001A424BB6797070D600F25BABC58F9330243FD64E76EBD6BBEF8C9CF75F23FE79E0273F94BEE07D26C58A78C58F330320928ACF31EB62F1B757BC8E8898BAE4CAF9FCA5940498FC3BF35E472ADE9FA9F99DEC37607F77C638DFE9BC7EB996032684';
wwv_flow_imp.g_varchar2_table(111) := '04006808E7023CA53FFAD6766B43D572B6C5ADC9EF47CEB1E5E3B2F1E7595778DF0C02CC99DAC7955D02C6FE70AD8179A6CD69FDA4C07EBE2659B0DE44D5DDFC80A8746CD5499C433CEEEC85C3E9FF0F020900D010B3F251DB6953B0B25CED4F05AB6A9A';
wwv_flow_imp.g_varchar2_table(112) := '7ACD5CA785EB4D21B38EC91BB0F17FB63FF584757D825E66DCAA46B6CD9B32597E2E72836DD500C9ECB1A978BE621185C8FA6F295B3035E7CCD66428ED687FBF466ACB0EFEF6F4FB9B77041580109000000D91CC04C85BFE56A0F17FF2EDE2EE23D6C231';
wwv_flow_imp.g_varchar2_table(113) := 'F97DAB2FC19EF49FDCCF02A19744A4FB6DF9C98FA4D7E5A1DD1E58678A45799C127FB22D72836ED57809EB3CF62B49D5C0C1ECF336F63509DCEDA5EF32CAEA2DE97925AA3846CAFB569CD748F5FE47910004810400688881AA3FDA7910B25AEE072B5A7D';
wwv_flow_imp.g_varchar2_table(114) := 'F99D9A1663DE4F1C5941C9949ECFEFC7B6F6C13880D2457DB2EDDEE3E43373CAFE46A20ECE3EFAFD2AA30DDA74DF473903B1EEEBBE074DED4B4635E71E7CCBDB05CD47020034C489557FB4F36ABEA9A8F047C5631169DB7F9D6DB25B917EF8F062D1A647';
wwv_flow_imp.g_varchar2_table(115) := 'BE27FDC088A9889D91BBCD1FFC573E49F939AF302215713BAAFA0CC56EA9579CDB48FD7B306D9E979AE72BEECF7A3DB30042C03A004043B4BA00D2074E5C3149E9BA3450CC5445781925D81517CCAD3CDE3A66D38FBE2F7D216F2C5B2BF8F9E57A6FDF76';
wwv_flow_imp.g_varchar2_table(116) := '4940EB3CAA4822FCAF235FA3A7EE3B900E5EB72EC8D73D5F97D0E4CFA56F2CBEA10210062A004043E82040771C80782DF57611C354DE6D3D762387BDAC70BBAB0BEA20C04D8FF4781260BDFD51D74BB00FB3BB3C3C91D87DF4B5279089B13202D32E2BA9';
wwv_flow_imp.g_varchar2_table(117) := '7E3D73B03EF1187CCB7182309000000DD26AB9D58CF0CFCBCEF6B6ECA76A011CD3A6959FD601A2C8DB26920F2813AD02F4413780377621BFEFFF3EA6D81EB5D64CAE3F5F55CBDF792DFBC7D47C57DE67EF3CB406014651E9FD559F579C7F0391FF7BA6BF';
wwv_flow_imp.g_varchar2_table(118) := 'CFC01BDF2C08030900D020436F3B59F23E64950583C86BB5DB0302A2BC1EED06905C54FD5CDDB6FC1891BB7B7E1C80716E2A837122F28E3215C1DC6B8D670FEDCF29DBBF747DE1C87D1F457F8214B30E2ABEA352A2E04E5FCCCFE19CDC389B8DF73B0C1D';
wwv_flow_imp.g_varchar2_table(119) := '778A200C240040831415002B008991EA967CD4E639E3DC776362BBFDDDA5E8B402D0FB63018A0EF1EA8287113F583B55947C1FEB0827AADA53F6D2ED7ECBBCC816DCD35A3B45B5EFCD3B8F7FBF6EFFFC5DB9C9C8E05BDE2108038300810619FCD76F6F45';
wwv_flow_imp.g_varchar2_table(120) := '0F6B807F6B7AB73D875FD2B864DCF8E437249D2241C5A0BFAAFDA3F23E9B1EB93FAE4CF466AB72D5FB2F93E5EF7A52B29900F98576FCDF5FBCEDE96D71E544C99F683D655D38283D89BB3D657D57D9F9BE70E7D764CBBFFCB09C53956EAD07FEF768172C';
wwv_flow_imp.g_varchar2_table(121) := 'ECF338273495FF0E7AF5BBC2E48B4CBB513C00FACE29D75DDC0A201DB2AF5CE73E21D58DC831D0F31E7EE81BE4D1CF7EDB5AA910EDFCCAEF9EDED92A8A1D7E3F7E3ED0CEE2E34E95BBAEFA0B4118E802001A66B1DD875B1720AC806F4699CEE73F2EA6B9';
wwv_flow_imp.g_varchar2_table(122) := 'B5DBB7B541930B0D66C3F7DE2E18DD57BFBB5E9E7EF699FC71F952C2D6E383DEC15E6F4476AC530CA81AD8693D1EFCD76F138483040068980B4E7A4F725B3BC7DC586D422F68A4078A7F753FFBF85639BC786C6A06CDD997AD1D8E031B4637F24FB7DB23';
wwv_flow_imp.g_varchar2_table(123) := '0CD291FA52FE1E32CEE76F9CBE7F67DD07EBBB68ED62C41FF0A8E7C9FEED200C240040C3E8388059AF9B510CEE7202881FFC8DDB624CEEA773FDED816C46D2FE6C2B12392D4C6325136E00D2F36EF9971FF5C794C069947C463F4C3F2327512B35ED9DEF';
wwv_flow_imp.g_varchar2_table(124) := '269FCE27E9EEF977671D9A2F4D1459EB14444EAA7078DC4533F4B65305E12001001A46FBDAF3C1805E506EDD35DE36E30595ECD6E44F297F225C1EFABD0A8173C7EA2EB8F4BF5FDD2757089C1E5FD83822A5D18776C266F3A7FEE5B999BF3853F6057ADF';
wwv_flow_imp.g_varchar2_table(125) := '6BBA3D4F120F1A594CF00F0E0900D0404B4E7C4F31F7DF9B72668F5BCFEF46451BD19FAF1E655309BCC6BFF1E7B697E6C58BF3DCF65FFC340D72F06DFFE513AD7112750BFA88F7D926A222E8679B8C356323ADE6E4C7899D048A380B088950FE0F100900';
wwv_flow_imp.g_varchar2_table(126) := 'D040CBCFB8300FC8E516BF944BC47EA5C07E6CDC736733D7FCD9EDF66175D6DE39223BE26007D7EA0D5FAAFC7AF2C7A66E638B3393B3724C86388999DD6D90ED41F93F3C2400400369374056D21D758D7B23D2D14C00BB2BA022A7489EB3B757549EB50B';
wwv_flow_imp.g_varchar2_table(127) := 'E0A37FF10782C257FF71BD0C7FF77667D09EFF8DD99F79BE5B45C6E00C1A4CEF5777D1B8E7D6E97F0347B004706848008086BAE2EC6552D5F56B3F36D674BD64B35DEA4FBB068AE100C63A263DCE3F77BE404EF632A65840277D4E0703AEA52B20B77AC3';
wwv_flow_imp.g_varchar2_table(128) := '178BBE7BAFF2627F1FC6EB06687BE5C2A838C6F98EECEFD33AF725675E20080F0900D050436F3FB57AF11D2B5064ABD36501A7727C807F70D6B75CD5B44CFB9AB3ABCDB5E27ED1579DEDF3A9BFFEE362C47BC056AFFF52DC25F253C9675E380300ED4A40';
wwv_flow_imp.g_varchar2_table(129) := '3A602FE9EFB732B9FCC6EAEEC9C66C78C7DB37226E6568C9496709C2430200349406FF15677F387D64D7824D51A337EEE0BFA2746F0594D61DA7CFDFA453D4B26A80C98EC91289C81A7CE6B46E4DFEF8A35FF983A0C703E8C0BFEBE204C0FDBCFDBDACA9';
wwv_flow_imp.g_varchar2_table(130) := '9C2245CBDF78FB645D00F9B9AC1904CE60C2F42479D267E492332E6095C6409100000DB6FCCC0B9DD2B25366B647889B8A8335E847EEAC80624A60542405C61D8466D2638B9DD3B6669406AA3439D81EB77C3FB0F68A20A7066AF03FFB8F3F22EE087E6B';
wwv_flow_imp.g_varchar2_table(131) := '4EBF954C39DD02FE6D9A4CF9DF5339E8ABA8480EAC5D97E980510489040068B0A3DEF86679F7DB8BD1DD7691D96D75BA256363270CD6D1A592B2B831C69E1D906FB1AA09597290EDB765E7C349200C2D09B8F2AF3E9B96FEA5768866F1BD4415DB2B77AE';
wwv_flow_imp.g_varchar2_table(132) := '1195F6CD767FEB1BDF947415214C240040C3ADBAE093C96DD6FA8F8CDBC8B40789598DF6D673A62E19C8B665772A6ED30066ACF2B47DBECC969D3F942BFFFA73128AEB6EFFA26CD8FC0F62F7C428E35562A25236966ECFEE5B3FCEB1A5FB26FF2EEC73EB';
wwv_flow_imp.g_varchar2_table(133) := 'F799FDDB409848008086D3169ECEF1CEDBEF91588BC1BAF2F163C61D40E65C00C80A30CEA041533E593126CD38AF91ED9F2525C3F7DC2EA75CF381C6570234F8EB4F299732EEE792DD3AC336ECB100923E9651BE03FB25EC2E05A3ADFF37CB927732F82F';
wwv_flow_imp.g_varchar2_table(134) := '6424004000565DF8C9B4046FA4FD15C08BE86EEC16A344A500E4B6FA8B635A33004C1ED45AC943E41E541AA5DEAA049C1A27014D1D18A8817FF5ED5FCAC7FB278CFB7D18E30772F73BF0993C392B3A77B273643331ECE3EDD75A76E6850CFE0B1C090010';
wwv_flow_imp.g_varchar2_table(135) := '00AD02BCFBED0B5BC1C788545E6636D914A523C9ED817EE93C01BB9C9C06AE62009AE4FBE625EA943BB0CD7E2DF1CAD8467EFC8B9FC8D99FBB24EF1F6F8AEBBEF1C5E4270FF85602A49F9F7DE95E637DB6D9E7524A12F2CF3AB2D670683D9F0D082C9604';
wwv_flow_imp.g_varchar2_table(136) := 'B63E7729BEFB4BCE64F05FE848008040DCFAB13FAA0824224E3DDA9A4266FC51E5D92E56E9B908F6DEA234E9FDBC356ABD8FFCE8F4B5D2BA441ED0F49A01F3AF3C27692D37C1A7FEEA7379CBDFE908C93E373BD04BB97BC6F99CAD84CC4D14BC190412B9';
wwv_flow_imp.g_varchar2_table(137) := 'DF457AE6EC5CCBCFB84006DEC8CA7FA123010002A13302AE38775972BF7234BF3FB23FAFD6BB413C1F27601F69DC638BE982C5CB385308F357B3FAA5B35420DDEFBA6FDC24677FF6237DDB25A053FD4E5EF50159FBED61C97E4977DC85F521A7157CAFA3';
wwv_flow_imp.g_varchar2_table(138) := 'C4F9DCB2CFCCAE16D42FF36C4A8FB2F44203FF351732F80F24004050AE59FA4999F5BAC35AA57BAFE15F0C0034C92871A7946FDCFEFAAA0B0D66C12ACA9EB7E25B728C64C9C1C1D6F98C7BDEFC58EB949B7E78BF9CB26A69D27FDE4FB4C57FCAD54B65EB';
wwv_flow_imp.g_varchar2_table(139) := 'CE878B84C8FA2C8B56BFE4B32DA2A21BBF68FD47EE6759FA6CADEFD19D9111599F7F9477DFE8F7BE7CD18532F02BB4FEA1FFEEDA8F0802D0305F885BA457FEA53BEDCE6EDD573DF62BCA9177ACB5EE5C7B56903315E7AA929D3769B9C6098C06B05EA5CB';
wwv_flow_imp.g_varchar2_table(140) := '1B7FF496DF971DBF28C630B4FB5CF2CF2EEBB3B7B6DB65FB4E74F23D0C1CF126D9F6F93B055024004080CEFECC25F29D385815AD6F2F00598FAB2E18146573092B8EADDF26E979A4964977CC07C645E50038F0C637C589C0E532F48E537BA21F5BA72EAE';
wwv_flow_imp.g_varchar2_table(141) := 'FFC15D3272CFED49C5A24AB674725606497E3F91CACFDFD8BFBF48E5763F59882A5EAFEAFBFACAC7FE284EA0960AA048008000E9403B2D51EF7D7EBFD5224F07927981231BA0570A35E9A6E4F96C26407E9E62CD81A2CFDA3A975D6A886A1210EFB5FC6D';
wwv_flow_imp.g_varchar2_table(142) := '7AAE0B4F393B99CBBEE4E4B3A67C4ADBA687EF4F5AFC6BFF7E58F63CBFCFF93DB3F7974F9F14C99FB30751166DFC56B2E34EE9B3F64D47F41BEB3CB59FAD48E935D4E0C03BE407D7AF132043020004EA0B7FAF5D019F4DEEFB7F04AA1AE959B0CAAE3867';
wwv_flow_imp.g_varchar2_table(143) := '0FE6B3034D3A69D00A426E70AA1AA0567E4DF7DC52F15AD97B69B5A64D5C11582817BCF33D71A03B3EA90E4C366DE927413FFED1167FB194AF1B8CB36DFEEFEC17F4DD857CC40DEE4EDA60250996BACF46AC6DF9BEF1DDC7E2D23F7DFFB0910000013BEB';
wwv_flow_imp.g_varchar2_table(144) := '8F2E49025A3E67BCB63CEF87F822DC9874D0A05BE2F75AAC917FAEE23829B592EDBEF1E2F8B44720BFB5DF53B1ADB0F8ED0BE3AAC01BE284E0EDC98F5608F4F1AC430FABEC3AD000BF37FED9F3EC33C9858AF63CBB2FB956C1CE5F3E210FEC7838A99AB4';
wwv_flow_imp.g_varchar2_table(145) := 'DE4B1A70BDF79617369C48ECBEC7649F9A4E7AFB778EBC0A49252379D5207B1FF6675B6C1359B5F49372CD45970B6023010002A6414D93006DCD3A81377DDEB91F9503B22D6AF74251F520C2CAF866F573BBADEA51E4C941564A1F653FEFF5ABD21BB715';
wwv_flow_imp.g_varchar2_table(146) := 'EEBE67FFD63FAFF5EB58DD235274B3386B2BB8AF2135EFA1E257718EAF7A4D4D76B6FD1903FF50C63440206047C525E1BFF84F9FF15ADDC57C7577A05AEB366FA54AF184DD5A1771039211A99D41E0043C93ED6BF2F7E133358F4DFA9F283B51BBFDADF7';
wwv_flow_imp.g_varchar2_table(147) := 'EE273BF6F6CAF7686F8F22E7F9AAE06F1FE4BE57FB03899CD736521FFCA38AF76A3F8ED273E59F65FC73D71F7C55802A240040E0B4EFFCC60FFFE722B8242D68117BC9DA4C11F4259FDB9EED6FAF0DE094EFF3C05C1C9B9FA6E2FCCEB1E9FE76B2E1C807';
wwv_flow_imp.g_varchar2_table(148) := 'C195CF65AAB69BE2B0D62A7AD9EF622FBD2BDE9C7A2BF01A3BE09BFCD629DFDBC75AE7B71F17EFA1FA3390FCBD19E733A8EDA531C5E791BF87F8E74F3FFC5FE8F7472D12000072C5AF5F22CB165D9807C2AC6DDBBA1E8058D14AF266B41DACED009F5D6A';
wwv_flow_imp.g_varchar2_table(149) := 'D60EE4C5B2C2A6A808941281E2FCF9F98C15C4AD7315C747D67E6EE212D9AFE1DFB71E44F96F9A2DD5EB06DD22888BE417534A7F89BCAFDD14BF73DECF9F9EC7945ECBFA7DA5789F7632929E26FFFCEDCFD738FBBABF57FEB9C73F972CBE30FE5E970B50';
wwv_flow_imp.g_varchar2_table(150) := '87310000123AF8EDACEB97CBD69D3F4A1EE757FFB36AD3F9DC722B7A47CEA0BE62F47BDD2C007BBFAA734695BDF3F640C156FF79640DB433569DDD3E5FE5F4386B1FFFFCD5EF5BA4A6DD2D5553FCCA3300DCFDEC7DB3FBF6FBB58FB03FB324B1A83A67FA';
wwv_flow_imp.g_varchar2_table(151) := '51D9AF7BD41BDF24DFFBECED5CED0F6D510100909875E81BE47F7FEA8B322F0E1ED952C1C595FE248DBB56D03162852E2B105A6573B7F56E07C1F4E23FF940BF343067FB7995836C7E7C7685C2D636714AF5FE4572A2FC75B260694A5D09FE20C3FCF7CE';
wwv_flow_imp.g_varchar2_table(152) := '928CE219EBC77E8DA8A83E88B17E7777668378D5846C1FE7CA8CA6386F5ED9B00F709E37CE53F6AD2E9474E7D5C3047F8C8A0A000087CE0C387BF5F2642A9C2AB5952B46E79B0EEEB7EE6401BC08CBFE8C02BFAD6DDA9CD767D70CEA1E97DE53C56B55BD';
wwv_flow_imp.g_varchar2_table(153) := 'AEFDF6EBCE5BDA3FDB523133A1EA58FF3D48E9F5AD0448CA89861EA7C17FE8F885028C860A000087CE0CB873D570725B196CBDE02F5E3BD90E5E91B841D1F8A3EB4C39F8678571B75EE0056CABCAE035B46B037C54F79EBC63ACE106CEFE22523DCD4FCA';
wwv_flow_imp.g_varchar2_table(154) := '0D71B7AFBF48984CC5B1E21D2BD66B19EBC9EC7CF939EC3108E93E372EFB7D823F3A460200A0244902E296E43C5D30271D749757E7B352BD55A6CF02A73823E28B527D246ECBD9EE42487E8CB8C980754E3B00E7B77E14B6CE27F6B9FC7CC3DA5E757EE7';
wwv_flow_imp.g_varchar2_table(155) := 'DCD6BEF64047BB026F9FBFFEB5AD4185C6ED6A1029BF1FFB73882A9ECB3F376B1AA29EEF9A0F5C2E579CC7A03F748E2E0000B5928582E2EE801DBFF889B8EBCC575C1DC02B8F8BF57CD6FE8DAC967D5539DE58FF75AF2F20FEAB49555B3F0BDEF6EBFAC3';
wwv_flow_imp.g_varchar2_table(156) := 'EAECF71195CEEDFE6EF61922EF55EDF7517C3675FBB9E731DEF6AAC5828C77DEF2398AC592AEF9C00AB9E683ACF487B1A10200A0965602EE8ABB0374353927A019775D7E67709AB48253B9D4ED05D26CBA5E76BCD883EE22AF856F24AA28B6E7A3E2B3A6';
wwv_flow_imp.g_varchar2_table(157) := 'BD29CE2B52044AE74242466ADE5BF9623AC5767B9BB15EBFF86F569C37E2AFCB5FBCF7C8DACFF95D8CE447FBC58DFCF7CBF7357972600E12FC317E5400008C4A2B011F58F349D9BAE3E156707356FDA9BE746DF6D838C1B8E05FDAB66AF9DF3AC5E582AD';
wwv_flow_imp.g_varchar2_table(158) := '24C07B5DFFBD95DE8FF75EC5FFBDD2776DC4D4BE07FFF8FCB9F477EDE4B2BEFE6755B904B27F6CFA1E35F05FF3C115028C070900808E7DEAAB9F912F7CEBAB12D504C6A84DC06C3D5F2EB6D70658712F459CC6F3847D8EAAF38BB41FAC2732FA7BCDF669';
wwv_flow_imp.g_varchar2_table(159) := 'BD5E4DCB5C467F9DB1AAEA42C8C70014B98EFCE925BF1FF7F95F22C0789100001893EB6E5B2BAB6FBB29B99F0F568B8A009507C0FCB1BFE84DD1A36D2BBA06DC0D91B3479108B85D12EE899C73455E50F63AEAF373D9FBD6FC2ED9EF60CA1DF69591BBEA';
wwv_flow_imp.g_varchar2_table(160) := '73716E6B9E938ADF317BEEF0D71F26B7FECEE7E48253CE1660224800008CD996ED0F275D02C52572ADC09DF3DBDB45E82FCAE1522C1D6C6DF345D97FACFEFBD2B507641C55818AF71D59FF712EAB6BA43418AFDD793A79AE13F62BE9BAFE777D7A84F5FD';
wwv_flow_imp.g_varchar2_table(161) := '312918040860CC068F7A87DC1907A2E5434BA568951757B57307FD6565748B3506AE982B9F054AAFFF5B8AEB07D8E7B0C6FA9542B2FD8A7EE33C928A6A83B53D7F2D63AF1C681F5BFE8D8CF7CB45E9C6F27BAA527DE962FBFDA8C5C72F94EFFFC97A823F';
wwv_flow_imp.g_varchar2_table(162) := '260D15000013F2D5EFAC8BBB056E929D7135C019A4A6F2416D454B3F6B12176BF6BBFBD91582FC34D97FECC86D0DF4137B209D7D3E7B5FEB0451CD79ED57CDDE6B64BDC724FC47EEF3F66BB95D0DD69628F2AA0FE52A82D8C77BBF5FD2DFFFDE4B04984C';
wwv_flow_imp.g_varchar2_table(163) := '240000266CFBCF7F922401239BBE91B696EB3AC7EB8AF4226ECBDF5FE236B2DAF3C53159B9BE6AD64116AC8D15B8DBCD00A87B6DE7B9FCFCC57B76673A942F2A64FFCE55E7B6131FFB5DE8E3B7FECA5BE4B6955F94C1B7BE4380C946020060D224D580AF';
wwv_flow_imp.g_varchar2_table(164) := 'AF951DD9D800197DA47DC2CB13F2AB05A6DA4D0F2CCDDD37E25617DA045F918A7101525CA9D01FF85775B5C0D1F6AB7BCFA6E27DD9F7AFB978855CF1BE8F70511F740D09008049F785BFFD1FF285BF1B4E2A037E01C0099C926DB3CAF122529A8E2FC5F6';
wwv_flow_imp.g_varchar2_table(165) := '6C3F67F47E7A9EE235241F97E05F2CC75455DFCB8D75775E7EC5FBCD471A5803059D2E05B707406A1AF9CE63DDA47DFD5AF21F7CEBF1027413090080AED0E0AF89C0DA3811A888AF95EC11F39D8C9E9FE808FB4E8CF69EEBDEC768BF8B7F5E5D75F19ADF';
wwv_flow_imp.g_varchar2_table(166) := '5821CBDF7D910053810400405725E303BE7E930CC7DD03A5DE7E7B759F542B307ACD747B85BCD280BA6A75FBD48D422855166CC9DBA92A1D8C81B39251715F4BFC57BCEF9256B9FFD0370830554800004C094D0436DC7FA7FC795C15D8F1CB27AC12B9D3';
wwv_flow_imp.g_varchar2_table(167) := '89EEF2C60678C3F48B681DD50471A7F4E09F4CBC190AE9AE913712BF4AD579DD2900EEB1F6EF9ABE5812F8DFFF11023FA60D09008029F7D5FFB32EA9086C7AF07E6BABDF799E6D132975AA578CACF747E8E70B0C893D83A0FE78FBB92221489722B61EB7';
wwv_flow_imp.g_varchar2_table(168) := '7F6F523ABFBF5D47F45F32B45496FFBB8B08FC9856240000A64D6B9CC05793CA80AE2A5894FF555D104D6F226B2A9E3F923E5B1E50A4627FEB3CF97352A32EA8DBE7F4930CF778DD63E6EB67C8050BCF4982FED009A709D00B480000F4844D0FDE27EBE3';
wwv_flow_imp.g_varchar2_table(169) := '4460D3FFFBBFB275C78FCA57C66B138B4BFB5535C2BD6DCE0C01FF5C4EA251FD9AF6EB564D53D412BFB6F697BFE70372C1A967D3DA47CF210100D073B432A0DD031BEEDB280F6C7F385F574055C4E131A91C04D826908FE5BCF37EF52D49B01F3A61A10C';
wwv_flow_imp.g_varchar2_table(170) := 'FDDA69047DF4341200003D6FCB8F1F8A93829F2649815E88686BFCF8E9E7F6153BB42BE3D70D2D88EAF72D0614560F04D4C2BE96F5755DFEA15FFBB7494BFFDD71D01F881300A05F900000E84B9A14EC79765F9C106872F04472BB67FF3349B540B757B3';
wwv_flow_imp.g_varchar2_table(171) := '87FC5B81DD1FD7676D3FEA57DF2C036F7C7372AB8BF3CC8C5BF5047B340109008046DA117723EC79F6993C1948EE3FB7AFED31BA18CFAC430F4B4AF71AE829E1A3C94800000008D0AB040000048704000080009100000010201200000002440200004080';
wwv_flow_imp.g_varchar2_table(172) := '48000000081009000000012201000020402400000004880400008000910000001020120000000244020000408048000000081009000000012201000020402400000004880400008000910000001020120000000244020000408048000000081009000000';
wwv_flow_imp.g_varchar2_table(173) := '01220100002040240000000488040000800091000000102012000000024402000040804800000008100900000001220100002040240000000488040000800091000000102012000000024402000040804800000008100900000001220100002040240000';
wwv_flow_imp.g_varchar2_table(174) := '00048804000080009100000010201200000002440200004080480000000810090000000122010000204024000000048804000080009100000010201200000002440200004080480000000810090000000122010000204024000000048804000080009100';
wwv_flow_imp.g_varchar2_table(175) := '00001020120000000244020000408048000000081009000000012201000020402400000004880400008000910000001020120000000244020000408048000000081009000000012201000020402400000004880400008000910000001020120000000244';
wwv_flow_imp.g_varchar2_table(176) := '02000040804800000008100900000001220100002040240000000488040000800091000000102012000000024402000040804800000008100900000001220100002040240000000488040000800091000000102012000000024402000040804800000008';
wwv_flow_imp.g_varchar2_table(177) := '100900000001220100002040FF1FDC14DE506B5B75920000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(16199432488093615239)
,p_file_name=>'icons/app-icon-512.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/plugin_settings
begin
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(16199423687927615227)
,p_plugin_type=>'DYNAMIC ACTION'
,p_plugin=>'NATIVE_OPEN_AI_ASSISTANT'
,p_version_scn=>15601393518983
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(16199423953138615228)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'mode', 'FULL')).to_clob
,p_version_scn=>15601393519000
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(16199424287765615228)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_DATE_PICKER_APEX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'show_on', 'FOCUS',
  'time_increment', '15')).to_clob
,p_version_scn=>15601393519005
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(16199424573106615228)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_GEOCODED_ADDRESS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'background', 'default',
  'display_as', 'LIST',
  'map_preview', 'POPUP:ITEM',
  'match_mode', 'RELAX_HOUSE_NUMBER',
  'show_coordinates', 'N')).to_clob
,p_version_scn=>15601393519007
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(16199424899735615229)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SELECT_MANY'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_values_as', 'separated')).to_clob
,p_version_scn=>15601393519009
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(16199425181079615229)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SINGLE_CHECKBOX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', 'Y',
  'unchecked_value', 'N')).to_clob
,p_version_scn=>15601393519009
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(16199425482864615229)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_STAR_RATING'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'default_icon', 'fa-star',
  'tooltip', '#VALUE#')).to_clob
,p_version_scn=>15601393519010
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(16199425796671615229)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_style', 'SWITCH_CB',
  'off_value', 'N',
  'on_value', 'Y')).to_clob
,p_version_scn=>15601393519015
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(16199426143889615229)
,p_plugin_type=>'PROCESS TYPE'
,p_plugin=>'NATIVE_GEOCODING'
,p_attribute_01=>'RELAX_HOUSE_NUMBER'
,p_version_scn=>15601393519015
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(16199426441288615230)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'include_slider', 'Y')).to_clob
,p_version_scn=>15601393519018
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(16199426721302615230)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'actions_menu_structure', 'IG')).to_clob
,p_version_scn=>15601393519019
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(16199427007244615230)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_MAP_REGION'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_vector_tile_layers', 'Y')).to_clob
,p_version_scn=>15601393519019
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(16199427286130615230)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_ADFBC'
,p_version_scn=>15601393519019
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(16199427635420615230)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_BOSS'
,p_version_scn=>15601393519019
);
end;
/
prompt --application/shared_components/security/authorizations/menu_authorization
begin
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(14371552832635043722)
,p_name=>'Menu Authorization'
,p_scheme_type=>'NATIVE_FUNCTION_BODY'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'return aut_authorisation.has_user_privilege(    p_username   => :APP_USER',
'                                            ,   p_component  =>:APP_COMPONENT_NAME',
'                                            );'))
,p_error_message=>'Insufficient privileges, user is not an Administrator'
,p_version_scn=>15608077785476
,p_caching=>'NOCACHE'
);
end;
/
prompt --application/shared_components/security/authorizations/administration_rights
begin
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(16199433815827615241)
,p_name=>'Administration Rights'
,p_scheme_type=>'NATIVE_FUNCTION_BODY'
,p_attribute_01=>'return true;'
,p_error_message=>'Insufficient privileges, user is not an Administrator'
,p_version_scn=>15601393519152
,p_caching=>'BY_USER_BY_PAGE_VIEW'
);
end;
/
prompt --application/shared_components/security/authorizations/page_authorization
begin
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(18555875673040645084)
,p_name=>'Page Authorization'
,p_scheme_type=>'NATIVE_FUNCTION_BODY'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'return aut_authorisation.has_user_privilege(  p_username  => :APP_USER',
'                                            , p_page      => :APP_PAGE_ID',
'                                            );'))
,p_error_message=>'Insufficient privileges, user is not an Administrator'
,p_version_scn=>15603280335480
,p_caching=>'NOCACHE'
);
end;
/
prompt --application/shared_components/security/authorizations/component_authorization
begin
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(21254003160599776766)
,p_name=>'Component Authorization'
,p_scheme_type=>'NATIVE_FUNCTION_BODY'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'return aut_authorisation.has_user_privilege(p_username => :APP_USER',
'                                           ,p_page     => :APP_PAGE_ID',
'                                           ,p_component => :APP_COMPONENT_NAME',
'                                           );'))
,p_error_message=>'Insufficient privileges, user is not an Administrator'
,p_version_scn=>15608074142604
,p_caching=>'NOCACHE'
);
end;
/
prompt --application/shared_components/navigation/navigation_bar
begin
null;
end;
/
prompt --application/shared_components/logic/application_settings
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/standard
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/parent
begin
null;
end;
/
prompt --application/shared_components/user_interface/lovs/adressperuser
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(21886378044615131732)
,p_lov_name=>'ADRESSPERUSER'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT *',
'FROM GGS_ADRES ',
'WHERE GEBRUIKER_ID = (SELECT ID FROM GGS_GEBRUIKER WHERE UPPER(USERNAME) = UPPER(:APP_USER))',
''))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'WOONWIJK_ID'
,p_display_column_name=>'NAAM'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
,p_version_scn=>15605410955107
);
end;
/
prompt --application/shared_components/user_interface/lovs/adressperuseraddres
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(12466445098842695387)
,p_lov_name=>'ADRESSPERUSERADDRES'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT *',
'FROM GGS_ADRES ',
'WHERE GEBRUIKER_ID = (SELECT ID FROM GGS_GEBRUIKER WHERE UPPER(USERNAME) = UPPER(:APP_USER))'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'ID'
,p_display_column_name=>'NAAM'
,p_default_sort_column_name=>'NAAM'
,p_default_sort_direction=>'ASC'
,p_version_scn=>15606719536670
);
end;
/
prompt --application/shared_components/user_interface/lovs/bestellingstatus
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(20200830729000861977)
,p_lov_name=>'BESTELLINGSTATUS'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'GGS_BESTELLINGSTATUS'
,p_return_column_name=>'ID'
,p_display_column_name=>'NAAM'
,p_default_sort_column_name=>'NAAM'
,p_default_sort_direction=>'ASC'
,p_version_scn=>15603998917018
);
end;
/
prompt --application/shared_components/user_interface/lovs/categorie
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(17737586788272773881)
,p_lov_name=>'CATEGORIE'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'GGS_CATEGORIEEN'
,p_return_column_name=>'ID'
,p_display_column_name=>'NAAM'
,p_default_sort_column_name=>'NAAM'
,p_default_sort_direction=>'ASC'
,p_version_scn=>15602204558624
);
end;
/
prompt --application/shared_components/user_interface/lovs/gebruikerfullname
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(15410852511742696411)
,p_lov_name=>'GEBRUIKERFULLNAME'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    id, ',
'    naam || '' '' || familynaam AS full_name ',
'FROM ',
'    GGS_GEBRUIKER;',
''))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'ID'
,p_display_column_name=>'FULL_NAME'
,p_default_sort_column_name=>'FULL_NAME'
,p_default_sort_direction=>'ASC'
,p_version_scn=>15608761115332
);
end;
/
prompt --application/shared_components/user_interface/lovs/ggs_adres_adres
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(17499481790548697396)
,p_lov_name=>'GGS_ADRES.ADRES'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'GGS_ADRES'
,p_return_column_name=>'ID'
,p_display_column_name=>'ADRES'
,p_default_sort_column_name=>'ADRES'
,p_default_sort_direction=>'ASC'
,p_version_scn=>15602080893301
);
end;
/
prompt --application/shared_components/user_interface/lovs/ggs_aut_aut_privileges_name
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(18552819279047522003)
,p_lov_name=>'GGS_AUT_AUT_PRIVILEGES.NAME'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'GGS_AUT_AUT_PRIVILEGES'
,p_return_column_name=>'ID'
,p_display_column_name=>'NAME'
,p_default_sort_column_name=>'NAME'
,p_default_sort_direction=>'ASC'
,p_version_scn=>15602783616084
);
end;
/
prompt --application/shared_components/user_interface/lovs/ggs_betaling_status_naam
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(22217898757881392861)
,p_lov_name=>'GGS_BETALING_STATUS.NAAM'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'GGS_BETALING_STATUS'
,p_return_column_name=>'ID'
,p_display_column_name=>'NAAM'
,p_default_sort_column_name=>'NAAM'
,p_default_sort_direction=>'ASC'
,p_version_scn=>15605418108337
);
end;
/
prompt --application/shared_components/user_interface/lovs/ggs_betallingtype_naam
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(22217897685155392860)
,p_lov_name=>'GGS_BETALLINGTYPE.NAAM'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'GGS_BETALLINGTYPE'
,p_return_column_name=>'ID'
,p_display_column_name=>'NAAM'
,p_default_sort_column_name=>'NAAM'
,p_default_sort_direction=>'ASC'
,p_version_scn=>15605418108333
);
end;
/
prompt --application/shared_components/user_interface/lovs/ggs_categorieen_naam
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(17734671664537996761)
,p_lov_name=>'GGS_CATEGORIEEN.NAAM'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'GGS_CATEGORIEEN'
,p_return_column_name=>'ID'
,p_display_column_name=>'NAAM'
,p_default_sort_column_name=>'NAAM'
,p_default_sort_direction=>'ASC'
,p_version_scn=>15602203312530
);
end;
/
prompt --application/shared_components/user_interface/lovs/ggs_gebruiker_naam
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(20166743756792828043)
,p_lov_name=>'GGS_GEBRUIKER.NAAM'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'GGS_GEBRUIKER'
,p_return_column_name=>'ID'
,p_display_column_name=>'NAAM'
,p_default_sort_column_name=>'NAAM'
,p_default_sort_direction=>'ASC'
,p_version_scn=>15603956060175
);
end;
/
prompt --application/shared_components/user_interface/lovs/ggs_producten_naam
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(20176114325541594260)
,p_lov_name=>'GGS_PRODUCTEN.NAAM'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'GGS_PRODUCTEN'
,p_return_column_name=>'ID'
,p_display_column_name=>'NAAM'
,p_default_sort_column_name=>'NAAM'
,p_default_sort_direction=>'ASC'
,p_version_scn=>15603965876839
);
end;
/
prompt --application/shared_components/user_interface/lovs/ggs_rollen_naam
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(17499480381851697394)
,p_lov_name=>'GGS_ROLLEN.NAAM'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'GGS_ROLLEN'
,p_return_column_name=>'ID'
,p_display_column_name=>'NAAM'
,p_default_sort_column_name=>'NAAM'
,p_default_sort_direction=>'ASC'
,p_version_scn=>15602080893295
);
end;
/
prompt --application/shared_components/user_interface/lovs/ggs_route_naam
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(18538427204798083579)
,p_lov_name=>'GGS_ROUTE.NAAM'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'GGS_ROUTE'
,p_return_column_name=>'ID'
,p_display_column_name=>'NAAM'
,p_default_sort_column_name=>'NAAM'
,p_default_sort_direction=>'ASC'
,p_version_scn=>15602773023391
);
end;
/
prompt --application/shared_components/user_interface/lovs/ggs_seizoen_naam
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(20176114971905594261)
,p_lov_name=>'GGS_SEIZOEN.NAAM'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'GGS_SEIZOEN'
,p_return_column_name=>'ID'
,p_display_column_name=>'NAAM'
,p_default_sort_column_name=>'NAAM'
,p_default_sort_direction=>'ASC'
,p_version_scn=>15603965876841
);
end;
/
prompt --application/shared_components/user_interface/lovs/ggs_status_naam
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(17499481057133697395)
,p_lov_name=>'GGS_STATUS.NAAM'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'GGS_STATUS'
,p_return_column_name=>'ID'
,p_display_column_name=>'NAAM'
,p_default_sort_column_name=>'NAAM'
,p_default_sort_direction=>'ASC'
,p_version_scn=>15602080893296
);
end;
/
prompt --application/shared_components/user_interface/lovs/ggs_woonwijk_naam
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(18538427407546083579)
,p_lov_name=>'GGS_WOONWIJK.NAAM'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'GGS_WOONWIJK'
,p_return_column_name=>'ID'
,p_display_column_name=>'NAAM'
,p_default_sort_column_name=>'NAAM'
,p_default_sort_direction=>'ASC'
,p_version_scn=>15602773023430
);
end;
/
prompt --application/shared_components/user_interface/lovs/gss_adress_new
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(12220865973168405924)
,p_lov_name=>'GSS_ADRESS_NEW'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT a.id AS return_value, ',
'       a.adres || '' '' || a.huisnummer AS display_value',
'FROM GGS_ADRES a;',
''))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'RETURN_VALUE'
,p_display_column_name=>'DISPLAY_VALUE'
,p_default_sort_column_name=>'DISPLAY_VALUE'
,p_default_sort_direction=>'ASC'
,p_version_scn=>15606580509520
);
end;
/
prompt --application/shared_components/user_interface/lovs/naamaddressen
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(21907513320813019681)
,p_lov_name=>'NAAMADDRESSEN'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'GGS_ADRES'
,p_return_column_name=>'ID'
,p_display_column_name=>'NAAM'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'NAAM'
,p_default_sort_direction=>'ASC'
,p_version_scn=>15605243402441
);
end;
/
prompt --application/shared_components/user_interface/lovs/producten
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(13440056908204852195)
,p_lov_name=>'PRODUCTEN'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'GGS_PRODUCTEN'
,p_return_column_name=>'ID'
,p_display_column_name=>'NAAM'
,p_default_sort_column_name=>'NAAM'
,p_default_sort_direction=>'ASC'
,p_version_scn=>15607358285518
);
end;
/
prompt --application/shared_components/user_interface/lovs/products
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(20170954910139062949)
,p_lov_name=>'PRODUCTS'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT naam, id FROM GGS_PRODUCTEN ORDER BY naam;',
''))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'ID'
,p_display_column_name=>'NAAM'
,p_version_scn=>15603960181641
);
end;
/
prompt --application/shared_components/user_interface/lovs/routeperwijk
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(12220432060009367384)
,p_lov_name=>'ROUTEPERWIJK'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT r.id AS route_id, r.naam AS route_name',
'FROM GGS_ROUTE r',
'JOIN GGS_WOONWIJK_ROUTE wr ON r.id = wr.route_id',
'WHERE wr.wijk_id = (',
'    SELECT a.woonwijk_id',
'    FROM GGS_ADRES a',
'    WHERE a.id = :P48_ADRES_ID',
');',
''))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'ROUTE_ID'
,p_display_column_name=>'ROUTE_NAME'
,p_default_sort_column_name=>'ROUTE_NAME'
,p_default_sort_direction=>'ASC'
,p_version_scn=>15606580041804
);
end;
/
prompt --application/shared_components/user_interface/lovs/seasons
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(20170604522960336689)
,p_lov_name=>'SEASONS'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT naam, id FROM GGS_SEIZOEN ORDER BY naam;',
''))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'ID'
,p_display_column_name=>'NAAM'
,p_version_scn=>15603960545674
);
end;
/
prompt --application/shared_components/user_interface/lovs/tst
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(22209750616366840262)
,p_lov_name=>'TST'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'GGS_ADRES'
,p_return_column_name=>'WOONWIJK_ID'
,p_display_column_name=>'ADRES'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'ADRES'
,p_default_sort_direction=>'ASC'
,p_version_scn=>15605411073306
);
end;
/
prompt --application/shared_components/user_interface/lovs/wijken_lov
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(17503383740077893506)
,p_lov_name=>'WIJKEN_LOV'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT naam, id',
'FROM GGS_WOONWIJK',
'WHERE status_id = 1  ',
'ORDER BY naam;',
''))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'ID'
,p_display_column_name=>'NAAM'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
,p_version_scn=>15602084455643
);
end;
/
prompt --application/shared_components/user_interface/lovs/yon
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(19850817694279867780)
,p_lov_name=>'YON'
,p_lov_query=>'.'||wwv_flow_imp.id(19850817694279867780)||'.'
,p_location=>'STATIC'
,p_version_scn=>15603741994425
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(19850817963002867782)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Yes'
,p_lov_return_value=>'Y'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(19850818361095867782)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'No'
,p_lov_return_value=>'N'
);
end;
/
prompt --application/pages/page_groups
begin
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(16199434143031615242)
,p_group_name=>'Administration'
);
end;
/
prompt --application/comments
begin
null;
end;
/
prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
wwv_flow_imp_shared.create_menu(
 p_id=>wwv_flow_imp.id(16199428455127615231)
,p_name=>'Breadcrumb'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(12220387061675647061)
,p_short_name=>'Bestellingen Processen'
,p_link=>'f?p=&APP_ID.:52:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>52
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(12222090532075756347)
,p_short_name=>'Verzonden bestellingen'
,p_link=>'f?p=&APP_ID.:56:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>56
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(12223357150964593251)
,p_short_name=>'Geleverd bestellingen'
,p_link=>'f?p=&APP_ID.:60:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>60
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(12223622698947895750)
,p_short_name=>'Bestelling geschiedenis'
,p_link=>'f?p=&APP_ID.:64:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>64
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(12893763145800232995)
,p_short_name=>'Bestelling rapport'
,p_link=>'f?p=&APP_ID.:58:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>58
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(12923329651505528884)
,p_short_name=>'Omzet rapport'
,p_link=>'f?p=&APP_ID.:67:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>67
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(12931166160877714264)
,p_short_name=>'Rapporten'
,p_link=>'f?p=&APP_ID.:69:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>69
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(12932575287375781271)
,p_short_name=>'testie'
,p_link=>'f?p=&APP_ID.:70:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>70
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(12936138381943896320)
,p_short_name=>'Dashboard'
,p_link=>'f?p=&APP_ID.:72:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>72
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(13045110578141352752)
,p_short_name=>'TWO-FACTOR-AUTH'
,p_link=>'f?p=&APP_ID.:74:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>74
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(13503675603498367130)
,p_short_name=>'Auth Beheer'
,p_link=>'f?p=&APP_ID.:23:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>23
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(13506143601799527545)
,p_short_name=>'Waardebon beheer'
,p_link=>'f?p=&APP_ID.:37:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>37
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(13511414654961859097)
,p_short_name=>'Views'
,p_link=>'f?p=&APP_ID.:39:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>39
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(13512972390225948465)
,p_short_name=>'Catalog'
,p_link=>'f?p=&APP_ID.:46:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>46
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(14363142807258807823)
,p_short_name=>'Tracker'
,p_link=>'f?p=&APP_ID.:53:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>53
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(15689133946988016100)
,p_parent_id=>wwv_flow_imp.id(13511414654961859097)
,p_short_name=>'Meest verkochte producten'
,p_link=>'f?p=&APP_ID.:61:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>61
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(16199428735241615231)
,p_short_name=>'Home'
,p_link=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(17499477997677697261)
,p_short_name=>'Sign-up'
,p_link=>'f?p=&APP_ID.:2:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>2
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(17517982428121900198)
,p_short_name=>'Gebruikers'
,p_link=>'f?p=&APP_ID.:3:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>3
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(17519826570335620407)
,p_short_name=>'admin_reg'
,p_link=>'f?p=&APP_ID.:5:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>5
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(17745774986047919260)
,p_short_name=>'testingprodctimae'
,p_link=>'f?p=&APP_ID.:13:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>13
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(17820780822165239551)
,p_short_name=>'ReportViewProduct'
,p_link=>'f?p=&APP_ID.:34:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>34
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(17822750667957599435)
,p_short_name=>'BewerkProduct'
,p_link=>'f?p=&APP_ID.:36:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>36
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(18417874688909789406)
,p_short_name=>'Persoonlijke informatie'
,p_link=>'f?p=&APP_ID.:9:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>9
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(18418255289058152820)
,p_short_name=>'Persoonlijke informatie bewerken'
,p_link=>'f?p=&APP_ID.:11:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>11
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(18529797379094625687)
,p_short_name=>'Routes Bezichten'
,p_link=>'f?p=&APP_ID.:18:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>18
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(18533114099624969886)
,p_short_name=>'Wijken'
,p_link=>'f?p=&APP_ID.:20:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>20
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(18538887993907784171)
,p_short_name=>'Delivery Routes'
,p_link=>'f?p=&APP_ID.:26:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>26
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(18551772008605492135)
,p_short_name=>'ROLLEN'
,p_link=>'f?p=&APP_ID.:28:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>28
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(18552807255164521989)
,p_short_name=>'Rollen_Privileges'
,p_link=>'f?p=&APP_ID.:32:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>32
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(19849999972103820252)
,p_short_name=>'AuthPriv'
,p_link=>'f?p=&APP_ID.:6:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>6
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(19851136218603894116)
,p_short_name=>'RollenPrivilegesView'
,p_link=>'f?p=&APP_ID.:10:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>10
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(19888137637749297925)
,p_short_name=>'AddDeliveryRoute'
,p_link=>'f?p=&APP_ID.:14:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>14
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(20166768780499828067)
,p_short_name=>'User Roles Assignment'
,p_link=>'f?p=&APP_ID.:17:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>17
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(20170384130461039374)
,p_short_name=>'ProductBloeiSeizoen'
,p_link=>'f?p=&APP_ID.:25:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>25
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(20198932932193466041)
,p_short_name=>'KlantenView'
,p_link=>'f?p=&APP_ID.:31:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>31
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(20199505875317772341)
,p_short_name=>'VoorraadView'
,p_link=>'f?p=&APP_ID.:35:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>35
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(20200527194863819656)
,p_short_name=>'PromoCode'
,p_link=>'f?p=&APP_ID.:40:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>40
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(20462691314003786165)
,p_short_name=>'catalog'
,p_link=>'f?p=&APP_ID.:42:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>42
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(20952672736483875085)
,p_short_name=>'ProcessToAddToCart'
,p_link=>'f?p=&APP_ID.:33:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>33
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(20972090533745706003)
,p_short_name=>'maandje'
,p_link=>'f?p=&APP_ID.:49:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>49
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(21278531432770089946)
,p_short_name=>'Auditlog'
,p_link=>'f?p=&APP_ID.:44:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>44
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(21878637517332556060)
,p_short_name=>'CheckUit'
,p_link=>'f?p=&APP_ID.:45:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>45
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(21881729245502642721)
,p_short_name=>'AddresBoek'
,p_link=>'f?p=&APP_ID.:54:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>54
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(22217890313796392851)
,p_short_name=>'BetalingBeheer'
,p_link=>'f?p=&APP_ID.:47:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>47
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(22221613261177576852)
,p_short_name=>'Discount'
,p_link=>'f?p=&APP_ID.:62:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>62
);
end;
/
prompt --application/shared_components/navigation/breadcrumbentry
begin
null;
end;
/
prompt --application/shared_components/user_interface/templates/popuplov
begin
null;
end;
/
prompt --application/shared_components/user_interface/themes
begin
wwv_flow_imp_shared.create_theme(
 p_id=>wwv_flow_imp.id(16199429434691615232)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_version_identifier=>'24.2'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4072363937200175119
,p_is_locked=>false
,p_current_theme_style_id=>wwv_flow_imp.id(19852557420479987094)
,p_default_page_template=>4072355960268175073
,p_default_dialog_template=>2100407606326202693
,p_error_template=>2101157952850466385
,p_printer_friendly_template=>4072355960268175073
,p_login_template=>2101157952850466385
,p_default_button_template=>4072362960822175091
,p_default_region_template=>4072358936313175081
,p_default_chart_template=>4072358936313175081
,p_default_form_template=>4072358936313175081
,p_default_reportr_template=>4072358936313175081
,p_default_tabform_template=>4072358936313175081
,p_default_wizard_template=>4072358936313175081
,p_default_menur_template=>2531463326621247859
,p_default_listr_template=>4072358936313175081
,p_default_irr_template=>2100526641005906379
,p_default_report_template=>2538654340625403440
,p_default_label_template=>1609121967514267634
,p_default_menu_template=>4072363345357175094
,p_default_calendar_template=>4072363550766175095
,p_default_list_template=>4072361143931175087
,p_default_nav_list_template=>2526754704087354841
,p_default_top_nav_list_temp=>2526754704087354841
,p_default_side_nav_list_temp=>2467739217141810545
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>2126429139436695430
,p_default_dialogr_template=>4501440665235496320
,p_default_option_label=>1609121967514267634
,p_default_required_label=>1609122147107268652
,p_default_navbar_list_template=>2847543055748234966
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#APEX_FILES#themes/theme_42/24.2/')
,p_files_version=>65
,p_icon_library=>'FONTAPEX'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APEX_FILES#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#THEME_FILES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_FILES#css/Core#MIN#.css?v=#APEX_VERSION#'
);
end;
/
prompt --application/shared_components/user_interface/theme_style
begin
wwv_flow_imp_shared.create_theme_style(
 p_id=>wwv_flow_imp.id(19852557420479987094)
,p_theme_id=>42
,p_name=>'Vita (copy_1)'
,p_is_public=>true
,p_is_accessible=>true
,p_theme_roller_input_file_urls=>'#THEME_FILES#less/theme/Vita.less'
,p_theme_roller_config=>'{"classes":[],"vars":{"@g_Accent-BG":"#059a0c"},"customCSS":"","useCustomLess":"N"}'
,p_theme_roller_output_file_url=>'#THEME_DB_FILES#8448498771758589355.css'
,p_theme_roller_read_only=>false
);
end;
/
prompt --application/shared_components/user_interface/theme_files
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '2F2A210D0A20436F707972696768742028632920323031342C20323032332C204F7261636C6520616E642F6F722069747320616666696C69617465732E0D0A202A2F0D0A3A726F6F74207B0D0A20202D2D612D626173652D666F6E742D7765696768742D';
wwv_flow_imp.g_varchar2_table(2) := '73656D69626F6C643A203630303B0D0A20202D2D612D69636F6E2D73697A653A203172656D3B0D0A20202D2D612D627574746F6E2D626F726465722D7261646975733A20302E31323572656D3B0D0A20202D2D612D627574746F6E2D70616464696E672D';
wwv_flow_imp.g_varchar2_table(3) := '793A20302E3572656D3B0D0A20202D2D612D627574746F6E2D70616464696E672D783A20302E373572656D3B0D0A20202D2D612D627574746F6E2D666F6E742D73697A653A20302E373572656D3B0D0A20202D2D612D627574746F6E2D6C696E652D6865';
wwv_flow_imp.g_varchar2_table(4) := '696768743A203172656D3B0D0A20202D2D612D627574746F6E2D6761702D783A20302E323572656D3B0D0A20202D2D612D627574746F6E2D69636F6E2D73706163696E673A20302E33373572656D3B0D0A20202D2D612D627574746F6E2D69636F6E2D73';
wwv_flow_imp.g_varchar2_table(5) := '697A653A203172656D3B0D0A20202D2D612D63762D677269642D6761703A203172656D3B0D0A20202D2D612D63762D6974656D2D77696474683A20323072656D3B0D0A20202D2D612D63762D626F726465722D7261646975733A20302E323572656D3B0D';
wwv_flow_imp.g_varchar2_table(6) := '0A20202D2D612D63762D736861646F773A20766172282D2D75742D736861646F772D736D293B0D0A20202D2D612D63762D6865616465722D70616464696E672D793A203172656D3B0D0A20202D2D612D63762D6865616465722D70616464696E672D783A';
wwv_flow_imp.g_varchar2_table(7) := '203172656D3B0D0A20202D2D612D63762D6865616465722D6974656D2D73706163696E672D783A20302E373572656D3B0D0A20202D2D612D63762D69636F6E2D73697A653A203172656D3B0D0A20202D2D612D63762D69636F6E2D636F6E7461696E6572';
wwv_flow_imp.g_varchar2_table(8) := '2D73697A653A203272656D3B0D0A20202D2D612D63762D69636F6E2D70616464696E673A20302E3572656D3B0D0A20202D2D612D63762D69636F6E2D7370616365723A2063616C6328766172282D2D612D63762D69636F6E2D636F6E7461696E65722D73';
wwv_flow_imp.g_varchar2_table(9) := '697A652C203172656D29202B20766172282D2D612D63762D6865616465722D6974656D2D73706163696E672D782C20302E373572656D29293B0D0A20202D2D612D63762D696E697469616C732D73697A653A203272656D3B0D0A20202D2D612D63762D69';
wwv_flow_imp.g_varchar2_table(10) := '6E697469616C732D666F6E742D73697A653A20302E38373572656D3B0D0A20202D2D612D63762D7469746C652D666F6E742D73697A653A203172656D3B0D0A20202D2D612D63762D7469746C652D6C696E652D6865696768743A20312E323572656D3B0D';
wwv_flow_imp.g_varchar2_table(11) := '0A20202D2D612D63762D7375627469746C652D666F6E742D73697A653A20302E373572656D3B0D0A20202D2D612D63762D7375627469746C652D6C696E652D6865696768743A203172656D3B0D0A20202D2D612D63762D62616467652D666F6E742D7369';
wwv_flow_imp.g_varchar2_table(12) := '7A653A20302E373572656D3B0D0A20202D2D612D63762D62616467652D6261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E31293B0D0A20202D2D612D63762D626F64792D70616464696E672D783A203172656D3B0D0A';
wwv_flow_imp.g_varchar2_table(13) := '20202D2D612D63762D626F64792D70616464696E672D793A203172656D3B0D0A20202D2D612D63762D6D61696E636F6E74656E742D666F6E742D73697A653A20302E38373572656D3B0D0A20202D2D612D63762D6D61696E636F6E74656E742D6C696E65';
wwv_flow_imp.g_varchar2_table(14) := '2D6865696768743A20312E323572656D3B0D0A20202D2D612D63762D737562636F6E74656E742D666F6E742D73697A653A20302E3638373572656D3B0D0A20202D2D612D63762D737562636F6E74656E742D6C696E652D6865696768743A203172656D3B';
wwv_flow_imp.g_varchar2_table(15) := '0D0A20202D2D612D63762D616374696F6E732D70616464696E672D793A203172656D3B0D0A20202D2D612D63762D616374696F6E732D70616464696E672D783A203172656D3B0D0A20202D2D612D636865636B626F782D73697A653A203172656D3B0D0A';
wwv_flow_imp.g_varchar2_table(16) := '20202D2D612D636865636B626F782D6C6162656C2D666F6E742D73697A653A20302E373572656D3B0D0A20202D2D612D636865636B626F782D626F726465722D7261646975733A20302E31323572656D3B0D0A20202D2D612D636865636B626F782D6963';
wwv_flow_imp.g_varchar2_table(17) := '6F6E2D73697A653A20302E373572656D3B0D0A20202D2D612D636865636B626F782D696E64657465726D696E6174652D77696474683A20302E36323572656D3B0D0A20202D2D612D636865636B626F782D696E64657465726D696E6174652D6865696768';
wwv_flow_imp.g_varchar2_table(18) := '743A20302E31323572656D3B0D0A20202D2D612D636865636B626F782D6C6162656C2D73706163696E672D793A20302E31323572656D3B0D0A20202D2D612D636865636B626F782D6C6162656C2D73706163696E672D783A20302E33373572656D3B0D0A';
wwv_flow_imp.g_varchar2_table(19) := '20202D2D612D636F6D626F2D626F782D70616464696E672D793A20302E323572656D3B0D0A20202D2D612D636F6D626F2D626F782D70616464696E672D783A20302E3572656D3B0D0A20202D2D612D636F6D626F626F782D636869702D6C696E652D6865';
wwv_flow_imp.g_varchar2_table(20) := '696768743A20302E373572656D3B0D0A20202D2D612D6465762D746F6F6C6261722D6261636B67726F756E642D636F6C6F723A20233636363B0D0A20202D2D612D6465762D746F6F6C6261722D6261636B64726F702D66696C7465723A206E6F6E653B0D';
wwv_flow_imp.g_varchar2_table(21) := '0A20202D2D612D646174657069636B65722D6261636B67726F756E642D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D746F6F6C6261722D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D612D646174657069636B65722D';
wwv_flow_imp.g_varchar2_table(22) := '626F726465722D7261646975733A20766172282D2D75742D626F726465722D726164697573293B0D0A20202D2D612D646174657069636B65722D6865616465722D6261636B67726F756E642D636F6C6F723A20236639663966393B0D0A20202D2D612D64';
wwv_flow_imp.g_varchar2_table(23) := '6174657069636B65722D6865616465722D626F726465722D636F6C6F723A207472616E73706172656E743B0D0A20202D2D612D646174657069636B65722D6D6F6E74687069636B65722D73656C6563742D6261636B67726F756E642D636F6C6F723A2074';
wwv_flow_imp.g_varchar2_table(24) := '72616E73706172656E743B0D0A20202D2D612D646174657069636B65722D6D6F6E74687069636B65722D73656C6563742D626F726465722D636F6C6F723A207472616E73706172656E743B0D0A20202D2D612D646174657069636B65722D6D6F6E746870';
wwv_flow_imp.g_varchar2_table(25) := '69636B65722D73656C6563742D666F6E742D73697A653A203172656D3B0D0A20202D2D612D646174657069636B65722D6D6F6E74687069636B65722D73656C6563742D666F6E742D7765696768743A20766172282D2D612D626173652D666F6E742D7765';
wwv_flow_imp.g_varchar2_table(26) := '696768742D73656D69626F6C642C20353030293B0D0A20202D2D612D646174657069636B65722D63616C656E646172732D73706163696E673A203070783B0D0A20202D2D612D646174657069636B65722D63616C656E6461722D6261636B67726F756E64';
wwv_flow_imp.g_varchar2_table(27) := '2D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D612D646174657069636B65722D63616C656E6461722D7469746C652D70616464696E672D783A20302E3572656D3B0D0A20';
wwv_flow_imp.g_varchar2_table(28) := '202D2D612D646174657069636B65722D63616C656E6461722D7469746C652D70616464696E672D793A20302E3572656D3B0D0A20202D2D612D646174657069636B65722D63616C656E6461722D7469746C652D6261636B67726F756E642D636F6C6F723A';
wwv_flow_imp.g_varchar2_table(29) := '20236639663966393B0D0A20202D2D612D646174657069636B65722D63616C656E6461722D6865616465722D70616464696E672D783A20766172282D2D612D646174657069636B65722D63616C656E6461722D6461792D73706163696E67293B0D0A2020';
wwv_flow_imp.g_varchar2_table(30) := '2D2D612D646174657069636B65722D63616C656E6461722D6865616465722D6261636B67726F756E642D636F6C6F723A20236639663966393B0D0A20202D2D612D646174657069636B65722D63616C656E6461722D6865616465722D746578742D636F6C';
wwv_flow_imp.g_varchar2_table(31) := '6F723A20766172282D2D75742D636F6D706F6E656E742D746578742D6D757465642D636F6C6F72293B0D0A20202D2D612D646174657069636B65722D63616C656E6461722D6461792D73706163696E673A20302E3572656D3B0D0A20202D2D612D646174';
wwv_flow_imp.g_varchar2_table(32) := '657069636B65722D63616C656E6461722D6461792D666F6E742D73697A653A20302E38373572656D3B0D0A20202D2D612D646174657069636B65722D63616C656E6461722D6461792D626F726465722D77696474683A203170783B0D0A20202D2D612D64';
wwv_flow_imp.g_varchar2_table(33) := '6174657069636B65722D63616C656E6461722D6461792D626F726465722D7261646975733A203530253B0D0A20202D2D612D646174657069636B65722D63616C656E6461722D6461792D686F7665722D6261636B67726F756E642D636F6C6F723A207661';
wwv_flow_imp.g_varchar2_table(34) := '72282D2D75742D636F6D706F6E656E742D626F726465722D636F6C6F72293B0D0A20202D2D612D646174657069636B65722D63616C656E6461722D6461792D73656C65637465642D6261636B67726F756E642D636F6C6F723A20766172282D2D612D7061';
wwv_flow_imp.g_varchar2_table(35) := '6C657474652D7072696D617279293B0D0A20202D2D612D646174657069636B65722D63616C656E6461722D6461792D73656C65637465642D746578742D636F6C6F723A20766172282D2D612D70616C657474652D7072696D6172792D636F6E7472617374';
wwv_flow_imp.g_varchar2_table(36) := '293B0D0A20202D2D612D646174657069636B65722D63616C656E6461722D6461792D73656C65637465642D626F726465722D636F6C6F723A20766172282D2D612D70616C657474652D7072696D617279293B0D0A20202D2D612D646174657069636B6572';
wwv_flow_imp.g_varchar2_table(37) := '2D63616C656E6461722D7765656B2D6261636B67726F756E642D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D746F6F6C6261722D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D612D646174657069636B65722D63616C';
wwv_flow_imp.g_varchar2_table(38) := '656E6461722D7765656B2D746578742D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D746578742D6D757465642D636F6C6F72293B0D0A20202D2D612D646174657069636B65722D666F6F7465722D6261636B67726F756E642D636F6C';
wwv_flow_imp.g_varchar2_table(39) := '6F723A20766172282D2D75742D636F6D706F6E656E742D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D612D646174657069636B65722D74696D657069636B65722D73656C6563742D6261636B67726F756E642D636F6C6F723A207472616E';
wwv_flow_imp.g_varchar2_table(40) := '73706172656E743B0D0A20202D2D612D646174657069636B65722D74696D657069636B65722D73656C6563742D626F726465722D636F6C6F723A207472616E73706172656E743B0D0A20202D2D612D646174657069636B65722D74696D657069636B6572';
wwv_flow_imp.g_varchar2_table(41) := '2D73656C6563742D666F6E742D73697A653A20302E38373572656D3B0D0A20202D2D612D66732D636F6E74726F6C2D736570657261746F722D626F726465722D77696474683A20766172282D2D75742D636F6D706F6E656E742D626F726465722D776964';
wwv_flow_imp.g_varchar2_table(42) := '74682C20317078293B0D0A20202D2D612D66732D636F6E74726F6C2D736570657261746F722D626F726465722D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D626F726465722D636F6C6F72293B0D0A20202D2D612D66732D636F6E74';
wwv_flow_imp.g_varchar2_table(43) := '726F6C2D6865616465722D70616464696E672D793A20302E373572656D3B0D0A20202D2D612D66732D636F6E74726F6C2D6865616465722D70616464696E672D783A20302E373572656D3B0D0A20202D2D612D66732D636F6E74726F6C2D686561646572';
wwv_flow_imp.g_varchar2_table(44) := '2D666F6E742D73697A653A203172656D3B0D0A20202D2D612D66732D636F6E74726F6C2D6865616465722D6C696E652D6865696768743A20312E323572656D3B0D0A20202D2D612D66732D636F6E74726F6C2D626F64792D70616464696E672D793A2030';
wwv_flow_imp.g_varchar2_table(45) := '2E373572656D3B0D0A20202D2D612D66732D636F6E74726F6C2D626F64792D70616464696E672D783A20302E373572656D3B0D0A20202D2D612D66732D636F6E74726F6C2D616374696F6E732D70616464696E672D793A20302E373572656D3B0D0A2020';
wwv_flow_imp.g_varchar2_table(46) := '2D2D612D66732D636F6E74726F6C2D616374696F6E732D70616464696E672D783A203072656D3B0D0A20202D2D612D66732D636F6E74726F6C2D6974656D2D73706163696E673A20302E373572656D3B0D0A20202D2D612D66732D66696C7465722D6772';
wwv_flow_imp.g_varchar2_table(47) := '6F75702D626F726465722D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D626F726465722D636F6C6F72293B0D0A20202D2D612D66732D66696C7465722D67726F75702D626F726465722D77696474683A20766172282D2D75742D636F';
wwv_flow_imp.g_varchar2_table(48) := '6D706F6E656E742D626F726465722D77696474682C20317078293B0D0A20202D2D612D66732D66696C7465722D67726F75702D6C6162656C2D746578742D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D746578742D6D757465642D63';
wwv_flow_imp.g_varchar2_table(49) := '6F6C6F72293B0D0A20202D2D612D66732D6974656D2D7375622D67726F75702D73706163696E673A20302E3572656D3B0D0A20202D2D612D66732D63686172742D70616464696E672D793A203172656D3B0D0A20202D2D612D66732D63686172742D7061';
wwv_flow_imp.g_varchar2_table(50) := '6464696E672D783A203172656D3B0D0A20202D2D612D66732D63686172742D626F726465722D77696474683A20766172282D2D75742D726567696F6E2D626F726465722D77696474682C20766172282D2D75742D636F6D706F6E656E742D626F72646572';
wwv_flow_imp.g_varchar2_table(51) := '2D77696474682C2031707829293B0D0A20202D2D612D66732D63686172742D626F726465722D636F6C6F723A20766172282D2D75742D726567696F6E2D626F726465722D636F6C6F722C20766172282D2D75742D636F6D706F6E656E742D626F72646572';
wwv_flow_imp.g_varchar2_table(52) := '2D636F6C6F7229293B0D0A20202D2D612D66732D63686172742D626F726465722D7261646975733A20766172282D2D75742D726567696F6E2D626F726465722D7261646975732C20766172282D2D75742D636F6D706F6E656E742D626F726465722D7261';
wwv_flow_imp.g_varchar2_table(53) := '6469757329293B0D0A20202D2D612D66732D63686172742D6261636B67726F756E642D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D612D66732D63686172742D73686164';
wwv_flow_imp.g_varchar2_table(54) := '6F773A20766172282D2D75742D726567696F6E2D626F782D736861646F77293B0D0A20202D2D612D66696C6564726F702D70616464696E672D793A203172656D3B0D0A20202D2D612D66696C6564726F702D70616464696E672D783A203172656D3B0D0A';
wwv_flow_imp.g_varchar2_table(55) := '20202D2D612D66696C6564726F702D626F726465722D7261646975733A20302E31323572656D3B0D0A20202D2D612D66696C6564726F702D626F726465722D636F6C6F723A20766172282D2D612D6669656C642D696E7075742D626F726465722D636F6C';
wwv_flow_imp.g_varchar2_table(56) := '6F72293B0D0A20202D2D612D66696C6564726F702D746578742D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D746578742D6D757465642D636F6C6F72293B0D0A20202D2D612D66696C6564726F702D666F6375732D626F726465722D';
wwv_flow_imp.g_varchar2_table(57) := '636F6C6F723A20766172282D2D612D6669656C642D696E7075742D666F6375732D626F726465722D636F6C6F72293B0D0A20202D2D612D66696C6564726F702D6974656D2D73706163696E673A20302E323572656D3B0D0A20202D2D612D66696C656472';
wwv_flow_imp.g_varchar2_table(58) := '6F702D69636F6E2D73697A653A203272656D3B0D0A20202D2D612D66696C6564726F702D69636F6E2D73706163696E673A20302E323572656D3B0D0A20202D2D612D66696C6564726F702D68656164696E672D666F6E742D73697A653A20312E32357265';
wwv_flow_imp.g_varchar2_table(59) := '6D3B0D0A20202D2D612D66696C6564726F702D68656164696E672D6C696E652D6865696768743A20312E373572656D3B0D0A20202D2D612D66696C6564726F702D68656164696E672D746578742D636F6C6F723A20766172282D2D75742D636F6D706F6E';
wwv_flow_imp.g_varchar2_table(60) := '656E742D746578742D7469746C652D636F6C6F72293B0D0A20202D2D612D66696C6564726F702D636F756E742D62616467652D666F6E742D73697A653A20302E36323572656D3B0D0A20202D2D612D66696C6564726F702D636F756E742D62616467652D';
wwv_flow_imp.g_varchar2_table(61) := '6C696E652D6865696768743A20302E38373572656D3B0D0A20202D2D612D66696C6564726F702D666F6E742D73697A653A20302E38373572656D3B0D0A20202D2D612D66696C6564726F702D6C696E652D6865696768743A203172656D3B0D0A20202D2D';
wwv_flow_imp.g_varchar2_table(62) := '612D66696C6564726F702D70726F67726573732D77696474683A20313572656D3B0D0A20202D2D612D66696C6564726F702D70726F67726573732D6865696768743A20302E373572656D3B0D0A20202D2D612D66696C6564726F702D70726F6772657373';
wwv_flow_imp.g_varchar2_table(63) := '2D626F726465722D7261646975733A20302E33373572656D3B0D0A20202D2D612D66696C6564726F702D70726F67726573732D6261722D77696474683A203372656D3B0D0A20202D2D612D6669656C642D696E7075742D626F726465722D726164697573';
wwv_flow_imp.g_varchar2_table(64) := '3A20302E31323572656D3B0D0A20202D2D612D6669656C642D696E7075742D626F726465722D7374796C653A206461736865643B0D0A20202D2D612D6669656C642D73656C6563742D6261636B67726F756E642D73697A653A203272656D203172656D3B';
wwv_flow_imp.g_varchar2_table(65) := '0D0A20202D2D612D6669656C642D73656C6563742D6172726F772D70616464696E673A203272656D3B0D0A20202D2D612D67762D666F6E742D73697A653A20302E373572656D3B0D0A20202D2D612D67762D6C696E652D6865696768743A203172656D3B';
wwv_flow_imp.g_varchar2_table(66) := '0D0A20202D2D612D67762D626F726465722D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D626F726465722D636F6C6F72293B0D0A20202D2D612D67762D63656C6C2D70616464696E672D793A20302E323572656D3B0D0A20202D2D61';
wwv_flow_imp.g_varchar2_table(67) := '2D67762D63656C6C2D70616464696E672D783A20302E3572656D3B0D0A20202D2D612D67762D63656C6C2D6865696768743A203272656D3B0D0A20202D2D612D67762D726F772D686F7665722D6261636B67726F756E642D636F6C6F723A202366396639';
wwv_flow_imp.g_varchar2_table(68) := '66393B0D0A20202D2D612D67762D696E7365727465642D6261636B67726F756E642D636F6C6F723A20766172282D2D612D70616C657474652D737563636573732D7368616465293B0D0A20202D2D612D67762D64656C657465642D6261636B67726F756E';
wwv_flow_imp.g_varchar2_table(69) := '642D636F6C6F723A20236632663266323B0D0A20202D2D612D67762D6772616E64746F74616C2D6261636B67726F756E642D636F6C6F723A20236536653665363B0D0A20202D2D612D67762D757064617465642D6261636B67726F756E642D636F6C6F72';
wwv_flow_imp.g_varchar2_table(70) := '3A20766172282D2D612D70616C657474652D696E666F2D7368616465293B0D0A20202D2D612D67762D6865616465722D63656C6C2D70616464696E672D793A20302E323572656D3B0D0A20202D2D612D67762D6865616465722D63656C6C2D7061646469';
wwv_flow_imp.g_varchar2_table(71) := '6E672D783A20302E3572656D3B0D0A20202D2D612D67762D6865616465722D63656C6C2D6865696768743A20322E3572656D3B0D0A20202D2D612D67762D666F6F7465722D70616464696E672D793A20302E3572656D3B0D0A20202D2D612D67762D666F';
wwv_flow_imp.g_varchar2_table(72) := '6F7465722D70616464696E672D783A20302E373572656D3B0D0A20202D2D612D67762D706167696E6174696F6E2D627574746F6E2D6261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A20202D2D612D67762D706167696E61';
wwv_flow_imp.g_varchar2_table(73) := '74696F6E2D627574746F6E2D746578742D636F6C6F723A20766172282D2D612D627574746F6E2D746578742D636F6C6F72293B0D0A20202D2D612D67762D706167696E6174696F6E2D627574746F6E2D70616464696E672D793A20302E323572656D3B0D';
wwv_flow_imp.g_varchar2_table(74) := '0A20202D2D612D67762D706167696E6174696F6E2D627574746F6E2D70616464696E672D783A20302E323572656D3B0D0A20202D2D612D67762D706167696E6174696F6E2D627574746F6E2D6761702D783A20302E323572656D3B0D0A20202D2D612D67';
wwv_flow_imp.g_varchar2_table(75) := '762D706167696E6174696F6E2D627574746F6E2D686F7665722D6261636B67726F756E642D636F6C6F723A20766172282D2D612D627574746F6E2D686F7665722D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D612D67762D706167696E61';
wwv_flow_imp.g_varchar2_table(76) := '74696F6E2D627574746F6E2D686F7665722D746578742D636F6C6F723A20766172282D2D612D627574746F6E2D686F7665722D746578742D636F6C6F72293B0D0A20202D2D612D67762D6E6F646174612D6D6573736167652D70616464696E672D793A20';
wwv_flow_imp.g_varchar2_table(77) := '3172656D3B0D0A20202D2D612D67762D6E6F646174612D6D6573736167652D70616464696E672D783A203172656D3B0D0A20202D2D612D67762D6E6F646174612D6D6573736167652D746578742D636F6C6F723A20766172282D2D75742D636F6D706F6E';
wwv_flow_imp.g_varchar2_table(78) := '656E742D746578742D6D757465642D636F6C6F72293B0D0A20202D2D612D67762D6E6F646174612D6D6573736167652D666F6E742D73697A653A20302E373572656D3B0D0A20202D2D612D67762D6E6F646174612D6D6573736167652D69636F6E2D7369';
wwv_flow_imp.g_varchar2_table(79) := '7A653A203272656D3B0D0A20202D2D612D67762D6E6F646174612D6D6573736167652D69636F6E2D73706163696E673A20302E373572656D3B0D0A20202D2D612D68656C702D6469616C6F672D636F64652D746578742D636F6C6F723A20766172282D2D';
wwv_flow_imp.g_varchar2_table(80) := '75742D636F6D706F6E656E742D746578742D6D757465642D636F6C6F72293B0D0A20202D2D612D6D64656469746F722D6261636B67726F756E642D636F6C6F723A20766172282D2D612D6669656C642D696E7075742D6261636B67726F756E642D636F6C';
wwv_flow_imp.g_varchar2_table(81) := '6F72293B0D0A20202D2D612D6D64656469746F722D626F726465722D636F6C6F723A20766172282D2D612D6669656C642D696E7075742D626F726465722D636F6C6F72293B0D0A20202D2D612D6D64656469746F722D626F726465722D77696474683A20';
wwv_flow_imp.g_varchar2_table(82) := '766172282D2D612D6669656C642D696E7075742D626F726465722D7769647468293B0D0A20202D2D612D6D64656469746F722D666F6375732D626F726465722D636F6C6F723A20766172282D2D612D6669656C642D696E7075742D666F6375732D626F72';
wwv_flow_imp.g_varchar2_table(83) := '6465722D636F6C6F72293B0D0A20202D2D612D6D656E756261722D6974656D2D70616464696E672D793A20302E3572656D3B0D0A20202D2D612D6D656E756261722D6974656D2D70616464696E672D783A20302E3572656D3B0D0A20202D2D612D6D656E';
wwv_flow_imp.g_varchar2_table(84) := '756261722D6974656D2D73706C69742D69636F6E2D73697A653A203172656D3B0D0A20202D2D612D6D656E756261722D6974656D2D73706C69742D69636F6E2D73706163696E673A20302E3572656D3B0D0A20202D2D612D6D656E752D70616464696E67';
wwv_flow_imp.g_varchar2_table(85) := '2D793A20302E3572656D3B0D0A20202D2D612D6D656E752D70616464696E672D783A203072656D3B0D0A20202D2D612D6D656E752D666F6E742D73697A653A20302E373572656D3B0D0A20202D2D612D6D656E752D6C696E652D6865696768743A203172';
wwv_flow_imp.g_varchar2_table(86) := '656D3B0D0A20202D2D612D6D656E752D626F726465722D7261646975733A20302E323572656D3B0D0A20202D2D612D6D656E752D626F726465722D636F6C6F723A207267626128302C20302C20302C20302E31293B0D0A20202D2D612D6D656E752D7365';
wwv_flow_imp.g_varchar2_table(87) := '702D626F726465722D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D626F726465722D636F6C6F72293B0D0A20202D2D612D6D656E752D7365702D73706163696E672D793A20302E323572656D3B0D0A20202D2D612D6D656E752D6963';
wwv_flow_imp.g_varchar2_table(88) := '6F6E2D73697A653A203172656D3B0D0A20202D2D612D6D656E752D69636F6E2D73706163696E672D793A20302E3572656D3B0D0A20202D2D612D6D656E752D69636F6E2D73706163696E672D783A20302E3572656D3B0D0A20202D2D612D6D656E752D69';
wwv_flow_imp.g_varchar2_table(89) := '74656D2D67656E657269632D70616464696E672D793A20302E3572656D3B0D0A20202D2D612D6D656E752D6974656D2D67656E657269632D70616464696E672D783A20302E3572656D3B0D0A20202D2D612D6D656E752D63616C6C6F75742D73697A653A';
wwv_flow_imp.g_varchar2_table(90) := '20302E373572656D3B0D0A20202D2D612D6D656E752D63616C6C6F75742D6261636B67726F756E642D636F6C6F723A20766172282D2D612D6D656E752D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D612D6D656E752D63616C6C6F75742D';
wwv_flow_imp.g_varchar2_table(91) := '626F726465722D7261646975733A203072656D3B0D0A20202D2D612D6D656E752D63616C6C6F75742D626F726465722D636F6C6F723A20766172282D2D612D6D656E752D626F726465722D636F6C6F72293B0D0A20202D2D612D6D656E752D63616C6C6F';
wwv_flow_imp.g_varchar2_table(92) := '75742D736861646F773A20766172282D2D75742D736861646F772D736D293B0D0A20202D2D612D6D656E752D63616C6C6F75742D6261636B67726F756E642D636C69703A20636F6E74656E742D626F783B0D0A20202D2D612D706F7075706C6F762D7365';
wwv_flow_imp.g_varchar2_table(93) := '617263682D6261722D70616464696E672D793A20302E3572656D3B0D0A20202D2D612D706F7075706C6F762D7365617263682D6261722D70616464696E672D783A20766172282D2D612D706F7075706C6F762D7365617263682D6261722D70616464696E';
wwv_flow_imp.g_varchar2_table(94) := '672D79293B0D0A20202D2D612D706F7075706C6F762D636869702D70616464696E672D783A20302E323572656D3B0D0A20202D2D612D706F7075706C6F762D636869702D666F6E742D7765696768743A20766172282D2D612D636869702D76616C75652D';
wwv_flow_imp.g_varchar2_table(95) := '666F6E742D7765696768742C20766172282D2D612D626173652D666F6E742D7765696768742D73656D69626F6C642C2035303029293B0D0A20202D2D612D706F7075706C6F762D636869702D6C696E652D6865696768743A20302E373572656D3B0D0A20';
wwv_flow_imp.g_varchar2_table(96) := '202D2D612D706F7075706C6F762D636869702D72656D6F76652D666F6E742D73697A653A20302E373572656D3B0D0A20202D2D612D706F7075706C6F762D636869702D6261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C2030';
wwv_flow_imp.g_varchar2_table(97) := '2E303735293B0D0A20202D2D612D706F7075706C6F762D636869702D626F726465722D77696474683A203170783B0D0A20202D2D612D706F7075706C6F762D636869702D626F726465722D636F6C6F723A20766172282D2D612D636869702D7374617465';
wwv_flow_imp.g_varchar2_table(98) := '2D626F726465722D636F6C6F722C20766172282D2D612D636869702D747970652D626F726465722D636F6C6F722C20766172282D2D612D636869702D626F726465722D636F6C6F722C20766172282D2D612D6669656C642D696E7075742D626F72646572';
wwv_flow_imp.g_varchar2_table(99) := '2D636F6C6F722C207267626128302C20302C20302C20302E30373529292929293B0D0A20202D2D612D72762D666F6E742D73697A653A20302E373572656D3B0D0A20202D2D612D72762D6C696E652D6865696768743A203172656D3B0D0A20202D2D612D';
wwv_flow_imp.g_varchar2_table(100) := '72762D626F64792D70616464696E672D793A20302E323572656D3B0D0A20202D2D612D72762D626F64792D70616464696E672D783A203072656D3B0D0A20202D2D612D70657263656E742D63686172742D6865696768743A203172656D3B0D0A20202D2D';
wwv_flow_imp.g_varchar2_table(101) := '612D70657263656E742D63686172742D6261636B67726F756E642D636F6C6F723A20766172282D2D75742D70616C657474652D7072696D6172792D7368616465293B0D0A20202D2D612D70657263656E742D63686172742D626F726465722D7261646975';
wwv_flow_imp.g_varchar2_table(102) := '733A20302E31323572656D3B0D0A20202D2D612D70657263656E742D63686172742D626F726465722D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D626F726465722D636F6C6F72293B0D0A20202D2D612D70657263656E742D636861';
wwv_flow_imp.g_varchar2_table(103) := '72742D6261722D6261636B67726F756E642D636F6C6F723A20766172282D2D75742D70616C657474652D7072696D617279293B0D0A20202D2D612D70657263656E742D63686172742D6261722D746578742D636F6C6F723A20766172282D2D75742D7061';
wwv_flow_imp.g_varchar2_table(104) := '6C657474652D7072696D6172792D636F6E7472617374293B0D0A20202D2D612D70657263656E742D63686172742D6261722D626F726465722D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D626F726465722D636F6C6F72293B0D0A20';
wwv_flow_imp.g_varchar2_table(105) := '202D2D612D7265706F72742D636F6E74726F6C732D70616464696E672D793A20302E3572656D3B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D70616464696E672D783A20302E3572656D3B0D0A20202D2D612D7265706F72742D636F6E74';
wwv_flow_imp.g_varchar2_table(106) := '726F6C732D626F726465722D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D626F726465722D636F6C6F72293B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D626F726465722D77696474683A20766172282D2D75742D63';
wwv_flow_imp.g_varchar2_table(107) := '6F6D706F6E656E742D626F726465722D7769647468293B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D6974656D2D73706163696E673A20302E323572656D3B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D7370';
wwv_flow_imp.g_varchar2_table(108) := '6163696E673A20302E3572656D3B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D626F726465722D7261646975733A20302E31323572656D3B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D6C616265';
wwv_flow_imp.g_varchar2_table(109) := '6C2D77696474683A2031382E373572656D3B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D6C6162656C2D666F6E742D73697A653A20302E373572656D3B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D63656C6C';
wwv_flow_imp.g_varchar2_table(110) := '2D6C6162656C2D6C696E652D6865696768743A203172656D3B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D6C6162656C2D626F726465722D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D626F726465722D';
wwv_flow_imp.g_varchar2_table(111) := '636F6C6F72293B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D6C6162656C2D626F726465722D77696474683A20766172282D2D75742D636F6D706F6E656E742D626F726465722D7769647468293B0D0A20202D2D612D726570';
wwv_flow_imp.g_varchar2_table(112) := '6F72742D636F6E74726F6C732D696E7075742D626F726465722D77696474683A20766172282D2D612D6669656C642D696E7075742D626F726465722D7769647468293B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D696E7075742D626F72';
wwv_flow_imp.g_varchar2_table(113) := '6465722D636F6C6F723A20766172282D2D612D6669656C642D696E7075742D626F726465722D636F6C6F72293B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D696E7075742D626F726465722D7261646975733A20766172282D2D612D6669';
wwv_flow_imp.g_varchar2_table(114) := '656C642D696E7075742D626F726465722D726164697573293B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D696E7075742D666F6375732D626F726465722D636F6C6F723A20766172282D2D612D6669656C642D696E7075742D666F637573';
wwv_flow_imp.g_varchar2_table(115) := '2D626F726465722D636F6C6F72293B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D696E7075742D70616464696E672D793A20302E3572656D3B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D696E7075742D70616464696E67';
wwv_flow_imp.g_varchar2_table(116) := '2D783A20302E3572656D3B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D696E7075742D666F6E742D73697A653A20302E373572656D3B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D696E7075742D6C696E652D6865696768';
wwv_flow_imp.g_varchar2_table(117) := '743A203172656D3B0D0A20202D2D612D73706C69747465722D6261722D77696474683A20302E3572656D3B0D0A20202D2D612D73706C69747465722D7468756D622D77696474683A20302E3572656D3B0D0A20202D2D612D73706C69747465722D746875';
wwv_flow_imp.g_varchar2_table(118) := '6D622D6865696768743A203372656D3B0D0A20202D2D612D73706C69747465722D7468756D622D626F726465722D7261646975733A203072656D3B0D0A20202D2D612D73746172726174696E672D73746172732D70616464696E672D793A20302E323572';
wwv_flow_imp.g_varchar2_table(119) := '656D3B0D0A20202D2D612D73746172726174696E672D73746172732D62672D636F6C6F723A207267626128302C20302C20302C20302E3135293B0D0A20202D2D612D73746172726174696E672D76616C75652D73706163696E673A20302E3572656D3B0D';
wwv_flow_imp.g_varchar2_table(120) := '0A20202D2D612D7377697463682D77696474683A20322E373572656D3B0D0A20202D2D612D7377697463682D70616464696E672D793A20302E31323572656D3B0D0A20202D2D612D7377697463682D70616464696E672D783A20302E31323572656D3B0D';
wwv_flow_imp.g_varchar2_table(121) := '0A20202D2D612D7377697463682D686F7665722D6261636B67726F756E642D636F6C6F723A20766172282D2D612D7377697463682D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D612D7377697463682D6163746976652D6261636B67726F';
wwv_flow_imp.g_varchar2_table(122) := '756E642D636F6C6F723A20766172282D2D612D7377697463682D686F7665722D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D612D7377697463682D636865636B65642D686F7665722D6261636B67726F756E642D636F6C6F723A20766172';
wwv_flow_imp.g_varchar2_table(123) := '282D2D612D7377697463682D636865636B65642D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D612D7377697463682D636865636B65642D6163746976652D6261636B67726F756E642D636F6C6F723A20766172282D2D612D737769746368';
wwv_flow_imp.g_varchar2_table(124) := '2D636865636B65642D686F7665722D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D612D7377697463682D746F67676C652D77696474683A20312E323572656D3B0D0A20202D2D612D7377697463682D746F67676C652D6865696768743A20';
wwv_flow_imp.g_varchar2_table(125) := '312E323572656D3B0D0A20202D2D612D746F6F6C6261722D6261636B67726F756E642D636F6C6F723A20766172282D2D75742D726567696F6E2D6865616465722D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D612D746F6F6C6261722D62';
wwv_flow_imp.g_varchar2_table(126) := '6F726465722D77696474683A20766172282D2D75742D636F6D706F6E656E742D626F726465722D77696474682C20317078293B0D0A20202D2D612D746F6F6C6261722D626F726465722D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D';
wwv_flow_imp.g_varchar2_table(127) := '626F726465722D636F6C6F72293B0D0A20202D2D612D746F6F6C6261722D6974656D2D73706163696E673A20302E3572656D3B0D0A20202D2D612D746F6F6C6261722D7365702D626F726465722D636F6C6F723A20766172282D2D75742D636F6D706F6E';
wwv_flow_imp.g_varchar2_table(128) := '656E742D696E6E65722D626F726465722D636F6C6F72293B0D0A20202D2D612D746F6F6C6261722D736D616C6C2D627574746F6E2D70616464696E672D793A20302E323572656D3B0D0A20202D2D612D746F6F6C6261722D736D616C6C2D627574746F6E';
wwv_flow_imp.g_varchar2_table(129) := '2D70616464696E672D783A20302E3572656D3B0D0A20202D2D612D74726565766965772D746F67676C652D73697A653A203172656D3B0D0A20202D2D612D74726565766965772D6E6F64652D69636F6E2D73697A653A203172656D3B0D0A20202D2D612D';
wwv_flow_imp.g_varchar2_table(130) := '74726565766965772D6E6F64652D666F6E742D73697A653A20302E373572656D3B0D0A20202D2D612D74726565766965772D6E6F64652D6C696E652D6865696768743A203172656D3B0D0A20202D2D612D74726565766965772D6E6F64652D7061646469';
wwv_flow_imp.g_varchar2_table(131) := '6E672D793A20302E323572656D3B0D0A20202D2D612D74726565766965772D6E6F64652D70616464696E672D783A20302E323572656D3B0D0A20202D2D612D74726565766965772D6E6F64652D746578742D636F6C6F723A20696E68657269743B0D0A20';
wwv_flow_imp.g_varchar2_table(132) := '202D2D612D74726565766965772D6E6F64652D666F63757365642D736861646F773A20696E7365742030203020302031707820726762612835372C203135352C203233342C20302E35293B0D0A20202D2D612D74726565766965772D6E6F64652D706C61';
wwv_flow_imp.g_varchar2_table(133) := '6365686F6C6465722D626F726465722D7261646975733A20302E31323572656D3B0D0A20202D2D612D74726565766965772D647261672D68656C7065722D626F726465722D7261646975733A20302E31323572656D3B0D0A20202D2D612D636869702D70';
wwv_flow_imp.g_varchar2_table(134) := '616464696E672D793A20302E31323572656D3B0D0A20202D2D612D636869702D70616464696E672D783A20302E323572656D3B0D0A20202D2D612D636869702D73706163696E673A20302E323572656D3B0D0A20202D2D612D636869702D666F6E742D73';
wwv_flow_imp.g_varchar2_table(135) := '697A653A20302E373572656D3B0D0A20202D2D612D636869702D6C696E652D6865696768743A203172656D3B0D0A20202D2D612D636869702D6C6162656C2D73706163696E673A20302E323572656D3B0D0A20202D2D612D636869702D626F726465722D';
wwv_flow_imp.g_varchar2_table(136) := '7261646975733A20302E31323572656D3B0D0A20202D2D612D636869702D626F726465722D77696474683A20766172282D2D612D6669656C642D696E7075742D626F726465722D7769647468293B0D0A20202D2D612D636869702D626F726465722D636F';
wwv_flow_imp.g_varchar2_table(137) := '6C6F723A20766172282D2D612D6669656C642D696E7075742D626F726465722D636F6C6F72293B0D0A20202D2D612D636869702D686F7665722D6261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E303235293B0D0A20';
wwv_flow_imp.g_varchar2_table(138) := '202D2D612D636869702D6163746976652D6261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3035293B0D0A20202D2D612D636869702D6170706C6965642D6261636B67726F756E642D636F6C6F723A20726762612830';
wwv_flow_imp.g_varchar2_table(139) := '2C20302C20302C20302E303735293B0D0A20202D2D612D636869702D6170706C6965642D686F7665722D6261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E31293B0D0A20202D2D612D636869702D72656D6F76652D68';
wwv_flow_imp.g_varchar2_table(140) := '6F7665722D6261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3035293B0D0A20202D2D612D636869702D72656D6F76652D6163746976652D6261636B67726F756E642D636F6C6F723A207267626128302C20302C2030';
wwv_flow_imp.g_varchar2_table(141) := '2C20302E303735293B0D0A20202D2D612D636869702D6170706C6965642D69732D6163746976652D72656D6F76652D686F7665722D6261636B67726F756E642D636F6C6F723A2072676261283235352C203235352C203235352C20302E31293B0D0A2020';
wwv_flow_imp.g_varchar2_table(142) := '2D2D612D636869702D6170706C6965642D69732D6163746976652D72656D6F76652D6163746976652D6261636B67726F756E642D636F6C6F723A2072676261283235352C203235352C203235352C20302E32293B0D0A20202D2D612D636869702D696E70';
wwv_flow_imp.g_varchar2_table(143) := '75742D666F6E742D73697A653A20302E373572656D3B0D0A20202D2D612D636869702D696E7075742D6C696E652D6865696768743A203172656D3B0D0A20202D2D612D636F6D626F2D73656C6563742D69636F6E2D73697A653A203172656D3B0D0A2020';
wwv_flow_imp.g_varchar2_table(144) := '2D2D612D636F6D626F2D73656C6563742D6974656D2D73656C65637465642D6261636B67726F756E642D636F6C6F723A20766172282D2D75742D70616C657474652D7072696D6172792D7368616465293B0D0A20202D2D612D736561726368726573756C';
wwv_flow_imp.g_varchar2_table(145) := '74732D6761703A203172656D3B0D0A20202D2D612D726573756C74736974656D2D6974656D2D6761703A203172656D3B0D0A20202D2D612D726573756C74736974656D2D70616464696E672D783A203172656D3B0D0A20202D2D612D726573756C747369';
wwv_flow_imp.g_varchar2_table(146) := '74656D2D70616464696E672D793A203172656D3B0D0A20202D2D612D726573756C74736974656D2D6261636B67726F756E642D636F6C6F723A20236666663B0D0A20202D2D612D726573756C74736974656D2D626F726465722D77696474683A20317078';
wwv_flow_imp.g_varchar2_table(147) := '3B0D0A20202D2D612D726573756C74736974656D2D626F726465722D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D626F726465722D636F6C6F72293B0D0A20202D2D612D726573756C74736974656D2D626F726465722D7261646975';
wwv_flow_imp.g_varchar2_table(148) := '733A20302E323572656D3B0D0A20202D2D612D726573756C74736974656D2D636F6E74656E742D6761703A20302E323572656D3B0D0A20202D2D612D726573756C74736974656D2D666F6E742D73697A653A20302E38373572656D3B0D0A20202D2D612D';
wwv_flow_imp.g_varchar2_table(149) := '726573756C74736974656D2D6C696E652D6865696768743A20312E323572656D3B0D0A20202D2D612D726573756C74736974656D2D6865616465722D6761703A20302E3572656D3B0D0A20202D2D612D726573756C74736974656D2D6865616465722D73';
wwv_flow_imp.g_varchar2_table(150) := '706163696E673A20302E323572656D3B0D0A20202D2D612D726573756C74736974656D2D7469746C652D666F6E742D73697A653A203172656D3B0D0A20202D2D612D726573756C74736974656D2D7469746C652D6C696E652D6865696768743A20312E32';
wwv_flow_imp.g_varchar2_table(151) := '3572656D3B0D0A20202D2D612D726573756C74736974656D2D7375627469746C652D666F6E742D73697A653A20302E3933373572656D3B0D0A20202D2D612D726573756C74736974656D2D7375627469746C652D6C696E652D6865696768743A20312E32';
wwv_flow_imp.g_varchar2_table(152) := '3572656D3B0D0A20202D2D612D726573756C74736974656D2D7375627469746C652D73706163696E673A20766172282D2D612D726573756C74736974656D2D6865616465722D73706163696E672C20302E323572656D293B0D0A20202D2D612D72657375';
wwv_flow_imp.g_varchar2_table(153) := '6C74736974656D2D6465736372697074696F6E2D666F6E742D73697A653A20302E38373572656D3B0D0A20202D2D612D726573756C74736974656D2D6465736372697074696F6E2D6C696E652D6865696768743A20312E323572656D3B0D0A20202D2D61';
wwv_flow_imp.g_varchar2_table(154) := '2D726573756C74736974656D2D617474726962757465732D666F6E742D73697A653A20302E3831323572656D3B0D0A20202D2D612D726573756C74736974656D2D617474726962757465732D6C696E652D6865696768743A203172656D3B0D0A20202D2D';
wwv_flow_imp.g_varchar2_table(155) := '612D726573756C74736974656D2D617474726962757465732D6761703A203172656D3B0D0A20202D2D612D726573756C74736974656D2D6D6973632D666F6E742D73697A653A20302E3831323572656D3B0D0A20202D2D612D726573756C74736974656D';
wwv_flow_imp.g_varchar2_table(156) := '2D6D6973632D6C696E652D6865696768743A203172656D3B0D0A20202D2D612D726573756C74736974656D2D6D6973632D746578742D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D746578742D6D757465642D636F6C6F72293B0D0A';
wwv_flow_imp.g_varchar2_table(157) := '20202D2D612D726573756C74736974656D2D69636F6E2D70616464696E673A20302E3572656D3B0D0A20202D2D612D726573756C74736974656D2D696E697469616C732D73697A653A203272656D3B0D0A20202D2D612D726573756C74736974656D2D69';
wwv_flow_imp.g_varchar2_table(158) := '6E697469616C732D666F6E742D73697A653A20302E38373572656D3B0D0A20202D2D612D726573756C74736974656D2D62616467652D666F6E742D73697A653A20302E373572656D3B0D0A20202D2D612D726573756C74736974656D2D62616467652D62';
wwv_flow_imp.g_varchar2_table(159) := '61636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E31293B0D0A20202D2D612D726573756C74736974656D2D62616467652D626F726465722D7261646975733A20302E323572656D3B0D0A20202D2D612D726573756C7473';
wwv_flow_imp.g_varchar2_table(160) := '6974656D2D62616467652D70616464696E673A20302E323572656D3B0D0A20202D2D612D736561726368726573756C74732D706167696E6174696F6E2D73706163696E673A203172656D3B0D0A20202D2D612D736561726368726573756C74732D706167';
wwv_flow_imp.g_varchar2_table(161) := '696E6174696F6E2D6761703A203172656D3B0D0A20202D2D612D736561726368726573756C74732D706167696E6174696F6E2D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D746578742D6D757465642D636F6C6F72293B0D0A20202D';
wwv_flow_imp.g_varchar2_table(162) := '2D612D736561726368726573756C74732D706167696E6174696F6E2D666F6E742D73697A657A3A20302E38373572656D3B0D0A20202D2D612D736561726368726573756C74732D706167696E6174696F6E2D6C696E652D6865696768743A20312E323572';
wwv_flow_imp.g_varchar2_table(163) := '656D3B0D0A20202D2D612D746F6F6C7469702D666F6E742D73697A653A20302E3638373572656D3B0D0A20202D2D612D7370696E6E65722D73697A653A203272656D3B0D0A20202D2D612D7370696E6E65722D626F726465722D77696474683A20302E32';
wwv_flow_imp.g_varchar2_table(164) := '3572656D3B0D0A20202D2D612D7370696E6E65722D636F6E7461696E65722D70616464696E673A20302E3572656D3B0D0A20202D2D612D6C6F76652D617065782D6D617267696E3A203020302E31323572656D3B0D0A20202D2D612D6C6F76652D617065';
wwv_flow_imp.g_varchar2_table(165) := '782D686F7665722D746578742D636F6C6F723A20766172282D2D612D70616C657474652D64616E6765722C2023463030293B0D0A20202D2D6A75692D6469616C6F672D6261636B67726F756E642D636F6C6F723A20766172282D2D75742D726567696F6E';
wwv_flow_imp.g_varchar2_table(166) := '2D6261636B67726F756E642D636F6C6F722C20766172282D2D75742D636F6D706F6E656E742D6261636B67726F756E642D636F6C6F7229293B0D0A20202D2D6A75692D6469616C6F672D746578742D636F6C6F723A20766172282D2D75742D726567696F';
wwv_flow_imp.g_varchar2_table(167) := '6E2D746578742D636F6C6F722C20766172282D2D75742D636F6D706F6E656E742D746578742D64656661756C742D636F6C6F7229293B0D0A20202D2D6A75692D6469616C6F672D626F726465722D636F6C6F723A20766172282D2D75742D726567696F6E';
wwv_flow_imp.g_varchar2_table(168) := '2D626F726465722D636F6C6F722C20766172282D2D75742D636F6D706F6E656E742D626F726465722D636F6C6F7229293B0D0A20202D2D6A75692D6469616C6F672D626F726465722D77696474683A20303B0D0A20202D2D6A75692D6469616C6F672D62';
wwv_flow_imp.g_varchar2_table(169) := '6F726465722D7261646975733A20766172282D2D75742D726567696F6E2D626F726465722D7261646975732C20766172282D2D75742D636F6D706F6E656E742D626F726465722D72616469757329293B0D0A20202D2D6A75692D6469616C6F672D736861';
wwv_flow_imp.g_varchar2_table(170) := '646F773A20766172282D2D75742D736861646F772D6C67292C2030203020302031707820766172282D2D75742D726567696F6E2D626F726465722D636F6C6F722C20766172282D2D75742D636F6D706F6E656E742D626F726465722D636F6C6F7229293B';
wwv_flow_imp.g_varchar2_table(171) := '0D0A20202D2D6A75692D6469616C6F672D666F6E742D73697A653A20302E373572656D3B0D0A20202D2D6A75692D6469616C6F672D7469746C656261722D70616464696E672D793A20302E373572656D3B0D0A20202D2D6A75692D6469616C6F672D7469';
wwv_flow_imp.g_varchar2_table(172) := '746C656261722D70616464696E672D783A203172656D3B0D0A20202D2D6A75692D6469616C6F672D7469746C656261722D6261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A20202D2D6A75692D6469616C6F672D7469746C';
wwv_flow_imp.g_varchar2_table(173) := '656261722D746578742D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D746578742D7469746C652D636F6C6F72293B0D0A20202D2D6A75692D6469616C6F672D7469746C656261722D626F726465722D77696474683A20766172282D2D';
wwv_flow_imp.g_varchar2_table(174) := '75742D726567696F6E2D626F726465722D77696474682C20766172282D2D75742D636F6D706F6E656E742D626F726465722D77696474682C2031707829293B0D0A20202D2D6A75692D6469616C6F672D7469746C656261722D626F726465722D636F6C6F';
wwv_flow_imp.g_varchar2_table(175) := '723A20766172282D2D75742D726567696F6E2D626F726465722D636F6C6F722C20766172282D2D75742D636F6D706F6E656E742D626F726465722D636F6C6F7229293B0D0A20202D2D6A75692D6469616C6F672D7469746C652D666F6E742D73697A653A';
wwv_flow_imp.g_varchar2_table(176) := '203172656D3B0D0A20202D2D6A75692D6469616C6F672D7469746C652D6C696E652D6865696768743A20312E3572656D3B0D0A20202D2D6A75692D6469616C6F672D7469746C652D636C6F73652D77696474683A20312E3572656D3B0D0A20202D2D6A75';
wwv_flow_imp.g_varchar2_table(177) := '692D6469616C6F672D7469746C652D636C6F73652D6865696768743A20312E3572656D3B0D0A20202D2D6A75692D6469616C6F672D7469746C652D636C6F73652D70616464696E672D793A20302E3572656D3B0D0A20202D2D6A75692D6469616C6F672D';
wwv_flow_imp.g_varchar2_table(178) := '7469746C652D636C6F73652D70616464696E672D783A20302E3572656D3B0D0A20202D2D6A75692D6469616C6F672D7469746C652D636C6F73652D626F726465722D7261646975733A20766172282D2D612D627574746F6E2D626F726465722D72616469';
wwv_flow_imp.g_varchar2_table(179) := '75732C20302E31323572656D293B0D0A20202D2D6A75692D6469616C6F672D7469746C652D636C6F73652D626F726465722D636F6C6F723A20766172282D2D612D627574746F6E2D626F726465722D636F6C6F72293B0D0A20202D2D6A75692D6469616C';
wwv_flow_imp.g_varchar2_table(180) := '6F672D7469746C652D636C6F73652D69636F6E2D73697A653A203172656D3B0D0A20202D2D6A75692D6469616C6F672D636F6E74656E742D70616464696E672D793A203072656D3B0D0A20202D2D6A75692D6469616C6F672D636F6E74656E742D706164';
wwv_flow_imp.g_varchar2_table(181) := '64696E672D783A203072656D3B0D0A20202D2D6A75692D6469616C6F672D627574746F6E70616E652D636F6E74656E742D70616464696E672D793A20302E373572656D3B0D0A20202D2D6A75692D6469616C6F672D627574746F6E70616E652D636F6E74';
wwv_flow_imp.g_varchar2_table(182) := '656E742D70616464696E672D783A203172656D3B0D0A20202D2D6A75692D6469616C6F672D627574746F6E70616E652D626F726465722D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D626F726465722D636F6C6F72293B0D0A20202D';
wwv_flow_imp.g_varchar2_table(183) := '2D6A75692D646174657069636B65722D77696474683A2031372E3572656D3B0D0A20202D2D6A75692D646174657069636B65722D6261636B67726F756E642D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D6261636B67726F756E642D';
wwv_flow_imp.g_varchar2_table(184) := '636F6C6F72293B0D0A20202D2D6A75692D646174657069636B65722D626F726465722D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D626F726465722D636F6C6F72293B0D0A20202D2D6A75692D646174657069636B65722D626F7264';
wwv_flow_imp.g_varchar2_table(185) := '65722D7261646975733A20302E3572656D3B0D0A20202D2D6A75692D646174657069636B65722D70616464696E673A20302E3572656D3B0D0A20202D2D6A75692D746F6F6C7469702D626F726465722D7261646975733A20302E31323572656D3B0D0A20';
wwv_flow_imp.g_varchar2_table(186) := '202D2D6A75692D746F6F6C7469702D70616464696E673A20302E3572656D3B0D0A20202D2D6F6A65742D666F6E742D73697A653A20302E38373572656D3B0D0A20202D2D6F6A65742D736D616C6C2D666F6E742D73697A653A20302E373572656D3B0D0A';
wwv_flow_imp.g_varchar2_table(187) := '20202D2D6F6A65742D6D656469756D2D666F6E742D73697A653A203172656D3B0D0A20202D2D6F6A65742D6C617267652D666F6E742D73697A653A20312E31323572656D3B0D0A20202D2D6F6A65742D6C61726765722D666F6E742D73697A653A20312E';
wwv_flow_imp.g_varchar2_table(188) := '323572656D3B0D0A20202D2D6F6A65742D746F6F6C7469702D7072696D6172792D746578742D636F6C6F723A20233030303030303B0D0A20202D2D6F6A65742D746F6F6C7469702D7365636F6E646172792D746578742D636F6C6F723A20726762612830';
wwv_flow_imp.g_varchar2_table(189) := '2C20302C20302C20302E3635293B0D0A20202D2D6F6A65742D746F6F6C7469702D64697361626C65642D746578742D636F6C6F723A207267626128302C20302C20302C20302E34293B0D0A7D0D0A3A726F6F74207B0D0A20202D2D75742D636F6C6F722D';
wwv_flow_imp.g_varchar2_table(190) := '736368656D653A206C696768743B0D0A20202D2D75742D70616C657474652D67656E657269633A20236632663266323B0D0A20202D2D75742D70616C657474652D67656E657269632D636F6E74726173743A20233030303B0D0A20202D2D75742D70616C';
wwv_flow_imp.g_varchar2_table(191) := '657474652D67656E657269632D73686164653A20236639663966393B0D0A20202D2D75742D70616C657474652D67656E657269632D746578743A20233030303B0D0A20202D2D612D67762D6865616465722D6261636B67726F756E642D636F6C6F723A20';
wwv_flow_imp.g_varchar2_table(192) := '766172282D2D75742D726567696F6E2D6865616465722D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D75742D7265706F72742D63656C6C2D616C742D6261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E';
wwv_flow_imp.g_varchar2_table(193) := '3035293B0D0A20202D2D75742D7265706F72742D6865616465722D6261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E303235293B0D0A20202D2D75742D6865616465722D626F726465722D636F6C6F723A2072676261';
wwv_flow_imp.g_varchar2_table(194) := '28302C20302C20302C20302E31293B0D0A20202D2D75742D6865616465722D626F782D736861646F773A20766172282D2D75742D736861646F772D736D293B0D0A20202D2D75742D666F6F7465722D6261636B67726F756E642D636F6C6F723A20236632';
wwv_flow_imp.g_varchar2_table(195) := '663266323B0D0A20202D2D75742D666F6F7465722D626F726465722D636F6C6F723A207267626128302C20302C20302C20302E3035293B0D0A20202D2D75742D666F6F7465722D6974656D2D73706163696E673A20302E373572656D3B0D0A20202D2D75';
wwv_flow_imp.g_varchar2_table(196) := '742D6E6176746162732D6974656D2D626F726465722D77696474683A203170783B0D0A20202D2D75742D6E6176746162732D6974656D2D686967686C696768742D636F6C6F723A207472616E73706172656E743B0D0A20202D2D75742D6E617674616273';
wwv_flow_imp.g_varchar2_table(197) := '2D6974656D2D686967686C696768742D77696474683A203072656D3B0D0A20202D2D75742D6E6176746162732D6974656D2D6163746976652D686967686C696768742D636F6C6F723A20766172282D2D75742D70616C657474652D7072696D617279293B';
wwv_flow_imp.g_varchar2_table(198) := '0D0A20202D2D75742D6E61766261722D627574746F6E2D62616467652D6261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E33293B0D0A20202D2D75742D6E61766261722D627574746F6E2D62616467652D626F726465';
wwv_flow_imp.g_varchar2_table(199) := '722D7261646975733A20313670783B0D0A20202D2D75742D626F64792D6E61762D626F726465722D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D626F726465722D636F6C6F72293B0D0A20202D2D75742D626F64792D7469746C652D';
wwv_flow_imp.g_varchar2_table(200) := '626F726465722D77696474683A203070783B0D0A20202D2D75742D626F64792D7469746C652D626F782D736861646F773A20302031707820302030207267626128302C20302C20302C20302E31293B0D0A20202D2D75742D626F64792D7469746C652D62';
wwv_flow_imp.g_varchar2_table(201) := '61636B64726F702D66696C7465723A20736174757261746528313830252920626C757228387078293B0D0A20202D2D75742D62726561646372756D622D726567696F6E2D73706163696E673A20302E3572656D3B0D0A20202D2D75742D62726561646372';
wwv_flow_imp.g_varchar2_table(202) := '756D622D6974656D2D6163746976652D746578742D636F6C6F723A20766172282D2D75742D626F64792D7469746C652D746578742D636F6C6F72293B0D0A20202D2D75742D736D6172742D66696C7465722D6D61782D77696474683A20333072656D3B0D';
wwv_flow_imp.g_varchar2_table(203) := '0A20202D2D75742D6865726F2D726567696F6E2D7469746C652D746578742D636F6C6F723A20766172282D2D75742D626F64792D7469746C652D746578742D636F6C6F72293B0D0A20202D2D75742D726567696F6E2D626F726465722D77696474683A20';
wwv_flow_imp.g_varchar2_table(204) := '3170783B0D0A20202D2D75742D726567696F6E2D626F782D736861646F773A20766172282D2D75742D736861646F772D736D293B0D0A20202D2D75742D726567696F6E2D6D617267696E3A203172656D3B0D0A20202D2D75742D726567696F6E2D666F6E';
wwv_flow_imp.g_varchar2_table(205) := '742D73697A653A20302E38373572656D3B0D0A20202D2D75742D726567696F6E2D6C696E652D6865696768743A20312E323572656D3B0D0A20202D2D75742D726567696F6E2D6865616465722D626F726465722D636F6C6F723A207267626128302C2030';
wwv_flow_imp.g_varchar2_table(206) := '2C20302C20302E303735293B0D0A20202D2D75742D726567696F6E2D626F64792D70616464696E672D793A203172656D3B0D0A20202D2D75742D726567696F6E2D626F64792D70616464696E672D783A203172656D3B0D0A20202D2D75742D726567696F';
wwv_flow_imp.g_varchar2_table(207) := '6E2D627574746F6E732D70616464696E672D793A20302E3572656D3B0D0A20202D2D75742D726567696F6E2D627574746F6E732D70616464696E672D783A20302E373572656D3B0D0A20202D2D75742D627574746F6E2D726567696F6E2D626F782D7368';
wwv_flow_imp.g_varchar2_table(208) := '61646F773A20766172282D2D75742D736861646F772D736D293B0D0A20202D2D75742D636865636B626F782D6974656D2D73706163696E673A203172656D3B0D0A20202D2D75742D78732D6669656C642D696E7075742D666F6E742D73697A653A203172';
wwv_flow_imp.g_varchar2_table(209) := '656D3B0D0A20202D2D75742D78732D6669656C642D696E7075742D6C696E652D6865696768743A20312E323572656D3B0D0A20202D2D75742D6C6F67696E2D706167652D6261636B67726F756E642D636F6C6F723A20236536653665363B0D0A20202D2D';
wwv_flow_imp.g_varchar2_table(210) := '75742D6C6F67696E2D726567696F6E2D6261636B67726F756E642D636F6C6F723A2072676261283235352C203235352C203235352C20302E3635293B0D0A20202D2D75742D6C6F67696E2D726567696F6E2D66696C7465723A20626C757228347078293B';
wwv_flow_imp.g_varchar2_table(211) := '0D0A20202D2D75742D6C6F67696E2D726567696F6E2D626F782D736861646F773A20766172282D2D75742D736861646F772D6C67293B0D0A20202D2D612D66732D746F67676C652D626F726465722D636F6C6F723A20766172282D2D612D627574746F6E';
wwv_flow_imp.g_varchar2_table(212) := '2D626F726465722D636F6C6F72293B0D0A20202D2D612D66732D746F67676C652D626F726465722D77696474683A20766172282D2D612D627574746F6E2D626F726465722D7769647468293B0D0A20202D2D612D66732D746F67676C652D626F72646572';
wwv_flow_imp.g_varchar2_table(213) := '2D7261646975733A20766172282D2D612D627574746F6E2D626F726465722D726164697573293B0D0A20202D2D612D66732D746F67676C652D746578742D636F6C6F723A20766172282D2D612D627574746F6E2D746578742D636F6C6F72293B0D0A2020';
wwv_flow_imp.g_varchar2_table(214) := '2D2D612D66732D746F67676C652D6261636B67726F756E642D636F6C6F723A20766172282D2D612D627574746F6E2D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D612D66732D7365617263682D636F6E7461696E65722D626F726465722D';
wwv_flow_imp.g_varchar2_table(215) := '77696474683A20766172282D2D612D627574746F6E2D626F726465722D7769647468293B0D0A20202D2D612D66732D7365617263682D636F6E7461696E65722D626F726465722D636F6C6F723A20766172282D2D612D627574746F6E2D626F726465722D';
wwv_flow_imp.g_varchar2_table(216) := '636F6C6F72293B0D0A20202D2D75742D616C6572742D7469746C652D666F6E742D7765696768743A20766172282D2D612D626173652D666F6E742D7765696768742D73656D69626F6C642C20353030293B0D0A20202D2D75742D616C6572742D626F782D';
wwv_flow_imp.g_varchar2_table(217) := '736861646F773A20766172282D2D75742D736861646F772D736D293B0D0A20202D2D6D672D6374726C2D67726F75702D627574746F6E2D746578742D636F6C6F723A20233030303B0D0A20202D2D6D672D706F7075702D636F6E74656E742D626F782D73';
wwv_flow_imp.g_varchar2_table(218) := '6861646F773A20766172282D2D75742D736861646F772D6C67293B0D0A20202D2D612D6D61702D6C6567656E642D7469746C652D746578742D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D746578742D6D757465642D636F6C6F7229';
wwv_flow_imp.g_varchar2_table(219) := '3B0D0A20202D2D75742D636172646C6973742D626F782D736861646F773A20766172282D2D75742D736861646F772D736D293B0D0A20202D2D75742D6C696E6B736C6973742D6172726F772D636F6C6F723A207267626128302C20302C20302C20302E32';
wwv_flow_imp.g_varchar2_table(220) := '293B0D0A20202D2D75742D746162732D6974656D2D746578742D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D746578742D64656661756C742D636F6C6F72293B0D0A20202D2D75742D746162732D6974656D2D6163746976652D7465';
wwv_flow_imp.g_varchar2_table(221) := '78742D636F6C6F723A20766172282D2D75742D6C696E6B2D746578742D636F6C6F72293B0D0A20202D2D75742D746162732D6974656D2D68696E742D686967686C696768742D636F6C6F723A207267626128302C20302C20302C20302E32293B0D0A2020';
wwv_flow_imp.g_varchar2_table(222) := '2D2D75742D746162732D6974656D2D6163746976652D666F6E742D7765696768743A20766172282D2D612D626173652D666F6E742D7765696768742D626F6C642C20373030293B0D0A20202D2D75742D636F6D6D656E742D636861742D6261636B67726F';
wwv_flow_imp.g_varchar2_table(223) := '756E642D636F6C6F723A207267626128302C20302C20302C20302E3035293B0D0A20202D2D75742D636F6D6D656E742D636861742D6163746976652D6261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E31293B0D0A20';
wwv_flow_imp.g_varchar2_table(224) := '202D2D75742D726573756C7473726567696F6E2D6261636B67726F756E642D636F6C6F723A20236666663B0D0A20202D2D75742D726573756C7473726567696F6E2D626F726465722D636F6C6F723A20766172282D2D75742D726567696F6E2D626F7264';
wwv_flow_imp.g_varchar2_table(225) := '65722D636F6C6F72293B0D0A20202D2D75742D726573756C7473726567696F6E2D7365617263682D626F726465722D636F6C6F723A207267626128302C20302C20302C20302E31293B0D0A20202D2D75742D726573756C7473726567696F6E2D73656172';
wwv_flow_imp.g_varchar2_table(226) := '63682D6261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E303235293B0D0A20202D2D75742D77702D6D61726B65722D636F6C6F723A20236439643964393B0D0A20202D2D75742D77702D747261636B2D636F6C6F723A';
wwv_flow_imp.g_varchar2_table(227) := '20236439643964393B0D0A20202D2D612D7172636F64652D73697A653A203872656D3B0D0A20202D2D612D7172636F64652D73697A652D736D3A203872656D3B0D0A20202D2D612D7172636F64652D73697A652D6D643A20313672656D3B0D0A20202D2D';
wwv_flow_imp.g_varchar2_table(228) := '612D7172636F64652D73697A652D6C673A20333272656D3B0D0A20202D2D612D636861742D6261636B67726F756E643A20766172282D2D75742D626F64792D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D612D636861742D7469746C652D';
wwv_flow_imp.g_varchar2_table(229) := '6261636B67726F756E643A20766172282D2D75742D626F64792D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D612D636861742D7469746C652D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D746578742D7469746C652D';
wwv_flow_imp.g_varchar2_table(230) := '636F6C6F72293B0D0A20202D2D612D636861742D626F64792D6261636B67726F756E642D636F6C6F723A20766172282D2D75742D626F64792D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D612D636861742D757365722D7072696D617279';
wwv_flow_imp.g_varchar2_table(231) := '2D69636F6E2D6261636B67726F756E642D636F6C6F723A20766172282D2D75742D70616C657474652D7072696D617279293B0D0A20202D2D612D636861742D757365722D7072696D6172792D69636F6E2D746578742D636F6C6F723A20766172282D2D75';
wwv_flow_imp.g_varchar2_table(232) := '742D70616C657474652D7072696D6172792D636F6E7472617374293B0D0A20202D2D612D636861742D757365722D7072696D6172792D6D6573736167652D6261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3135293B';
wwv_flow_imp.g_varchar2_table(233) := '0D0A20202D2D612D636861742D757365722D7072696D6172792D746578742D636F6C6F723A20766172282D2D75742D626F64792D746578742D636F6C6F72293B0D0A20202D2D612D636861742D757365722D7365636F6E646172792D69636F6E2D626163';
wwv_flow_imp.g_varchar2_table(234) := '6B67726F756E642D636F6C6F723A20766172282D2D75742D70616C657474652D64616E676572293B0D0A20202D2D612D636861742D757365722D7365636F6E646172792D69636F6E2D746578742D636F6C6F723A20766172282D2D75742D70616C657474';
wwv_flow_imp.g_varchar2_table(235) := '652D64616E6765722D636F6E7472617374293B0D0A20202D2D612D636861742D757365722D7365636F6E646172792D6D6573736167652D6261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3035293B0D0A20202D2D61';
wwv_flow_imp.g_varchar2_table(236) := '2D636861742D757365722D7365636F6E646172792D746578742D636F6C6F723A20766172282D2D75742D626F64792D746578742D636F6C6F72293B0D0A20202D2D612D636861742D6D6573736167652D626F726465722D636F6C6F723A20766172282D2D';
wwv_flow_imp.g_varchar2_table(237) := '75742D636F6D706F6E656E742D626F726465722D636F6C6F72293B0D0A20202D2D612D636861742D73656E642D627574746F6E2D686F7665722D6261636B67726F756E642D636F6C6F723A20766172282D2D612D627574746F6E2D73746174652D626163';
wwv_flow_imp.g_varchar2_table(238) := '6B67726F756E642D636F6C6F72293B0D0A20202D2D612D636861742D6D6573736167652D616374696F6E2D627574746F6E2D6261636B67726F756E642D636F6C6F723A20236666663B0D0A20202D2D612D636861742D6D6573736167652D616374696F6E';
wwv_flow_imp.g_varchar2_table(239) := '2D627574746F6E2D73746174652D6261636B67726F756E642D636F6C6F723A20236638663866383B0D0A20202D2D612D636861742D6D6573736167652D6572726F722D69636F6E2D636F6C6F723A20766172282D2D75742D70616C657474652D64616E67';
wwv_flow_imp.g_varchar2_table(240) := '6572293B0D0A20202D2D612D636861742D7472616E7363726970742D6F75746C696E652D636F6C6F723A20766172282D2D75742D666F6375732D6F75746C696E652D636F6C6F722C202D7765626B69742D666F6375732D72696E672D636F6C6F72293B0D';
wwv_flow_imp.g_varchar2_table(241) := '0A20202D2D66632D6E65757472616C2D62672D636F6C6F723A207267626128302C20302C20302C20302E32293B0D0A20202D2D66632D6E65757472616C2D746578742D636F6C6F723A20233030303B0D0A20202D2D66632D6576656E742D73656C656374';
wwv_flow_imp.g_varchar2_table(242) := '65642D6F7665726C61792D636F6C6F723A207267626128302C20302C20302C20302E32293B0D0A20202D2D66632D6E6F6E2D627573696E6573732D636F6C6F723A207267626128302C20302C20302C20302E32293B0D0A20202D2D612D6469616772616D';
wwv_flow_imp.g_varchar2_table(243) := '2D6261636B67726F756E643A20766172282D2D75742D726567696F6E2D6261636B67726F756E642D636F6C6F722C20766172282D2D75742D636F6D706F6E656E742D6261636B67726F756E642D636F6C6F7229293B0D0A20202D2D612D6469616772616D';
wwv_flow_imp.g_varchar2_table(244) := '2D656C656D656E742D6261636B67726F756E642D636F6C6F723A20766172282D2D75742D626F64792D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D612D6469616772616D2D656C656D656E742D746578742D636F6C6F723A20766172282D';
wwv_flow_imp.g_varchar2_table(245) := '2D75742D626F64792D746578742D636F6C6F72293B0D0A20202D2D612D6469616772616D2D656C656D656E742D736861646F773A207267626128302C20302C20302C20302E332920302036707820313270783B0D0A20202D2D612D6469616772616D2D65';
wwv_flow_imp.g_varchar2_table(246) := '6C656D656E742D69636F6E2D636F6C6F723A20236666663B0D0A20202D2D612D6469616772616D2D656C656D656E742D69636F6E2D6261636B67726F756E642D636F6C6F723A20236363636363633B0D0A20202D2D612D6469616772616D2D656C656D65';
wwv_flow_imp.g_varchar2_table(247) := '6E742D6469616D6F6E642D746578742D636F6C6F723A20766172282D2D752D636F6C6F722D33382D636F6E7472617374293B0D0A20202D2D612D6469616772616D2D656C656D656E742D6469616D6F6E642D6261636B67726F756E642D636F6C6F723A20';
wwv_flow_imp.g_varchar2_table(248) := '766172282D2D752D636F6C6F722D3338293B0D0A20202D2D612D6469616772616D2D656C656D656E742D726563742D6261636B67726F756E642D636F6C6F723A20766172282D2D752D636F6C6F722D3331293B0D0A20202D2D612D6469616772616D2D65';
wwv_flow_imp.g_varchar2_table(249) := '6C656D656E742D726563742D746578742D636F6C6F723A20766172282D2D752D636F6C6F722D33312D636F6E7472617374293B0D0A20202D2D612D6469616772616D2D656C656D656E742D7465726D696E61746F722D746578742D636F6C6F723A202366';
wwv_flow_imp.g_varchar2_table(250) := '66663B0D0A20202D2D612D6469616772616D2D656C656D656E742D7465726D696E61746F722D6261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3935293B0D0A20202D2D612D6469616772616D2D6C6162656C2D6261';
wwv_flow_imp.g_varchar2_table(251) := '636B67726F756E642D636F6C6F723A20766172282D2D752D636F6C6F722D3435293B0D0A20202D2D612D6469616772616D2D6C6162656C2D746578742D636F6C6F723A20766172282D2D752D636F6C6F722D34352D636F6E7472617374293B0D0A20202D';
wwv_flow_imp.g_varchar2_table(252) := '2D612D6469616772616D2D6C696E6B2D626F726465722D636F6C6F723A20766172282D2D752D636F6C6F722D3434293B0D0A20202D2D612D6469616772616D2D6E6176696761746F722D626F726465722D636F6C6F723A20766172282D2D75742D70616C';
wwv_flow_imp.g_varchar2_table(253) := '657474652D7072696D617279293B0D0A20202D2D612D6469616772616D2D6E6176696761746F722D6261636B67726F756E642D636F6C6F723A20766172282D2D612D6469616772616D2D6261636B67726F756E64293B0D0A20202D2D612D646961677261';
wwv_flow_imp.g_varchar2_table(254) := '6D2D63656C6C2D686967686C696768743A20766172282D2D75742D70616C657474652D73756363657373293B0D0A20202D2D612D6469616772616D2D726F7574652D7465726D696E617465643A20766172282D2D75742D70616C657474652D7761726E69';
wwv_flow_imp.g_varchar2_table(255) := '6E67293B0D0A20202D2D612D6469616772616D2D726F7574652D6661756C7465643A20766172282D2D75742D70616C657474652D64616E676572293B0D0A20202D2D612D6469616772616D2D726F7574652D6163746976653A20766172282D2D75742D70';
wwv_flow_imp.g_varchar2_table(256) := '616C657474652D7072696D617279293B0D0A20202D2D612D6469616772616D2D726F7574652D636F6D706C657465643A20766172282D2D75742D70616C657474652D73756363657373293B0D0A20202D2D612D6469616772616D2D726F7574652D646566';
wwv_flow_imp.g_varchar2_table(257) := '61756C743A20766172282D2D612D6469616772616D2D726F7574652D636F6D706C65746564293B0D0A20202D2D612D6469616772616D2D726F7574652D77616974696E673A20766172282D2D75742D70616C657474652D696E666F293B0D0A20202D2D61';
wwv_flow_imp.g_varchar2_table(258) := '2D6469616772616D2D726F7574652D73757370656E6465643A20766172282D2D75742D70616C657474652D7761726E696E672D7368616465293B0D0A20202D2D612D63722D636865636B626F782D6261636B67726F756E642D636F6C6F723A2023663966';
wwv_flow_imp.g_varchar2_table(259) := '3966393B0D0A20202D2D612D63722D636865636B626F782D746578742D636F6C6F723A20766172282D2D612D70616C657474652D7072696D6172792D636F6E7472617374293B0D0A20202D2D75742D616C7465726E6174652D68656164696E672D666F6E';
wwv_flow_imp.g_varchar2_table(260) := '742D66616D696C793A20766172282D2D612D626173652D666F6E742D66616D696C792D7365726966293B0D0A20202D2D75742D616C7465726E6174652D68656164696E672D666F6E742D7765696768743A20766172282D2D612D626173652D666F6E742D';
wwv_flow_imp.g_varchar2_table(261) := '7765696768742D6E6F726D616C293B0D0A20202D2D75742D636F6D706F6E656E742D626F726465722D636F6C6F723A207267626128302C20302C20302C20302E31293B0D0A20202D2D75742D636F6D706F6E656E742D626F726465722D77696474683A20';
wwv_flow_imp.g_varchar2_table(262) := '3170783B0D0A20202D2D75742D636F6D706F6E656E742D626F726465722D7261646975733A20302E323572656D3B0D0A20202D2D75742D636F6D706F6E656E742D626F782D736861646F773A20766172282D2D75742D736861646F772D6C67293B0D0A20';
wwv_flow_imp.g_varchar2_table(263) := '202D2D75742D636F6D706F6E656E742D686967686C696768742D6261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E303235293B0D0A20202D2D75742D636F6D706F6E656E742D746F6F6C6261722D6261636B67726F75';
wwv_flow_imp.g_varchar2_table(264) := '6E642D636F6C6F723A207267626128302C20302C20302C20302E303235293B0D0A20202D2D75742D636F6D706F6E656E742D696E6E65722D626F726465722D77696474683A20766172282D2D75742D636F6D706F6E656E742D626F726465722D77696474';
wwv_flow_imp.g_varchar2_table(265) := '68293B0D0A20202D2D75742D636F6D706F6E656E742D696E6E65722D626F726465722D636F6C6F723A207267626128302C20302C20302C20302E3035293B0D0A20202D2D75742D636F6D706F6E656E742D746578742D64656661756C742D636F6C6F723A';
wwv_flow_imp.g_varchar2_table(266) := '20233030303B0D0A20202D2D75742D636F6D706F6E656E742D746578742D7469746C652D636F6C6F723A20233030303B0D0A20202D2D75742D636F6D706F6E656E742D746578742D7375627469746C652D636F6C6F723A207267626128302C20302C2030';
wwv_flow_imp.g_varchar2_table(267) := '2C20302E3835293B0D0A20202D2D75742D636F6D706F6E656E742D746578742D6D757465642D636F6C6F723A207267626128302C20302C20302C20302E3635293B0D0A20202D2D75742D636F6D706F6E656E742D69636F6E2D6261636B67726F756E642D';
wwv_flow_imp.g_varchar2_table(268) := '636F6C6F723A20766172282D2D75742D70616C657474652D7072696D617279293B0D0A20202D2D75742D636F6D706F6E656E742D69636F6E2D636F6C6F723A20766172282D2D75742D70616C657474652D7072696D6172792D636F6E7472617374293B0D';
wwv_flow_imp.g_varchar2_table(269) := '0A20202D2D75742D636F6D706F6E656E742D62616467652D6261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3035293B0D0A20202D2D75742D636F6D706F6E656E742D62616467652D746578742D636F6C6F723A2076';
wwv_flow_imp.g_varchar2_table(270) := '6172282D2D75742D636F6D706F6E656E742D746578742D64656661756C742D636F6C6F72293B0D0A20202D2D75742D636F6D706F6E656E742D62616467652D626F726465722D7261646975733A20302E323572656D3B0D0A20202D2D75742D736861646F';
wwv_flow_imp.g_varchar2_table(271) := '772D736D3A203020302E31323572656D20302E323572656D202D302E31323572656D207267626128302C20302C20302C20302E31293B0D0A20202D2D75742D736861646F772D6D643A203020302E373572656D20312E3572656D202D302E373572656D20';
wwv_flow_imp.g_varchar2_table(272) := '7267626128302C20302C20302C20302E33293B0D0A20202D2D75742D736861646F772D6C673A203020312E3572656D203372656D202D312E3572656D207267626128302C20302C20302C20302E33293B0D0A20202D2D75742D626F726465722D72616469';
wwv_flow_imp.g_varchar2_table(273) := '75732D736D3A20302E31323572656D3B0D0A20202D2D75742D626F726465722D7261646975732D6D643A20302E323572656D3B0D0A20202D2D75742D626F726465722D7261646975732D6C673A20302E3572656D3B0D0A20202D2D75742D626F72646572';
wwv_flow_imp.g_varchar2_table(274) := '2D7261646975733A20766172282D2D75742D626F726465722D7261646975732D6D64293B0D0A7D0D0A3A726F6F74207B0D0A20202D2D75742D70616C657474652D7072696D6172793A20233035396130633B0D0A20202D2D75742D70616C657474652D70';
wwv_flow_imp.g_varchar2_table(275) := '72696D6172792D636F6E74726173743A20236666666666663B0D0A20202D2D75742D70616C657474652D7072696D6172792D73686164653A20236536663565373B0D0A20202D2D75742D70616C657474652D7072696D6172792D746578743A2076617228';
wwv_flow_imp.g_varchar2_table(276) := '2D2D612D70616C657474652D7072696D617279293B0D0A7D0D0A3A726F6F74207B0D0A20202D2D75742D6C696E6B2D746578742D636F6C6F723A20233035396130633B0D0A7D0D0A3A726F6F74207B0D0A20202D2D75742D666F6375732D6F75746C696E';
wwv_flow_imp.g_varchar2_table(277) := '652D636F6C6F723A20233035396130633B0D0A7D0D0A3A726F6F74207B0D0A20202D2D75742D636F6D706F6E656E742D626F726465722D7261646975733A20302E31323572656D3B0D0A7D0D0A3A726F6F74207B0D0A20202D2D75742D6865616465722D';
wwv_flow_imp.g_varchar2_table(278) := '6261636B67726F756E642D636F6C6F723A20233035396130633B0D0A20202D2D75742D6865616465722D746578742D636F6C6F723A20236666666666663B0D0A7D0D0A3A726F6F74207B0D0A20202D2D75742D626F64792D6261636B67726F756E642D63';
wwv_flow_imp.g_varchar2_table(279) := '6F6C6F723A20234644464446443B0D0A20202D2D75742D626F64792D746578742D636F6C6F723A20233030303030303B0D0A7D0D0A3A726F6F74207B0D0A20202D2D75742D626F64792D616374696F6E732D6261636B67726F756E642D636F6C6F723A20';
wwv_flow_imp.g_varchar2_table(280) := '236639663966393B0D0A20202D2D75742D626F64792D616374696F6E732D746578742D636F6C6F723A20233030303030303B0D0A20202D2D75742D626F64792D616374696F6E73746F67676C652D6261636B67726F756E642D636F6C6F723A2023663966';
wwv_flow_imp.g_varchar2_table(281) := '3966393B0D0A20202D2D75742D626F64792D616374696F6E73746F67676C652D686F7665722D6261636B67726F756E642D636F6C6F723A20236530653065303B0D0A7D0D0A3A726F6F74207B0D0A20202D2D75742D626F64792D7469746C652D6261636B';
wwv_flow_imp.g_varchar2_table(282) := '67726F756E642D636F6C6F723A20236666666666663B0D0A20202D2D75742D626F64792D7469746C652D746578742D636F6C6F723A20233030303030303B0D0A20202D2D75742D62726561646372756D622D6974656D2D746578742D636F6C6F723A2072';
wwv_flow_imp.g_varchar2_table(283) := '67626128302C20302C20302C20302E3635293B0D0A7D0D0A3A726F6F74207B0D0A20202D2D75742D626F64792D736964656261722D6261636B67726F756E642D636F6C6F723A20236666666666663B0D0A20202D2D75742D626F64792D73696465626172';
wwv_flow_imp.g_varchar2_table(284) := '2D746578742D636F6C6F723A20233030303030303B0D0A7D0D0A3A726F6F74207B0D0A20202D2D75742D626F64792D6E61762D6261636B67726F756E642D636F6C6F723A20233161316631613B0D0A20202D2D75742D626F64792D6E61762D746578742D';
wwv_flow_imp.g_varchar2_table(285) := '636F6C6F723A20236537656165373B0D0A20202D2D75742D626F64792D6E61762D7363726F6C6C6261722D7468756D622D6261636B67726F756E642D636F6C6F723A2072676261283235352C203235352C203235352C20302E32293B0D0A20202D2D7574';
wwv_flow_imp.g_varchar2_table(286) := '2D626F64792D6E61762D7363726F6C6C6261722D747261636B2D6261636B67726F756E642D636F6C6F723A20233161316631613B0D0A20202D2D75742D6E6176746162732D6261636B67726F756E642D636F6C6F723A20233161316631613B0D0A20202D';
wwv_flow_imp.g_varchar2_table(287) := '2D75742D6E6176746162732D746578742D636F6C6F723A20236537656165373B0D0A20202D2D75742D6E6176746162732D6974656D2D626F726465722D636F6C6F723A2072676261283235352C203235352C203235352C20302E31293B0D0A20202D2D75';
wwv_flow_imp.g_varchar2_table(288) := '742D6E6176746162732D6974656D2D6163746976652D6261636B67726F756E642D636F6C6F723A20233033303330333B0D0A20202D2D75742D6E6176746162732D6974656D2D686F7665722D6261636B67726F756E642D636F6C6F723A20766172282D2D';
wwv_flow_imp.g_varchar2_table(289) := '75742D6E6176746162732D6974656D2D6163746976652D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D75742D6865616465722D6D656E756261722D6261636B67726F756E642D636F6C6F723A20233161316631613B0D0A20202D2D75742D';
wwv_flow_imp.g_varchar2_table(290) := '6865616465722D6D656E756261722D6974656D2D746578742D636F6C6F723A20236537656165373B0D0A20202D2D75742D6865616465722D6D656E756261722D6974656D2D63757272656E742D6261636B67726F756E642D636F6C6F723A202330333033';
wwv_flow_imp.g_varchar2_table(291) := '30333B0D0A20202D2D75742D6865616465722D6D656E756261722D6974656D2D63757272656E742D746578742D636F6C6F723A20236537656165373B0D0A20202D2D75742D6865616465722D6D656E756261722D6974656D2D686F7665722D6261636B67';
wwv_flow_imp.g_varchar2_table(292) := '726F756E642D636F6C6F723A20766172282D2D75742D6865616465722D6D656E756261722D6974656D2D63757272656E742D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D75742D6865616465722D6D656E756261722D6974656D2D686F76';
wwv_flow_imp.g_varchar2_table(293) := '65722D746578742D636F6C6F723A20766172282D2D75742D6865616465722D6D656E756261722D6974656D2D63757272656E742D746578742D636F6C6F72293B0D0A20202D2D75742D6865616465722D6D656E756261722D6974656D2D626F726465722D';
wwv_flow_imp.g_varchar2_table(294) := '636F6C6F723A2072676261283235352C203235352C203235352C20302E31293B0D0A20202D2D75742D6865616465722D6D656E756261722D6974656D2D73706C69742D69636F6E2D636F6C6F723A20236537656165373B0D0A20202D2D75742D68656164';
wwv_flow_imp.g_varchar2_table(295) := '65722D6D656E756261722D6974656D2D73706C69742D626F726465722D636F6C6F723A2072676261283235352C203235352C203235352C20302E31293B0D0A7D0D0A3A726F6F74207B0D0A20202D2D612D74726565766965772D6E6F64652D73656C6563';
wwv_flow_imp.g_varchar2_table(296) := '7465642D6261636B67726F756E642D636F6C6F723A20233033303330333B0D0A20202D2D612D74726565766965772D6E6F64652D73656C65637465642D746578742D636F6C6F723A20236634663666343B0D0A20202D2D612D74726565766965772D6E6F';
wwv_flow_imp.g_varchar2_table(297) := '64652D666F63757365642D6261636B67726F756E642D636F6C6F723A20233033303330333B0D0A20202D2D612D74726565766965772D6E6F64652D666F63757365642D746578742D636F6C6F723A20236634663666343B0D0A7D0D0A3A726F6F74207B0D';
wwv_flow_imp.g_varchar2_table(298) := '0A20202D2D612D74726565766965772D6E6F64652D73656C65637465642D69636F6E2D636F6C6F723A20236634663666343B0D0A20202D2D612D74726565766965772D6E6F64652D69636F6E2D636F6C6F723A20696E68657269743B0D0A7D0D0A3A726F';
wwv_flow_imp.g_varchar2_table(299) := '6F74207B0D0A20202D2D75742D74726565766965772D62616467652D6261636B67726F756E642D636F6C6F723A20233035396130633B0D0A20202D2D75742D74726565766965772D62616467652D746578742D636F6C6F723A20236666666666663B0D0A';
wwv_flow_imp.g_varchar2_table(300) := '7D0D0A3A726F6F74207B0D0A20202D2D612D6D656E752D6261636B67726F756E642D636F6C6F723A20234646464646463B0D0A20202D2D612D6D656E752D746578742D636F6C6F723A20233236323632363B0D0A20202D2D612D6D656E752D6465666175';
wwv_flow_imp.g_varchar2_table(301) := '6C742D746578742D636F6C6F723A20766172282D2D612D6D656E752D746578742D636F6C6F72293B0D0A20202D2D612D6D656E752D616363656C2D746578742D636F6C6F723A20766172282D2D612D6D656E752D746578742D636F6C6F72293B0D0A7D0D';
wwv_flow_imp.g_varchar2_table(302) := '0A3A726F6F74207B0D0A20202D2D612D6D656E752D666F63757365642D6261636B67726F756E642D636F6C6F723A20233035396130633B0D0A20202D2D612D6D656E752D666F63757365642D746578742D636F6C6F723A20236666666666663B0D0A2020';
wwv_flow_imp.g_varchar2_table(303) := '2D2D612D6D656E752D666F63757365642D616363656C2D746578742D636F6C6F723A20766172282D2D612D6D656E752D666F63757365642D746578742D636F6C6F72293B0D0A7D0D0A3A726F6F74207B0D0A20202D2D75742D726567696F6E2D68656164';
wwv_flow_imp.g_varchar2_table(304) := '65722D6261636B67726F756E642D636F6C6F723A20236666666666663B0D0A20202D2D75742D726567696F6E2D6865616465722D746578742D636F6C6F723A20233236323632363B0D0A7D0D0A3A726F6F74207B0D0A20202D2D75742D726567696F6E2D';
wwv_flow_imp.g_varchar2_table(305) := '6261636B67726F756E642D636F6C6F723A20236666666666663B0D0A20202D2D75742D726567696F6E2D746578742D636F6C6F723A20233236323632363B0D0A20202D2D75742D636F6D706F6E656E742D6261636B67726F756E642D636F6C6F723A2023';
wwv_flow_imp.g_varchar2_table(306) := '6666666666663B0D0A20202D2D75742D77697A6172642D6865616465722D6261636B67726F756E642D636F6C6F723A20236661666166613B0D0A20202D2D75742D7265706F72742D63656C6C2D626F726465722D636F6C6F723A20236536653665363B0D';
wwv_flow_imp.g_varchar2_table(307) := '0A20202D2D75742D7265706F72742D63656C6C2D686F7665722D6261636B67726F756E642D636F6C6F723A20236661666166613B0D0A7D0D0A3A726F6F74207B0D0A20202D2D75742D70616C657474652D7072696D6172792D616C743A20233731666137';
wwv_flow_imp.g_varchar2_table(308) := '373B0D0A20202D2D75742D70616C657474652D7072696D6172792D616C742D636F6E74726173743A20233030303030303B0D0A20202D2D75742D70616C657474652D7072696D6172792D616C742D73686164653A20236638666666383B0D0A20202D2D75';
wwv_flow_imp.g_varchar2_table(309) := '742D70616C657474652D7072696D6172792D616C742D746578743A20233366383434323B0D0A7D0D0A3A726F6F74207B0D0A20202D2D75742D70616C657474652D737563636573733A20233237383730313B0D0A20202D2D75742D70616C657474652D73';
wwv_flow_imp.g_varchar2_table(310) := '7563636573732D636F6E74726173743A20234646463B0D0A20202D2D75742D70616C657474652D737563636573732D73686164653A20236634663966323B0D0A20202D2D75742D70616C657474652D737563636573732D746578743A2023346437643361';
wwv_flow_imp.g_varchar2_table(311) := '3B0D0A7D0D0A3A726F6F74207B0D0A20202D2D75742D70616C657474652D696E666F3A20233035364143383B0D0A20202D2D75742D70616C657474652D696E666F2D636F6E74726173743A20234646463B0D0A20202D2D75742D70616C657474652D696E';
wwv_flow_imp.g_varchar2_table(312) := '666F2D73686164653A20236633663866633B0D0A20202D2D75742D70616C657474652D696E666F2D746578743A20233432373561343B0D0A7D0D0A3A726F6F74207B0D0A20202D2D75742D70616C657474652D7761726E696E673A20234646433632383B';
wwv_flow_imp.g_varchar2_table(313) := '0D0A20202D2D75742D70616C657474652D7761726E696E672D636F6E74726173743A20233030303B0D0A20202D2D75742D70616C657474652D7761726E696E672D73686164653A20236666663664663B0D0A20202D2D75742D70616C657474652D776172';
wwv_flow_imp.g_varchar2_table(314) := '6E696E672D746578743A20233863373032313B0D0A7D0D0A3A726F6F74207B0D0A20202D2D75742D70616C657474652D64616E6765723A20234342313130303B0D0A20202D2D75742D70616C657474652D64616E6765722D636F6E74726173743A202346';
wwv_flow_imp.g_varchar2_table(315) := '46463B0D0A20202D2D75742D70616C657474652D64616E6765722D73686164653A20236662656565643B0D0A20202D2D75742D70616C657474652D64616E6765722D746578743A20236135343834303B0D0A7D0D0A3A726F6F74207B0D0A20202D2D752D';
wwv_flow_imp.g_varchar2_table(316) := '636F6C6F722D313A20233330394644423B0D0A20202D2D752D636F6C6F722D312D636F6E74726173743A20236666666666663B0D0A20202D2D752D636F6C6F722D323A20233133423643463B0D0A20202D2D752D636F6C6F722D322D636F6E7472617374';
wwv_flow_imp.g_varchar2_table(317) := '3A20236534663966643B0D0A20202D2D752D636F6C6F722D333A20233245424642433B0D0A20202D2D752D636F6C6F722D332D636F6E74726173743A20236630666366623B0D0A20202D2D752D636F6C6F722D343A20233343414638353B0D0A20202D2D';
wwv_flow_imp.g_varchar2_table(318) := '752D636F6C6F722D342D636F6E74726173743A20236630666166363B0D0A20202D2D752D636F6C6F722D353A20233831424235463B0D0A20202D2D752D636F6C6F722D352D636F6E74726173743A20236666666666663B0D0A20202D2D752D636F6C6F72';
wwv_flow_imp.g_varchar2_table(319) := '2D363A20234444444535333B0D0A20202D2D752D636F6C6F722D362D636F6E74726173743A20233261326130383B0D0A20202D2D752D636F6C6F722D373A20234642434534413B0D0A20202D2D752D636F6C6F722D372D636F6E74726173743A20233434';
wwv_flow_imp.g_varchar2_table(320) := '333330323B0D0A20202D2D752D636F6C6F722D383A20234544383133453B0D0A20202D2D752D636F6C6F722D382D636F6E74726173743A20236666666666663B0D0A20202D2D752D636F6C6F722D393A20234539354235343B0D0A20202D2D752D636F6C';
wwv_flow_imp.g_varchar2_table(321) := '6F722D392D636F6E74726173743A20236666666666663B0D0A20202D2D752D636F6C6F722D31303A20234538354438383B0D0A20202D2D752D636F6C6F722D31302D636F6E74726173743A20236666666666663B0D0A20202D2D752D636F6C6F722D3131';
wwv_flow_imp.g_varchar2_table(322) := '3A20234341353839443B0D0A20202D2D752D636F6C6F722D31312D636F6E74726173743A20236666666666663B0D0A20202D2D752D636F6C6F722D31323A20233835344539423B0D0A20202D2D752D636F6C6F722D31322D636F6E74726173743A202366';
wwv_flow_imp.g_varchar2_table(323) := '36663066383B0D0A20202D2D752D636F6C6F722D31333A20233541363841443B0D0A20202D2D752D636F6C6F722D31332D636F6E74726173743A20236666666666663B0D0A20202D2D752D636F6C6F722D31343A20234146424143353B0D0A20202D2D75';
wwv_flow_imp.g_varchar2_table(324) := '2D636F6C6F722D31342D636F6E74726173743A20233331336134343B0D0A20202D2D752D636F6C6F722D31353A20233645383539383B0D0A20202D2D752D636F6C6F722D31352D636F6E74726173743A20236666666666663B0D0A20202D2D752D636F6C';
wwv_flow_imp.g_varchar2_table(325) := '6F722D31363A20233539623265323B0D0A20202D2D752D636F6C6F722D31362D636F6E74726173743A20236666666666663B0D0A20202D2D752D636F6C6F722D31373A20233432633564393B0D0A20202D2D752D636F6C6F722D31372D636F6E74726173';
wwv_flow_imp.g_varchar2_table(326) := '743A20233035313531373B0D0A20202D2D752D636F6C6F722D31383A20233538636363393B0D0A20202D2D752D636F6C6F722D31382D636F6E74726173743A20233039316331633B0D0A20202D2D752D636F6C6F722D31393A20233633626639643B0D0A';
wwv_flow_imp.g_varchar2_table(327) := '20202D2D752D636F6C6F722D31392D636F6E74726173743A20236666666666663B0D0A20202D2D752D636F6C6F722D32303A20233961633937663B0D0A20202D2D752D636F6C6F722D32302D636F6E74726173743A20233230333331363B0D0A20202D2D';
wwv_flow_imp.g_varchar2_table(328) := '752D636F6C6F722D32313A20236534653537353B0D0A20202D2D752D636F6C6F722D32312D636F6E74726173743A20233463346330663B0D0A20202D2D752D636F6C6F722D32323A20236663643836653B0D0A20202D2D752D636F6C6F722D32322D636F';
wwv_flow_imp.g_varchar2_table(329) := '6E74726173743A20233639346630323B0D0A20202D2D752D636F6C6F722D32333A20236631396136353B0D0A20202D2D752D636F6C6F722D32332D636F6E74726173743A20236666666666663B0D0A20202D2D752D636F6C6F722D32343A202365643763';
wwv_flow_imp.g_varchar2_table(330) := '37363B0D0A20202D2D752D636F6C6F722D32342D636F6E74726173743A20236666666666663B0D0A20202D2D752D636F6C6F722D32353A20236564376461303B0D0A20202D2D752D636F6C6F722D32352D636F6E74726173743A20236666666666663B0D';
wwv_flow_imp.g_varchar2_table(331) := '0A20202D2D752D636F6C6F722D32363A20236435373962313B0D0A20202D2D752D636F6C6F722D32362D636F6E74726173743A20236666666666663B0D0A20202D2D752D636F6C6F722D32373A20233964373161663B0D0A20202D2D752D636F6C6F722D';
wwv_flow_imp.g_varchar2_table(332) := '32372D636F6E74726173743A20236666666666663B0D0A20202D2D752D636F6C6F722D32383A20233762383662643B0D0A20202D2D752D636F6C6F722D32382D636F6E74726173743A20236666666666663B0D0A20202D2D752D636F6C6F722D32393A20';
wwv_flow_imp.g_varchar2_table(333) := '236266633864313B0D0A20202D2D752D636F6C6F722D32392D636F6E74726173743A20233364343835343B0D0A20202D2D752D636F6C6F722D33303A20233862396461643B0D0A20202D2D752D636F6C6F722D33302D636F6E74726173743A2023666666';
wwv_flow_imp.g_varchar2_table(334) := '6666663B0D0A20202D2D752D636F6C6F722D33313A20233139386363613B0D0A20202D2D752D636F6C6F722D33312D636F6E74726173743A20236536663466633B0D0A20202D2D752D636F6C6F722D33323A20233032613562653B0D0A20202D2D752D63';
wwv_flow_imp.g_varchar2_table(335) := '6F6C6F722D33322D636F6E74726173743A20236331663666653B0D0A20202D2D752D636F6C6F722D33333A20233138623161653B0D0A20202D2D752D636F6C6F722D33332D636F6E74726173743A20236430663966383B0D0A20202D2D752D636F6C6F72';
wwv_flow_imp.g_varchar2_table(336) := '2D33343A20233234613437353B0D0A20202D2D752D636F6C6F722D33342D636F6E74726173743A20236432663565383B0D0A20202D2D752D636F6C6F722D33353A20233661616434323B0D0A20202D2D752D636F6C6F722D33352D636F6E74726173743A';
wwv_flow_imp.g_varchar2_table(337) := '20236636666266343B0D0A20202D2D752D636F6C6F722D33363A20236339636133393B0D0A20202D2D752D636F6C6F722D33362D636F6E74726173743A20233033303330313B0D0A20202D2D752D636F6C6F722D33373A20236439623133623B0D0A2020';
wwv_flow_imp.g_varchar2_table(338) := '2D2D752D636F6C6F722D33372D636F6E74726173743A20233132306530333B0D0A20202D2D752D636F6C6F722D33383A20236437366132373B0D0A20202D2D752D636F6C6F722D33382D636F6E74726173743A20236666666666653B0D0A20202D2D752D';
wwv_flow_imp.g_varchar2_table(339) := '636F6C6F722D33393A20236432343233623B0D0A20202D2D752D636F6C6F722D33392D636F6E74726173743A20236666666666663B0D0A20202D2D752D636F6C6F722D34303A20236431343336663B0D0A20202D2D752D636F6C6F722D34302D636F6E74';
wwv_flow_imp.g_varchar2_table(340) := '726173743A20236666666666663B0D0A20202D2D752D636F6C6F722D34313A20236261336438383B0D0A20202D2D752D636F6C6F722D34312D636F6E74726173743A20236664663966623B0D0A20202D2D752D636F6C6F722D34323A2023373733333933';
wwv_flow_imp.g_varchar2_table(341) := '3B0D0A20202D2D752D636F6C6F722D34322D636F6E74726173743A20236538643566303B0D0A20202D2D752D636F6C6F722D34333A20233364346561333B0D0A20202D2D752D636F6C6F722D34332D636F6E74726173743A20236538656266363B0D0A20';
wwv_flow_imp.g_varchar2_table(342) := '202D2D752D636F6C6F722D34343A20233863396562303B0D0A20202D2D752D636F6C6F722D34342D636F6E74726173743A20236666666666663B0D0A20202D2D752D636F6C6F722D34353A20233465373339313B0D0A20202D2D752D636F6C6F722D3435';
wwv_flow_imp.g_varchar2_table(343) := '2D636F6E74726173743A20236561656666343B0D0A7D0D0A3A726F6F74207B0D0A20202D2D612D627574746F6E2D626F726465722D7261646975733A20302E31323572656D3B0D0A7D0D0A3A726F6F74207B0D0A20202D2D612D627574746F6E2D626163';
wwv_flow_imp.g_varchar2_table(344) := '6B67726F756E642D636F6C6F723A20236638663866383B0D0A20202D2D612D627574746F6E2D746578742D636F6C6F723A20233338333833383B0D0A7D0D0A3A726F6F74207B0D0A20202D2D75742D6669656C642D6C6162656C2D746578742D636F6C6F';
wwv_flow_imp.g_varchar2_table(345) := '723A20233236323632363B0D0A7D0D0A3A726F6F74207B0D0A20202D2D612D6669656C642D696E7075742D626F726465722D7261646975733A20302E31323572656D3B0D0A20202D2D612D66696C6564726F702D626F726465722D7261646975733A2030';
wwv_flow_imp.g_varchar2_table(346) := '2E31323572656D3B0D0A7D0D0A3A726F6F74207B0D0A20202D2D612D6669656C642D696E7075742D6261636B67726F756E642D636F6C6F723A20236639663966393B0D0A20202D2D612D6669656C642D696E7075742D746578742D636F6C6F723A202332';
wwv_flow_imp.g_varchar2_table(347) := '30323032303B0D0A20202D2D612D6669656C642D696E7075742D626F726465722D636F6C6F723A20236466646664663B0D0A20202D2D612D6669656C642D696E7075742D686F7665722D6261636B67726F756E642D636F6C6F723A20236666666666663B';
wwv_flow_imp.g_varchar2_table(348) := '0D0A20202D2D612D6669656C642D696E7075742D666F6375732D6261636B67726F756E642D636F6C6F723A20236666666666663B0D0A20202D2D612D6669656C642D696E7075742D666F6375732D626F726465722D636F6C6F723A20233035396130633B';
wwv_flow_imp.g_varchar2_table(349) := '0D0A20202D2D75742D6669656C642D696E7075742D666F6375732D69636F6E2D636F6C6F723A20233035396130633B0D0A20202D2D75742D6669656C642D666C2D696E7075742D666F6375732D69636F6E2D6261636B67726F756E642D636F6C6F723A20';
wwv_flow_imp.g_varchar2_table(350) := '233035396130633B0D0A20202D2D75742D6669656C642D666C2D696E7075742D666F6375732D69636F6E2D636F6C6F723A20236666666666663B0D0A20202D2D612D636865636B626F782D6261636B67726F756E642D636F6C6F723A2023663966396639';
wwv_flow_imp.g_varchar2_table(351) := '3B0D0A20202D2D612D636865636B626F782D626F726465722D636F6C6F723A207267626128302C20302C20302C20302E3135293B0D0A20202D2D612D636865636B626F782D746578742D636F6C6F723A20236666666666663B0D0A20202D2D612D636865';
wwv_flow_imp.g_varchar2_table(352) := '636B626F782D636865636B65642D6261636B67726F756E642D636F6C6F723A20233035396130633B0D0A20202D2D612D636865636B626F782D636865636B65642D746578742D636F6C6F723A20236666666666663B0D0A20202D2D612D636865636B626F';
wwv_flow_imp.g_varchar2_table(353) := '782D686F7665722D6261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3035293B0D0A7D0D0A3A726F6F74207B0D0A20202D2D612D67762D6261636B67726F756E642D636F6C6F723A20236666666666663B0D0A20202D';
wwv_flow_imp.g_varchar2_table(354) := '2D612D67762D63656C6C2D626F726465722D636F6C6F723A20236536653665363B0D0A20202D2D612D67762D6865616465722D63656C6C2D626F726465722D636F6C6F723A20236536653665363B0D0A20202D2D612D7265706F72742D636F6E74726F6C';
wwv_flow_imp.g_varchar2_table(355) := '732D63656C6C2D6C6162656C2D746578742D636F6C6F723A20233236323632363B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D6C6162656C2D6261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A3A';
wwv_flow_imp.g_varchar2_table(356) := '726F6F74207B0D0A20202D2D75742D6865616465722D6865696768743A203372656D3B0D0A7D0D0A3A726F6F74207B0D0A20202D2D75742D6E61762D77696474683A20313572656D3B0D0A7D0D0A3A726F6F74207B0D0A20202D2D75742D626F64792D61';
wwv_flow_imp.g_varchar2_table(357) := '6374696F6E732D77696474683A2031322E3572656D3B0D0A7D0D0A3A726F6F74207B0D0A20202D2D75742D626F64792D736964656261722D77696474683A20313572656D3B0D0A7D0D0A3A726F6F74207B0D0A20202D2D75742D626F64792D636F6E7465';
wwv_flow_imp.g_varchar2_table(358) := '6E742D6D61782D77696474683A20313030253B0D0A7D0D0A2E742D427574746F6E2D2D686561646572207B0D0A20202D2D612D627574746F6E2D6261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A20202D2D612D62757474';
wwv_flow_imp.g_varchar2_table(359) := '6F6E2D746578742D636F6C6F723A20696E697469616C3B0D0A20202D2D612D627574746F6E2D626F726465722D636F6C6F723A207472616E73706172656E743B0D0A20202D2D612D627574746F6E2D736861646F773A206E6F6E653B0D0A20202D2D612D';
wwv_flow_imp.g_varchar2_table(360) := '627574746F6E2D686F7665722D6261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E31293B0D0A20202D2D612D627574746F6E2D686F7665722D626F726465722D636F6C6F723A207472616E73706172656E743B0D0A20';
wwv_flow_imp.g_varchar2_table(361) := '202D2D612D627574746F6E2D6163746976652D6261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3135293B0D0A20202D2D612D627574746F6E2D6163746976652D626F726465722D636F6C6F723A207472616E737061';
wwv_flow_imp.g_varchar2_table(362) := '72656E743B0D0A20202D2D612D627574746F6E2D6163746976652D736861646F773A206E6F6E653B0D0A20202D2D612D627574746F6E2D666F6375732D6261636B67726F756E642D636F6C6F723A20766172282D2D612D627574746F6E2D6261636B6772';
wwv_flow_imp.g_varchar2_table(363) := '6F756E642D636F6C6F72293B0D0A7D0D0A2E742D427574746F6E2D2D6865616465722E69732D616374697665207B0D0A20202D2D612D627574746F6E2D6261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3235293B0D';
wwv_flow_imp.g_varchar2_table(364) := '0A7D0D0A3A726F6F74207B0D0A20202D2D612D627574746F6E2D626F726465722D636F6C6F723A207267626128302C20302C20302C20302E303735293B0D0A20202D2D612D627574746F6E2D736861646F773A20302032707820347078202D3370782072';
wwv_flow_imp.g_varchar2_table(365) := '67626128302C20302C20302C20302E31293B0D0A20202D2D612D627574746F6E2D686F7665722D6261636B67726F756E642D636F6C6F723A20236666666666663B0D0A20202D2D612D627574746F6E2D686F7665722D626F726465722D636F6C6F723A20';
wwv_flow_imp.g_varchar2_table(366) := '7267626128302C20302C20302C20302E303735293B0D0A20202D2D612D627574746F6E2D686F7665722D736861646F773A20302032707820347078202D327078207267626128302C20302C20302C20302E31293B0D0A20202D2D612D627574746F6E2D61';
wwv_flow_imp.g_varchar2_table(367) := '63746976652D6261636B67726F756E642D636F6C6F723A20236536653665363B0D0A20202D2D612D627574746F6E2D6163746976652D736861646F773A20302032707820327078202D317078207267626128302C20302C20302C20302E31352920696E73';
wwv_flow_imp.g_varchar2_table(368) := '65743B0D0A20202D2D612D627574746F6E2D666F6375732D6261636B67726F756E642D636F6C6F723A20766172282D2D612D627574746F6E2D686F7665722D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D612D627574746F6E2D666F6375';
wwv_flow_imp.g_varchar2_table(369) := '732D626F726465722D636F6C6F723A20766172282D2D75742D70616C657474652D7072696D617279293B0D0A7D0D0A2E742D427574746F6E2D2D73696D706C65207B0D0A20202D2D612D627574746F6E2D747970652D6261636B67726F756E642D636F6C';
wwv_flow_imp.g_varchar2_table(370) := '6F723A207472616E73706172656E743B0D0A20202D2D612D627574746F6E2D747970652D736861646F773A206E6F6E653B0D0A7D0D0A2E742D427574746F6E2D2D6C696E6B207B0D0A2020626F726465722D636F6C6F723A207472616E73706172656E74';
wwv_flow_imp.g_varchar2_table(371) := '3B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A2020626F782D736861646F773A206E6F6E653B0D0A7D0D0A2E742D427574746F6E2D2D6E6F55492C0D0A2E742D427574746F6E2D2D6E6F55493A686F766572';
wwv_flow_imp.g_varchar2_table(372) := '2C0D0A2E742D427574746F6E2D2D6E6F55493A6163746976652C0D0A2E612D427574746F6E2D2D6E6F55492C0D0A2E612D427574746F6E2D2D6E6F55493A686F7665722C0D0A2E612D427574746F6E2D2D6E6F55493A616374697665207B0D0A20202D2D';
wwv_flow_imp.g_varchar2_table(373) := '612D627574746F6E2D747970652D736861646F773A206E6F6E653B0D0A20202D2D612D627574746F6E2D747970652D6261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A20202D2D612D627574746F6E2D747970652D626F72';
wwv_flow_imp.g_varchar2_table(374) := '6465722D636F6C6F723A207472616E73706172656E743B0D0A20202D2D612D627574746F6E2D747970652D746578742D636F6C6F723A20696E68657269743B0D0A2020636F6C6F723A20696E68657269743B0D0A20206261636B67726F756E642D636F6C';
wwv_flow_imp.g_varchar2_table(375) := '6F723A207472616E73706172656E743B0D0A2020746578742D736861646F773A206E6F6E653B0D0A7D0D0A2E742D427574746F6E2D2D686F742C0D0A2E612D427574746F6E2D2D686F742C0D0A2E75692D627574746F6E2D2D686F742C0D0A2E612D4361';
wwv_flow_imp.g_varchar2_table(376) := '7264566965772D627574746F6E2D2D686F742C0D0A2E617065782D627574746F6E2D67726F757020696E7075743A636865636B6564202B206C6162656C2C0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D726164696F427574746F6E47';
wwv_flow_imp.g_varchar2_table(377) := '726F7570202E617065782D6974656D2D67726F75702D2D726320696E7075743A636865636B6564202B206C6162656C207B0D0A20202D2D612D627574746F6E2D6261636B67726F756E642D636F6C6F723A20233035396130633B0D0A20202D2D612D6275';
wwv_flow_imp.g_varchar2_table(378) := '74746F6E2D746578742D636F6C6F723A20236666666666663B0D0A20202D2D612D627574746F6E2D686F7665722D6261636B67726F756E642D636F6C6F723A20233037636231303B0D0A20202D2D612D627574746F6E2D686F7665722D746578742D636F';
wwv_flow_imp.g_varchar2_table(379) := '6C6F723A20766172282D2D612D627574746F6E2D746578742D636F6C6F72293B0D0A20202D2D612D627574746F6E2D6163746976652D6261636B67726F756E642D636F6C6F723A20233034383130613B0D0A20202D2D612D627574746F6E2D6163746976';
wwv_flow_imp.g_varchar2_table(380) := '652D746578742D636F6C6F723A20766172282D2D612D627574746F6E2D686F7665722D746578742D636F6C6F72293B0D0A20202D2D612D627574746F6E2D666F6375732D6261636B67726F756E642D636F6C6F723A20766172282D2D612D627574746F6E';
wwv_flow_imp.g_varchar2_table(381) := '2D686F7665722D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D612D627574746F6E2D666F6375732D746578742D636F6C6F723A20766172282D2D612D627574746F6E2D686F7665722D746578742D636F6C6F72293B0D0A7D0D0A2E742D42';
wwv_flow_imp.g_varchar2_table(382) := '7574746F6E2D2D686F742E742D427574746F6E2D2D73696D706C652C0D0A2E612D427574746F6E2D2D686F742E742D427574746F6E2D2D73696D706C652C0D0A2E75692D627574746F6E2D2D686F742E742D427574746F6E2D2D73696D706C652C0D0A2E';
wwv_flow_imp.g_varchar2_table(383) := '612D43617264566965772D627574746F6E2D2D686F742E742D427574746F6E2D2D73696D706C652C0D0A2E617065782D627574746F6E2D67726F757020696E7075743A636865636B6564202B206C6162656C2E742D427574746F6E2D2D73696D706C652C';
wwv_flow_imp.g_varchar2_table(384) := '0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D726164696F427574746F6E47726F7570202E617065782D6974656D2D67726F75702D2D726320696E7075743A636865636B6564202B206C6162656C2E742D427574746F6E2D2D73696D70';
wwv_flow_imp.g_varchar2_table(385) := '6C65207B0D0A20202D2D612D627574746F6E2D626F726465722D636F6C6F723A20233035396130633B0D0A20202D2D612D627574746F6E2D6261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A20202D2D612D627574746F6E';
wwv_flow_imp.g_varchar2_table(386) := '2D746578742D636F6C6F723A20233432386434363B0D0A20202D2D612D627574746F6E2D686F7665722D746578742D636F6C6F723A20236666666666663B0D0A7D0D0A2E742D427574746F6E2D2D686F742E742D427574746F6E2D2D6C696E6B2C0D0A2E';
wwv_flow_imp.g_varchar2_table(387) := '612D427574746F6E2D2D686F742E742D427574746F6E2D2D6C696E6B2C0D0A2E75692D627574746F6E2D2D686F742E742D427574746F6E2D2D6C696E6B2C0D0A2E612D43617264566965772D627574746F6E2D2D686F742E742D427574746F6E2D2D6C69';
wwv_flow_imp.g_varchar2_table(388) := '6E6B2C0D0A2E617065782D627574746F6E2D67726F757020696E7075743A636865636B6564202B206C6162656C2E742D427574746F6E2D2D6C696E6B2C0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D726164696F427574746F6E4772';
wwv_flow_imp.g_varchar2_table(389) := '6F7570202E617065782D6974656D2D67726F75702D2D726320696E7075743A636865636B6564202B206C6162656C2E742D427574746F6E2D2D6C696E6B207B0D0A20202D2D612D627574746F6E2D626F726465722D636F6C6F723A207472616E73706172';
wwv_flow_imp.g_varchar2_table(390) := '656E743B0D0A20202D2D612D627574746F6E2D6261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A20202D2D612D627574746F6E2D626F782D736861646F773A206E6F6E653B0D0A20202D2D612D627574746F6E2D74657874';
wwv_flow_imp.g_varchar2_table(391) := '2D636F6C6F723A20233432386434363B0D0A7D0D0A2E742D427574746F6E2D2D686F742E742D427574746F6E2D2D6E6F55492C0D0A2E612D427574746F6E2D2D686F742E742D427574746F6E2D2D6E6F55492C0D0A2E75692D627574746F6E2D2D686F74';
wwv_flow_imp.g_varchar2_table(392) := '2E742D427574746F6E2D2D6E6F55492C0D0A2E612D43617264566965772D627574746F6E2D2D686F742E742D427574746F6E2D2D6E6F55492C0D0A2E617065782D627574746F6E2D67726F757020696E7075743A636865636B6564202B206C6162656C2E';
wwv_flow_imp.g_varchar2_table(393) := '742D427574746F6E2D2D6E6F55492C0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D726164696F427574746F6E47726F7570202E617065782D6974656D2D67726F75702D2D726320696E7075743A636865636B6564202B206C6162656C';
wwv_flow_imp.g_varchar2_table(394) := '2E742D427574746F6E2D2D6E6F55492C0D0A2E742D427574746F6E2D2D686F742E612D427574746F6E2D2D6E6F55492C0D0A2E612D427574746F6E2D2D686F742E612D427574746F6E2D2D6E6F55492C0D0A2E75692D627574746F6E2D2D686F742E612D';
wwv_flow_imp.g_varchar2_table(395) := '427574746F6E2D2D6E6F55492C0D0A2E612D43617264566965772D627574746F6E2D2D686F742E612D427574746F6E2D2D6E6F55492C0D0A2E617065782D627574746F6E2D67726F757020696E7075743A636865636B6564202B206C6162656C2E612D42';
wwv_flow_imp.g_varchar2_table(396) := '7574746F6E2D2D6E6F55492C0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D726164696F427574746F6E47726F7570202E617065782D6974656D2D67726F75702D2D726320696E7075743A636865636B6564202B206C6162656C2E612D';
wwv_flow_imp.g_varchar2_table(397) := '427574746F6E2D2D6E6F5549207B0D0A20202D2D612D627574746F6E2D746578742D636F6C6F723A20233432386434363B0D0A2020636F6C6F723A20233432386434363B0D0A7D0D0A2E742D427574746F6E2D2D7761726E696E67207B0D0A20202D2D61';
wwv_flow_imp.g_varchar2_table(398) := '2D627574746F6E2D6261636B67726F756E642D636F6C6F723A20234646433632383B0D0A20202D2D612D627574746F6E2D746578742D636F6C6F723A20233030303B0D0A20202D2D612D627574746F6E2D686F7665722D6261636B67726F756E642D636F';
wwv_flow_imp.g_varchar2_table(399) := '6C6F723A20236666643435623B0D0A20202D2D612D627574746F6E2D686F7665722D746578742D636F6C6F723A20766172282D2D612D627574746F6E2D746578742D636F6C6F72293B0D0A20202D2D612D627574746F6E2D6163746976652D6261636B67';
wwv_flow_imp.g_varchar2_table(400) := '726F756E642D636F6C6F723A20236666626630653B0D0A20202D2D612D627574746F6E2D6163746976652D746578742D636F6C6F723A20766172282D2D612D627574746F6E2D686F7665722D746578742D636F6C6F72293B0D0A20202D2D612D62757474';
wwv_flow_imp.g_varchar2_table(401) := '6F6E2D666F6375732D6261636B67726F756E642D636F6C6F723A20766172282D2D612D627574746F6E2D686F7665722D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D612D627574746F6E2D666F6375732D746578742D636F6C6F723A2076';
wwv_flow_imp.g_varchar2_table(402) := '6172282D2D612D627574746F6E2D686F7665722D746578742D636F6C6F72293B0D0A7D0D0A2E742D427574746F6E2D2D7761726E696E672E742D427574746F6E2D2D73696D706C65207B0D0A20202D2D612D627574746F6E2D626F726465722D636F6C6F';
wwv_flow_imp.g_varchar2_table(403) := '723A20234646433632383B0D0A20202D2D612D627574746F6E2D6261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A20202D2D612D627574746F6E2D746578742D636F6C6F723A20233863373032313B0D0A20202D2D612D62';
wwv_flow_imp.g_varchar2_table(404) := '7574746F6E2D686F7665722D746578742D636F6C6F723A20233030303B0D0A7D0D0A2E742D427574746F6E2D2D7761726E696E672E742D427574746F6E2D2D6C696E6B207B0D0A20202D2D612D627574746F6E2D626F726465722D636F6C6F723A207472';
wwv_flow_imp.g_varchar2_table(405) := '616E73706172656E743B0D0A20202D2D612D627574746F6E2D6261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A20202D2D612D627574746F6E2D626F782D736861646F773A206E6F6E653B0D0A20202D2D612D627574746F';
wwv_flow_imp.g_varchar2_table(406) := '6E2D746578742D636F6C6F723A20233863373032313B0D0A7D0D0A2E742D427574746F6E2D2D7761726E696E672E742D427574746F6E2D2D6E6F55492C0D0A2E742D427574746F6E2D2D7761726E696E672E612D427574746F6E2D2D6E6F5549207B0D0A';
wwv_flow_imp.g_varchar2_table(407) := '20202D2D612D627574746F6E2D746578742D636F6C6F723A20233863373032313B0D0A2020636F6C6F723A20233863373032313B0D0A7D0D0A2E742D427574746F6E2D2D73756363657373207B0D0A20202D2D612D627574746F6E2D6261636B67726F75';
wwv_flow_imp.g_varchar2_table(408) := '6E642D636F6C6F723A20233237383730313B0D0A20202D2D612D627574746F6E2D746578742D636F6C6F723A20234646463B0D0A20202D2D612D627574746F6E2D686F7665722D6261636B67726F756E642D636F6C6F723A20233336626130313B0D0A20';
wwv_flow_imp.g_varchar2_table(409) := '202D2D612D627574746F6E2D686F7665722D746578742D636F6C6F723A20766172282D2D612D627574746F6E2D746578742D636F6C6F72293B0D0A20202D2D612D627574746F6E2D6163746976652D6261636B67726F756E642D636F6C6F723A20233230';
wwv_flow_imp.g_varchar2_table(410) := '366530313B0D0A20202D2D612D627574746F6E2D6163746976652D746578742D636F6C6F723A20766172282D2D612D627574746F6E2D686F7665722D746578742D636F6C6F72293B0D0A20202D2D612D627574746F6E2D666F6375732D6261636B67726F';
wwv_flow_imp.g_varchar2_table(411) := '756E642D636F6C6F723A20766172282D2D612D627574746F6E2D686F7665722D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D612D627574746F6E2D666F6375732D746578742D636F6C6F723A20766172282D2D612D627574746F6E2D686F';
wwv_flow_imp.g_varchar2_table(412) := '7665722D746578742D636F6C6F72293B0D0A7D0D0A2E742D427574746F6E2D2D737563636573732E742D427574746F6E2D2D73696D706C65207B0D0A20202D2D612D627574746F6E2D626F726465722D636F6C6F723A20233237383730313B0D0A20202D';
wwv_flow_imp.g_varchar2_table(413) := '2D612D627574746F6E2D6261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A20202D2D612D627574746F6E2D746578742D636F6C6F723A20233464376433613B0D0A20202D2D612D627574746F6E2D686F7665722D74657874';
wwv_flow_imp.g_varchar2_table(414) := '2D636F6C6F723A20234646463B0D0A7D0D0A2E742D427574746F6E2D2D737563636573732E742D427574746F6E2D2D6C696E6B207B0D0A20202D2D612D627574746F6E2D626F726465722D636F6C6F723A207472616E73706172656E743B0D0A20202D2D';
wwv_flow_imp.g_varchar2_table(415) := '612D627574746F6E2D6261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A20202D2D612D627574746F6E2D626F782D736861646F773A206E6F6E653B0D0A20202D2D612D627574746F6E2D746578742D636F6C6F723A202334';
wwv_flow_imp.g_varchar2_table(416) := '64376433613B0D0A7D0D0A2E742D427574746F6E2D2D737563636573732E742D427574746F6E2D2D6E6F55492C0D0A2E742D427574746F6E2D2D737563636573732E612D427574746F6E2D2D6E6F5549207B0D0A20202D2D612D627574746F6E2D746578';
wwv_flow_imp.g_varchar2_table(417) := '742D636F6C6F723A20233464376433613B0D0A2020636F6C6F723A20233464376433613B0D0A7D0D0A2E75692D627574746F6E2D2D64616E6765722C0D0A2E742D427574746F6E2D2D64616E676572207B0D0A20202D2D612D627574746F6E2D6261636B';
wwv_flow_imp.g_varchar2_table(418) := '67726F756E642D636F6C6F723A20234342313130303B0D0A20202D2D612D627574746F6E2D746578742D636F6C6F723A20234646463B0D0A20202D2D612D627574746F6E2D686F7665722D6261636B67726F756E642D636F6C6F723A2023666531353030';
wwv_flow_imp.g_varchar2_table(419) := '3B0D0A20202D2D612D627574746F6E2D686F7665722D746578742D636F6C6F723A20766172282D2D612D627574746F6E2D746578742D636F6C6F72293B0D0A20202D2D612D627574746F6E2D6163746976652D6261636B67726F756E642D636F6C6F723A';
wwv_flow_imp.g_varchar2_table(420) := '20236232306630303B0D0A20202D2D612D627574746F6E2D6163746976652D746578742D636F6C6F723A20766172282D2D612D627574746F6E2D686F7665722D746578742D636F6C6F72293B0D0A20202D2D612D627574746F6E2D666F6375732D626163';
wwv_flow_imp.g_varchar2_table(421) := '6B67726F756E642D636F6C6F723A20766172282D2D612D627574746F6E2D686F7665722D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D612D627574746F6E2D666F6375732D746578742D636F6C6F723A20766172282D2D612D627574746F';
wwv_flow_imp.g_varchar2_table(422) := '6E2D686F7665722D746578742D636F6C6F72293B0D0A7D0D0A2E75692D627574746F6E2D2D64616E6765722E742D427574746F6E2D2D73696D706C652C0D0A2E742D427574746F6E2D2D64616E6765722E742D427574746F6E2D2D73696D706C65207B0D';
wwv_flow_imp.g_varchar2_table(423) := '0A20202D2D612D627574746F6E2D626F726465722D636F6C6F723A20234342313130303B0D0A20202D2D612D627574746F6E2D6261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A20202D2D612D627574746F6E2D74657874';
wwv_flow_imp.g_varchar2_table(424) := '2D636F6C6F723A20236135343834303B0D0A20202D2D612D627574746F6E2D686F7665722D746578742D636F6C6F723A20234646463B0D0A7D0D0A2E75692D627574746F6E2D2D64616E6765722E742D427574746F6E2D2D6C696E6B2C0D0A2E742D4275';
wwv_flow_imp.g_varchar2_table(425) := '74746F6E2D2D64616E6765722E742D427574746F6E2D2D6C696E6B207B0D0A20202D2D612D627574746F6E2D626F726465722D636F6C6F723A207472616E73706172656E743B0D0A20202D2D612D627574746F6E2D6261636B67726F756E642D636F6C6F';
wwv_flow_imp.g_varchar2_table(426) := '723A207472616E73706172656E743B0D0A20202D2D612D627574746F6E2D626F782D736861646F773A206E6F6E653B0D0A20202D2D612D627574746F6E2D746578742D636F6C6F723A20236135343834303B0D0A7D0D0A2E75692D627574746F6E2D2D64';
wwv_flow_imp.g_varchar2_table(427) := '616E6765722E742D427574746F6E2D2D6E6F55492C0D0A2E742D427574746F6E2D2D64616E6765722E742D427574746F6E2D2D6E6F55492C0D0A2E75692D627574746F6E2D2D64616E6765722E612D427574746F6E2D2D6E6F55492C0D0A2E742D427574';
wwv_flow_imp.g_varchar2_table(428) := '746F6E2D2D64616E6765722E612D427574746F6E2D2D6E6F5549207B0D0A20202D2D612D627574746F6E2D746578742D636F6C6F723A20236135343834303B0D0A2020636F6C6F723A20236135343834303B0D0A7D0D0A2E742D427574746F6E2D2D7072';
wwv_flow_imp.g_varchar2_table(429) := '696D617279207B0D0A20202D2D612D627574746F6E2D6261636B67726F756E642D636F6C6F723A20233731666137373B0D0A20202D2D612D627574746F6E2D746578742D636F6C6F723A20233030303030303B0D0A20202D2D612D627574746F6E2D686F';
wwv_flow_imp.g_varchar2_table(430) := '7665722D6261636B67726F756E642D636F6C6F723A20233839666238663B0D0A20202D2D612D627574746F6E2D686F7665722D746578742D636F6C6F723A20766172282D2D612D627574746F6E2D746578742D636F6C6F72293B0D0A20202D2D612D6275';
wwv_flow_imp.g_varchar2_table(431) := '74746F6E2D6163746976652D6261636B67726F756E642D636F6C6F723A20233538666136303B0D0A20202D2D612D627574746F6E2D6163746976652D746578742D636F6C6F723A20766172282D2D612D627574746F6E2D686F7665722D746578742D636F';
wwv_flow_imp.g_varchar2_table(432) := '6C6F72293B0D0A20202D2D612D627574746F6E2D666F6375732D6261636B67726F756E642D636F6C6F723A20766172282D2D612D627574746F6E2D686F7665722D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D612D627574746F6E2D666F';
wwv_flow_imp.g_varchar2_table(433) := '6375732D746578742D636F6C6F723A20766172282D2D612D627574746F6E2D686F7665722D746578742D636F6C6F72293B0D0A7D0D0A2E742D427574746F6E2D2D7072696D6172792E742D427574746F6E2D2D73696D706C65207B0D0A20202D2D612D62';
wwv_flow_imp.g_varchar2_table(434) := '7574746F6E2D626F726465722D636F6C6F723A20766172282D2D75742D70616C657474652D7072696D6172792D616C74293B0D0A20202D2D612D627574746F6E2D6261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A20202D';
wwv_flow_imp.g_varchar2_table(435) := '2D612D627574746F6E2D746578742D636F6C6F723A20766172282D2D75742D70616C657474652D7072696D6172792D616C742D74657874293B0D0A20202D2D612D627574746F6E2D686F7665722D746578742D636F6C6F723A20233030303030303B0D0A';
wwv_flow_imp.g_varchar2_table(436) := '7D0D0A2E742D427574746F6E2D2D7072696D6172792E742D427574746F6E2D2D6C696E6B207B0D0A20202D2D612D627574746F6E2D626F726465722D636F6C6F723A207472616E73706172656E743B0D0A20202D2D612D627574746F6E2D6261636B6772';
wwv_flow_imp.g_varchar2_table(437) := '6F756E642D636F6C6F723A207472616E73706172656E743B0D0A20202D2D612D627574746F6E2D626F782D736861646F773A206E6F6E653B0D0A20202D2D612D627574746F6E2D746578742D636F6C6F723A20766172282D2D75742D70616C657474652D';
wwv_flow_imp.g_varchar2_table(438) := '7072696D6172792D616C742D74657874293B0D0A7D0D0A2E742D427574746F6E2D2D7072696D6172792E742D427574746F6E2D2D6E6F55492C0D0A2E742D427574746F6E2D2D7072696D6172792E612D427574746F6E2D2D6E6F5549207B0D0A20202D2D';
wwv_flow_imp.g_varchar2_table(439) := '612D627574746F6E2D746578742D636F6C6F723A20766172282D2D75742D70616C657474652D7072696D6172792D616C742D74657874293B0D0A2020636F6C6F723A20766172282D2D75742D70616C657474652D7072696D6172792D616C742D74657874';
wwv_flow_imp.g_varchar2_table(440) := '293B0D0A7D0D0A2E742D466F726D2D68656C70427574746F6E207B0D0A20202D2D612D627574746F6E2D70616464696E672D793A20302E323572656D3B0D0A20202D2D612D627574746F6E2D70616464696E672D783A20302E323572656D3B0D0A20202D';
wwv_flow_imp.g_varchar2_table(441) := '2D612D627574746F6E2D747970652D6261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A20202D2D612D627574746F6E2D747970652D626F726465722D636F6C6F723A207472616E73706172656E743B0D0A20202D2D612D62';
wwv_flow_imp.g_varchar2_table(442) := '7574746F6E2D747970652D736861646F773A206E6F6E653B0D0A20202D2D612D627574746F6E2D746578742D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D746578742D6D757465642D636F6C6F72293B0D0A20202D2D612D62757474';
wwv_flow_imp.g_varchar2_table(443) := '6F6E2D686F7665722D746578742D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D746578742D64656661756C742D636F6C6F72293B0D0A7D0D0A2E742D427574746F6E2E742D427574746F6E2D2D6E6F5549202E66613A61667465722C';
wwv_flow_imp.g_varchar2_table(444) := '0D0A2E742D427574746F6E2E742D427574746F6E2D2D6C696E6B202E66613A61667465722C0D0A2E742D427574746F6E2E742D427574746F6E2D2D73696D706C65202E66613A61667465722C0D0A2E612D427574746F6E2E612D427574746F6E2D2D6E6F';
wwv_flow_imp.g_varchar2_table(445) := '5549202E66613A6166746572207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E742D427574746F6E2D2D64616E676572202E66613A61667465722C0D0A2E742D427574746F6E2D2D73696D706C652E742D42';
wwv_flow_imp.g_varchar2_table(446) := '7574746F6E2D2D64616E6765723A686F766572202E66613A6166746572207B0D0A20206261636B67726F756E642D636F6C6F723A20234342313130303B0D0A7D0D0A2E742D427574746F6E2D2D73756363657373202E66613A61667465722C0D0A2E742D';
wwv_flow_imp.g_varchar2_table(447) := '427574746F6E2D2D73696D706C652E742D427574746F6E2D2D737563636573733A686F766572202E66613A6166746572207B0D0A20206261636B67726F756E642D636F6C6F723A20233237383730313B0D0A7D0D0A2E742D427574746F6E2D2D7072696D';
wwv_flow_imp.g_varchar2_table(448) := '617279202E66613A61667465722C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D7072696D6172793A686F766572202E66613A6166746572207B0D0A20206261636B67726F756E642D636F6C6F723A20233731666137373B0D';
wwv_flow_imp.g_varchar2_table(449) := '0A7D0D0A2E742D427574746F6E2D2D7761726E696E67202E66613A61667465722C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D7761726E696E673A686F766572202E66613A6166746572207B0D0A20206261636B67726F75';
wwv_flow_imp.g_varchar2_table(450) := '6E642D636F6C6F723A20234646433632383B0D0A7D0D0A2E742D427574746F6E2D2D686F74202E66613A61667465722C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D686F743A686F766572202E66613A6166746572207B0D';
wwv_flow_imp.g_varchar2_table(451) := '0A20206261636B67726F756E642D636F6C6F723A20233035396130633B0D0A7D0D0A3A726F6F74207B0D0A20202D2D612D63762D6974656D2D77696474683A20313972656D3B0D0A20202D2D612D63762D666F6375732D6F75746C696E653A206E6F6E65';
wwv_flow_imp.g_varchar2_table(452) := '3B0D0A20202D2D612D63762D626F726465722D77696474683A203170783B0D0A20202D2D612D63762D626F726465722D636F6C6F723A207267626128302C20302C20302C20302E31293B0D0A20202D2D612D63762D626F726465722D7261646975733A20';
wwv_flow_imp.g_varchar2_table(453) := '302E3138373572656D3B0D0A20202D2D612D63762D6261636B67726F756E642D636F6C6F723A20236666666666663B0D0A20202D2D612D63762D736861646F773A20302032707820347078202D327078207267626128302C20302C20302C20302E303735';
wwv_flow_imp.g_varchar2_table(454) := '293B0D0A20202D2D612D63762D686F7665722D6261636B67726F756E642D636F6C6F723A20766172282D2D612D63762D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D612D63762D686F7665722D746578742D636F6C6F723A20766172282D';
wwv_flow_imp.g_varchar2_table(455) := '2D612D63762D746578742D636F6C6F72293B0D0A20202D2D612D63762D686F7665722D626F726465722D636F6C6F723A20766172282D2D612D63762D626F726465722D636F6C6F72293B0D0A20202D2D612D63762D686F7665722D736861646F773A2030';
wwv_flow_imp.g_varchar2_table(456) := '2034707820302E3572656D2030207267626128302C20302C20302C20302E31293B0D0A20202D2D612D63762D6163746976652D6261636B67726F756E642D636F6C6F723A20766172282D2D612D63762D6261636B67726F756E642D636F6C6F72293B0D0A';
wwv_flow_imp.g_varchar2_table(457) := '20202D2D612D63762D6163746976652D746578742D636F6C6F723A20766172282D2D612D63762D746578742D636F6C6F72293B0D0A20202D2D612D63762D6163746976652D626F726465722D636F6C6F723A20766172282D2D612D63762D626F72646572';
wwv_flow_imp.g_varchar2_table(458) := '2D636F6C6F72293B0D0A20202D2D612D63762D6163746976652D736861646F773A20766172282D2D612D63762D736861646F77293B0D0A20202D2D612D63762D666F6375732D626F726465722D636F6C6F723A20233035396130633B0D0A20202D2D612D';
wwv_flow_imp.g_varchar2_table(459) := '63762D6D656469612D70616464696E672D793A203172656D3B0D0A20202D2D612D63762D6D656469612D70616464696E672D783A203172656D3B0D0A20202D2D612D63762D6865616465722D70616464696E672D793A203172656D3B0D0A20202D2D612D';
wwv_flow_imp.g_varchar2_table(460) := '63762D6865616465722D70616464696E672D783A203172656D3B0D0A20202D2D612D63762D6865616465722D626F726465722D77696474683A203170783B0D0A20202D2D612D63762D6865616465722D626F726465722D636F6C6F723A20726762612830';
wwv_flow_imp.g_varchar2_table(461) := '2C20302C20302C20302E3035293B0D0A20202D2D612D63762D69636F6E2D6261636B67726F756E642D636F6C6F723A20233035396130633B0D0A20202D2D612D63762D69636F6E2D746578742D636F6C6F723A20236666666666663B0D0A20202D2D612D';
wwv_flow_imp.g_varchar2_table(462) := '63762D69636F6E2D626F726465722D7261646975733A20313030253B0D0A20202D2D612D63762D69636F6E2D73697A653A203172656D3B0D0A20202D2D612D63762D69636F6E2D636F6E7461696E65722D73697A653A203272656D3B0D0A20202D2D612D';
wwv_flow_imp.g_varchar2_table(463) := '63762D69636F6E2D70616464696E673A20302E3572656D3B0D0A20202D2D612D63762D696E697469616C732D666F6E742D7765696768743A203730303B0D0A20202D2D612D63762D696E697469616C732D746578742D636F6C6F723A2023666666666666';
wwv_flow_imp.g_varchar2_table(464) := '3B0D0A20202D2D612D63762D696E697469616C732D6261636B67726F756E642D636F6C6F723A20233035396130633B0D0A20202D2D612D63762D7375627469746C652D666F6E742D73697A653A20302E373572656D3B0D0A20202D2D612D63762D737562';
wwv_flow_imp.g_varchar2_table(465) := '7469746C652D666F6E742D7765696768743A203430303B0D0A20202D2D612D63762D7375627469746C652D6C696E652D6865696768743A203172656D3B0D0A20202D2D612D63762D7375627469746C652D746578742D636F6C6F723A2023363636363636';
wwv_flow_imp.g_varchar2_table(466) := '3B0D0A20202D2D612D63762D626F64792D70616464696E672D783A203172656D3B0D0A20202D2D612D63762D626F64792D70616464696E672D793A203172656D3B0D0A20202D2D612D63762D6D61696E636F6E74656E742D666F6E742D73697A653A2030';
wwv_flow_imp.g_varchar2_table(467) := '2E38373572656D3B0D0A20202D2D612D63762D6D61696E636F6E74656E742D6C696E652D6865696768743A20312E323572656D3B0D0A20202D2D612D63762D737562636F6E74656E742D666F6E742D73697A653A20302E3638373572656D3B0D0A20202D';
wwv_flow_imp.g_varchar2_table(468) := '2D612D63762D737562636F6E74656E742D6C696E652D6865696768743A203172656D3B0D0A20202D2D612D63762D737562636F6E74656E742D746578742D636F6C6F723A20233636363636363B0D0A20202D2D612D63762D616374696F6E732D626F7264';
wwv_flow_imp.g_varchar2_table(469) := '65722D77696474683A203170783B0D0A20202D2D612D63762D616374696F6E732D626F726465722D636F6C6F723A207267626128302C20302C20302C20302E3035293B0D0A20202D2D612D63762D616374696F6E732D70616464696E672D793A20317265';
wwv_flow_imp.g_varchar2_table(470) := '6D3B0D0A20202D2D612D63762D616374696F6E732D70616464696E672D783A203172656D3B0D0A7D0D0A2E612D544D562D2D6361726473202E612D47562D666F6F746572207B0D0A20206D696E2D6865696768743A20756E7365743B0D0A202070616464';
wwv_flow_imp.g_varchar2_table(471) := '696E672D626C6F636B2D73746172743A20303B0D0A202070616464696E672D626C6F636B2D656E643A20303B0D0A7D0D0A2E612D544D562D2D6361726473202E612D47562D666F6F746572202E6A732D72616E6765446973706C6179207B0D0A20206D61';
wwv_flow_imp.g_varchar2_table(472) := '7267696E2D626C6F636B2D73746172743A20766172282D2D612D67762D666F6F7465722D70616464696E672D79293B0D0A20206D617267696E2D626C6F636B2D656E643A20766172282D2D612D67762D666F6F7465722D70616464696E672D79293B0D0A';
wwv_flow_imp.g_varchar2_table(473) := '7D0D0A2E612D43617264566965772D66756C6C4C696E6B3A666F637573207B0D0A2020626F782D736861646F773A20696E73657420302030203020766172282D2D612D63762D626F726465722D77696474682C20302920766172282D2D612D63762D666F';
wwv_flow_imp.g_varchar2_table(474) := '6375732D626F726465722D636F6C6F72293B0D0A7D0D0A2E612D43617264566965772D6D65646961207B0D0A2020616C69676E2D6974656D733A2063656E7465723B0D0A20206A7573746966792D636F6E74656E743A2063656E7465723B0D0A7D0D0A2E';
wwv_flow_imp.g_varchar2_table(475) := '612D43617264566965772D6D656469612061207B0D0A20207472616E736974696F6E3A206F70616369747920302E327320656173653B0D0A7D0D0A2E612D43617264566965772D6D6564696120613A666F637573207B0D0A20206F7061636974793A2030';
wwv_flow_imp.g_varchar2_table(476) := '2E353B0D0A7D0D0A2E612D43617264566965772D6865616465723A6C6173742D6368696C64207B0D0A20202D2D612D63762D6865616465722D626F726465722D77696474683A203070783B0D0A7D0D0A2E6861732D6D656469612D2D6669727374207B0D';
wwv_flow_imp.g_varchar2_table(477) := '0A20202D2D612D63762D6D656469612D70616464696E672D793A20303B0D0A20202D2D612D63762D6D656469612D70616464696E672D783A20303B0D0A7D0D0A2E6861732D6D656469612D2D6261636B67726F756E64207B0D0A20202D2D612D63762D6D';
wwv_flow_imp.g_varchar2_table(478) := '656469612D70616464696E672D793A203072656D3B0D0A20202D2D612D63762D6D656469612D70616464696E672D783A203072656D3B0D0A20202D2D612D63762D746578742D636F6C6F723A20236666663B0D0A20202D2D612D63762D7375627469746C';
wwv_flow_imp.g_varchar2_table(479) := '652D746578742D636F6C6F723A2072676261283235352C203235352C203235352C20302E3635293B0D0A20202D2D612D63762D737562636F6E74656E742D746578742D636F6C6F723A2072676261283235352C203235352C203235352C20302E3635293B';
wwv_flow_imp.g_varchar2_table(480) := '0D0A20202D2D612D63762D62616467652D6261636B67726F756E642D636F6C6F723A2072676261283235352C203235352C203235352C20302E3235293B0D0A7D0D0A2E6861732D6D656469612D2D6261636B67726F756E6420613A6E6F74285B636C6173';
wwv_flow_imp.g_varchar2_table(481) := '735D29207B0D0A2020636F6C6F723A20696E68657269743B0D0A7D0D0A2E6861732D6D656469612D2D6261636B67726F756E6420613A6E6F74285B636C6173735D293A686F7665722C0D0A2E6861732D6D656469612D2D6261636B67726F756E6420613A';
wwv_flow_imp.g_varchar2_table(482) := '6E6F74285B636C6173735D293A666F637573207B0D0A2020746578742D6465636F726174696F6E3A20756E6465726C696E653B0D0A7D0D0A2E742D4361726473526567696F6E2D2D7374796C6541207B0D0A20202D2D612D63762D6F766572666C6F773A';
wwv_flow_imp.g_varchar2_table(483) := '2068696464656E3B0D0A20202D2D612D63762D6D656469612D6261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E303235293B0D0A20202D2D612D63762D6D656469612D6F7665726C61792D636F6C6F723A2072676261';
wwv_flow_imp.g_varchar2_table(484) := '28302C20302C20302C20302E3735293B0D0A20202D2D612D63762D6865616465722D626F726465722D77696474683A203070783B0D0A20202D2D612D63762D6865616465722D6261636B67726F756E642D636F6C6F723A20756E7365743B0D0A20202D2D';
wwv_flow_imp.g_varchar2_table(485) := '612D63762D616374696F6E732D626F726465722D77696474683A203070783B0D0A20202D2D612D63762D616374696F6E732D6261636B67726F756E642D636F6C6F723A20756E7365743B0D0A20202D2D612D63762D69636F6E2D636F6E7461696E65722D';
wwv_flow_imp.g_varchar2_table(486) := '73697A653A20322E3572656D3B0D0A20202D2D612D63762D69636F6E2D73697A653A20312E323572656D3B0D0A20202D2D612D63762D69636F6E2D626F726465722D7261646975733A20302E3138373572656D3B0D0A20202D2D612D63762D69636F6E2D';
wwv_flow_imp.g_varchar2_table(487) := '696D6167652D73697A653A20766172282D2D612D63762D69636F6E2D636F6E7461696E65722D73697A65293B0D0A20202D2D612D63762D69636F6E2D696D6167652D626F726465722D7261646975733A20766172282D2D612D63762D69636F6E2D626F72';
wwv_flow_imp.g_varchar2_table(488) := '6465722D726164697573293B0D0A20202D2D612D63762D696E697469616C732D626F726465722D7261646975733A20766172282D2D612D63762D69636F6E2D626F726465722D726164697573293B0D0A20202D2D612D63762D696E697469616C732D7369';
wwv_flow_imp.g_varchar2_table(489) := '7A653A20766172282D2D612D63762D69636F6E2D636F6E7461696E65722D73697A65293B0D0A20202D2D612D63762D696E697469616C732D666F6E742D73697A653A20312E323572656D3B0D0A20202D2D612D63762D696E697469616C732D666F6E742D';
wwv_flow_imp.g_varchar2_table(490) := '7765696768743A203430303B0D0A20202D2D612D63762D62616467652D70616464696E673A20302E323572656D20302E3572656D3B0D0A20202D2D612D63762D62616467652D626F726465722D7261646975733A20312E323572656D3B0D0A7D0D0A2E74';
wwv_flow_imp.g_varchar2_table(491) := '2D4361726473526567696F6E2D2D7374796C6541202E6861732D6D656469612D2D626F64792C0D0A2E742D4361726473526567696F6E2D2D7374796C6541202E6861732D6D656469612D2D6669727374207B0D0A20202D2D612D63762D6D656469612D62';
wwv_flow_imp.g_varchar2_table(492) := '6F726465722D7261646975733A20302E3138373572656D3B0D0A20202D2D612D63762D6D656469612D70616464696E672D793A203172656D3B0D0A20202D2D612D63762D6D656469612D70616464696E672D783A203172656D3B0D0A7D0D0A2E742D4361';
wwv_flow_imp.g_varchar2_table(493) := '726473526567696F6E2D2D7374796C6541202E6861732D6D656469612D2D626F6479202E612D43617264566965772D6D656469612C0D0A2E742D4361726473526567696F6E2D2D7374796C6541202E6861732D6D656469612D2D6669727374202E612D43';
wwv_flow_imp.g_varchar2_table(494) := '617264566965772D6D65646961207B0D0A20206D617267696E2D696E6C696E652D73746172743A20766172282D2D612D63762D6D656469612D70616464696E672D78293B0D0A20206D617267696E2D696E6C696E652D656E643A20766172282D2D612D63';
wwv_flow_imp.g_varchar2_table(495) := '762D6D656469612D70616464696E672D78293B0D0A202070616464696E673A20303B0D0A7D0D0A2E742D4361726473526567696F6E2D2D7374796C6541202E6861732D6D656469612D2D6669727374202E612D43617264566965772D6D65646961207B0D';
wwv_flow_imp.g_varchar2_table(496) := '0A20206D617267696E2D626C6F636B2D73746172743A20766172282D2D612D63762D6D656469612D70616464696E672D79293B0D0A7D0D0A2E742D4361726473526567696F6E2D2D7374796C6541202E6861732D69636F6E2D2D746F70207B0D0A20202D';
wwv_flow_imp.g_varchar2_table(497) := '2D612D63762D69636F6E2D636F6E7461696E65722D73697A653A203672656D3B0D0A20202D2D612D63762D69636F6E2D73697A653A203372656D3B0D0A20202D2D612D63762D69636F6E2D626F726465722D7261646975733A20302E3572656D3B0D0A20';
wwv_flow_imp.g_varchar2_table(498) := '202D2D612D63762D69636F6E2D696D6167652D73697A653A20766172282D2D612D63762D69636F6E2D636F6E7461696E65722D73697A65293B0D0A20202D2D612D63762D69636F6E2D696D6167652D626F726465722D7261646975733A20766172282D2D';
wwv_flow_imp.g_varchar2_table(499) := '612D63762D69636F6E2D626F726465722D726164697573293B0D0A20202D2D612D63762D696E697469616C732D626F726465722D7261646975733A20766172282D2D612D63762D69636F6E2D626F726465722D726164697573293B0D0A20202D2D612D63';
wwv_flow_imp.g_varchar2_table(500) := '762D696E697469616C732D73697A653A20766172282D2D612D63762D69636F6E2D636F6E7461696E65722D73697A65293B0D0A20202D2D612D63762D696E697469616C732D666F6E742D73697A653A20312E3572656D3B0D0A7D0D0A2E742D4361726473';
wwv_flow_imp.g_varchar2_table(501) := '526567696F6E2D2D7374796C6541202E6861732D6D656469612D2D6669727374202E612D43617264566965772D686561646572202B202E612D43617264566965772D626F64792C0D0A2E742D4361726473526567696F6E2D2D7374796C6541202E686173';
wwv_flow_imp.g_varchar2_table(502) := '2D6D656469612D2D6261636B67726F756E64202E612D43617264566965772D686561646572202B202E612D43617264566965772D626F64792C0D0A2E742D4361726473526567696F6E2D2D7374796C6541202E612D43617264566965772D626F6479202B';
wwv_flow_imp.g_varchar2_table(503) := '202E612D43617264566965772D616374696F6E73207B0D0A202070616464696E672D626C6F636B2D73746172743A20303B0D0A7D0D0A2E742D4361726473526567696F6E2D2D7374796C6541202E612D43617264566965772D6974656D732D2D726F7720';
wwv_flow_imp.g_varchar2_table(504) := '2E742D4361726473526567696F6E2D2D7374796C6541202E612D43617264566965772D616374696F6E73207B0D0A2020666C65782D646972656374696F6E3A20636F6C756D6E3B0D0A2020616C69676E2D6974656D733A20666C65782D656E643B0D0A20';
wwv_flow_imp.g_varchar2_table(505) := '20677269642D636F6C756D6E3A20343B0D0A2020677269642D726F772D73746172743A20313B0D0A2020677269642D726F772D656E643A20343B0D0A7D0D0A2E742D4361726473526567696F6E2D2D7374796C6541202E612D43617264566965772D6974';
wwv_flow_imp.g_varchar2_table(506) := '656D732D2D726F77202E612D43617264566965772D6D65646961207B0D0A20206D617267696E2D626C6F636B2D73746172743A20766172282D2D612D63762D6D656469612D70616464696E672D79293B0D0A20206D617267696E2D626C6F636B2D656E64';
wwv_flow_imp.g_varchar2_table(507) := '3A20766172282D2D612D63762D6D656469612D70616464696E672D79293B0D0A20206D617267696E2D696E6C696E652D656E643A20303B0D0A7D0D0A2E752D52544C202E742D4361726473526567696F6E2D2D7374796C6541202E612D43617264566965';
wwv_flow_imp.g_varchar2_table(508) := '772D6974656D732D2D726F77202E612D43617264566965772D6D65646961207B0D0A20206D617267696E2D696E6C696E652D656E643A20766172282D2D612D63762D6D656469612D70616464696E672D78293B0D0A20206D617267696E2D696E6C696E65';
wwv_flow_imp.g_varchar2_table(509) := '2D73746172743A20303B0D0A7D0D0A2E742D4361726473526567696F6E2D2D7374796C6542207B0D0A20202D2D612D63762D6F766572666C6F773A2068696464656E3B0D0A20202D2D612D63762D6D656469612D6261636B67726F756E642D636F6C6F72';
wwv_flow_imp.g_varchar2_table(510) := '3A207267626128302C20302C20302C20302E303235293B0D0A20202D2D612D63762D6D656469612D6F7665726C61792D636F6C6F723A207267626128302C20302C20302C20302E3735293B0D0A20202D2D612D63762D69636F6E2D636F6E7461696E6572';
wwv_flow_imp.g_varchar2_table(511) := '2D73697A653A203472656D3B0D0A20202D2D612D63762D69636F6E2D73697A653A203272656D3B0D0A20202D2D612D63762D69636F6E2D626F726465722D7261646975733A20302E323572656D3B0D0A20202D2D612D63762D69636F6E2D696D6167652D';
wwv_flow_imp.g_varchar2_table(512) := '73697A653A20766172282D2D612D63762D69636F6E2D636F6E7461696E65722D73697A65293B0D0A20202D2D612D63762D69636F6E2D696D6167652D626F726465722D7261646975733A20766172282D2D612D63762D69636F6E2D626F726465722D7261';
wwv_flow_imp.g_varchar2_table(513) := '64697573293B0D0A20202D2D612D63762D696E697469616C732D626F726465722D7261646975733A20766172282D2D612D63762D69636F6E2D626F726465722D726164697573293B0D0A20202D2D612D63762D696E697469616C732D73697A653A207661';
wwv_flow_imp.g_varchar2_table(514) := '72282D2D612D63762D69636F6E2D636F6E7461696E65722D73697A65293B0D0A20202D2D612D63762D696E697469616C732D666F6E742D73697A653A203272656D3B0D0A20202D2D612D63762D696E697469616C732D666F6E742D7765696768743A2034';
wwv_flow_imp.g_varchar2_table(515) := '30303B0D0A20202D2D612D63762D6D656469612D70616464696E672D793A203072656D3B0D0A20202D2D612D63762D6D656469612D70616464696E672D783A203072656D3B0D0A20202D2D612D63762D6865616465722D626F726465722D77696474683A';
wwv_flow_imp.g_varchar2_table(516) := '203070783B0D0A20202D2D612D63762D6865616465722D6261636B67726F756E642D636F6C6F723A20756E7365743B0D0A20202D2D612D63762D616374696F6E732D626F726465722D77696474683A203070783B0D0A20202D2D612D63762D616374696F';
wwv_flow_imp.g_varchar2_table(517) := '6E732D6261636B67726F756E642D636F6C6F723A20756E7365743B0D0A20202D2D612D63762D7469746C652D666F6E742D73697A653A20312E323572656D3B0D0A20202D2D612D63762D7469746C652D6C696E652D6865696768743A20312E373572656D';
wwv_flow_imp.g_varchar2_table(518) := '3B0D0A20202D2D612D63762D62616467652D70616464696E673A20302E323572656D20302E373572656D3B0D0A20202D2D612D63762D62616467652D626F726465722D7261646975733A20312E323572656D3B0D0A7D0D0A2E742D436172647352656769';
wwv_flow_imp.g_varchar2_table(519) := '6F6E2D2D7374796C6542202E6861732D69636F6E2D2D746F70207B0D0A20202D2D612D63762D69636F6E2D636F6E7461696E65722D73697A653A203772656D3B0D0A20202D2D612D63762D69636F6E2D73697A653A203272656D3B0D0A20202D2D612D63';
wwv_flow_imp.g_varchar2_table(520) := '762D69636F6E2D626F726465722D7261646975733A20302E323572656D3B0D0A20202D2D612D63762D69636F6E2D696D6167652D73697A653A20766172282D2D612D63762D69636F6E2D636F6E7461696E65722D73697A65293B0D0A20202D2D612D6376';
wwv_flow_imp.g_varchar2_table(521) := '2D69636F6E2D696D6167652D626F726465722D7261646975733A20766172282D2D612D63762D69636F6E2D626F726465722D726164697573293B0D0A20202D2D612D63762D696E697469616C732D626F726465722D7261646975733A20766172282D2D61';
wwv_flow_imp.g_varchar2_table(522) := '2D63762D69636F6E2D626F726465722D726164697573293B0D0A20202D2D612D63762D696E697469616C732D73697A653A20766172282D2D612D63762D69636F6E2D636F6E7461696E65722D73697A65293B0D0A20202D2D612D63762D696E697469616C';
wwv_flow_imp.g_varchar2_table(523) := '732D666F6E742D73697A653A203272656D3B0D0A7D0D0A2E742D4361726473526567696F6E2D2D7374796C6542202E6861732D69636F6E2D2D746F70202E612D43617264566965772D69636F6E57726170207B0D0A20206D617267696E2D696E6C696E65';
wwv_flow_imp.g_varchar2_table(524) := '2D73746172743A2063616C6328766172282D2D612D63762D6865616465722D70616464696E672D7829202A202D31293B0D0A20206D617267696E2D696E6C696E652D656E643A2063616C6328766172282D2D612D63762D6865616465722D70616464696E';
wwv_flow_imp.g_varchar2_table(525) := '672D7829202A202D31293B0D0A20206D617267696E2D626C6F636B2D73746172743A2063616C6328766172282D2D612D63762D6865616465722D70616464696E672D7929202A202D31293B0D0A7D0D0A2E742D4361726473526567696F6E2D2D7374796C';
wwv_flow_imp.g_varchar2_table(526) := '6542202E6861732D69636F6E2D2D746F70202E612D43617264566965772D69636F6E57726170202E612D43617264566965772D696E697469616C732C0D0A2E742D4361726473526567696F6E2D2D7374796C6542202E6861732D69636F6E2D2D746F7020';
wwv_flow_imp.g_varchar2_table(527) := '2E612D43617264566965772D69636F6E57726170202E612D43617264566965772D69636F6E2C0D0A2E742D4361726473526567696F6E2D2D7374796C6542202E6861732D69636F6E2D2D746F70202E612D43617264566965772D69636F6E57726170202E';
wwv_flow_imp.g_varchar2_table(528) := '612D43617264566965772D69636F6E496D67207B0D0A202077696474683A20313030253B0D0A2020626F726465722D7261646975733A20303B0D0A7D0D0A2E742D4361726473526567696F6E2D2D7374796C6542202E6861732D69636F6E2D2D746F7020';
wwv_flow_imp.g_varchar2_table(529) := '2E612D43617264566965772D69636F6E3A6265666F7265207B0D0A2020626F726465722D7261646975733A20313030253B0D0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E31293B0D0A2020746578742D73';
wwv_flow_imp.g_varchar2_table(530) := '6861646F773A20302031707820317078207267626128302C20302C20302C20302E31293B0D0A20206D617267696E3A206175746F3B0D0A202070616464696E673A2063616C6328766172282D2D612D63762D69636F6E2D73697A6529202F2032293B0D0A';
wwv_flow_imp.g_varchar2_table(531) := '7D0D0A2E742D4361726473526567696F6E2D2D7374796C6542202E6861732D69636F6E2D2D7374617274202E612D43617264566965772D69636F6E57726170207B0D0A20206D617267696E2D626C6F636B2D656E643A20766172282D2D612D63762D6865';
wwv_flow_imp.g_varchar2_table(532) := '616465722D6974656D2D73706163696E672D782C20302E373572656D293B0D0A7D0D0A2E742D4361726473526567696F6E2D2D7374796C6542202E6861732D69636F6E2D2D656E64202E612D43617264566965772D69636F6E57726170207B0D0A20206D';
wwv_flow_imp.g_varchar2_table(533) := '617267696E2D626C6F636B2D73746172743A20766172282D2D612D63762D6865616465722D6974656D2D73706163696E672D782C20302E373572656D293B0D0A2020677269642D617265613A2062616467652D626F74746F6D3B0D0A7D0D0A2E742D4361';
wwv_flow_imp.g_varchar2_table(534) := '726473526567696F6E2D2D7374796C6542202E6861732D69636F6E2D2D656E64202E612D43617264566965772D686561646572426F6479207B0D0A2020677269642D617265613A2069636F6E2D746F703B0D0A7D0D0A2E742D4361726473526567696F6E';
wwv_flow_imp.g_varchar2_table(535) := '2D2D7374796C6542202E6861732D69636F6E2D2D656E64202E612D43617264566965772D6261646765207B0D0A2020677269642D617265613A20626F64793B0D0A7D0D0A2E742D4361726473526567696F6E2D2D7374796C6542202E612D436172645669';
wwv_flow_imp.g_varchar2_table(536) := '65772D69636F6E57726170207B0D0A2020677269642D617265613A2069636F6E2D746F703B0D0A20206D617267696E2D696E6C696E652D656E643A20756E7365743B0D0A20206D617267696E2D696E6C696E652D73746172743A20756E7365743B0D0A20';
wwv_flow_imp.g_varchar2_table(537) := '20646973706C61793A20666C65783B0D0A20206A7573746966792D636F6E74656E743A2063656E7465723B0D0A7D0D0A2E742D4361726473526567696F6E2D2D7374796C6542202E612D43617264566965772D686561646572426F6479207B0D0A202074';
wwv_flow_imp.g_varchar2_table(538) := '6578742D616C69676E3A2063656E7465723B0D0A7D0D0A2E742D4361726473526567696F6E2D2D7374796C6542202E612D43617264566965772D6261646765207B0D0A20206D617267696E2D696E6C696E652D73746172743A206175746F3B0D0A20206D';
wwv_flow_imp.g_varchar2_table(539) := '617267696E2D696E6C696E652D656E643A206175746F3B0D0A2020677269642D617265613A2062616467652D626F74746F6D3B0D0A7D0D0A2E742D4361726473526567696F6E2D2D7374796C6542202E612D43617264566965772D62616467653A6E6F74';
wwv_flow_imp.g_varchar2_table(540) := '283A66697273742D6368696C6429207B0D0A20206D617267696E2D626C6F636B2D73746172743A20766172282D2D612D63762D6865616465722D6974656D2D73706163696E672D782C20302E373572656D293B0D0A7D0D0A2E742D436172647352656769';
wwv_flow_imp.g_varchar2_table(541) := '6F6E2D2D7374796C6542202E612D43617264566965772D62616467654C6162656C207B0D0A2020626F726465723A20756E7365743B0D0A2020636C69703A20756E7365743B0D0A2020636C69702D706174683A20756E7365743B0D0A2020686569676874';
wwv_flow_imp.g_varchar2_table(542) := '3A20756E7365743B0D0A20206D617267696E3A20756E7365743B0D0A20206F766572666C6F773A20756E7365743B0D0A202070616464696E673A20756E7365743B0D0A2020706F736974696F6E3A20756E7365743B0D0A202077696474683A20756E7365';
wwv_flow_imp.g_varchar2_table(543) := '743B0D0A7D0D0A2E742D4361726473526567696F6E2D2D7374796C6542202E612D43617264566965772D616374696F6E73207B0D0A2020666C65782D646972656374696F6E3A20636F6C756D6E3B0D0A7D0D0A2E742D4361726473526567696F6E2D2D73';
wwv_flow_imp.g_varchar2_table(544) := '74796C6542202E612D43617264566965772D616374696F6E735072696D617279202E612D43617264566965772D627574746F6E207B0D0A202077696474683A20313030253B0D0A7D0D0A2E742D4361726473526567696F6E2D2D7374796C6542202E612D';
wwv_flow_imp.g_varchar2_table(545) := '43617264566965772D616374696F6E735072696D617279202E612D43617264566965772D627574746F6E202B202E612D43617264566965772D627574746F6E207B0D0A20206D617267696E2D626C6F636B2D73746172743A20302E323572656D3B0D0A7D';
wwv_flow_imp.g_varchar2_table(546) := '0D0A2E742D4361726473526567696F6E2D2D7374796C6542202E612D43617264566965772D616374696F6E735365636F6E64617279207B0D0A2020746578742D616C69676E3A2063656E7465723B0D0A7D0D0A2E742D4361726473526567696F6E2D2D73';
wwv_flow_imp.g_varchar2_table(547) := '74796C6542202E612D43617264566965772D616374696F6E735365636F6E646172793A6E6F74283A6F6E6C792D6368696C6429207B0D0A20206D617267696E2D626C6F636B2D73746172743A20302E3572656D3B0D0A7D0D0A2E742D4361726473526567';
wwv_flow_imp.g_varchar2_table(548) := '696F6E2D2D7374796C6543207B0D0A20202D2D612D63762D6F766572666C6F773A2068696464656E3B0D0A20202D2D612D63762D6D656469612D6261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E303235293B0D0A20';
wwv_flow_imp.g_varchar2_table(549) := '202D2D612D63762D6D656469612D6F7665726C61792D636F6C6F723A207267626128302C20302C20302C20302E3735293B0D0A20202D2D612D63762D6D656469612D70616464696E672D793A203072656D3B0D0A20202D2D612D63762D6D656469612D70';
wwv_flow_imp.g_varchar2_table(550) := '616464696E672D783A203072656D3B0D0A20202D2D612D63762D6865616465722D626F726465722D77696474683A203070783B0D0A20202D2D612D63762D6865616465722D6261636B67726F756E642D636F6C6F723A20756E7365743B0D0A20202D2D61';
wwv_flow_imp.g_varchar2_table(551) := '2D63762D616374696F6E732D626F726465722D77696474683A203070783B0D0A20202D2D612D63762D616374696F6E732D6261636B67726F756E642D636F6C6F723A20756E7365743B0D0A7D0D0A2E742D4361726473526567696F6E2D2D7374796C6543';
wwv_flow_imp.g_varchar2_table(552) := '202E6861732D7469746C652E6861732D626F64793A6E6F74282E6861732D6D656469612D2D626F647929202E612D43617264566965772D626F64792C0D0A2E742D4361726473526567696F6E2D2D7374796C6543202E6861732D7469746C652E6861732D';
wwv_flow_imp.g_varchar2_table(553) := '7365636F6E646172793A6E6F74282E6861732D6D656469612D2D626F647929202E612D43617264566965772D626F64792C0D0A2E742D4361726473526567696F6E2D2D7374796C6543202E6861732D7375627469746C652E6861732D626F64793A6E6F74';
wwv_flow_imp.g_varchar2_table(554) := '282E6861732D6D656469612D2D626F647929202E612D43617264566965772D626F64792C0D0A2E742D4361726473526567696F6E2D2D7374796C6543202E6861732D7375627469746C652E6861732D7365636F6E646172793A6E6F74282E6861732D6D65';
wwv_flow_imp.g_varchar2_table(555) := '6469612D2D626F647929202E612D43617264566965772D626F64792C0D0A2E742D4361726473526567696F6E2D2D7374796C6543202E6861732D69636F6E2E6861732D626F64793A6E6F74282E6861732D6D656469612D2D626F647929202E612D436172';
wwv_flow_imp.g_varchar2_table(556) := '64566965772D626F64792C0D0A2E742D4361726473526567696F6E2D2D7374796C6543202E6861732D69636F6E2E6861732D7365636F6E646172793A6E6F74282E6861732D6D656469612D2D626F647929202E612D43617264566965772D626F64792C0D';
wwv_flow_imp.g_varchar2_table(557) := '0A2E742D4361726473526567696F6E2D2D7374796C6543202E6861732D62616467652E6861732D626F64793A6E6F74282E6861732D6D656469612D2D626F647929202E612D43617264566965772D626F64792C0D0A2E742D4361726473526567696F6E2D';
wwv_flow_imp.g_varchar2_table(558) := '2D7374796C6543202E6861732D62616467652E6861732D7365636F6E646172793A6E6F74282E6861732D6D656469612D2D626F647929202E612D43617264566965772D626F6479207B0D0A202070616464696E672D626C6F636B2D73746172743A20303B';
wwv_flow_imp.g_varchar2_table(559) := '0D0A7D0D0A406D6564696120286D61782D77696474683A20373637707829207B0D0A20202E742D4361726473526567696F6E2D2D7374796C6543202E612D43617264566965772D6974656D732D2D726F77202E612D4361726456696577207B0D0A202020';
wwv_flow_imp.g_varchar2_table(560) := '20646973706C61793A20666C65783B0D0A20207D0D0A7D0D0A2E742D4361726473526567696F6E2D2D7374796C6543202E612D43617264566965772D6974656D732D2D726F77202E6861732D69636F6E2D2D7374617274202E612D43617264566965772D';
wwv_flow_imp.g_varchar2_table(561) := '626F6479207B0D0A2020677269642D636F6C756D6E2D73746172743A20323B0D0A7D0D0A2E742D4361726473526567696F6E2D2D7374796C6543202E612D43617264566965772D6974656D732D2D726F77202E6861732D6D656469612D2D666972737420';
wwv_flow_imp.g_varchar2_table(562) := '2E612D43617264566965772D626F6479207B0D0A2020677269642D636F6C756D6E2D73746172743A20323B0D0A7D0D0A2E742D4361726473526567696F6E2D2D7374796C6543202E612D43617264566965772D6974656D732D2D726F77202E6861732D6D';
wwv_flow_imp.g_varchar2_table(563) := '656469612D2D66697273742E6861732D69636F6E2D2D7374617274202E612D43617264566965772D626F6479207B0D0A2020677269642D636F6C756D6E2D73746172743A20333B0D0A7D0D0A2E742D4361726473526567696F6E2D2D7374796C6543202E';
wwv_flow_imp.g_varchar2_table(564) := '612D43617264566965772D6974656D732D2D726F77202E612D43617264566965772D616374696F6E73207B0D0A2020666C65782D646972656374696F6E3A20636F6C756D6E3B0D0A2020616C69676E2D6974656D733A2063656E7465723B0D0A20206772';
wwv_flow_imp.g_varchar2_table(565) := '69642D636F6C756D6E3A20343B0D0A2020677269642D726F772D73746172743A20313B0D0A2020677269642D726F772D656E643A20323B0D0A2020616C69676E2D73656C663A2063656E7465723B0D0A7D0D0A2E742D4361726473526567696F6E2D2D73';
wwv_flow_imp.g_varchar2_table(566) := '74796C6543202E612D43617264566965772D6974656D732D2D726F77202E6861732D626F6479202E612D43617264566965772D616374696F6E73207B0D0A2020616C69676E2D6974656D733A20666C65782D656E643B0D0A2020677269642D726F772D65';
wwv_flow_imp.g_varchar2_table(567) := '6E643A20343B0D0A7D0D0A2E742D4361726473526567696F6E2D2D7374796C6543202E612D43617264566965772D6974656D732D2D726F77202E612D43617264566965773A6E6F74282E6861732D69636F6E292C0D0A2E742D4361726473526567696F6E';
wwv_flow_imp.g_varchar2_table(568) := '2D2D7374796C6543202E612D43617264566965772D6974656D732D2D726F77202E6861732D69636F6E2D2D746F702C0D0A2E742D4361726473526567696F6E2D2D7374796C6543202E612D43617264566965772D6974656D732D2D726F77202E6861732D';
wwv_flow_imp.g_varchar2_table(569) := '69636F6E2D2D656E64207B0D0A20202D2D612D63762D69636F6E2D7370616365723A203072656D3B0D0A7D0D0A406D6564696120286D61782D77696474683A20373637707829207B0D0A20202E742D4361726473526567696F6E2D2D7374796C6543202E';
wwv_flow_imp.g_varchar2_table(570) := '612D43617264566965772D6974656D732D2D726F77202E6861732D6D65646961207B0D0A20202020677269642D74656D706C6174652D636F6C756D6E733A206D696E6D617828312E323572656D2C203572656D29206D696E6D617828302C20766172282D';
wwv_flow_imp.g_varchar2_table(571) := '2D612D63762D69636F6E2D7370616365722C20322E373572656D292920316672206D696E6D617828302C206175746F293B0D0A20207D0D0A7D0D0A612D636F6D626F626F78207B0D0A20202D2D612D636869702D72656D6F76652D70616464696E673A20';
wwv_flow_imp.g_varchar2_table(572) := '302E3036323572656D3B0D0A7D0D0A2E742D466F726D2D2D6C617267652C0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D6C61726765207B0D0A20202D2D75742D6669656C642D6C6162656C2D666F6E742D73697A653A20302E383735';
wwv_flow_imp.g_varchar2_table(573) := '72656D3B0D0A20202D2D75742D6669656C642D6C6162656C2D70616464696E672D793A20302E3572656D3B0D0A20202D2D612D6669656C642D696E7075742D666F6E742D73697A653A20302E38373572656D3B0D0A20202D2D612D6669656C642D696E70';
wwv_flow_imp.g_varchar2_table(574) := '75742D70616464696E672D793A20302E3572656D3B0D0A20202D2D612D6669656C642D696E7075742D70616464696E672D783A20302E3572656D3B0D0A20202D2D75742D6669656C642D696E7075742D69636F6E2D70616464696E672D783A20302E3572';
wwv_flow_imp.g_varchar2_table(575) := '656D3B0D0A20202D2D75742D6669656C642D696E7075742D69636F6E2D70616464696E672D793A20302E3572656D3B0D0A20202D2D612D636865636B626F782D73697A653A20312E323572656D3B0D0A20202D2D612D636865636B626F782D69636F6E2D';
wwv_flow_imp.g_varchar2_table(576) := '73697A653A20312E31323572656D3B0D0A20202D2D612D636865636B626F782D6C6162656C2D666F6E742D73697A653A20302E38373572656D3B0D0A20202D2D612D636865636B626F782D6C6162656C2D6C696E652D6865696768743A20312E32357265';
wwv_flow_imp.g_varchar2_table(577) := '6D3B0D0A20202D2D75742D70696C6C627574746F6E2D70616464696E672D793A20302E3572656D3B0D0A20202D2D75742D70696C6C627574746F6E2D70616464696E672D783A20302E373572656D3B0D0A20202D2D75742D70696C6C627574746F6E2D66';
wwv_flow_imp.g_varchar2_table(578) := '6F6E742D73697A653A20302E373572656D3B0D0A20202D2D75742D70696C6C627574746F6E2D6C696E652D6865696768743A203172656D3B0D0A20202D2D75742D70696C6C627574746F6E2D636865636B626F782D6F66667365743A20302E3337357265';
wwv_flow_imp.g_varchar2_table(579) := '6D3B0D0A20202D2D75742D70696C6C627574746F6E2D636865636B626F782D6C696E652D6865696768743A203172656D3B0D0A20202D2D612D706F7075706C6F762D636869702D6D617267696E2D783A20302E31323572656D3B0D0A20202D2D612D706F';
wwv_flow_imp.g_varchar2_table(580) := '7075706C6F762D636869702D6D617267696E2D793A20302E31323572656D3B0D0A20202D2D612D706F7075706C6F762D636869702D666F6E742D73697A653A20302E38373572656D3B0D0A20202D2D612D706F7075706C6F762D636869702D6C696E652D';
wwv_flow_imp.g_varchar2_table(581) := '6865696768743A20312E323572656D3B0D0A20202D2D612D706F7075706C6F762D636869702D70616464696E672D793A20302E31323572656D3B0D0A20202D2D612D706F7075706C6F762D636869702D70616464696E672D783A20302E33373572656D3B';
wwv_flow_imp.g_varchar2_table(582) := '0D0A20202D2D612D7377697463682D77696474683A20332E373572656D3B0D0A20202D2D612D7377697463682D70616464696E672D793A20302E3138373572656D3B0D0A20202D2D612D7377697463682D70616464696E672D783A20302E313837357265';
wwv_flow_imp.g_varchar2_table(583) := '6D3B0D0A20202D2D612D7377697463682D746F67676C652D77696474683A20312E36323572656D3B0D0A20202D2D612D7377697463682D746F67676C652D6865696768743A20312E36323572656D3B0D0A7D0D0A2E742D466F726D2D2D6C61726765202E';
wwv_flow_imp.g_varchar2_table(584) := '742D466F726D2D6974656D546578742C0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D6C61726765202E742D466F726D2D6974656D54657874207B0D0A20206C696E652D6865696768743A203272656D3B0D0A2020666F6E742D73697A';
wwv_flow_imp.g_varchar2_table(585) := '653A20302E38373572656D3B0D0A7D0D0A2E742D466F726D2D2D6C61726765202E617065782D6974656D2D69636F6E2C0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D6C61726765202E617065782D6974656D2D69636F6E2C0D0A2E74';
wwv_flow_imp.g_varchar2_table(586) := '2D466F726D2D2D6C617267652E617065782D6974656D2D777261707065722D2D636F6C6F722D7069636B65722C0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D6C617267652E617065782D6974656D2D777261707065722D2D636F6C6F';
wwv_flow_imp.g_varchar2_table(587) := '722D7069636B6572207B0D0A20202D2D612D69636F6E2D70616464696E673A20302E3572656D3B0D0A7D0D0A2E742D466F726D2D2D6C617267652E617065782D6974656D2D777261707065722D2D636F6C6F722D7069636B65722C0D0A2E742D466F726D';
wwv_flow_imp.g_varchar2_table(588) := '2D6669656C64436F6E7461696E65722D2D6C617267652E617065782D6974656D2D777261707065722D2D636F6C6F722D7069636B6572207B0D0A20202D2D612D69636F6E2D73697A653A20312E323572656D3B0D0A20202D2D612D6974656D2D69636F6E';
wwv_flow_imp.g_varchar2_table(589) := '2D6F66667365743A2063616C6328766172282D2D612D69636F6E2D73697A652C203172656D29202B20766172282D2D612D69636F6E2D70616464696E6729293B0D0A7D0D0A2E742D466F726D2D2D6C61726765202E617065782D6974656D2D67726F7570';
wwv_flow_imp.g_varchar2_table(590) := '2D2D636F6C6F722D7069636B6572202E612D427574746F6E2D2D636F6C6F725069636B65724F6E6C792C0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D6C61726765202E617065782D6974656D2D67726F75702D2D636F6C6F722D7069';
wwv_flow_imp.g_varchar2_table(591) := '636B6572202E612D427574746F6E2D2D636F6C6F725069636B65724F6E6C79207B0D0A20202D2D612D636F6C6F722D7069636B65722D636F6C6F722D6F6E6C792D6865696768743A203172656D3B0D0A20202D2D612D636F6C6F722D7069636B65722D63';
wwv_flow_imp.g_varchar2_table(592) := '6F6C6F722D6F6E6C792D77696474683A203272656D3B0D0A20202D2D612D627574746F6E2D70616464696E673A20302E3572656D3B0D0A7D0D0A2E742D466F726D2D2D6C617267652E617065782D6974656D2D777261707065722D2D6861732D69636F6E';
wwv_flow_imp.g_varchar2_table(593) := '2C0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D6C617267652E617065782D6974656D2D777261707065722D2D6861732D69636F6E207B0D0A20202D2D612D69636F6E2D70616464696E673A20302E3572656D3B0D0A20202D2D612D69';
wwv_flow_imp.g_varchar2_table(594) := '74656D2D69636F6E2D6F66667365743A2063616C6328766172282D2D612D69636F6E2D73697A652C203172656D29202B20766172282D2D612D69636F6E2D70616464696E6729293B0D0A7D0D0A2E742D466F726D2D2D6C61726765202E742D466F726D2D';
wwv_flow_imp.g_varchar2_table(595) := '6974656D57726170706572202E612D427574746F6E2C0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D6C61726765202E742D466F726D2D6974656D57726170706572202E612D427574746F6E2C0D0A2E742D466F726D2D2D6C61726765';
wwv_flow_imp.g_varchar2_table(596) := '202E742D466F726D2D6974656D57726170706572202E742D466F726D2D68656C70427574746F6E2C0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D6C61726765202E742D466F726D2D6974656D57726170706572202E742D466F726D2D';
wwv_flow_imp.g_varchar2_table(597) := '68656C70427574746F6E2C0D0A2E742D466F726D2D2D6C61726765202E617065782D6974656D2D66696C652D2D6E61746976653A3A2D7765626B69742D66696C652D75706C6F61642D627574746F6E2C0D0A2E742D466F726D2D6669656C64436F6E7461';
wwv_flow_imp.g_varchar2_table(598) := '696E65722D2D6C61726765202E617065782D6974656D2D66696C652D2D6E61746976653A3A2D7765626B69742D66696C652D75706C6F61642D627574746F6E207B0D0A20202D2D612D627574746F6E2D70616464696E672D793A20302E3572656D3B0D0A';
wwv_flow_imp.g_varchar2_table(599) := '20202D2D612D627574746F6E2D70616464696E672D783A20302E373572656D3B0D0A20202D2D612D69636F6E2D73697A653A203172656D3B0D0A7D0D0A2E742D466F726D2D2D6C61726765202E617065782D6974656D2D67726F75702D2D73687574746C';
wwv_flow_imp.g_varchar2_table(600) := '652073656C6563742E73687574746C655F6C6566742C0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D6C61726765202E617065782D6974656D2D67726F75702D2D73687574746C652073656C6563742E73687574746C655F6C6566742C';
wwv_flow_imp.g_varchar2_table(601) := '0D0A2E742D466F726D2D2D6C61726765202E617065782D6974656D2D67726F75702D2D73687574746C652073656C6563742E73687574746C655F72696768742C0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D6C61726765202E617065';
wwv_flow_imp.g_varchar2_table(602) := '782D6974656D2D67726F75702D2D73687574746C652073656C6563742E73687574746C655F7269676874207B0D0A20206D696E2D6865696768743A2031312E323572656D3B0D0A7D0D0A2E742D466F726D2D2D786C617267652C0D0A2E742D466F726D2D';
wwv_flow_imp.g_varchar2_table(603) := '6669656C64436F6E7461696E65722D2D786C61726765207B0D0A20202D2D75742D6669656C642D6C6162656C2D666F6E742D73697A653A203172656D3B0D0A20202D2D75742D6669656C642D6C6162656C2D70616464696E672D793A20302E373572656D';
wwv_flow_imp.g_varchar2_table(604) := '3B0D0A20202D2D612D6669656C642D696E7075742D666F6E742D73697A653A203172656D3B0D0A20202D2D612D6669656C642D696E7075742D6C696E652D6865696768743A20312E323572656D3B0D0A20202D2D612D6669656C642D696E7075742D7061';
wwv_flow_imp.g_varchar2_table(605) := '6464696E672D793A20302E36323572656D3B0D0A20202D2D612D6669656C642D696E7075742D70616464696E672D783A20302E36323572656D3B0D0A20202D2D75742D6669656C642D696E7075742D69636F6E2D70616464696E672D783A20302E357265';
wwv_flow_imp.g_varchar2_table(606) := '6D3B0D0A20202D2D75742D6669656C642D696E7075742D69636F6E2D70616464696E672D793A20302E373572656D3B0D0A20202D2D612D636865636B626F782D73697A653A20312E3572656D3B0D0A20202D2D612D636865636B626F782D69636F6E2D73';
wwv_flow_imp.g_varchar2_table(607) := '697A653A20312E31323572656D3B0D0A20202D2D612D636865636B626F782D6C6162656C2D666F6E742D73697A653A203172656D3B0D0A20202D2D612D636865636B626F782D6C6162656C2D6C696E652D6865696768743A20312E3572656D3B0D0A2020';
wwv_flow_imp.g_varchar2_table(608) := '2D2D75742D70696C6C627574746F6E2D70616464696E672D793A20302E373572656D3B0D0A20202D2D75742D70696C6C627574746F6E2D70616464696E672D783A20302E373572656D3B0D0A20202D2D75742D70696C6C627574746F6E2D666F6E742D73';
wwv_flow_imp.g_varchar2_table(609) := '697A653A20302E38373572656D3B0D0A20202D2D75742D70696C6C627574746F6E2D6C696E652D6865696768743A203172656D3B0D0A20202D2D75742D70696C6C627574746F6E2D636865636B626F782D6F66667365743A20302E3572656D3B0D0A2020';
wwv_flow_imp.g_varchar2_table(610) := '2D2D75742D70696C6C627574746F6E2D636865636B626F782D6C696E652D6865696768743A203172656D3B0D0A20202D2D612D706F7075706C6F762D636869702D6D617267696E2D783A20302E31323572656D3B0D0A20202D2D612D706F7075706C6F76';
wwv_flow_imp.g_varchar2_table(611) := '2D636869702D6D617267696E2D793A20302E31323572656D3B0D0A20202D2D612D706F7075706C6F762D636869702D666F6E742D73697A653A203172656D3B0D0A20202D2D612D706F7075706C6F762D636869702D6C696E652D6865696768743A20312E';
wwv_flow_imp.g_varchar2_table(612) := '3572656D3B0D0A20202D2D612D706F7075706C6F762D636869702D70616464696E672D793A20302E323572656D3B0D0A20202D2D612D706F7075706C6F762D636869702D70616464696E672D783A20302E3572656D3B0D0A20202D2D612D737769746368';
wwv_flow_imp.g_varchar2_table(613) := '2D77696474683A20342E373572656D3B0D0A20202D2D612D7377697463682D70616464696E672D793A20302E323572656D3B0D0A20202D2D612D7377697463682D70616464696E672D783A20302E323572656D3B0D0A20202D2D612D7377697463682D74';
wwv_flow_imp.g_varchar2_table(614) := '6F67676C652D77696474683A203272656D3B0D0A20202D2D612D7377697463682D746F67676C652D6865696768743A203272656D3B0D0A7D0D0A2E742D466F726D2D2D786C61726765202E742D466F726D2D6974656D546578742C0D0A2E742D466F726D';
wwv_flow_imp.g_varchar2_table(615) := '2D6669656C64436F6E7461696E65722D2D786C61726765202E742D466F726D2D6974656D54657874207B0D0A20206C696E652D6865696768743A20322E3572656D3B0D0A2020666F6E742D73697A653A203172656D3B0D0A7D0D0A2E742D466F726D2D2D';
wwv_flow_imp.g_varchar2_table(616) := '786C61726765202E617065782D6974656D2D69636F6E2C0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D786C61726765202E617065782D6974656D2D69636F6E2C0D0A2E742D466F726D2D2D786C617267652E617065782D6974656D2D';
wwv_flow_imp.g_varchar2_table(617) := '777261707065722D2D636F6C6F722D7069636B65722C0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D786C617267652E617065782D6974656D2D777261707065722D2D636F6C6F722D7069636B6572207B0D0A20202D2D612D69636F6E';
wwv_flow_imp.g_varchar2_table(618) := '2D70616464696E673A20302E3572656D3B0D0A7D0D0A2E742D466F726D2D2D786C617267652E617065782D6974656D2D777261707065722D2D636F6C6F722D7069636B65722C0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D786C6172';
wwv_flow_imp.g_varchar2_table(619) := '67652E617065782D6974656D2D777261707065722D2D636F6C6F722D7069636B6572207B0D0A20202D2D612D69636F6E2D73697A653A20312E323572656D3B0D0A20202D2D612D6974656D2D69636F6E2D6F66667365743A2063616C6328766172282D2D';
wwv_flow_imp.g_varchar2_table(620) := '612D69636F6E2D73697A652C203172656D29202B20766172282D2D612D69636F6E2D70616464696E6729293B0D0A7D0D0A2E742D466F726D2D2D786C61726765202E617065782D6974656D2D67726F75702D2D636F6C6F722D7069636B6572202E612D42';
wwv_flow_imp.g_varchar2_table(621) := '7574746F6E2D2D636F6C6F725069636B65724F6E6C792C0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D786C61726765202E617065782D6974656D2D67726F75702D2D636F6C6F722D7069636B6572202E612D427574746F6E2D2D636F';
wwv_flow_imp.g_varchar2_table(622) := '6C6F725069636B65724F6E6C79207B0D0A20202D2D612D636F6C6F722D7069636B65722D636F6C6F722D6F6E6C792D6865696768743A20312E3572656D3B0D0A20202D2D612D636F6C6F722D7069636B65722D636F6C6F722D6F6E6C792D77696474683A';
wwv_flow_imp.g_varchar2_table(623) := '203272656D3B0D0A20202D2D612D627574746F6E2D70616464696E673A20302E3572656D3B0D0A7D0D0A2E742D466F726D2D2D786C61726765202E742D466F726D2D6974656D57726170706572202E612D427574746F6E2C0D0A2E742D466F726D2D6669';
wwv_flow_imp.g_varchar2_table(624) := '656C64436F6E7461696E65722D2D786C61726765202E742D466F726D2D6974656D57726170706572202E612D427574746F6E2C0D0A2E742D466F726D2D2D786C61726765202E742D466F726D2D6974656D57726170706572202E742D466F726D2D68656C';
wwv_flow_imp.g_varchar2_table(625) := '70427574746F6E2C0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D786C61726765202E742D466F726D2D6974656D57726170706572202E742D466F726D2D68656C70427574746F6E2C0D0A2E742D466F726D2D2D786C61726765202E61';
wwv_flow_imp.g_varchar2_table(626) := '7065782D6974656D2D66696C652D2D6E61746976653A3A2D7765626B69742D66696C652D75706C6F61642D627574746F6E2C0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D786C61726765202E617065782D6974656D2D66696C652D2D';
wwv_flow_imp.g_varchar2_table(627) := '6E61746976653A3A2D7765626B69742D66696C652D75706C6F61642D627574746F6E207B0D0A20202D2D612D627574746F6E2D70616464696E672D793A20302E3638373572656D3B0D0A20202D2D612D627574746F6E2D70616464696E672D783A20302E';
wwv_flow_imp.g_varchar2_table(628) := '373572656D3B0D0A20202D2D612D69636F6E2D73697A653A203172656D3B0D0A7D0D0A2E742D466F726D2D2D786C617267652E617065782D6974656D2D777261707065722D2D6861732D69636F6E2C0D0A2E742D466F726D2D6669656C64436F6E746169';
wwv_flow_imp.g_varchar2_table(629) := '6E65722D2D786C617267652E617065782D6974656D2D777261707065722D2D6861732D69636F6E207B0D0A20202D2D612D69636F6E2D70616464696E673A20302E3572656D3B0D0A20202D2D612D6974656D2D69636F6E2D6F66667365743A2063616C63';
wwv_flow_imp.g_varchar2_table(630) := '28766172282D2D612D69636F6E2D73697A652C203172656D29202B20766172282D2D612D69636F6E2D70616464696E6729293B0D0A7D0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D666C6F6174696E674C6162656C2E742D466F726D';
wwv_flow_imp.g_varchar2_table(631) := '2D6669656C64436F6E7461696E65722D2D6C617267652C0D0A2E742D466F726D2D2D6C61726765202E742D466F726D2D6669656C64436F6E7461696E65722D2D666C6F6174696E674C6162656C207B0D0A20202D2D75742D6669656C642D6C6162656C2D';
wwv_flow_imp.g_varchar2_table(632) := '666F6E742D73697A653A203172656D3B0D0A20202D2D612D6669656C642D696E7075742D70616464696E672D783A20302E373572656D3B0D0A20202D2D612D6669656C642D696E7075742D70616464696E672D793A20302E36323572656D3B0D0A20202D';
wwv_flow_imp.g_varchar2_table(633) := '2D612D6669656C642D696E7075742D666F6E742D73697A653A203172656D3B0D0A20202D2D75742D6669656C642D666C2D6C6162656C2D6C696E652D6865696768743A20312E323572656D3B0D0A20202D2D75742D6669656C642D666C2D6C6162656C2D';
wwv_flow_imp.g_varchar2_table(634) := '666F6E742D73697A653A20302E373572656D3B0D0A7D0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D666C6F6174696E674C6162656C2E742D466F726D2D6669656C64436F6E7461696E65722D2D786C617267652C0D0A2E742D466F72';
wwv_flow_imp.g_varchar2_table(635) := '6D2D2D786C61726765202E742D466F726D2D6669656C64436F6E7461696E65722D2D666C6F6174696E674C6162656C207B0D0A20202D2D75742D6669656C642D6C6162656C2D666F6E742D73697A653A203172656D3B0D0A20202D2D612D6669656C642D';
wwv_flow_imp.g_varchar2_table(636) := '696E7075742D70616464696E672D783A20302E373572656D3B0D0A20202D2D612D6669656C642D696E7075742D70616464696E672D793A20302E373572656D3B0D0A20202D2D612D6669656C642D696E7075742D666F6E742D73697A653A203172656D3B';
wwv_flow_imp.g_varchar2_table(637) := '0D0A20202D2D75742D6669656C642D666C2D6C6162656C2D6C696E652D6865696768743A20312E33373572656D3B0D0A20202D2D75742D6669656C642D666C2D6C6162656C2D666F6E742D73697A653A20302E38373572656D3B0D0A20202D2D75742D66';
wwv_flow_imp.g_varchar2_table(638) := '69656C642D696E7075742D69636F6E2D70616464696E672D783A20302E36323572656D3B0D0A7D0D0A2E726F2D636865636B626F782C0D0A2E752D636865636B626F783A6265666F72652C0D0A2E752D726164696F3A6265666F7265207B0D0A20207472';
wwv_flow_imp.g_varchar2_table(639) := '616E73666F726D2D6F726967696E3A2063656E7465722063656E7465723B0D0A20207472616E736974696F6E3A207472616E73666F726D20302E3132357320656173652C206261636B67726F756E642D636F6C6F7220302E31357320656173652C20626F';
wwv_flow_imp.g_varchar2_table(640) := '782D736861646F7720302E31357320656173652C20626F726465722D636F6C6F7220302E31357320656173653B0D0A7D0D0A2E726F2D636865636B626F783A6265666F72652C0D0A2E752D636865636B626F783A61667465722C0D0A2E752D726164696F';
wwv_flow_imp.g_varchar2_table(641) := '3A6166746572207B0D0A20207472616E73666F726D2D6F726967696E3A2063656E7465722063656E7465723B0D0A20207472616E73666F726D3A207363616C652830293B0D0A20207472616E736974696F6E3A206F70616369747920302E313573206561';
wwv_flow_imp.g_varchar2_table(642) := '73652C207472616E73666F726D20302E327320656173653B0D0A7D0D0A2E726F2D636865636B626F783A6163746976652C0D0A2E726F2D636865636B626F783A6163746976653A6265666F72652C0D0A2E752D636865636B626F783A6163746976653A62';
wwv_flow_imp.g_varchar2_table(643) := '65666F72652C0D0A2E752D636865636B626F783A6163746976653A61667465722C0D0A696E7075743A636865636B6564202B202E752D636865636B626F783A6163746976653A61667465722C0D0A2E752D726164696F3A6163746976653A6265666F7265';
wwv_flow_imp.g_varchar2_table(644) := '2C0D0A2E752D726164696F3A6163746976653A61667465722C0D0A696E7075743A636865636B6564202B202E752D726164696F3A6163746976653A6166746572207B0D0A20207472616E73666F726D3A207363616C6528302E3735293B0D0A7D0D0A2E72';
wwv_flow_imp.g_varchar2_table(645) := '6F2D636865636B626F782E69732D636865636B65643A6265666F72652C0D0A2E752D636865636B626F782E69732D636865636B65643A61667465722C0D0A696E7075743A636865636B6564202B202E752D636865636B626F783A61667465722C0D0A696E';
wwv_flow_imp.g_varchar2_table(646) := '7075743A636865636B6564202B202E752D726164696F3A6166746572207B0D0A20207472616E73666F726D3A207363616C652831293B0D0A7D0D0A2E612D446174655069636B65722D2D6D756C7469706C65202E612D446174655069636B65722D63616C';
wwv_flow_imp.g_varchar2_table(647) := '656E6461725469746C65207B0D0A2020626F726465722D626C6F636B2D73746172742D77696474683A20766172282D2D612D646174657069636B65722D63616C656E6461722D6865616465722D626F726465722D77696474682C20317078293B0D0A2020';
wwv_flow_imp.g_varchar2_table(648) := '626F726465722D626C6F636B2D73746172742D7374796C653A20736F6C69643B0D0A2020626F726465722D626C6F636B2D73746172742D636F6C6F723A20766172282D2D612D646174657069636B65722D63616C656E6461722D6865616465722D626F72';
wwv_flow_imp.g_varchar2_table(649) := '6465722D636F6C6F722C20766172282D2D612D67762D6865616465722D63656C6C2D626F726465722D636F6C6F7229293B0D0A7D0D0A2E612D446174655069636B65722D63616C656E646172207464203E207370616E207B0D0A2020646973706C61793A';
wwv_flow_imp.g_varchar2_table(650) := '20666C65783B0D0A2020616C69676E2D6974656D733A2063656E7465723B0D0A20206A7573746966792D636F6E74656E743A2063656E7465723B0D0A2020626C6F636B2D73697A653A2063616C6328766172282D2D612D646174657069636B65722D6361';
wwv_flow_imp.g_varchar2_table(651) := '6C656E6461722D6461792D666F6E742D73697A652C203172656D29202A2032293B0D0A2020696E6C696E652D73697A653A2063616C6328766172282D2D612D646174657069636B65722D63616C656E6461722D6461792D666F6E742D73697A652C203172';
wwv_flow_imp.g_varchar2_table(652) := '656D29202A2032293B0D0A7D0D0A2E612D446174655069636B65722D6D6F6E74682C0D0A2E612D446174655069636B65722D796561722C0D0A2E612D446174655069636B65722D74696D65486F7572732C0D0A2E612D446174655069636B65722D74696D';
wwv_flow_imp.g_varchar2_table(653) := '654D696E757465732C0D0A2E612D446174655069636B65722D74696D65416D506D207B0D0A2020706F736974696F6E3A2072656C61746976653B0D0A2020646973706C61793A20677269643B0D0A2020677269642D74656D706C6174652D61726561733A';
wwv_flow_imp.g_varchar2_table(654) := '202273656C656374223B0D0A2020616C69676E2D6974656D733A2063656E7465723B0D0A7D0D0A2E612D446174655069636B65722D6D6F6E74682073656C6563742C0D0A2E612D446174655069636B65722D796561722073656C6563742C0D0A2E612D44';
wwv_flow_imp.g_varchar2_table(655) := '6174655069636B65722D74696D65486F7572732073656C6563742C0D0A2E612D446174655069636B65722D74696D654D696E757465732073656C6563742C0D0A2E612D446174655069636B65722D74696D65416D506D2073656C656374207B0D0A20206F';
wwv_flow_imp.g_varchar2_table(656) := '726465723A206E6F6E653B0D0A2020617070656172616E63653A206E6F6E653B0D0A202070616464696E672D696E6C696E652D656E643A20312E323572656D3B0D0A2020677269642D617265613A2073656C6563743B0D0A7D0D0A2E612D446174655069';
wwv_flow_imp.g_varchar2_table(657) := '636B65722D6D6F6E74683A61667465722C0D0A2E612D446174655069636B65722D796561723A61667465722C0D0A2E612D446174655069636B65722D74696D65486F7572733A61667465722C0D0A2E612D446174655069636B65722D74696D654D696E75';
wwv_flow_imp.g_varchar2_table(658) := '7465733A61667465722C0D0A2E612D446174655069636B65722D74696D65416D506D3A6166746572207B0D0A2020636F6E74656E743A20225C66306463223B0D0A2020666F6E742D66616D696C793A2022466F6E74204150455820536D616C6C223B0D0A';
wwv_flow_imp.g_varchar2_table(659) := '2020677269642D617265613A2073656C6563743B0D0A2020646973706C61793A20666C65783B0D0A20206A7573746966792D636F6E74656E743A20666C65782D656E643B0D0A202072696768743A20766172282D2D612D646174657069636B65722D6D6F';
wwv_flow_imp.g_varchar2_table(660) := '6E74687069636B65722D73656C6563742D70616464696E672D782C20302E323572656D293B0D0A2020706F696E7465722D6576656E74733A206E6F6E653B0D0A2020706F736974696F6E3A2072656C61746976653B0D0A7D0D0A2E612D44617465506963';
wwv_flow_imp.g_varchar2_table(661) := '6B65722D6D6F6E74682073656C6563742C0D0A2E612D446174655069636B65722D796561722073656C656374207B0D0A20206C696E652D6865696768743A2063616C6328766172282D2D612D646174657069636B65722D6D6F6E74687069636B65722D73';
wwv_flow_imp.g_varchar2_table(662) := '656C6563742D666F6E742D73697A652C20302E373572656D29202A20312E313235293B0D0A7D0D0A2E612D446174655069636B65722D74696D65486F7572732073656C6563742C0D0A2E612D446174655069636B65722D74696D654D696E757465732073';
wwv_flow_imp.g_varchar2_table(663) := '656C6563742C0D0A2E612D446174655069636B65722D74696D65416D506D2073656C656374207B0D0A20206C696E652D6865696768743A2063616C6328766172282D2D612D646174657069636B65722D74696D657069636B65722D73656C6563742D666F';
wwv_flow_imp.g_varchar2_table(664) := '6E742D73697A652C20302E373572656D29202A20312E313235293B0D0A7D0D0A2E612D446174655069636B65722D6E6176207B0D0A20202D2D612D627574746F6E2D6261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A2020';
wwv_flow_imp.g_varchar2_table(665) := '2D2D612D627574746F6E2D746578742D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D746578742D64656661756C742D636F6C6F72293B0D0A20202D2D612D627574746F6E2D626F726465722D636F6C6F723A207472616E7370617265';
wwv_flow_imp.g_varchar2_table(666) := '6E743B0D0A20202D2D612D627574746F6E2D736861646F773A206E6F6E653B0D0A20202D2D612D69636F6E2D73697A653A20312E323572656D3B0D0A7D0D0A2E612D446174655069636B65722D6E61763A686F766572207B0D0A20202D2D612D62757474';
wwv_flow_imp.g_varchar2_table(667) := '6F6E2D73746174652D6261636B67726F756E642D636F6C6F723A20766172282D2D612D627574746F6E2D686F7665722D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D612D627574746F6E2D73746174652D746578742D636F6C6F723A2076';
wwv_flow_imp.g_varchar2_table(668) := '6172282D2D612D627574746F6E2D686F7665722D746578742D636F6C6F72293B0D0A20202D2D612D627574746F6E2D73746174652D626F726465722D636F6C6F723A20766172282D2D612D627574746F6E2D686F7665722D626F726465722D636F6C6F72';
wwv_flow_imp.g_varchar2_table(669) := '293B0D0A20202D2D612D627574746F6E2D73746174652D736861646F773A20766172282D2D612D627574746F6E2D686F7665722D736861646F77293B0D0A7D0D0A2E612D446174655069636B65722D6E61763A616374697665207B0D0A20202D2D612D62';
wwv_flow_imp.g_varchar2_table(670) := '7574746F6E2D73746174652D6261636B67726F756E642D636F6C6F723A20766172282D2D612D627574746F6E2D6163746976652D6261636B67726F756E642D636F6C6F722C20766172282D2D612D627574746F6E2D686F7665722D6261636B67726F756E';
wwv_flow_imp.g_varchar2_table(671) := '642D636F6C6F7229293B0D0A20202D2D612D627574746F6E2D73746174652D746578742D636F6C6F723A20766172282D2D612D627574746F6E2D6163746976652D746578742D636F6C6F722C20766172282D2D612D627574746F6E2D686F7665722D7465';
wwv_flow_imp.g_varchar2_table(672) := '78742D636F6C6F7229293B0D0A20202D2D612D627574746F6E2D73746174652D626F726465722D636F6C6F723A20766172282D2D612D627574746F6E2D6163746976652D626F726465722D636F6C6F722C20766172282D2D612D627574746F6E2D686F76';
wwv_flow_imp.g_varchar2_table(673) := '65722D626F726465722D636F6C6F7229293B0D0A20202D2D612D627574746F6E2D73746174652D736861646F773A20766172282D2D612D627574746F6E2D6163746976652D736861646F772C20766172282D2D612D627574746F6E2D686F7665722D7368';
wwv_flow_imp.g_varchar2_table(674) := '61646F7729293B0D0A7D0D0A2E612D446174655069636B65722D2D746F646179207B0D0A2020626F726465722D636F6C6F723A207472616E73706172656E743B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A';
wwv_flow_imp.g_varchar2_table(675) := '2020626F782D736861646F773A206E6F6E653B0D0A20202D2D612D627574746F6E2D746578742D636F6C6F723A20233432386434363B0D0A7D0D0A2E742D4D6567614D656E75207B0D0A20202D2D612D6D656E752D666F63757365642D6261636B67726F';
wwv_flow_imp.g_varchar2_table(676) := '756E642D636F6C6F723A207472616E73706172656E743B0D0A20202D2D612D6D656E752D666F63757365642D746578742D636F6C6F723A20696E697469616C3B0D0A7D0D0A2E742D4D6567614D656E752D6974656D426F64792E69732D666F6375736564';
wwv_flow_imp.g_varchar2_table(677) := '202E742D4D6567614D656E752D6C6162656C2C0D0A2E742D4D6567614D656E752D6974656D426F64793A686F766572202E742D4D6567614D656E752D6C6162656C207B0D0A2020636F6C6F723A20766172282D2D75742D6C696E6B2D746578742D636F6C';
wwv_flow_imp.g_varchar2_table(678) := '6F72293B0D0A7D0D0A2E742D4865616465722D6E6176202E742D4865616465722D6E61762D6C697374207B0D0A20206261636B67726F756E642D636F6C6F723A20766172282D2D612D6D656E756261722D6261636B67726F756E642D636F6C6F72293B0D';
wwv_flow_imp.g_varchar2_table(679) := '0A7D0D0A2E742D4865616465722D6E6176202E612D4D656E75426172207B0D0A2020626F782D736861646F773A20696E73657420302063616C6328766172282D2D612D6D656E756261722D6974656D2D626F726465722D77696474682C2031707829202A';
wwv_flow_imp.g_varchar2_table(680) := '202D3129203020766172282D2D612D6D656E756261722D6974656D2D626F726465722D636F6C6F72293B0D0A7D0D0A2E742D4865616465722D6E6176202E612D4D656E754261722D6974656D207B0D0A2020626F726465722D746F702D77696474683A20';
wwv_flow_imp.g_varchar2_table(681) := '303B0D0A2020626F726465722D626F74746F6D2D77696474683A20303B0D0A7D0D0A2E742D4865616465722D6E6176202E612D4D656E754261722D6974656D3A666F6375732D77697468696E207B0D0A20206F75746C696E653A20766172282D2D75742D';
wwv_flow_imp.g_varchar2_table(682) := '666F6375732D6F75746C696E652C206175746F2031707820766172282D2D75742D666F6375732D6F75746C696E652D636F6C6F722C202D7765626B69742D666F6375732D72696E672D636F6C6F7229293B0D0A20206F75746C696E652D6F66667365743A';
wwv_flow_imp.g_varchar2_table(683) := '202D3170783B0D0A7D0D0A2E742D4865616465722D6E6176202E612D4D656E754261722D6974656D202E612D4D656E754261722D6C6162656C207B0D0A20206F75746C696E653A206E6F6E653B0D0A202077686974652D73706163653A206E6F77726170';
wwv_flow_imp.g_varchar2_table(684) := '3B0D0A20206D696E2D6865696768743A2063616C632863616C6328766172282D2D612D6D656E756261722D6974656D2D70616464696E672D792C2038707829202A203229202B20766172282D2D612D6D656E756261722D6974656D2D6C696E652D686569';
wwv_flow_imp.g_varchar2_table(685) := '6768742C203136707829293B0D0A7D0D0A2E742D4865616465722D6E6176202E612D4D656E752D2D73706C6974202E612D4D656E754261722D6C6162656C207B0D0A202070616464696E672D696E6C696E652D656E643A20303B0D0A7D0D0A2E742D4865';
wwv_flow_imp.g_varchar2_table(686) := '616465722D6E6176202E612D4D656E752D2D73706C6974202E612D4D656E752D7375624D656E75436F6C207B0D0A20202D2D612D6D656E752D69636F6E2D73697A653A203172656D3B0D0A7D0D0A2E742D4865616465722D6E6176202E612D4D656E752D';
wwv_flow_imp.g_varchar2_table(687) := '2D63757272656E74207B0D0A20202D2D612D6D656E756261722D6974656D2D666F6E742D7765696768743A20766172282D2D612D626173652D666F6E742D7765696768742D626F6C642C20373030293B0D0A7D0D0A2E742D4865616465722D6E6176202E';
wwv_flow_imp.g_varchar2_table(688) := '612D4D656E754261722D6974656D2E69732D666F6375736564207B0D0A20202D2D612D6D656E756261722D6974656D2D6261636B67726F756E642D636F6C6F723A20766172282D2D612D6D656E756261722D6974656D2D666F63757365642D6261636B67';
wwv_flow_imp.g_varchar2_table(689) := '726F756E642D636F6C6F72293B0D0A20202D2D612D6D656E756261722D6974656D2D746578742D636F6C6F723A20766172282D2D612D6D656E756261722D6974656D2D666F63757365642D746578742D636F6C6F72293B0D0A7D0D0A612D73656C656374';
wwv_flow_imp.g_varchar2_table(690) := '207B0D0A20202D2D612D636869702D72656D6F76652D70616464696E673A20302E3036323572656D3B0D0A7D0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E';
wwv_flow_imp.g_varchar2_table(691) := '69732D63757272656E742C0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D73656C65637465642C0D0A2E742D547265654E6176202E612D5472656556';
wwv_flow_imp.g_varchar2_table(692) := '6965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D63757272656E742D2D746F702E69732D73656C6563746564207B0D0A20206261636B67726F756E642D636F6C6F723A20233061306330613B0D0A7D0D0A2E';
wwv_flow_imp.g_varchar2_table(693) := '742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D63757272656E742D2D746F702C0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D';
wwv_flow_imp.g_varchar2_table(694) := '746F704C6576656C2E69732D636F6C6C61707369626C65203E202E612D54726565566965772D726F772C0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C20756C207B0D0A20206261636B67726F756E64';
wwv_flow_imp.g_varchar2_table(695) := '2D636F6C6F723A20233033303330333B0D0A2020636F6C6F723A20236537656165373B0D0A7D0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D686F76';
wwv_flow_imp.g_varchar2_table(696) := '6572207B0D0A20206261636B67726F756E642D636F6C6F723A20233131313431312021696D706F7274616E743B0D0A7D0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D';
wwv_flow_imp.g_varchar2_table(697) := '726F772E69732D686F766572202B202E612D54726565566965772D746F67676C652C0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D686F766572202B';
wwv_flow_imp.g_varchar2_table(698) := '202E612D54726565566965772D636F6E74656E742C0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D686F766572202B202E612D54726565566965772D';
wwv_flow_imp.g_varchar2_table(699) := '746F67676C65202B202E612D54726565566965772D636F6E74656E74207B0D0A2020636F6C6F723A20766172282D2D612D74726565766965772D6E6F64652D73656C65637465642D746578742D636F6C6F72293B0D0A7D0D0A2E612D5472656556696577';
wwv_flow_imp.g_varchar2_table(700) := '2D636F6E74656E742E69732D73656C6563746564203E202E6661207B0D0A20202D2D75742D74726565766965772D69636F6E2D6F7061636974793A20313B0D0A7D0D0A2E742D547265654E61762D2D7374796C65412C0D0A2E742D547265654E61762D2D';
wwv_flow_imp.g_varchar2_table(701) := '7374796C6542207B0D0A20202D2D75742D74726565766965772D62616467652D626F726465722D7261646975733A20312E323572656D3B0D0A20202D2D75742D74726565766965772D62616467652D666F6E742D7765696768743A20766172282D2D612D';
wwv_flow_imp.g_varchar2_table(702) := '626173652D666F6E742D7765696768742D73656D69626F6C642C20353030293B0D0A20202D2D75742D74726565766965772D69636F6E2D73697A653A20312E323572656D3B0D0A20202D2D75742D74726565766965772D746F706C6576656C2D69636F6E';
wwv_flow_imp.g_varchar2_table(703) := '2D636F6E7461696E65722D77696474683A20312E373572656D3B0D0A20202D2D75742D74726565766965772D6E6F64652D69636F6E2D73697A653A203172656D3B0D0A20202D2D75742D74726565766965772D6E6F64652D69636F6E2D636F6E7461696E';
wwv_flow_imp.g_varchar2_table(704) := '65722D77696474683A20766172282D2D75742D74726565766965772D746F706C6576656C2D69636F6E2D636F6E7461696E65722D77696474682C20312E373572656D293B0D0A20202D2D75742D74726565766965772D6E6F64652D696E64656E743A2030';
wwv_flow_imp.g_varchar2_table(705) := '72656D3B0D0A20202D2D75742D74726565766965772D6C6561662D6E6F64652D696E64656E743A20302E36323572656D3B0D0A20202D2D75742D74726565766965772D746F706C6576656C2D6C6561662D70616464696E672D793A203072656D3B0D0A20';
wwv_flow_imp.g_varchar2_table(706) := '202D2D612D74726565766965772D6E6F64652D70616464696E672D793A20302E36323572656D3B0D0A7D0D0A2E742D547265654E61762D2D7374796C6541202E612D54726565566965772D6E6F64652D2D746F704C6576656C20756C2C0D0A2E742D5472';
wwv_flow_imp.g_varchar2_table(707) := '65654E61762D2D7374796C6542202E612D54726565566965772D6E6F64652D2D746F704C6576656C20756C207B0D0A20202D2D612D74726565766965772D6E6F64652D70616464696E672D793A20302E373572656D3B0D0A7D0D0A2E742D547265654E61';
wwv_flow_imp.g_varchar2_table(708) := '762D2D7374796C6541202E612D54726565566965772D6E6F64652D2D746F704C6576656C207B0D0A2020626F726465722D626F74746F6D3A2031707820736F6C69642072676261283235352C203235352C203235352C20302E31293B0D0A7D0D0A2E742D';
wwv_flow_imp.g_varchar2_table(709) := '547265654E61762D2D7374796C6541202E612D54726565566965772D6E6F64652D2D746F704C6576656C2E69732D636F6C6C61707369626C65207B0D0A2020636F6C6F723A20766172282D2D612D74726565766965772D6E6F64652D73656C6563746564';
wwv_flow_imp.g_varchar2_table(710) := '2D746578742D636F6C6F72293B0D0A7D0D0A2E742D547265654E61762D2D7374796C6541202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D63757272656E742D2D746F702C0D0A2E74';
wwv_flow_imp.g_varchar2_table(711) := '2D547265654E61762D2D7374796C6541202E612D54726565566965772D6E6F64652D2D746F704C6576656C20756C207B0D0A20206261636B67726F756E642D636F6C6F723A20766172282D2D612D74726565766965772D6E6F64652D73656C6563746564';
wwv_flow_imp.g_varchar2_table(712) := '2D6261636B67726F756E642D636F6C6F72293B0D0A2020636F6C6F723A20766172282D2D612D74726565766965772D6E6F64652D73656C65637465642D746578742D636F6C6F72293B0D0A7D0D0A2E742D547265654E61762D2D7374796C6541202E612D';
wwv_flow_imp.g_varchar2_table(713) := '54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D63757272656E742D2D746F70202E612D54726565566965772D726F772E69732D73656C65637465642C0D0A2E742D547265654E61762D2D7374';
wwv_flow_imp.g_varchar2_table(714) := '796C6541202E612D54726565566965772D6E6F64652D2D746F704C6576656C20756C202E612D54726565566965772D726F772E69732D73656C6563746564207B0D0A20206261636B67726F756E642D636F6C6F723A20766172282D2D75742D626F64792D';
wwv_flow_imp.g_varchar2_table(715) := '6E61762D6261636B67726F756E642D636F6C6F72293B0D0A2020636F6C6F723A20766172282D2D612D74726565766965772D6E6F64652D73656C65637465642D746578742D636F6C6F72293B0D0A7D0D0A2E742D547265654E61762D2D7374796C654120';
wwv_flow_imp.g_varchar2_table(716) := '2E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D63757272656E742D2D746F702C0D0A2E742D547265654E61762D2D7374796C6541202E612D54726565566965772D6E6F64652D2D746F';
wwv_flow_imp.g_varchar2_table(717) := '704C6576656C202E612D54726565566965772D726F772E69732D63757272656E742D2D746F70207E20756C202E612D54726565566965772D726F77207B0D0A2020626F782D736861646F773A20696E73657420766172282D2D75742D70616C657474652D';
wwv_flow_imp.g_varchar2_table(718) := '7072696D6172792920347078203020303B0D0A7D0D0A2E752D52544C202E742D547265654E61762D2D7374796C6541202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D63757272656E';
wwv_flow_imp.g_varchar2_table(719) := '742D2D746F702C0D0A2E752D52544C202E742D547265654E61762D2D7374796C6541202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D63757272656E742D2D746F70207E20756C202E';
wwv_flow_imp.g_varchar2_table(720) := '612D54726565566965772D726F77207B0D0A2020626F782D736861646F773A20696E73657420766172282D2D75742D70616C657474652D7072696D61727929202D347078203020303B0D0A7D0D0A2E742D547265654E61762D2D7374796C6541202E612D';
wwv_flow_imp.g_varchar2_table(721) := '54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D63757272656E742D2D746F702E69732D666F63757365642C0D0A2E742D547265654E61762D2D7374796C6541202E612D54726565566965772D';
wwv_flow_imp.g_varchar2_table(722) := '6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D63757272656E742D2D746F70207E20756C202E612D54726565566965772D726F772E69732D666F6375736564207B0D0A2020626F782D736861646F773A20696E7365';
wwv_flow_imp.g_varchar2_table(723) := '7420766172282D2D75742D70616C657474652D7072696D6172792920347078203020302C2030203020302031707820766172282D2D75742D70616C657474652D7072696D6172792920696E7365743B0D0A7D0D0A2E752D52544C202E742D547265654E61';
wwv_flow_imp.g_varchar2_table(724) := '762D2D7374796C6541202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D63757272656E742D2D746F702E69732D666F63757365642C0D0A2E752D52544C202E742D547265654E61762D';
wwv_flow_imp.g_varchar2_table(725) := '2D7374796C6541202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D63757272656E742D2D746F70207E20756C202E612D54726565566965772D726F772E69732D666F6375736564207B';
wwv_flow_imp.g_varchar2_table(726) := '0D0A2020626F782D736861646F773A20696E73657420766172282D2D75742D70616C657474652D7072696D61727929202D347078203020302C2030203020302031707820766172282D2D75742D70616C657474652D7072696D6172792920696E7365743B';
wwv_flow_imp.g_varchar2_table(727) := '0D0A7D0D0A2E742D547265654E61762D2D7374796C6542203E20756C207B0D0A20207472616E736974696F6E3A206D617267696E20766172282D2D75742D6C61796F75742D7472616E736974696F6E2C20302E31732920656173653B0D0A20206D617267';
wwv_flow_imp.g_varchar2_table(728) := '696E3A20302E323572656D3B0D0A7D0D0A4061742D726F6F74202E6A732D6E6176436F6C6C61707365642026207B0D0A20202D2D612D74726565766965772D6E6F64652D70616464696E672D793A20302E3572656D3B0D0A2020203E20756C207B0D0A20';
wwv_flow_imp.g_varchar2_table(729) := '2020206D617267696E3A20303B0D0A20207D0D0A7D0D0A2E742D547265654E61762D2D7374796C6542202E612D54726565566965772D6E6F6465207B0D0A20206D617267696E2D626C6F636B2D73746172743A20302E323572656D3B0D0A20206D617267';
wwv_flow_imp.g_varchar2_table(730) := '696E2D626C6F636B2D656E643A20302E323572656D3B0D0A7D0D0A2E742D547265654E61762D2D7374796C6542202E612D54726565566965772D6E6F64652D2D746F704C6576656C207B0D0A20206D617267696E2D696E6C696E652D73746172743A2030';
wwv_flow_imp.g_varchar2_table(731) := '2E323572656D3B0D0A20206D617267696E2D696E6C696E652D656E643A20302E323572656D3B0D0A7D0D0A2E742D547265654E61762D2D7374796C6542202E612D54726565566965772D6E6F64652D2D746F704C6576656C20756C207B0D0A2020626163';
wwv_flow_imp.g_varchar2_table(732) := '6B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A7D0D0A2E742D547265654E61762D2D7374796C6542202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D637572';
wwv_flow_imp.g_varchar2_table(733) := '72656E742D2D746F702C0D0A2E742D547265654E61762D2D7374796C6542202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D63757272656E742D2D746F702E69732D73656C65637465';
wwv_flow_imp.g_varchar2_table(734) := '64207B0D0A20206261636B67726F756E642D636F6C6F723A20233035396130633B0D0A7D0D0A2E742D547265654E61762D2D7374796C6542202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E';
wwv_flow_imp.g_varchar2_table(735) := '69732D63757272656E742D2D746F702E69732D73656C6563746564202B202E612D54726565566965772D746F67676C652C0D0A2E742D547265654E61762D2D7374796C6542202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D';
wwv_flow_imp.g_varchar2_table(736) := '54726565566965772D636F6E74656E742E69732D63757272656E742D2D746F70207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D547265654E61762D2D7374796C6542202E612D54726565566965772D6E6F64652D2D746F704C65';
wwv_flow_imp.g_varchar2_table(737) := '76656C202E612D54726565566965772D636F6E74656E742E69732D63757272656E742D2D746F702E69732D686F766572207B0D0A2020636F6C6F723A20236666666666662021696D706F7274616E743B0D0A7D0D0A2E742D547265654E61762D2D737479';
wwv_flow_imp.g_varchar2_table(738) := '6C6542202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D63757272656E742D2D746F702E69732D686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A202330353966';
wwv_flow_imp.g_varchar2_table(739) := '30632021696D706F7274616E743B0D0A7D0D0A2E742D547265654E61762D2D7374796C6542202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F77207B0D0A2020626F726465722D7261646975733A';
wwv_flow_imp.g_varchar2_table(740) := '20302E323572656D3B0D0A7D0D0A2E612D4952522D6469616C6F672D2D646F776E6C6F61642C0D0A2E612D4952522D6469616C6F672D2D737562736372697074696F6E207B0D0A20202D2D612D69636F6E6C6973742D6974656D2D6261636B67726F756E';
wwv_flow_imp.g_varchar2_table(741) := '642D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D746F6F6C6261722D6261636B67726F756E642D636F6C6F722C207267626128302C20302C20302C20302E30323529293B0D0A20202D2D612D69636F6E6C6973742D6974656D2D7465';
wwv_flow_imp.g_varchar2_table(742) := '78742D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D746578742D64656661756C742D636F6C6F72293B0D0A20202D2D612D69636F6E6C6973742D6974656D2D686F7665722D746578742D636F6C6F723A20766172282D2D75742D636F';
wwv_flow_imp.g_varchar2_table(743) := '6D706F6E656E742D746578742D64656661756C742D636F6C6F72293B0D0A20202D2D612D69636F6E6C6973742D6974656D2D686F7665722D6261636B67726F756E642D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D6261636B67726F';
wwv_flow_imp.g_varchar2_table(744) := '756E642D636F6C6F72293B0D0A20202D2D612D69636F6E6C6973742D6974656D2D73656C65637465642D746578742D636F6C6F723A20766172282D2D612D69636F6E6C6973742D6974656D2D686F7665722D746578742D636F6C6F72293B0D0A20202D2D';
wwv_flow_imp.g_varchar2_table(745) := '612D69636F6E6C6973742D6974656D2D73656C65637465642D6261636B67726F756E642D636F6C6F723A20766172282D2D612D69636F6E6C6973742D6974656D2D686F7665722D6261636B67726F756E642D636F6C6F72293B0D0A7D0D0A2E612D495252';
wwv_flow_imp.g_varchar2_table(746) := '2D6469616C6F672D2D646F776E6C6F6164202E612D49636F6E4C6973742D6974656D2C0D0A2E612D4952522D6469616C6F672D2D737562736372697074696F6E202E612D49636F6E4C6973742D6974656D207B0D0A2020626F782D736861646F773A2069';
wwv_flow_imp.g_varchar2_table(747) := '6E73657420766172282D2D75742D636F6D706F6E656E742D696E6E65722D626F726465722D636F6C6F72292030202D317078203020303B0D0A7D0D0A2E612D4952522D6469616C6F672D2D646F776E6C6F6164202E612D49636F6E4C6973742D6974656D';
wwv_flow_imp.g_varchar2_table(748) := '2E69732D73656C65637465642C0D0A2E612D4952522D6469616C6F672D2D737562736372697074696F6E202E612D49636F6E4C6973742D6974656D2E69732D73656C6563746564207B0D0A2020626F782D736861646F773A20696E73657420766172282D';
wwv_flow_imp.g_varchar2_table(749) := '2D75742D70616C657474652D7072696D61727929203020327078203020303B0D0A7D0D0A2E612D4952522D69636F6E4C6973742D6974656D202B202E612D4952522D69636F6E4C6973742D6974656D207B0D0A2020626F726465722D6C6566742D636F6C';
wwv_flow_imp.g_varchar2_table(750) := '6F723A20766172282D2D75742D636F6D706F6E656E742D696E6E65722D626F726465722D636F6C6F72293B0D0A7D0D0A2E752D52544C202E612D4952522D69636F6E4C6973742D6974656D202B202E612D4952522D69636F6E4C6973742D6974656D207B';
wwv_flow_imp.g_varchar2_table(751) := '0D0A2020626F726465722D72696768742D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D696E6E65722D626F726465722D636F6C6F72293B0D0A7D0D0A2E612D4952522D726164696F49636F6E4C697374207B0D0A20202D2D612D6963';
wwv_flow_imp.g_varchar2_table(752) := '6F6E6C6973742D6974656D2D6261636B67726F756E642D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D746F6F6C6261722D6261636B67726F756E642D636F6C6F722C207267626128302C20302C20302C20302E30323529293B0D0A20';
wwv_flow_imp.g_varchar2_table(753) := '202D2D612D69636F6E6C6973742D6974656D2D746578742D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D746578742D64656661756C742D636F6C6F72293B0D0A20202D2D612D69636F6E6C6973742D6974656D2D686F7665722D7465';
wwv_flow_imp.g_varchar2_table(754) := '78742D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D746578742D64656661756C742D636F6C6F72293B0D0A20202D2D612D69636F6E6C6973742D6974656D2D686F7665722D6261636B67726F756E642D636F6C6F723A20766172282D';
wwv_flow_imp.g_varchar2_table(755) := '2D75742D636F6D706F6E656E742D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D612D69636F6E6C6973742D6974656D2D73656C65637465642D746578742D636F6C6F723A20766172282D2D612D69636F6E6C6973742D6974656D2D686F76';
wwv_flow_imp.g_varchar2_table(756) := '65722D746578742D636F6C6F72293B0D0A20202D2D612D69636F6E6C6973742D6974656D2D73656C65637465642D6261636B67726F756E642D636F6C6F723A20766172282D2D612D69636F6E6C6973742D6974656D2D686F7665722D6261636B67726F75';
wwv_flow_imp.g_varchar2_table(757) := '6E642D636F6C6F72293B0D0A7D0D0A2E612D4952522D726164696F49636F6E4C6973742D6974656D202B202E612D4952522D726164696F49636F6E4C6973742D6974656D207B0D0A2020626F726465722D6C6566742D636F6C6F723A20766172282D2D75';
wwv_flow_imp.g_varchar2_table(758) := '742D636F6D706F6E656E742D696E6E65722D626F726465722D636F6C6F72293B0D0A7D0D0A2E752D52544C202E612D4952522D726164696F49636F6E4C6973742D6974656D202B202E612D4952522D726164696F49636F6E4C6973742D6974656D207B0D';
wwv_flow_imp.g_varchar2_table(759) := '0A2020626F726465722D72696768742D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D696E6E65722D626F726465722D636F6C6F72293B0D0A7D0D0A2E612D4952522D726164696F49636F6E4C6973742D6974656D20696E7075745B74';
wwv_flow_imp.g_varchar2_table(760) := '7970653D726164696F5D202B206C6162656C207B0D0A2020626F782D736861646F773A20696E73657420766172282D2D75742D636F6D706F6E656E742D696E6E65722D626F726465722D636F6C6F72292030202D317078203020303B0D0A7D0D0A2E612D';
wwv_flow_imp.g_varchar2_table(761) := '4952522D726164696F49636F6E4C6973742D6974656D20696E7075745B747970653D726164696F5D3A636865636B6564202B206C6162656C207B0D0A2020626F782D736861646F773A20696E73657420766172282D2D75742D70616C657474652D707269';
wwv_flow_imp.g_varchar2_table(762) := '6D61727929203020327078203020303B0D0A7D0D0A2E612D4952522D6469616C6F67496E666F3A66697273742D6368696C64207B0D0A2020626F726465722D626F74746F6D2D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D696E6E65';
wwv_flow_imp.g_varchar2_table(763) := '722D626F726465722D636F6C6F72293B0D0A7D0D0A2E612D49472D627574746F6E2E612D49472D627574746F6E2D2D636F6E74726F6C732C0D0A2E612D4952522D627574746F6E2E612D4952522D627574746F6E2D2D636F6E74726F6C73207B0D0A2020';
wwv_flow_imp.g_varchar2_table(764) := '2D2D612D627574746F6E2D6261636B67726F756E642D636F6C6F723A20236638663866383B0D0A7D0D0A2E612D4952522D6469616C6F67526F772D2D6865616465722C0D0A2E612D4952522D6469616C6F674C6973742061207B0D0A2020636F6C6F723A';
wwv_flow_imp.g_varchar2_table(765) := '20766172282D2D75742D636F6D706F6E656E742D746578742D64656661756C742D636F6C6F72293B0D0A7D0D0A2E612D4952522D6469616C6F674C697374207B0D0A2020626F726465722D636F6C6F723A20766172282D2D75742D636F6D706F6E656E74';
wwv_flow_imp.g_varchar2_table(766) := '2D626F726465722D636F6C6F72293B0D0A7D0D0A2E612D4952522D686967686C6967687450726576696577207B0D0A2020626F782D736861646F773A20696E73657420766172282D2D75742D636F6D706F6E656E742D626F726465722D636F6C6F722920';
wwv_flow_imp.g_varchar2_table(767) := '3020302030203170783B0D0A7D0D0A2E612D4952522D686561646572207B0D0A20206261636B67726F756E642D636F6C6F723A20236661666166613B0D0A7D0D0A2E612D4952522D6865616465723A686F766572207B0D0A20206261636B67726F756E64';
wwv_flow_imp.g_varchar2_table(768) := '2D636F6C6F723A20236632663266323B0D0A7D0D0A2E612D4952522D6865616465722E69732D6163746976652C0D0A2E612D47562D6865616465722E69732D616374697665207B0D0A20206261636B67726F756E642D636F6C6F723A20766172282D2D61';
wwv_flow_imp.g_varchar2_table(769) := '2D6D656E752D6261636B67726F756E642D636F6C6F72293B0D0A2020636F6C6F723A20766172282D2D612D6D656E752D746578742D636F6C6F72293B0D0A7D0D0A2E612D4952522D6865616465722D2D67726F7570207B0D0A20206261636B67726F756E';
wwv_flow_imp.g_varchar2_table(770) := '642D636F6C6F723A20236635663566353B0D0A7D0D0A2E612D4952522D736F72745769646765742D7365617263684C6162656C3A6265666F7265207B0D0A2020636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D746578742D6D75746564';
wwv_flow_imp.g_varchar2_table(771) := '2D636F6C6F72293B0D0A7D0D0A2E612D4952522D736F72745769646765742D736561726368203E202E612D4952522D736F72745769646765742D7365617263684669656C645B747970653D2274657874225D207B0D0A2020636F6C6F723A20766172282D';
wwv_flow_imp.g_varchar2_table(772) := '2D612D6669656C642D696E7075742D73746174652D746578742D636F6C6F722C20766172282D2D612D6669656C642D696E7075742D746578742D636F6C6F7229293B0D0A20206261636B67726F756E642D636F6C6F723A20766172282D2D612D6669656C';
wwv_flow_imp.g_varchar2_table(773) := '642D696E7075742D73746174652D6261636B67726F756E642D636F6C6F722C20766172282D2D612D6669656C642D696E7075742D6261636B67726F756E642D636F6C6F7229293B0D0A7D0D0A2E612D47562D7461626C652074682E612D47562D636F6E74';
wwv_flow_imp.g_varchar2_table(774) := '726F6C427265616B486561646572207B0D0A20206261636B67726F756E642D636F6C6F723A20236635663566353B0D0A2020626F726465722D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D626F726465722D636F6C6F72293B0D0A20';
wwv_flow_imp.g_varchar2_table(775) := '20636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D746578742D6D757465642D636F6C6F72293B0D0A7D0D0A2E612D49472D7265706F727453756D6D6172792D6974656D2D2D73617665645265706F72742C0D0A2E612D49472D636F6E74';
wwv_flow_imp.g_varchar2_table(776) := '726F6C732D6974656D2D2D73617665645265706F72742C0D0A2E612D4952522D7265706F727453756D6D6172792D6974656D2D2D73617665645265706F72742C0D0A2E612D4952522D636F6E74726F6C732D6974656D2D2D73617665645265706F727420';
wwv_flow_imp.g_varchar2_table(777) := '7B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D6C6162656C2D69636F6E2D6261636B67726F756E642D636F6C6F723A20233441413445433B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D6C616265';
wwv_flow_imp.g_varchar2_table(778) := '6C2D686F7665722D6261636B67726F756E642D636F6C6F723A20236563663566643B0D0A7D0D0A2E612D49472D7265706F727453756D6D6172792D6974656D2D2D7365617263682C0D0A2E612D49472D636F6E74726F6C732D6974656D2D2D7365617263';
wwv_flow_imp.g_varchar2_table(779) := '682C0D0A2E612D4952522D7265706F727453756D6D6172792D6974656D2D2D7365617263682C0D0A2E612D4952522D636F6E74726F6C732D6974656D2D2D736561726368207B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D6C';
wwv_flow_imp.g_varchar2_table(780) := '6162656C2D69636F6E2D6261636B67726F756E642D636F6C6F723A20233441413445433B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D6C6162656C2D686F7665722D6261636B67726F756E642D636F6C6F723A202365636635';
wwv_flow_imp.g_varchar2_table(781) := '66643B0D0A7D0D0A2E612D49472D7265706F727453756D6D6172792D6974656D2D2D66696C7465722C0D0A2E612D49472D636F6E74726F6C732D6974656D2D2D66696C7465722C0D0A2E612D4952522D7265706F727453756D6D6172792D6974656D2D2D';
wwv_flow_imp.g_varchar2_table(782) := '66696C7465722C0D0A2E612D4952522D636F6E74726F6C732D6974656D2D2D66696C746572207B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D6C6162656C2D69636F6E2D6261636B67726F756E642D636F6C6F723A20233234';
wwv_flow_imp.g_varchar2_table(783) := '434237463B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D6C6162656C2D686F7665722D6261636B67726F756E642D636F6C6F723A20236463663965633B0D0A7D0D0A2E612D49472D7265706F727453756D6D6172792D697465';
wwv_flow_imp.g_varchar2_table(784) := '6D2D2D636F6E74726F6C427265616B2C0D0A2E612D49472D636F6E74726F6C732D6974656D2D2D636F6E74726F6C427265616B2C0D0A2E612D4952522D7265706F727453756D6D6172792D6974656D2D2D636F6E74726F6C427265616B2C0D0A2E612D49';
wwv_flow_imp.g_varchar2_table(785) := '52522D636F6E74726F6C732D6974656D2D2D636F6E74726F6C427265616B207B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D6C6162656C2D69636F6E2D6261636B67726F756E642D636F6C6F723A20233342383342443B0D0A';
wwv_flow_imp.g_varchar2_table(786) := '20202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D6C6162656C2D686F7665722D6261636B67726F756E642D636F6C6F723A20236536663066373B0D0A7D0D0A2E612D49472D7265706F727453756D6D6172792D6974656D2D2D67726F75';
wwv_flow_imp.g_varchar2_table(787) := '7042792C0D0A2E612D49472D636F6E74726F6C732D6974656D2D2D67726F757042792C0D0A2E612D4952522D7265706F727453756D6D6172792D6974656D2D2D67726F757042792C0D0A2E612D4952522D636F6E74726F6C732D6974656D2D2D67726F75';
wwv_flow_imp.g_varchar2_table(788) := '704279207B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D6C6162656C2D69636F6E2D6261636B67726F756E642D636F6C6F723A20233342383342443B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D';
wwv_flow_imp.g_varchar2_table(789) := '6C6162656C2D686F7665722D6261636B67726F756E642D636F6C6F723A20236536663066373B0D0A7D0D0A2E612D49472D7265706F727453756D6D6172792D6974656D2D2D6167677265676174652C0D0A2E612D49472D636F6E74726F6C732D6974656D';
wwv_flow_imp.g_varchar2_table(790) := '2D2D6167677265676174652C0D0A2E612D4952522D7265706F727453756D6D6172792D6974656D2D2D6167677265676174652C0D0A2E612D4952522D636F6E74726F6C732D6974656D2D2D616767726567617465207B0D0A20202D2D612D7265706F7274';
wwv_flow_imp.g_varchar2_table(791) := '2D636F6E74726F6C732D63656C6C2D6C6162656C2D69636F6E2D6261636B67726F756E642D636F6C6F723A20233342383342443B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D6C6162656C2D686F7665722D6261636B67726F';
wwv_flow_imp.g_varchar2_table(792) := '756E642D636F6C6F723A20236536663066373B0D0A7D0D0A2E612D49472D7265706F727453756D6D6172792D6974656D2D2D686967686C696768742C0D0A2E612D49472D636F6E74726F6C732D6974656D2D2D686967686C696768742C0D0A2E612D4952';
wwv_flow_imp.g_varchar2_table(793) := '522D7265706F727453756D6D6172792D6974656D2D2D686967686C696768742C0D0A2E612D4952522D636F6E74726F6C732D6974656D2D2D686967686C69676874207B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D6C616265';
wwv_flow_imp.g_varchar2_table(794) := '6C2D69636F6E2D6261636B67726F756E642D636F6C6F723A20234646424532413B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D6C6162656C2D686F7665722D6261636B67726F756E642D636F6C6F723A20236666663063643B';
wwv_flow_imp.g_varchar2_table(795) := '0D0A7D0D0A2E612D49472D7265706F727453756D6D6172792D6974656D2D2D666C6173686261636B2C0D0A2E612D49472D636F6E74726F6C732D6974656D2D2D666C6173686261636B2C0D0A2E612D4952522D7265706F727453756D6D6172792D697465';
wwv_flow_imp.g_varchar2_table(796) := '6D2D2D666C6173686261636B2C0D0A2E612D4952522D636F6E74726F6C732D6974656D2D2D666C6173686261636B207B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D6C6162656C2D69636F6E2D6261636B67726F756E642D63';
wwv_flow_imp.g_varchar2_table(797) := '6F6C6F723A20233945413741443B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D6C6162656C2D686F7665722D6261636B67726F756E642D636F6C6F723A20236435643964633B0D0A7D0D0A2E612D49472D7265706F72745375';
wwv_flow_imp.g_varchar2_table(798) := '6D6D6172792D6974656D2D2D63686172742C0D0A2E612D49472D636F6E74726F6C732D6974656D2D2D63686172742C0D0A2E612D4952522D7265706F727453756D6D6172792D6974656D2D2D63686172742C0D0A2E612D4952522D636F6E74726F6C732D';
wwv_flow_imp.g_varchar2_table(799) := '6974656D2D2D6368617274207B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D6C6162656C2D69636F6E2D6261636B67726F756E642D636F6C6F723A20233342383342443B0D0A20202D2D612D7265706F72742D636F6E74726F';
wwv_flow_imp.g_varchar2_table(800) := '6C732D63656C6C2D6C6162656C2D686F7665722D6261636B67726F756E642D636F6C6F723A20233835623464393B0D0A7D0D0A2E612D49472D7265706F727453756D6D6172792D6974656D2D2D7069766F742C0D0A2E612D49472D636F6E74726F6C732D';
wwv_flow_imp.g_varchar2_table(801) := '6974656D2D2D7069766F742C0D0A2E612D4952522D7265706F727453756D6D6172792D6974656D2D2D7069766F742C0D0A2E612D4952522D636F6E74726F6C732D6974656D2D2D7069766F74207B0D0A20202D2D612D7265706F72742D636F6E74726F6C';
wwv_flow_imp.g_varchar2_table(802) := '732D63656C6C2D6C6162656C2D69636F6E2D6261636B67726F756E642D636F6C6F723A20233945413741443B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D6C6162656C2D686F7665722D6261636B67726F756E642D636F6C6F';
wwv_flow_imp.g_varchar2_table(803) := '723A20236435643964633B0D0A7D0D0A2E612D49472D7265706F727453756D6D6172792D6974656D2D2D696E76616C696453657474696E67732C0D0A2E612D49472D636F6E74726F6C732D6974656D2D2D696E76616C696453657474696E67732C0D0A2E';
wwv_flow_imp.g_varchar2_table(804) := '612D4952522D7265706F727453756D6D6172792D6974656D2D2D696E76616C696453657474696E67732C0D0A2E612D4952522D636F6E74726F6C732D6974656D2D2D696E76616C696453657474696E6773207B0D0A20202D2D612D7265706F72742D636F';
wwv_flow_imp.g_varchar2_table(805) := '6E74726F6C732D63656C6C2D6C6162656C2D69636F6E2D6261636B67726F756E642D636F6C6F723A20234244433343373B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D6C6162656C2D686F7665722D6261636B67726F756E64';
wwv_flow_imp.g_varchar2_table(806) := '2D636F6C6F723A20236634663566363B0D0A7D0D0A2E612D49472D7265706F727453756D6D6172792D6974656D2D2D696E61637469766553657474696E67732C0D0A2E612D49472D636F6E74726F6C732D6974656D2D2D696E6163746976655365747469';
wwv_flow_imp.g_varchar2_table(807) := '6E67732C0D0A2E612D4952522D7265706F727453756D6D6172792D6974656D2D2D696E61637469766553657474696E67732C0D0A2E612D4952522D636F6E74726F6C732D6974656D2D2D696E61637469766553657474696E6773207B0D0A20202D2D612D';
wwv_flow_imp.g_varchar2_table(808) := '7265706F72742D636F6E74726F6C732D63656C6C2D6C6162656C2D69636F6E2D6261636B67726F756E642D636F6C6F723A20234244433343373B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D6C6162656C2D686F7665722D62';
wwv_flow_imp.g_varchar2_table(809) := '61636B67726F756E642D636F6C6F723A20236634663566363B0D0A7D0D0A2E612D47562D7461626C65202E612D47562D63656C6C2E69732D616374697665207B0D0A20206261636B67726F756E642D636F6C6F723A20236536653665363B0D0A7D0D0A2E';
wwv_flow_imp.g_varchar2_table(810) := '612D47562D2D656469744D6F6465202E612D47562D726F772E69732D726561646F6E6C79202E612D47562D63656C6C2C0D0A2E612D47562D2D656469744D6F6465202E612D47562D63656C6C2E69732D726561646F6E6C79207B0D0A20206261636B6772';
wwv_flow_imp.g_varchar2_table(811) := '6F756E642D636F6C6F723A20236632663266323B0D0A2020636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D746578742D6D757465642D636F6C6F72293B0D0A7D0D0A2E612D47562D63656C6C202E612D47562D636F6C756D6E4974656D';
wwv_flow_imp.g_varchar2_table(812) := '20696E7075743A6E6F74285B747970653D22726164696F225D293A6E6F74285B747970653D22636865636B626F78225D293A666F6375732C0D0A2E612D47562D63656C6C202E612D47562D636F6C756D6E4974656D2073656C6563745B73697A653D2731';
wwv_flow_imp.g_varchar2_table(813) := '275D3A666F637573207B0D0A20206261636B67726F756E642D636F6C6F723A20236666663B0D0A7D0D0A2E612D436869702D72656D6F7665207B0D0A20206D617267696E2D696E6C696E652D656E643A2063616C6328766172282D2D612D636869702D6C';
wwv_flow_imp.g_varchar2_table(814) := '6162656C2D73706163696E672C2034707829202F2032293B0D0A7D0D0A612D776F726B666C6F772D6469616772616D202E612D546F6F6C626172207B0D0A2020626C6F636B2D73697A653A20766172282D2D75742D6469616772616D2D746F6F6C626172';
wwv_flow_imp.g_varchar2_table(815) := '2D626C6F636B2D73697A652C203372656D293B0D0A7D0D0A612D776F726B666C6F772D6469616772616D20746578745B6A6F696E742D73656C6563746F723D22676C797068225D207B0D0A2020666F6E742D7765696768743A20766172282D2D75742D64';
wwv_flow_imp.g_varchar2_table(816) := '69616772616D2D69636F6E2D666F6E742D7765696768742C20363030293B0D0A7D0D0A612D776F726B666C6F772D6469616772616D202E612D546F6F6C6261722D2D73696D706C65202E612D546F6F6C6261722D67726F7570202E612D427574746F6E20';
wwv_flow_imp.g_varchar2_table(817) := '7B0D0A20202D2D612D627574746F6E2D626F726465722D77696474683A20756E7365743B0D0A20202D2D612D627574746F6E2D626F726465722D636F6C6F723A207472616E73706172656E743B0D0A20202D2D612D627574746F6E2D73746174652D6261';
wwv_flow_imp.g_varchar2_table(818) := '636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A7D0D0A612D776F726B666C6F772D6469616772616D202E612D546F6F6C6261722D2D73696D706C65202E612D546F6F6C6261722D67726F7570202E612D427574746F6E3A686F';
wwv_flow_imp.g_varchar2_table(819) := '766572207B0D0A2020626F726465722D636F6C6F723A20766172282D2D612D627574746F6E2D73746174652D626F726465722D636F6C6F722C20766172282D2D612D627574746F6E2D747970652D626F726465722D636F6C6F722C20766172282D2D612D';
wwv_flow_imp.g_varchar2_table(820) := '627574746F6E2D626F726465722D636F6C6F722929293B0D0A7D0D0A2E742D526567696F6E2D2D6E6F50616464696E67202E612D546F6F6C6261722D67726F7570207B0D0A20206D617267696E2D626C6F636B2D73746172743A20766172282D2D612D74';
wwv_flow_imp.g_varchar2_table(821) := '6F6F6C6261722D6974656D2D73706163696E672C20302E3572656D293B0D0A7D0D0A2E742D526567696F6E2D2D6E6F50616464696E67202E612D546F6F6C6261722D67726F75703A6C6173742D6368696C64202E612D546F6F6C6261722D6974656D3A6C';
wwv_flow_imp.g_varchar2_table(822) := '6173742D6368696C64207B0D0A20206D617267696E2D696E6C696E652D656E643A20766172282D2D612D746F6F6C6261722D6974656D2D73706163696E672C20302E3572656D293B0D0A7D0D0A2E742D526567696F6E2D626F6479202E612D576F726B66';
wwv_flow_imp.g_varchar2_table(823) := '6C6F77417070207B0D0A20206D61782D626C6F636B2D73697A653A20343072656D3B0D0A7D0D0A2E692D683234302E742D526567696F6E2D2D6E6F50616464696E67202E742D526567696F6E2D626F6479202E612D576F726B666C6F77417070207B0D0A';
wwv_flow_imp.g_varchar2_table(824) := '2020626C6F636B2D73697A653A2063616C63283234307078202D20766172282D2D75742D6469616772616D2D746F6F6C6261722D626C6F636B2D73697A652C203372656D29293B0D0A7D0D0A2E692D683332302E742D526567696F6E2D2D6E6F50616464';
wwv_flow_imp.g_varchar2_table(825) := '696E67202E742D526567696F6E2D626F6479202E612D576F726B666C6F77417070207B0D0A2020626C6F636B2D73697A653A2063616C63283332307078202D20766172282D2D75742D6469616772616D2D746F6F6C6261722D626C6F636B2D73697A652C';
wwv_flow_imp.g_varchar2_table(826) := '203372656D29293B0D0A7D0D0A2E692D683438302E742D526567696F6E2D2D6E6F50616464696E67202E742D526567696F6E2D626F6479202E612D576F726B666C6F77417070207B0D0A2020626C6F636B2D73697A653A2063616C63283438307078202D';
wwv_flow_imp.g_varchar2_table(827) := '20766172282D2D75742D6469616772616D2D746F6F6C6261722D626C6F636B2D73697A652C203372656D29293B0D0A7D0D0A2E692D683634302E742D526567696F6E2D2D6E6F50616464696E67202E742D526567696F6E2D626F6479202E612D576F726B';
wwv_flow_imp.g_varchar2_table(828) := '666C6F77417070207B0D0A2020626C6F636B2D73697A653A2063616C63283634307078202D20766172282D2D75742D6469616772616D2D746F6F6C6261722D626C6F636B2D73697A652C203372656D29293B0D0A7D0D0A2E692D68323430202E742D5265';
wwv_flow_imp.g_varchar2_table(829) := '67696F6E2D626F6479202E612D576F726B666C6F77417070207B0D0A2020626C6F636B2D73697A653A2063616C63283234307078202D20766172282D2D75742D6469616772616D2D746F6F6C6261722D626C6F636B2D73697A652C203372656D29202D20';
wwv_flow_imp.g_varchar2_table(830) := '28766172282D2D75742D726567696F6E2D626F64792D70616464696E672D792C203172656D29202A203229293B0D0A7D0D0A2E692D68333230202E742D526567696F6E2D626F6479202E612D576F726B666C6F77417070207B0D0A2020626C6F636B2D73';
wwv_flow_imp.g_varchar2_table(831) := '697A653A2063616C63283332307078202D20766172282D2D75742D6469616772616D2D746F6F6C6261722D626C6F636B2D73697A652C203372656D29202D2028766172282D2D75742D726567696F6E2D626F64792D70616464696E672D792C203172656D';
wwv_flow_imp.g_varchar2_table(832) := '29202A203229293B0D0A7D0D0A2E692D68343830202E742D526567696F6E2D626F6479202E612D576F726B666C6F77417070207B0D0A2020626C6F636B2D73697A653A2063616C63283438307078202D20766172282D2D75742D6469616772616D2D746F';
wwv_flow_imp.g_varchar2_table(833) := '6F6C6261722D626C6F636B2D73697A652C203372656D29202D2028766172282D2D75742D726567696F6E2D626F64792D70616464696E672D792C203172656D29202A203229293B0D0A7D0D0A2E692D68363430202E742D526567696F6E2D626F6479202E';
wwv_flow_imp.g_varchar2_table(834) := '612D576F726B666C6F77417070207B0D0A2020626C6F636B2D73697A653A2063616C63283634307078202D20766172282D2D75742D6469616772616D2D746F6F6C6261722D626C6F636B2D73697A652C203372656D29202D2028766172282D2D75742D72';
wwv_flow_imp.g_varchar2_table(835) := '6567696F6E2D626F64792D70616464696E672D792C203172656D29202A203229293B0D0A7D0D0A2E742D526567696F6E2D626F6479202E6A6F696E742D70617065722D7363726F6C6C6572202E6A6F696E742D7061706572207B0D0A2020696E7365742D';
wwv_flow_imp.g_varchar2_table(836) := '626C6F636B2D73746172743A20322E3572656D2021696D706F7274616E743B0D0A7D0D0A3A726F6F74207B0D0A20202D2D6F6A2D636F72652D746578742D636F6C6F722D7072696D6172793A20766172282D2D75742D636F6D706F6E656E742D74657874';
wwv_flow_imp.g_varchar2_table(837) := '2D64656661756C742D636F6C6F72293B0D0A20202D2D6F6A2D636F72652D746578742D636F6C6F722D7365636F6E646172793A20766172282D2D75742D636F6D706F6E656E742D746578742D6D757465642D636F6C6F72293B0D0A20202D2D6F6A2D636F';
wwv_flow_imp.g_varchar2_table(838) := '72652D746578742D636F6C6F722D6272616E643A20766172282D2D75742D70616C657474652D7072696D6172792D74657874293B0D0A20202D2D6F6A2D636F72652D746578742D636F6C6F722D64616E6765723A20766172282D2D75742D70616C657474';
wwv_flow_imp.g_varchar2_table(839) := '652D64616E6765722D74657874293B0D0A20202D2D6F6A2D636F72652D746578742D636F6C6F722D7761726E696E673A20766172282D2D75742D70616C657474652D7761726E696E672D74657874293B0D0A20202D2D6F6A2D636F72652D746578742D63';
wwv_flow_imp.g_varchar2_table(840) := '6F6C6F722D737563636573733A20766172282D2D75742D70616C657474652D737563636573732D74657874293B0D0A20202D2D6F6A2D636F72652D69636F6E2D73697A652D6C673A20312E3572656D3B0D0A20202D2D6F6A2D636F72652D69636F6E2D73';
wwv_flow_imp.g_varchar2_table(841) := '697A652D736D3A203172656D3B0D0A20202D2D6F6A2D636F72652D646976696465722D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D626F726465722D636F6C6F72293B0D0A20202D2D6F6A2D636F72652D646976696465722D6D6172';
wwv_flow_imp.g_varchar2_table(842) := '67696E3A20302E3572656D3B0D0A20202D2D6F6A2D636F72652D666F6375732D626F726465722D636F6C6F723A20766172282D2D75742D666F6375732D6F75746C696E652D636F6C6F72293B0D0A20202D2D6F6A2D636F6C6F722D737065637472756D2D';
wwv_flow_imp.g_varchar2_table(843) := '626F726465722D636F6C6F723A20236363636363633B0D0A20202D2D6F6A2D706F7075702D62672D636F6C6F723A20766172282D2D612D6D656E752D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D6F6A2D636F72652D62672D636F6C6F72';
wwv_flow_imp.g_varchar2_table(844) := '2D686F7665723A20766172282D2D612D6D656E752D666F63757365642D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D6F6A2D636F72652D626F782D736861646F773A20766172282D2D75742D736861646F772D736D293B0D0A20202D2D6F';
wwv_flow_imp.g_varchar2_table(845) := '6A2D6C696E6B2D746578742D636F6C6F723A20766172282D2D75742D6C696E6B2D746578742D636F6C6F72293B0D0A20202D2D6F6A2D746578742D6669656C642D62672D636F6C6F723A20766172282D2D612D6669656C642D696E7075742D6261636B67';
wwv_flow_imp.g_varchar2_table(846) := '726F756E642D636F6C6F72293B0D0A20202D2D6F6A2D746578742D6669656C642D626F726465722D636F6C6F723A20766172282D2D612D6669656C642D696E7075742D626F726465722D636F6C6F72293B0D0A20202D2D6F6A2D746578742D6669656C64';
wwv_flow_imp.g_varchar2_table(847) := '2D746578742D636F6C6F723A20766172282D2D612D6669656C642D696E7075742D746578742D636F6C6F72293B0D0A20202D2D6F6A2D636F6C6C656374696F6E2D667265652D73706163652D62672D636F6C6F723A20766172282D2D75742D636F6D706F';
wwv_flow_imp.g_varchar2_table(848) := '6E656E742D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D6F6A2D636F6C6C656374696F6E2D6865616465722D62672D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D6261636B67726F756E642D636F6C6F72293B0D0A20';
wwv_flow_imp.g_varchar2_table(849) := '202D2D6F6A2D636F6C6C656374696F6E2D626F726465722D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D626F726465722D636F6C6F72293B0D0A20202D2D6F6A2D636F6C6C656374696F6E2D62672D636F6C6F723A20766172282D2D';
wwv_flow_imp.g_varchar2_table(850) := '75742D636F6D706F6E656E742D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D6F6A2D707269766174652D67616E74742D6D696C6573746F6E652D62672D636F6C6F723A20766172282D2D752D636F6C6F722D3135293B0D0A20202D2D6F6A';
wwv_flow_imp.g_varchar2_table(851) := '2D707269766174652D67616E74742D7461736B2D62672D636F6C6F723A20766172282D2D752D636F6C6F722D31293B0D0A20202D2D6F6A2D707269766174652D67616E74742D7461736B2D70726F67726573732D62672D636F6C6F723A20766172282D2D';
wwv_flow_imp.g_varchar2_table(852) := '752D636F6C6F722D31293B0D0A20202D2D6F6A2D627574746F6E2D6F75746C696E65642D6368726F6D652D62672D636F6C6F722D686F7665723A20766172282D2D75742D70616C657474652D7072696D617279293B0D0A20202D2D6F6A2D627574746F6E';
wwv_flow_imp.g_varchar2_table(853) := '2D6F75746C696E65642D6368726F6D652D626F726465722D636F6C6F722D686F7665723A20766172282D2D75742D70616C657474652D7072696D617279293B0D0A20202D2D6F6A2D627574746F6E2D6F75746C696E65642D6368726F6D652D746578742D';
wwv_flow_imp.g_varchar2_table(854) := '636F6C6F722D686F7665723A20766172282D2D75742D70616C657474652D7072696D6172792D636F6E7472617374293B0D0A20202D2D6F6A2D627574746F6E2D626F726465726C6573732D6368726F6D652D62672D636F6C6F722D686F7665723A207661';
wwv_flow_imp.g_varchar2_table(855) := '72282D2D75742D70616C657474652D7072696D617279293B0D0A20202D2D6F6A2D627574746F6E2D626F726465726C6573732D6368726F6D652D746578742D636F6C6F722D686F7665723A20766172282D2D75742D70616C657474652D7072696D617279';
wwv_flow_imp.g_varchar2_table(856) := '2D636F6E7472617374293B0D0A20202D2D6F6A2D68656164696E672D746578742D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D746578742D7469746C652D636F6C6F72293B0D0A7D0D0A';
wwv_flow_imp_shared.create_theme_file(
 p_id=>wwv_flow_imp.id(19852557763386987097)
,p_theme_id=>42
,p_file_name=>'8448498771758589355.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/user_interface/template_opt_groups
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_options
begin
null;
end;
/
prompt --application/shared_components/globalization/language
begin
null;
end;
/
prompt --application/shared_components/globalization/translations
begin
null;
end;
/
prompt --application/shared_components/logic/build_options
begin
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(16199427946544615230)
,p_build_option_name=>'Commented Out'
,p_build_option_status=>'EXCLUDE'
,p_version_scn=>15601393519019
);
end;
/
prompt --application/shared_components/globalization/messages
begin
null;
end;
/
prompt --application/shared_components/globalization/dyntranslations
begin
null;
end;
/
prompt --application/shared_components/security/authentications/user_auth_with_2_fa
begin
wwv_flow_imp_shared.create_authentication(
 p_id=>wwv_flow_imp.id(12436036704929755616)
,p_name=>'USER AUTH WITH 2 FA'
,p_scheme_type=>'NATIVE_CUSTOM'
,p_attribute_03=>'local_auth'
,p_attribute_05=>'N'
,p_plsql_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function local_auth (',
'    p_username  in  varchar2,',
'    p_password  in  varchar2 )',
'    return boolean',
'is',
'begin',
'    return eba_ema_util.token_is_valid (',
'               p_username => p_username,',
'               p_token    => p_password );',
'end local_auth;'))
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
,p_version_scn=>15606700533091
);
end;
/
prompt --application/shared_components/security/authentications/oracle_apex_accounts
begin
wwv_flow_imp_shared.create_authentication(
 p_id=>wwv_flow_imp.id(16199428200010615231)
,p_name=>'Oracle APEX Accounts'
,p_scheme_type=>'NATIVE_APEX_ACCOUNTS'
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
,p_version_scn=>15601393519023
);
end;
/
prompt --application/shared_components/security/authentications/user_auth
begin
wwv_flow_imp_shared.create_authentication(
 p_id=>wwv_flow_imp.id(16213984864469593383)
,p_name=>'USER AUTH'
,p_scheme_type=>'NATIVE_CUSTOM'
,p_attribute_03=>'aut_authentication.is_login_valid'
,p_attribute_05=>'N'
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
,p_version_scn=>15602781481407
);
end;
/
prompt --application/user_interfaces/combined_files
begin
null;
end;
/
prompt --application/pages/page_00000
begin
wwv_flow_imp_page.create_page(
 p_id=>0
,p_name=>'Global Page'
,p_step_title=>'Global Page'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'D'
,p_page_component_map=>'14'
);
end;
/
prompt --application/pages/page_00001
begin
wwv_flow_imp_page.create_page(
 p_id=>1
,p_name=>'Home'
,p_alias=>'HOME'
,p_step_title=>'GreenGrocers'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'13'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(16199441657861615250)
,p_plug_name=>'GreenGrocers'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2674017834225413037
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_query_num_rows=>15
,p_region_image=>'#APP_FILES#icons/app-icon-512.png'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(17499677482315017051)
,p_button_sequence=>10
,p_button_name=>'p1_Gebruikers'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'P1 Gebruikers'
,p_grid_new_row=>'Y'
,p_required_patch=>wwv_flow_imp.id(16199427946544615230)
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(10814093561259040027)
,p_branch_action=>'f?p=&APP_ID.:74:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_HEADER'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
end;
/
prompt --application/pages/page_00002
begin
wwv_flow_imp_page.create_page(
 p_id=>2
,p_name=>'Sign-up'
,p_alias=>'REGISTREER'
,p_page_mode=>'MODAL'
,p_step_title=>'Registreer'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_resizable=>'Y'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(17499478353151697392)
,p_plug_name=>'Registreer'
,p_title=>'Registreer'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'GGS_GEBRUIKER'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(17499485474101697399)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(17499478353151697392)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CHANGE'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P2_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(17499484522423697398)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(17499478353151697392)
,p_button_name=>'Terug'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Terug'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-undo-arrow'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(17499485914998697399)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(17499478353151697392)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Sign up'
,p_button_position=>'CREATE'
,p_button_condition=>'P2_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_icon_css_classes=>'fa-sign-in'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(17499485145835697399)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(17499478353151697392)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P2_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(17499486234519697399)
,p_branch_name=>'Go To Page 1'
,p_branch_action=>'f?p=&APP_ID.:9999:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12931178049762715546)
,p_name=>'P2_EMAIL'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(17499478353151697392)
,p_prompt=>'Email'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17499478659992697393)
,p_name=>'P2_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(17499478353151697392)
,p_item_source_plug_id=>wwv_flow_imp.id(17499478353151697392)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id'
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17499479100136697393)
,p_name=>'P2_NAAM'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(17499478353151697392)
,p_item_source_plug_id=>wwv_flow_imp.id(17499478353151697392)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Naam'
,p_source=>'NAAM'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17499479500906697394)
,p_name=>'P2_FAMILYNAAM'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(17499478353151697392)
,p_item_source_plug_id=>wwv_flow_imp.id(17499478353151697392)
,p_prompt=>'Family naam'
,p_source=>'FAMILYNAAM'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17499479871936697394)
,p_name=>'P2_WACHTWOORD'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(17499478353151697392)
,p_item_source_plug_id=>wwv_flow_imp.id(17499478353151697392)
,p_prompt=>'Wachtwoord'
,p_source=>'WACHTWOORD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'submit_when_enter_pressed', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17499480341036697394)
,p_name=>'P2_ROL_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(17499478353151697392)
,p_item_source_plug_id=>wwv_flow_imp.id(17499478353151697392)
,p_item_default=>'SELECT id FROM GGS_ROLLEN WHERE naam = ''klant'''
,p_item_default_type=>'SQL_QUERY'
,p_source=>'ROL_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17499481021102697395)
,p_name=>'P2_STATUS_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(17499478353151697392)
,p_item_source_plug_id=>wwv_flow_imp.id(17499478353151697392)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT id FROM GGS_STATUS WHERE naam = ''active''',
''))
,p_item_default_type=>'SQL_QUERY'
,p_source=>'STATUS_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17499481683668697396)
,p_name=>'P2_ADRES_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(17499478353151697392)
,p_item_source_plug_id=>wwv_flow_imp.id(17499478353151697392)
,p_source=>'ADRES_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17499676619986017042)
,p_name=>'P2_ADDRESS'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(17499478353151697392)
,p_prompt=>'Address'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17499676688225017043)
,p_name=>'P2_HUISNUMMER'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(17499478353151697392)
,p_prompt=>'Huis nummer'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17499676750662017044)
,p_name=>'P_2WIJK'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(17499478353151697392)
,p_prompt=>'Kies uw wijk'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'WIJKEN_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT naam, id',
'FROM GGS_WOONWIJK',
'WHERE status_id = 1  ',
'ORDER BY naam;',
''))
,p_cHeight=>1
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17499676968105017046)
,p_name=>'P2_USERNAME'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(17499478353151697392)
,p_prompt=>'Username'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(17499487059671697400)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Sign-up'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_process_error_message=>'nope'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'yes'
,p_required_patch=>wwv_flow_imp.id(16199427946544615230)
,p_internal_uid=>6095428410950299661
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(17499486733849697400)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(17499478353151697392)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Sign-up'
,p_internal_uid=>6095428085128299661
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(17499676855072017045)
,p_process_sequence=>20
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'submitklant'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  v_address_id INT;',
'  v_user_id INT;',
'BEGIN',
'  ',
'  INSERT INTO GGS_ADRES (adres, huisnummer, woonwijk_id)',
'  VALUES (:P2_ADDRESS, :P2_HUISNUMMER, :P_2WIJK)',
'  RETURNING id INTO v_address_id;',
'',
'  :P2_ADRES_ID := v_address_id;',
'',
'  ',
'  INSERT INTO GGS_GEBRUIKER (naam, familynaam, username, wachtwoord, rol_id, status_id, adres_id, email)',
'  VALUES (:P2_NAAM, :P2_FAMILYNAAM, :P2_USERNAME, :P2_WACHTWOORD, 22, 1, :P2_ADRES_ID,:P2_EMAIL)',
'    RETURNING ID INTO v_user_id;',
'  COMMIT;',
'',
'   INSERT INTO GGS_AUT_AUT_USR_RLE (GEBRUIKER_ID, ROLE_ID, VALID_FROM, VALID_UNTIL)',
'  VALUES (v_user_id, 22, SYSDATE, TO_DATE(''31-12-2029'', ''DD-MM-YYYY''));',
'',
'EXCEPTION',
'  WHEN DUP_VAL_ON_INDEX THEN',
'    ',
'    APEX_ERROR.ADD_ERROR(',
'      p_message => ''Deze gebruikersnaam bestaat al. Kies een andere.'',',
'      p_display_location => APEX_ERROR.c_inline_in_notification',
'    );',
'    ROLLBACK;',
'  WHEN OTHERS THEN',
'    ',
'    APEX_ERROR.ADD_ERROR(',
'      p_message => ''Er is een fout opgetreden bij het registreren. Probeer het opnieuw.'',',
'      p_display_location => APEX_ERROR.c_inline_in_notification',
'    );',
'    ROLLBACK;',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'niet gelukt te registreren'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(17499485914998697399)
,p_process_success_message=>'Succesful geregistreerd'
,p_internal_uid=>6095618206350619306
);
end;
/
prompt --application/pages/page_00003
begin
wwv_flow_imp_page.create_page(
 p_id=>3
,p_name=>'Gebruikers'
,p_alias=>'GEBRUIKERS'
,p_step_title=>'Gebruikers'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(18555875673040645084)
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12931175080965715516)
,p_plug_name=>'Medewerkers en superadmin'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>30
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    g.id,',
'    g.naam,',
'    g.familynaam, ',
'    g.username, ',
'    r.naam AS rol,   ',
'    s.naam AS status,',
'    b.adres || '' '' || b.huisnummer as adres ',
'FROM GGS_GEBRUIKER g',
'LEFT JOIN GGS_ROLLEN r ON g.rol_id = r.id',
'LEFT JOIN GGS_STATUS s ON g.status_id = s.id',
'LEFT JOIN GGS_ADRES b ON g.adres_id = b.id',
'WHERE g.rol_id IN (1, 21);',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Gebruikers'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(12931176025421715526)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.::P8_ID:#ID#'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="apex-edit-pencil" title="Edit"></span><img src="#APEX_FILES#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_owner=>'E.LOKHAI@UNASAT.SR'
,p_internal_uid=>12931176025421715526
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12931176165782715527)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12931176261082715528)
,p_db_column_name=>'NAAM'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Naam'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12931176388678715529)
,p_db_column_name=>'FAMILYNAAM'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Familynaam'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12931176449634715530)
,p_db_column_name=>'USERNAME'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Username'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12931176520848715531)
,p_db_column_name=>'ROL'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Rol'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12931176645446715532)
,p_db_column_name=>'STATUS'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12931176778458715533)
,p_db_column_name=>'ADRES'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Adres'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(13451357078057324719)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'134513571'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID:NAAM:FAMILYNAAM:USERNAME:ROL:STATUS:ADRES'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(17517981924132900197)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(16199428455127615231)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(17517982589977900200)
,p_plug_name=>'Medewerkers en superadmin'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    g.id,',
'    g.naam,',
'    g.familynaam, ',
'    g.username, ',
'    r.naam AS rol,   ',
'    s.naam AS status,',
'    b.adres , ',
'    b.huisnummer  ',
'FROM GGS_GEBRUIKER g',
'LEFT JOIN GGS_ROLLEN r ON g.rol_id = r.id',
'LEFT JOIN GGS_STATUS s ON g.status_id = s.id',
'LEFT JOIN GGS_ADRES b ON g.adres_id = b.id',
'WHERE g.rol_id IN (1, 21);',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_prn_page_header=>'Gebruikers'
,p_required_patch=>wwv_flow_imp.id(16199427946544615230)
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(17499678074645017057)
,p_name=>'ROL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROL'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Rol'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>255
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(17499678151163017058)
,p_name=>'STATUS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATUS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Status'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>255
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(17499678344636017059)
,p_name=>'NAAM'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NAAM'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Naam'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>20
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
,p_max_length=>255
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(17499678413627017060)
,p_name=>'FAMILYNAAM'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FAMILYNAAM'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Familynaam'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
,p_max_length=>255
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(17499678493221017061)
,p_name=>'ADRES'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ADRES'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Adres'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>255
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(17499678602813017062)
,p_name=>'HUISNUMMER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'HUISNUMMER'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Huisnummer'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>80
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(17517983898966900202)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(17517990931876900210)
,p_name=>'USERNAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'USERNAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Username'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
,p_max_length=>255
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(17517983121569900200)
,p_internal_uid=>6113924472848502461
,p_is_editable=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(17517983463581900201)
,p_interactive_grid_id=>wwv_flow_imp.id(17517983121569900200)
,p_static_id=>'61139249'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(17517983687182900201)
,p_report_id=>wwv_flow_imp.id(17517983463581900201)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(17517984318351900203)
,p_view_id=>wwv_flow_imp.id(17517983687182900201)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(17517983898966900202)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(17517991332742900211)
,p_view_id=>wwv_flow_imp.id(17517983687182900201)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(17517990931876900210)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(17525079283003069548)
,p_view_id=>wwv_flow_imp.id(17517983687182900201)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(17499678074645017057)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(17525080168992069551)
,p_view_id=>wwv_flow_imp.id(17517983687182900201)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(17499678151163017058)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(17525312945797771649)
,p_view_id=>wwv_flow_imp.id(17517983687182900201)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(17499678344636017059)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(17525316906354771652)
,p_view_id=>wwv_flow_imp.id(17517983687182900201)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(17499678413627017060)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(17526408835283799542)
,p_view_id=>wwv_flow_imp.id(17517983687182900201)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(17499678493221017061)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(17526409685170799545)
,p_view_id=>wwv_flow_imp.id(17517983687182900201)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(17499678602813017062)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(17499677618275017052)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(12931175080965715516)
,p_button_name=>'Creeer'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Registreer nieuwe gebruiker'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-plus-square'
);
end;
/
prompt --application/pages/page_00004
begin
wwv_flow_imp_page.create_page(
 p_id=>4
,p_name=>'Product bij voegen'
,p_alias=>'PRODUCT-BIJ-VOEGEN'
,p_page_mode=>'MODAL'
,p_step_title=>'Product bij voegen'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(13440013887653123517)
,p_plug_name=>'Product bij voegen'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID',
'  from GGS_PRODUCTEN'))
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(13440019038081123522)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(13440019450694123522)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(13440019038081123522)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Terug'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-undo-arrow'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12931174825570715514)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(13440019038081123522)
,p_button_name=>'New'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Toevoegen'
,p_button_position=>'NEXT'
,p_icon_css_classes=>'fa-plus-square'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(12931174962110715515)
,p_branch_name=>'Terug'
,p_branch_action=>'f?p=&APP_ID.:34:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12931174604470715512)
,p_name=>'P4_AANTAL'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(13440013887653123517)
,p_prompt=>'Aantal'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'min_value', '0',
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13440014169021123518)
,p_name=>'P4_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(13440013887653123517)
,p_item_source_plug_id=>wwv_flow_imp.id(13440013887653123517)
,p_prompt=>'New'
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'PRODUCTEN'
,p_cHeight=>1
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(13440019510033123522)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(13440019450694123522)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13440020300814123523)
,p_event_id=>wwv_flow_imp.id(13440019510033123522)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(13440022440414123524)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(13440013887653123517)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Product bij voegen'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_required_patch=>wwv_flow_imp.id(16199427946544615230)
,p_internal_uid=>13440022440414123524
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(13440022889794123525)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>13440022889794123525
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(12931174712818715513)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Voeg'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'VOEG_PRODUCT_STOCK_PKG.stock_toevoegen_prodcedure(',
'    p_product_id => :P4_ID,',
'    p_aantal => :P4_AANTAL',
');'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Niet gelukt'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(12931174825570715514)
,p_process_success_message=>'Succesvol toegevoegd'
,p_internal_uid=>12931174712818715513
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(13440022083254123524)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(13440013887653123517)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Product bij voegen'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>13440022083254123524
);
end;
/
prompt --application/pages/page_00005
begin
wwv_flow_imp_page.create_page(
 p_id=>5
,p_name=>'Medewerker registreren'
,p_alias=>'MEDEWERKERREGISTREREN'
,p_page_mode=>'MODAL'
,p_step_title=>'Medewerker registreren'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(18555875673040645084)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(17519827254805620541)
,p_plug_name=>'Medewerker registreren'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'GGS_GEBRUIKER'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(17519834231856620548)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(17519827254805620541)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CHANGE'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P5_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(17519833214745620548)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(17519827254805620541)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Terug'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-undo-arrow'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(17519834640260620549)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(17519827254805620541)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Creer'
,p_button_position=>'CREATE'
,p_button_condition=>'P5_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_icon_css_classes=>'fa-plus-square'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(17519833775910620548)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(17519827254805620541)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P5_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(17519834880259620549)
,p_branch_name=>'Go To Page 1'
,p_branch_action=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12931178256589715548)
,p_name=>'P5_EMAIL'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(17519827254805620541)
,p_prompt=>'Email'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17499677734624017053)
,p_name=>'P5_ADDRESS'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(17519827254805620541)
,p_prompt=>'Address'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17499677769968017054)
,p_name=>'P5_HUISNUMMER'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(17519827254805620541)
,p_prompt=>'Huisnummer'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17499677865563017055)
,p_name=>'P_5WIJK'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(17519827254805620541)
,p_prompt=>'Wijk'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'WIJKEN_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT naam, id',
'FROM GGS_WOONWIJK',
'WHERE status_id = 1  ',
'ORDER BY naam;',
''))
,p_cHeight=>1
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17519827582616620542)
,p_name=>'P5_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(17519827254805620541)
,p_item_source_plug_id=>wwv_flow_imp.id(17519827254805620541)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id'
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17519828002995620542)
,p_name=>'P5_NAAM'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(17519827254805620541)
,p_item_source_plug_id=>wwv_flow_imp.id(17519827254805620541)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Naam'
,p_source=>'NAAM'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17519828421088620543)
,p_name=>'P5_FAMILYNAAM'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(17519827254805620541)
,p_item_source_plug_id=>wwv_flow_imp.id(17519827254805620541)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Familynaam'
,p_source=>'FAMILYNAAM'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17519828763311620544)
,p_name=>'P5_WACHTWOORD'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(17519827254805620541)
,p_item_source_plug_id=>wwv_flow_imp.id(17519827254805620541)
,p_prompt=>'Wachtwoord'
,p_source=>'WACHTWOORD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'submit_when_enter_pressed', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17519829192530620544)
,p_name=>'P5_ROL_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(17519827254805620541)
,p_item_source_plug_id=>wwv_flow_imp.id(17519827254805620541)
,p_prompt=>'Rol '
,p_source=>'ROL_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT naam, id FROM GGS_ROLLEN WHERE id IN (1, 21);',
''))
,p_cHeight=>1
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17519829628799620545)
,p_name=>'P5_STATUS_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(17519827254805620541)
,p_item_source_plug_id=>wwv_flow_imp.id(17519827254805620541)
,p_prompt=>'Status '
,p_source=>'STATUS_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'GGS_STATUS.NAAM'
,p_cHeight=>1
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17519829969008620545)
,p_name=>'P5_ADRES_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(17519827254805620541)
,p_item_source_plug_id=>wwv_flow_imp.id(17519827254805620541)
,p_source=>'ADRES_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17519830383089620546)
,p_name=>'P5_USERNAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(17519827254805620541)
,p_item_source_plug_id=>wwv_flow_imp.id(17519827254805620541)
,p_prompt=>'Username'
,p_source=>'USERNAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(17519835827487620550)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(17519827254805620541)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form admin_reg'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_required_patch=>wwv_flow_imp.id(16199427946544615230)
,p_internal_uid=>6115777178766222811
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(17519835428818620550)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(17519827254805620541)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form admin_reg'
,p_internal_uid=>6115776780097222811
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(17499678037344017056)
,p_process_sequence=>20
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'New'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  v_address_id INT;',
'  v_user_id NUMBER;',
'  v_username VARCHAR2(100);',
'BEGIN',
'',
'',
' SELECT ID INTO v_user_id',
'    FROM GGS_GEBRUIKER',
'    WHERE UPPER(USERNAME) = UPPER(:APP_USER);',
'  ',
'  INSERT INTO GGS_ADRES (adres, huisnummer, woonwijk_id)',
'  VALUES (:P5_ADDRESS, :P5_HUISNUMMER, :P_5WIJK)',
'  RETURNING id INTO v_address_id;',
'',
' ',
'  :P5_ADRES_ID := v_address_id;',
'',
'  ',
'  INSERT INTO GGS_GEBRUIKER (naam, familynaam, username, wachtwoord, rol_id, status_id, adres_id, email)',
'  VALUES (:P5_NAAM, :P5_FAMILYNAAM, :P5_USERNAME, :P5_WACHTWOORD, :P5_ROL_ID, :P5_STATUS_ID, :P5_ADRES_ID, :P5_EMAIL);',
'  ',
' ',
'  ',
'  COMMIT;',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(17519834640260620549)
,p_internal_uid=>6095619388622619317
);
end;
/
prompt --application/pages/page_00006
begin
wwv_flow_imp_page.create_page(
 p_id=>6
,p_name=>'AuthPriv'
,p_alias=>'AUTHPRIV'
,p_step_title=>'AuthPriv'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(19849986106056820243)
,p_plug_name=>'AuthPriv'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_query_type=>'TABLE'
,p_query_table=>'GGS_AUT_AUT_PRIVILEGES'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IG'
,p_prn_page_header=>'AuthPriv'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(19849987373542820244)
,p_name=>'APEX$LINK'
,p_source_type=>'NONE'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_LINK'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>10
,p_value_alignment=>'CENTER'
,p_link_target=>'f?p=&APP_ID.:7:&APP_SESSION.::&DEBUG.:RP,7:P7_ID:\&ID.\'
,p_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(19849988408594820245)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>20
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_enable_filter=>false
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(19849989411668820245)
,p_name=>'NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'send_on_page_submit', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>100
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(19849990351545820246)
,p_name=>'APEX_PAGE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'APEX_PAGE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Apex Page'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>40
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(19849991356590820247)
,p_name=>'APEX_COMPONENT_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'APEX_COMPONENT_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Apex Component Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'send_on_page_submit', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>255
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(19849992396452820247)
,p_name=>'READ'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'READ'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Read'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'send_on_page_submit', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>1
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(19849993422921820248)
,p_name=>'WRITE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'WRITE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Write'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'send_on_page_submit', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>1
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(19849994427279820248)
,p_name=>'CREATED_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATED_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>80
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(19849995472952820249)
,p_name=>'CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>90
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(19849996449655820250)
,p_name=>'MODIFIED_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MODIFIED_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>100
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(19849997512177820250)
,p_name=>'MODIFIED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MODIFIED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>110
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(19849986641067820243)
,p_internal_uid=>8445927992346422504
,p_is_editable=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(19849986960390820243)
,p_interactive_grid_id=>wwv_flow_imp.id(19849986641067820243)
,p_static_id=>'84459284'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(19849987163587820243)
,p_report_id=>wwv_flow_imp.id(19849986960390820243)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(19849987779512820244)
,p_view_id=>wwv_flow_imp.id(19849987163587820243)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(19849987373542820244)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(19849988839556820245)
,p_view_id=>wwv_flow_imp.id(19849987163587820243)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(19849988408594820245)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(19849989815021820246)
,p_view_id=>wwv_flow_imp.id(19849987163587820243)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(19849989411668820245)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(19849990767425820246)
,p_view_id=>wwv_flow_imp.id(19849987163587820243)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(19849990351545820246)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(19849991787675820247)
,p_view_id=>wwv_flow_imp.id(19849987163587820243)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(19849991356590820247)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(19849992805340820247)
,p_view_id=>wwv_flow_imp.id(19849987163587820243)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(19849992396452820247)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(19849993800695820248)
,p_view_id=>wwv_flow_imp.id(19849987163587820243)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(19849993422921820248)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(19849994826442820249)
,p_view_id=>wwv_flow_imp.id(19849987163587820243)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(19849994427279820248)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(19849995936000820249)
,p_view_id=>wwv_flow_imp.id(19849987163587820243)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(19849995472952820249)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(19849996873542820250)
,p_view_id=>wwv_flow_imp.id(19849987163587820243)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(19849996449655820250)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(19849997849502820251)
,p_view_id=>wwv_flow_imp.id(19849987163587820243)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(19849997512177820250)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(19850000069391820252)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(16199428455127615231)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(19849998525101820251)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(19849986106056820243)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Creer'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:7:&APP_SESSION.::&DEBUG.:7::'
,p_icon_css_classes=>'fa-plus-square'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(19849998812703820251)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(19849986106056820243)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19849999253204820252)
,p_event_id=>wwv_flow_imp.id(19849998812703820251)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(19849986106056820243)
);
end;
/
prompt --application/pages/page_00007
begin
wwv_flow_imp_page.create_page(
 p_id=>7
,p_name=>'Add Auth Privileges'
,p_alias=>'ADDAUTHPRIV'
,p_page_mode=>'MODAL'
,p_step_title=>'Add Auth Privileges'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(19849974009519820231)
,p_plug_name=>'AddAuthPriv'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'GGS_AUT_AUT_PRIVILEGES'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(19849981289895820238)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(19849981673431820239)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(19849981289895820238)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Terug'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-undo-arrow'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(19849983104747820240)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(19849981289895820238)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Verwijder'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P7_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(19849983493657820240)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(19849981289895820238)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P7_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(19849983927699820240)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(19849981289895820238)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Creer'
,p_button_position=>'NEXT'
,p_button_condition=>'P7_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_icon_css_classes=>'fa-plus-square'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19849974249005820232)
,p_name=>'P7_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(19849974009519820231)
,p_item_source_plug_id=>wwv_flow_imp.id(19849974009519820231)
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19849974674586820233)
,p_name=>'P7_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(19849974009519820231)
,p_item_source_plug_id=>wwv_flow_imp.id(19849974009519820231)
,p_prompt=>'Name'
,p_source=>'NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19849975133941820233)
,p_name=>'P7_APEX_PAGE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(19849974009519820231)
,p_item_source_plug_id=>wwv_flow_imp.id(19849974009519820231)
,p_prompt=>'Apex Page'
,p_source=>'APEX_PAGE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19849975500368820234)
,p_name=>'P7_APEX_COMPONENT_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(19849974009519820231)
,p_item_source_plug_id=>wwv_flow_imp.id(19849974009519820231)
,p_prompt=>'Apex Component Name'
,p_source=>'APEX_COMPONENT_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19849975870179820234)
,p_name=>'P7_READ'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(19849974009519820231)
,p_item_source_plug_id=>wwv_flow_imp.id(19849974009519820231)
,p_prompt=>'Read'
,p_source=>'READ'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YON'
,p_lov=>'.'||wwv_flow_imp.id(19850817694279867780)||'.'
,p_cHeight=>1
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19849976281534820234)
,p_name=>'P7_WRITE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(19849974009519820231)
,p_item_source_plug_id=>wwv_flow_imp.id(19849974009519820231)
,p_prompt=>'Write'
,p_source=>'WRITE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YON'
,p_lov=>'.'||wwv_flow_imp.id(19850817694279867780)||'.'
,p_cHeight=>1
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19849976730674820235)
,p_name=>'P7_CREATED_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(19849974009519820231)
,p_item_source_plug_id=>wwv_flow_imp.id(19849974009519820231)
,p_source=>'CREATED_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19849977058281820235)
,p_name=>'P7_CREATED_BY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(19849974009519820231)
,p_item_source_plug_id=>wwv_flow_imp.id(19849974009519820231)
,p_source=>'CREATED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19849977488475820235)
,p_name=>'P7_MODIFIED_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(19849974009519820231)
,p_item_source_plug_id=>wwv_flow_imp.id(19849974009519820231)
,p_source=>'MODIFIED_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19849977906135820236)
,p_name=>'P7_MODIFIED_BY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(19849974009519820231)
,p_item_source_plug_id=>wwv_flow_imp.id(19849974009519820231)
,p_source=>'MODIFIED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(19849981770649820239)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(19849981673431820239)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19849982582352820239)
,p_event_id=>wwv_flow_imp.id(19849981770649820239)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(19849984671804820241)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(19849974009519820231)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form AddAuthPriv'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>8445926023083422502
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(19849985101823820241)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>8445926453102422502
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(19849984316622820240)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(19849974009519820231)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form AddAuthPriv'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>8445925667901422501
);
end;
/
prompt --application/pages/page_00008
begin
wwv_flow_imp_page.create_page(
 p_id=>8
,p_name=>'Bewerk mederwerker'
,p_alias=>'BEWERK-MEDERWERKER'
,p_page_mode=>'MODAL'
,p_step_title=>'Bewerk mederwerker'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(13452722967187119015)
,p_plug_name=>'Bewerk mederwerker'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'GGS_GEBRUIKER'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(13452733099264119024)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(13452733470759119025)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(13452733099264119024)
,p_button_name=>'Terug'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Terug'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-undo-arrow'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(13452734810538119026)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(13452733099264119024)
,p_button_name=>'Verwijder'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Verwijder'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P8_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-trash'
,p_database_action=>'DELETE'
,p_required_patch=>wwv_flow_imp.id(16199427946544615230)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(13452735205433119026)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(13452733099264119024)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Opslaan'
,p_button_position=>'NEXT'
,p_button_condition=>'P8_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-edit'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(13452735611933119026)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(13452733099264119024)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P8_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(12931176965191715535)
,p_branch_action=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13452723271435119016)
,p_name=>'P8_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(13452722967187119015)
,p_item_source_plug_id=>wwv_flow_imp.id(13452722967187119015)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id'
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13452723601678119016)
,p_name=>'P8_NAAM'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(13452722967187119015)
,p_item_source_plug_id=>wwv_flow_imp.id(13452722967187119015)
,p_prompt=>'Naam'
,p_source=>'NAAM'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13452724096308119017)
,p_name=>'P8_FAMILYNAAM'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(13452722967187119015)
,p_item_source_plug_id=>wwv_flow_imp.id(13452722967187119015)
,p_prompt=>'Family naam'
,p_source=>'FAMILYNAAM'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13452724463763119017)
,p_name=>'P8_WACHTWOORD'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(13452722967187119015)
,p_item_source_plug_id=>wwv_flow_imp.id(13452722967187119015)
,p_source=>'WACHTWOORD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13452724816889119017)
,p_name=>'P8_ROL_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(13452722967187119015)
,p_item_source_plug_id=>wwv_flow_imp.id(13452722967187119015)
,p_prompt=>'Rol '
,p_source=>'ROL_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'SELECT naam, id FROM GGS_ROLLEN WHERE id IN (1, 21);'
,p_cHeight=>1
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13452725231123119018)
,p_name=>'P8_STATUS_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(13452722967187119015)
,p_item_source_plug_id=>wwv_flow_imp.id(13452722967187119015)
,p_prompt=>'Status '
,p_source=>'STATUS_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'GGS_STATUS.NAAM'
,p_cHeight=>1
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13452725607165119018)
,p_name=>'P8_ADRES_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(13452722967187119015)
,p_item_source_plug_id=>wwv_flow_imp.id(13452722967187119015)
,p_source=>'ADRES_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13452726077492119019)
,p_name=>'P8_USERNAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(13452722967187119015)
,p_item_source_plug_id=>wwv_flow_imp.id(13452722967187119015)
,p_prompt=>'Username'
,p_source=>'USERNAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13452726472765119019)
,p_name=>'P8_EMAIL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(13452722967187119015)
,p_item_source_plug_id=>wwv_flow_imp.id(13452722967187119015)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Email'
,p_source=>'EMAIL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13452726892359119019)
,p_name=>'P8_CREATED_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(13452722967187119015)
,p_item_source_plug_id=>wwv_flow_imp.id(13452722967187119015)
,p_source=>'CREATED_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13452727244653119020)
,p_name=>'P8_CREATED_BY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(13452722967187119015)
,p_item_source_plug_id=>wwv_flow_imp.id(13452722967187119015)
,p_source=>'CREATED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13452727689949119020)
,p_name=>'P8_MODIFIED_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(13452722967187119015)
,p_item_source_plug_id=>wwv_flow_imp.id(13452722967187119015)
,p_source=>'MODIFIED_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13452728081704119020)
,p_name=>'P8_MODIFIED_BY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(13452722967187119015)
,p_item_source_plug_id=>wwv_flow_imp.id(13452722967187119015)
,p_source=>'MODIFIED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13452728411552119021)
,p_name=>'P8_DELETED'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(13452722967187119015)
,p_item_source_plug_id=>wwv_flow_imp.id(13452722967187119015)
,p_source=>'DELETED'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(13452733518037119025)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(13452733470759119025)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13452734363619119026)
,p_event_id=>wwv_flow_imp.id(13452733518037119025)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(13452736403743119027)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(13452722967187119015)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Bewerk mederwerker'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>13452736403743119027
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(13452736836411119027)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>13452736836411119027
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(13452736001377119027)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(13452722967187119015)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Bewerk mederwerker'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>13452736001377119027
);
end;
/
prompt --application/pages/page_00009
begin
wwv_flow_imp_page.create_page(
 p_id=>9
,p_name=>'Persoonlijke informatie'
,p_alias=>'PERSOONLIJKE-INFORMATIE'
,p_step_title=>'Persoonlijke informatie'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18417874229930789405)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(16199428455127615231)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18417874921897789407)
,p_plug_name=>'Persoonlijke informatie'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT G.ID,',
'       ''B'' AS "Bewerken",',
'       G.NAAM,',
'       G.FAMILYNAAM,',
'       G.WACHTWOORD,',
'       G.STATUS_ID,',
'       G.ADRES_ID,',
'       G.USERNAME,',
'       G.EMAIL,',
'       A.ADRES,',
'       A.HUISNUMMER,',
'       A.WOONWIJK_ID',
'FROM GGS_GEBRUIKER G',
'JOIN GGS_ADRES A ON G.ADRES_ID = A.ID',
'WHERE UPPER(USERNAME) = UPPER(:APP_USER);',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Persoonlijke informatie'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(18417874973955789407)
,p_name=>'Persoonlijke informatie'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_saving=>'N'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_textbox=>'N'
,p_report_list_mode=>'NONE'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_rows_per_page=>'N'
,p_show_filter=>'N'
,p_show_sort=>'N'
,p_show_control_break=>'N'
,p_show_highlight=>'N'
,p_show_computation=>'N'
,p_show_aggregate=>'N'
,p_show_chart=>'N'
,p_show_pivot=>'N'
,p_show_flashback=>'N'
,p_show_reset=>'N'
,p_show_download=>'N'
,p_enable_mail_download=>'Y'
,p_owner=>'E.LOKHAI@UNASAT.SR'
,p_internal_uid=>7013816325234391668
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18417875602355789529)
,p_db_column_name=>'ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18417876009187789530)
,p_db_column_name=>'NAAM'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Naam'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18417876358080789530)
,p_db_column_name=>'FAMILYNAAM'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Family naam'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18417876783517789530)
,p_db_column_name=>'WACHTWOORD'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Wachtwoord'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18417878446483789531)
,p_db_column_name=>'USERNAME'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Username'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18417878767861789531)
,p_db_column_name=>'EMAIL'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Email'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(17751482441312091268)
,p_db_column_name=>'STATUS_ID'
,p_display_order=>34
,p_column_identifier=>'P'
,p_column_label=>'Status '
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(17499481057133697395)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(17751482458245091269)
,p_db_column_name=>'ADRES_ID'
,p_display_order=>44
,p_column_identifier=>'Q'
,p_column_label=>'Adres '
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(17751482647564091270)
,p_db_column_name=>'Bewerken'
,p_display_order=>54
,p_column_identifier=>'R'
,p_column_label=>'Bewerken'
,p_column_link=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.::P11_ID,P11_ADRES_ID:#ID#,#ADRES_ID#'
,p_column_linktext=>'<img src="#APEX_FILES#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(17751482828261091272)
,p_db_column_name=>'ADRES'
,p_display_order=>64
,p_column_identifier=>'S'
,p_column_label=>'Straat'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(17751482864011091273)
,p_db_column_name=>'HUISNUMMER'
,p_display_order=>74
,p_column_identifier=>'T'
,p_column_label=>'Huisnummer'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(17751483029893091274)
,p_db_column_name=>'WOONWIJK_ID'
,p_display_order=>84
,p_column_identifier=>'U'
,p_column_label=>'Woonwijk '
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(17503383740077893506)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(18417746296123112542)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'70136877'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'Bewerken:NAAM:FAMILYNAAM:WACHTWOORD:USERNAME:EMAIL:STATUS_ID:HUISNUMMER:ADRES:WOONWIJK_ID:'
);
end;
/
prompt --application/pages/page_00010
begin
wwv_flow_imp_page.create_page(
 p_id=>10
,p_name=>'RollenPrivilegesView'
,p_alias=>'ROLLENPRIVILEGESVIEW'
,p_step_title=>'RollenPrivilegesView'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(19851122610478894106)
,p_plug_name=>'Rollen Privileges View'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_query_type=>'TABLE'
,p_query_table=>'GSS_AUT_AUT_RLE_PVE'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IG'
,p_prn_page_header=>'RollenPrivilegesView'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(19851123850071894107)
,p_name=>'APEX$LINK'
,p_source_type=>'NONE'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_LINK'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>10
,p_value_alignment=>'CENTER'
,p_link_target=>'f?p=&APP_ID.:12:&APP_SESSION.::&DEBUG.:RP,12:P12_ID:\&ID.\'
,p_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(19851124894061894108)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>20
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_enable_filter=>false
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(19851125884119894109)
,p_name=>'ROLE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROLE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Role '
,p_heading_alignment=>'LEFT'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(17499480381851697394)
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(19851126918780894109)
,p_name=>'PVE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PVE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Privileges'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(18552819279047522003)
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(19851127901892894110)
,p_name=>'RPE_VALID_FROM'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RPE_VALID_FROM'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Privileges Valid From'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(19851128907038894111)
,p_name=>'RPE_VALID_UNTIL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RPE_VALID_UNTIL'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Privileges Valid Until'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(19851129902832894111)
,p_name=>'RPE_CREATED_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RPE_CREATED_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>70
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(19851130875312894112)
,p_name=>'RPE_CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RPE_CREATED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>80
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(19851131876017894112)
,p_name=>'RPE_MODIFIED_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RPE_MODIFIED_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>90
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(19851132929553894113)
,p_name=>'RPE_MODIFIED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RPE_MODIFIED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>100
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(19851123099573894106)
,p_internal_uid=>8447064450852496367
,p_is_editable=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(19851123507697894107)
,p_interactive_grid_id=>wwv_flow_imp.id(19851123099573894106)
,p_static_id=>'84470649'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(19851123717828894107)
,p_report_id=>wwv_flow_imp.id(19851123507697894107)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(19851124252458894107)
,p_view_id=>wwv_flow_imp.id(19851123717828894107)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(19851123850071894107)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(19851125324183894108)
,p_view_id=>wwv_flow_imp.id(19851123717828894107)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(19851124894061894108)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(19851126324665894109)
,p_view_id=>wwv_flow_imp.id(19851123717828894107)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(19851125884119894109)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(19851127262536894109)
,p_view_id=>wwv_flow_imp.id(19851123717828894107)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(19851126918780894109)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(19851128302722894110)
,p_view_id=>wwv_flow_imp.id(19851123717828894107)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(19851127901892894110)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(19851129321029894111)
,p_view_id=>wwv_flow_imp.id(19851123717828894107)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(19851128907038894111)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(19851130277769894111)
,p_view_id=>wwv_flow_imp.id(19851123717828894107)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(19851129902832894111)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(19851131254030894112)
,p_view_id=>wwv_flow_imp.id(19851123717828894107)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(19851130875312894112)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(19851132251062894113)
,p_view_id=>wwv_flow_imp.id(19851123717828894107)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(19851131876017894112)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(19851133282904894113)
,p_view_id=>wwv_flow_imp.id(19851123717828894107)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(19851132929553894113)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(19851134667381894114)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(19851122610478894106)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Creer'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:12:&APP_SESSION.::&DEBUG.:12::'
,p_icon_css_classes=>'fa-plus-square'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(19851134984582894115)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(19851122610478894106)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19851135476849894115)
,p_event_id=>wwv_flow_imp.id(19851134984582894115)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(19851122610478894106)
);
end;
/
prompt --application/pages/page_00011
begin
wwv_flow_imp_page.create_page(
 p_id=>11
,p_name=>'Persoonlijke informatie bewerken'
,p_alias=>'PERSOONLIJKE-INFORMATIE-BEWERKEN'
,p_page_mode=>'MODAL'
,p_step_title=>'Persoonlijke informatie bewerken'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18418254842258152819)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_location=>null
,p_menu_id=>wwv_flow_imp.id(16199428455127615231)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
,p_required_patch=>wwv_flow_imp.id(16199427946544615230)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18418255623319152947)
,p_plug_name=>'Persoonlijke informatie bewerken'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT G.ID AS P11_ID,',
'       G.NAAM,',
'       G.FAMILYNAAM,',
'       G.USERNAME,',
'       G.EMAIL,',
'       G.STATUS_ID,',
'       G.ADRES_ID AS P11_ADRES_ID,',
'       A.ADRES AS P11_ADRES,',
'       A.HUISNUMMER AS P11_HUISNUMMER,',
'       A.WOONWIJK_ID AS P11_WOONWIJK_ID',
'FROM GGS_GEBRUIKER G',
'JOIN GGS_ADRES A ON G.ADRES_ID = A.ID',
'WHERE G.ID = :P11_ID;  ',
''))
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18418466717117152959)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(18418255623319152947)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Opslaan'
,p_button_position=>'CHANGE'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18418465672282152958)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(18418255623319152947)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Terug'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:9:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(18418467398163152959)
,p_branch_name=>'Go To Page 1'
,p_branch_action=>'f?p=&APP_ID.:9:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(18545366972519270848)
,p_branch_name=>'Back'
,p_branch_action=>'f?p=&APP_ID.:9:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(18418465672282152958)
,p_branch_sequence=>11
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17751483164631091276)
,p_name=>'P11_ADRES_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(18418255623319152947)
,p_item_source_plug_id=>wwv_flow_imp.id(18418255623319152947)
,p_source=>'P11_ADRES_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17751483343461091277)
,p_name=>'P11_ADRES'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(18418255623319152947)
,p_item_source_plug_id=>wwv_flow_imp.id(18418255623319152947)
,p_prompt=>'Straat'
,p_source=>'P11_ADRES'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17751483427556091278)
,p_name=>'P11_HUISNUMMER'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(18418255623319152947)
,p_item_source_plug_id=>wwv_flow_imp.id(18418255623319152947)
,p_prompt=>'Huisnummer'
,p_source=>'P11_HUISNUMMER'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17751483476913091279)
,p_name=>'P11_WOONWIJK_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(18418255623319152947)
,p_item_source_plug_id=>wwv_flow_imp.id(18418255623319152947)
,p_prompt=>'Woonwijk'
,p_source=>'P11_WOONWIJK_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'WIJKEN_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT naam, id',
'FROM GGS_WOONWIJK',
'WHERE status_id = 1  ',
'ORDER BY naam;',
''))
,p_cHeight=>1
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17751483683018091281)
,p_name=>'P11_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(18418255623319152947)
,p_item_source_plug_id=>wwv_flow_imp.id(18418255623319152947)
,p_source=>'P11_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17751483797199091282)
,p_name=>'P11_STATUS_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(18418255623319152947)
,p_item_source_plug_id=>wwv_flow_imp.id(18418255623319152947)
,p_prompt=>'Status '
,p_source=>'STATUS_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'GGS_STATUS.NAAM'
,p_cHeight=>1
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18418256257096152949)
,p_name=>'P11_NAAM'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(18418255623319152947)
,p_item_source_plug_id=>wwv_flow_imp.id(18418255623319152947)
,p_prompt=>'Naam'
,p_source=>'NAAM'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18418256649690152949)
,p_name=>'P11_FAMILYNAAM'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(18418255623319152947)
,p_item_source_plug_id=>wwv_flow_imp.id(18418255623319152947)
,p_prompt=>'Familynaam'
,p_source=>'FAMILYNAAM'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18418258681486152951)
,p_name=>'P11_USERNAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(18418255623319152947)
,p_item_source_plug_id=>wwv_flow_imp.id(18418255623319152947)
,p_prompt=>'Username'
,p_source=>'USERNAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18418459136036152952)
,p_name=>'P11_EMAIL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(18418255623319152947)
,p_item_source_plug_id=>wwv_flow_imp.id(18418255623319152947)
,p_prompt=>'Email'
,p_source=>'EMAIL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(18418468305000152960)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(18418255623319152947)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Persoonlijke informatie bewerken'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_process_error_message=>'Veranderingen niet gelukt'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Veranderingen succesvol geboekt'
,p_required_patch=>wwv_flow_imp.id(16199427946544615230)
,p_internal_uid=>7014409656278755221
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(17751483566493091280)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Submit'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'    UPDATE GGS_ADRES',
'    SET ADRES = :P11_ADRES,',
'        HUISNUMMER = :P11_HUISNUMMER,',
'        WOONWIJK_ID = :P11_WOONWIJK_ID',
'    WHERE ID = :P11_ADRES_ID;',
'',
'',
'    UPDATE GGS_GEBRUIKER',
'    SET NAAM = :P11_NAAM,',
'        FAMILYNAAM = :P11_FAMILYNAAM,',
'        USERNAME = :P11_USERNAME,',
'        EMAIL = :P11_EMAIL',
'    WHERE ID = :P11_ID;',
'',
'    COMMIT;',
'',
'EXCEPTION',
'    WHEN DUP_VAL_ON_INDEX THEN',
'        APEX_ERROR.ADD_ERROR(',
'            p_message => ''Deze gebruikersnaam bestaat al. Kies een andere.'',',
'            p_display_location => APEX_ERROR.c_inline_in_notification',
'        );',
'        ROLLBACK;',
'    WHEN OTHERS THEN',
'        APEX_ERROR.ADD_ERROR(',
'            p_message => ''Fout bij bijwerken: '' || SQLERRM,',
'            p_display_location => APEX_ERROR.c_inline_in_notification',
'        );',
'        ROLLBACK;',
'        '))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Je gegevens zijn nier bijgewerkt'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(18418466717117152959)
,p_process_success_message=>'Je gegevens zijn succesvol bijgewerkt'
,p_internal_uid=>6347424917771693541
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(18418467945597152959)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(18418255623319152947)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Persoonlijke informatie bewerken'
,p_internal_uid=>7014409296875755220
);
end;
/
prompt --application/pages/page_00012
begin
wwv_flow_imp_page.create_page(
 p_id=>12
,p_name=>'RollenPrivilegesAdden'
,p_alias=>'ROLLENPRIVILEGESADDEN'
,p_page_mode=>'MODAL'
,p_step_title=>'RollenPrivilegesAdden'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(19851111303988894095)
,p_plug_name=>'RollenPrivilegesAdden'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'GSS_AUT_AUT_RLE_PVE'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(19851117782161894101)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(19851118164761894102)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(19851117782161894101)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'terug'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-undo-arrow'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(19851119612238894103)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(19851117782161894101)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P12_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(19851120029290894103)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(19851117782161894101)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P12_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(19851120417967894104)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(19851117782161894101)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Creer'
,p_button_position=>'NEXT'
,p_button_condition=>'P12_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_icon_css_classes=>'fa-plus-square'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19851111609419894095)
,p_name=>'P12_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(19851111303988894095)
,p_item_source_plug_id=>wwv_flow_imp.id(19851111303988894095)
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19851111995384894096)
,p_name=>'P12_ROLE_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(19851111303988894095)
,p_item_source_plug_id=>wwv_flow_imp.id(19851111303988894095)
,p_prompt=>'Role '
,p_source=>'ROLE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'GGS_ROLLEN.NAAM'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19851112385658894096)
,p_name=>'P12_PVE_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(19851111303988894095)
,p_item_source_plug_id=>wwv_flow_imp.id(19851111303988894095)
,p_prompt=>'Privileges'
,p_source=>'PVE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'GGS_AUT_AUT_PRIVILEGES.NAME'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19851112780592894096)
,p_name=>'P12_RPE_VALID_FROM'
,p_source_data_type=>'DATE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(19851111303988894095)
,p_item_source_plug_id=>wwv_flow_imp.id(19851111303988894095)
,p_prompt=>'Privileges Valid From'
,p_source=>'RPE_VALID_FROM'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19851113157251894097)
,p_name=>'P12_RPE_VALID_UNTIL'
,p_source_data_type=>'DATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(19851111303988894095)
,p_item_source_plug_id=>wwv_flow_imp.id(19851111303988894095)
,p_prompt=>'Privileges Valid Until'
,p_source=>'RPE_VALID_UNTIL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19851113588298894097)
,p_name=>'P12_RPE_CREATED_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(19851111303988894095)
,p_item_source_plug_id=>wwv_flow_imp.id(19851111303988894095)
,p_source=>'RPE_CREATED_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19851114044907894098)
,p_name=>'P12_RPE_CREATED_BY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(19851111303988894095)
,p_item_source_plug_id=>wwv_flow_imp.id(19851111303988894095)
,p_source=>'RPE_CREATED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19851114393262894098)
,p_name=>'P12_RPE_MODIFIED_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(19851111303988894095)
,p_item_source_plug_id=>wwv_flow_imp.id(19851111303988894095)
,p_source=>'RPE_MODIFIED_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19851114782930894098)
,p_name=>'P12_RPE_MODIFIED_BY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(19851111303988894095)
,p_item_source_plug_id=>wwv_flow_imp.id(19851111303988894095)
,p_source=>'RPE_MODIFIED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(19851118293316894102)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(19851118164761894102)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19851119111061894103)
,p_event_id=>wwv_flow_imp.id(19851118293316894102)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(19851121236066894104)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(19851111303988894095)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form RollenPrivilegesAdden'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_process_error_message=>'Niet gelukt'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Gelukt'
,p_internal_uid=>8447062587345496365
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(18154468722644480679)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Auditlog'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  v_user_id NUMBER;',
'  v_role_name VARCHAR2(100 BYTE);',
'  v_privilege_name VARCHAR2(100 BYTE);',
'BEGIN',
'  SELECT ID INTO v_user_id',
'  FROM GGS_GEBRUIKER',
'  WHERE UPPER(USERNAME) = UPPER(:APP_USER);',
'',
'  INSERT INTO GGS_AUDIT(ACTIE, GEBRUIKER_ID, DATUM)',
'  VALUES (',
'    ''Role Privilege Toegevoegd: Rol: '' || :P12_ROLE_ID ||',
'    '', Privilege: '' || :P12_PVE_ID || ',
'    '', Geldig van: '' || TO_CHAR(:P12_RPE_VALID_FROM, ''DD-MON-YYYY'') || ',
'    '' Tot: '' || TO_CHAR(:P12_RPE_VALID_UNTIL, ''DD-MON-YYYY''),',
'    v_user_id,',
'    SYSTIMESTAMP',
'  );',
'',
'  COMMIT;',
'',
'EXCEPTION',
'  WHEN NO_DATA_FOUND THEN',
'    RAISE_APPLICATION_ERROR(-20001, ''Invalid Role ID or Privilege ID.'');',
'  WHEN OTHERS THEN',
'    ROLLBACK;',
'    RAISE_APPLICATION_ERROR(-20099, ''Unexpected error: '' || SQLERRM);',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_required_patch=>wwv_flow_imp.id(16199427946544615230)
,p_internal_uid=>6750410073923082940
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(19851121642693894104)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_attribute_02=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>8447062993972496365
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(19851120762408894104)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(19851111303988894095)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form RollenPrivilegesAdden'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>8447062113687496365
);
end;
/
prompt --application/pages/page_00013
begin
wwv_flow_imp_page.create_page(
 p_id=>13
,p_name=>'Producten Toevoegen'
,p_alias=>'PRODUCTENTOEVOEGEN'
,p_page_mode=>'MODAL'
,p_step_title=>'Producten Toevoegen'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#:t-Dialog--noPadding'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(17745774474791919259)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_location=>null
,p_menu_id=>wwv_flow_imp.id(16199428455127615231)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
,p_required_patch=>wwv_flow_imp.id(16199427946544615230)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(17745775605361919378)
,p_plug_name=>'Producten Toevoegen'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'GGS_PRODUCTEN'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(17745781777141919385)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(17745775605361919378)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CHANGE'
,p_button_condition=>'P13_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(17745780759556919384)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(17745775605361919378)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Terug'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:34:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-undo-arrow'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(17745782217530919386)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(17745775605361919378)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Creer'
,p_button_position=>'CREATE'
,p_button_condition=>'P13_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_icon_css_classes=>'fa-plus-square'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(17745781361617919385)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(17745775605361919378)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P13_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(17745782533373919386)
,p_branch_name=>'Go To Page 1'
,p_branch_action=>'f?p=&APP_ID.:34:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17745775892810919379)
,p_name=>'P13_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(17745775605361919378)
,p_item_source_plug_id=>wwv_flow_imp.id(17745775605361919378)
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17745776272361919380)
,p_name=>'P13_NAAM'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(17745775605361919378)
,p_item_source_plug_id=>wwv_flow_imp.id(17745775605361919378)
,p_prompt=>'Naam'
,p_source=>'NAAM'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17745776691396919380)
,p_name=>'P13_PRIJS'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(17745775605361919378)
,p_item_source_plug_id=>wwv_flow_imp.id(17745775605361919378)
,p_prompt=>'Prijs'
,p_source=>'PRIJS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17745777091957919381)
,p_name=>'P13_VOORRAAD'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(17745775605361919378)
,p_item_source_plug_id=>wwv_flow_imp.id(17745775605361919378)
,p_prompt=>'Voorraad'
,p_source=>'VOORRAAD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17745777546925919381)
,p_name=>'P13_CATEGORIEEN_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(17745775605361919378)
,p_item_source_plug_id=>wwv_flow_imp.id(17745775605361919378)
,p_prompt=>'Categorie'
,p_source=>'CATEGORIEEN_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'CATEGORIE'
,p_cHeight=>1
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17745777852317919382)
,p_name=>'P13_STATUS_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(17745775605361919378)
,p_item_source_plug_id=>wwv_flow_imp.id(17745775605361919378)
,p_prompt=>'Status'
,p_source=>'STATUS_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'GGS_STATUS.NAAM'
,p_cHeight=>1
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17745778250501919382)
,p_name=>'P13_IMAGE'
,p_source_data_type=>'BLOB'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(17745775605361919378)
,p_item_source_plug_id=>wwv_flow_imp.id(17745775605361919378)
,p_prompt=>'Image'
,p_source=>'IMAGE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>60
,p_cMaxlength=>255
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'content_disposition', 'attachment',
  'display_as', 'INLINE',
  'display_download_link', 'Y',
  'storage_type', 'DB_COLUMN')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(17745783416974919386)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(17745775605361919378)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form ProductenToevoegen'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>6341724768253521647
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(18154468592921480678)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'auditlog'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  v_address_id INT;',
'  v_user_id NUMBER;',
'BEGIN',
'',
' SELECT ID INTO v_user_id',
'    FROM GGS_GEBRUIKER',
'    WHERE UPPER(USERNAME) = UPPER(:APP_USER);',
'  ',
'  INSERT INTO GGS_AUDIT(ACTIE,GEBRUIKER_ID,DATUM)',
'    VALUES (',
'    ''Product Toegevoegd: '' || :P13_NAAM || '', Prijs: '' || :P13_PRIJS ||',
'    '', Voorraad: '' || :P13_VOORRAAD || '', Categorie ID: '' || :P13_CATEGORIEEN_ID,',
'    v_user_id,',
'    SYSTIMESTAMP',
'  );',
'',
'  COMMIT;',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>6750409944200082939
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(17745782982783919386)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(17745775605361919378)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form ProductenToevoegen'
,p_internal_uid=>6341724334062521647
);
end;
/
prompt --application/pages/page_00014
begin
wwv_flow_imp_page.create_page(
 p_id=>14
,p_name=>'AddDeliveryRoute'
,p_alias=>'ADDDELIVERYROUTE'
,p_page_mode=>'MODAL'
,p_step_title=>'Add Delivery Route'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(19888139419628298105)
,p_plug_name=>'AddDeliveryRoute'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'GGS_WOONWIJK_ROUTE'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(19888142906445298110)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(19888139419628298105)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CHANGE'
,p_button_condition=>'P14_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(19888141876023298110)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(19888139419628298105)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Terug'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:26:&APP_SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-undo-arrow'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(19888143329481298111)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(19888139419628298105)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Creer'
,p_button_position=>'CREATE'
,p_button_condition=>'P14_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_icon_css_classes=>'fa-plus-square'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(19888142502790298110)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(19888139419628298105)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P14_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(19888143600205298111)
,p_branch_name=>'Go To Page 1'
,p_branch_action=>'f?p=&APP_ID.:26:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18545368555423270864)
,p_name=>'P14_STATUS_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(19888139419628298105)
,p_item_source_plug_id=>wwv_flow_imp.id(19888139419628298105)
,p_source=>'STATUS_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19888139745782298106)
,p_name=>'P14_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(19888139419628298105)
,p_item_source_plug_id=>wwv_flow_imp.id(19888139419628298105)
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19888140200177298108)
,p_name=>'P14_ROUTE_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(19888139419628298105)
,p_item_source_plug_id=>wwv_flow_imp.id(19888139419628298105)
,p_prompt=>'Route '
,p_source=>'ROUTE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT naam AS name, ',
'       id AS route_id',
'FROM GGS_ROUTE',
'WHERE status_id = 1',
'ORDER BY naam;',
''))
,p_cHeight=>1
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19888140592917298109)
,p_name=>'P14_WIJK_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(19888139419628298105)
,p_item_source_plug_id=>wwv_flow_imp.id(19888139419628298105)
,p_prompt=>'Wijk '
,p_source=>'WIJK_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT naam, id FROM GGS_WOONWIJK WHERE status_id IN (SELECT id FROM GGS_STATUS WHERE naam = ''active'') ORDER BY naam;',
''))
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1')).to_clob
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(19888144456553298112)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(19888139419628298105)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form AddDeliveryRoute'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_required_patch=>wwv_flow_imp.id(16199427946544615230)
,p_internal_uid=>8484085807831900373
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(18545367891761270857)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'New'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    TYPE wijk_array IS TABLE OF NUMBER INDEX BY PLS_INTEGER; ',
'    v_wijken_arr wijk_array;',
'    v_count PLS_INTEGER;',
'BEGIN',
'    SELECT TO_NUMBER(REGEXP_SUBSTR(:P14_WIJK_ID, ''[^:]+'', 1, LEVEL))',
'    BULK COLLECT INTO v_wijken_arr',
'    FROM dual',
'    CONNECT BY LEVEL <= REGEXP_COUNT(:P14_WIJK_ID, '':'') + 1;',
'',
'    FOR i IN 1 .. v_wijken_arr.COUNT LOOP        ',
'        SELECT COUNT(*) INTO v_count',
'        FROM GGS_WOONWIJK_ROUTE',
'        WHERE route_id = :P14_ROUTE_ID AND wijk_id = v_wijken_arr(i);',
'',
'        IF v_count = 0 THEN',
'            INSERT INTO GGS_WOONWIJK_ROUTE (route_id, wijk_id, status_id)',
'            VALUES (:P14_ROUTE_ID, v_wijken_arr(i), 1);',
'        END IF;',
'    END LOOP;',
'',
'    COMMIT;',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Niet gelukt toe tevoegen'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(19888143329481298111)
,p_process_success_message=>'Gelukt toe tevoegen'
,p_internal_uid=>7141309243039873118
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(19888144142447298112)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(19888139419628298105)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form AddDeliveryRoute'
,p_internal_uid=>8484085493725900373
);
end;
/
prompt --application/pages/page_00015
begin
wwv_flow_imp_page.create_page(
 p_id=>15
,p_name=>'Creeer routes'
,p_alias=>'CREEER-ROUTES'
,p_page_mode=>'MODAL'
,p_step_title=>'Creeer routes'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>1661186590416509825
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18527636355082869147)
,p_plug_name=>'Creeer routes'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'GGS_ROUTE'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18527638216441869149)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18527638565106869150)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(18527638216441869149)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Terug'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18527639972300869151)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(18527638216441869149)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Verwijder'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P15_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18527640407883869151)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(18527638216441869149)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P15_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18527640819877869151)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(18527638216441869149)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Creer'
,p_button_position=>'NEXT'
,p_button_condition=>'P15_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18527636665367869148)
,p_name=>'P15_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(18527636355082869147)
,p_item_source_plug_id=>wwv_flow_imp.id(18527636355082869147)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id'
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18527637157701869148)
,p_name=>'P15_NAAM'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(18527636355082869147)
,p_item_source_plug_id=>wwv_flow_imp.id(18527636355082869147)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Naam'
,p_source=>'NAAM'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(18527638701976869150)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(18527638565106869150)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18527639533760869150)
,p_event_id=>wwv_flow_imp.id(18527638701976869150)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(18527641565297869152)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(18527636355082869147)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Creeer routes'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>7123582916576471413
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(18527641956241869152)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>7123583307520471413
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(18527641227906869151)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(18527636355082869147)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Creeer routes'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>7123582579185471412
);
end;
/
prompt --application/pages/page_00016
begin
wwv_flow_imp_page.create_page(
 p_id=>16
,p_name=>'EditRouteDelivery'
,p_alias=>'EDITROUTEDELIVERY'
,p_page_mode=>'MODAL'
,p_step_title=>'EditRouteDelivery'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(19889750935281412674)
,p_plug_name=>'EditRouteDelivery'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    wr.ID,',
'    wr.ROUTE_ID,',
'    wr.WIJK_ID,',
'    r.status_id AS route_status_id  ',
'FROM GGS_WOONWIJK_ROUTE wr',
'JOIN GGS_ROUTE r ON wr.ROUTE_ID = r.ID;  ',
''))
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(19889753298321412676)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(19889753718354412677)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(19889753298321412676)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Terug'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-undo-arrow'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(20174370163070526159)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(19889753298321412676)
,p_button_name=>'Verwijder'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Verwijder'
,p_button_position=>'DELETE'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_icon_css_classes=>'fa-trash'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(20174369761924526155)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(19889753298321412676)
,p_button_name=>'Creer'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Opslaan'
,p_button_position=>'NEXT'
,p_icon_css_classes=>'fa-edit'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(20174369872666526156)
,p_branch_action=>'f?p=&APP_ID.:26:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18545369524094270873)
,p_name=>'P16_ROUTE_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(19889750935281412674)
,p_item_source_plug_id=>wwv_flow_imp.id(19889750935281412674)
,p_prompt=>'Route '
,p_source=>'ROUTE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'GGS_ROUTE.NAAM'
,p_cHeight=>1
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18545369635211270874)
,p_name=>'P16_WIJK_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(19889750935281412674)
,p_item_source_plug_id=>wwv_flow_imp.id(19889750935281412674)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT wijk_id',
'FROM GGS_WOONWIJK_ROUTE',
'WHERE route_id = :P16_ROUTE_ID',
''))
,p_item_default_type=>'SQL_QUERY_COLON'
,p_prompt=>'Wijk '
,p_source=>'WIJK_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'GGS_WOONWIJK.NAAM'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1')).to_clob
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19889751248123412674)
,p_name=>'P16_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(19889750935281412674)
,p_item_source_plug_id=>wwv_flow_imp.id(19889750935281412674)
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(20174370075802526158)
,p_name=>'P16_ROUTE_STATUS_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(19889750935281412674)
,p_item_source_plug_id=>wwv_flow_imp.id(19889750935281412674)
,p_prompt=>'Route Status Id'
,p_source=>'ROUTE_STATUS_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_required_patch=>wwv_flow_imp.id(16199427946544615230)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(19889753843619412677)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(19889753718354412677)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19889754624494412677)
,p_event_id=>wwv_flow_imp.id(19889753843619412677)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(19889757049406412679)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>8485698400685014940
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(20174369590277526153)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Editroute'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    TYPE wijk_array IS TABLE OF NUMBER INDEX BY PLS_INTEGER; ',
'    v_wijken_arr wijk_array;',
'    v_count PLS_INTEGER;',
'BEGIN',
'    ',
'    SELECT TO_NUMBER(REGEXP_SUBSTR(:P16_WIJK_ID, ''[^:]+'', 1, LEVEL))',
'    BULK COLLECT INTO v_wijken_arr',
'    FROM dual',
'    CONNECT BY LEVEL <= REGEXP_COUNT(:P16_WIJK_ID, '':'') + 1;',
'    ',
'    DELETE FROM GGS_WOONWIJK_ROUTE WHERE route_id = :P16_ROUTE_ID;',
'',
'   ',
'    FOR i IN 1 .. v_wijken_arr.COUNT LOOP',
'        -- Check if the combination already exists',
'        SELECT COUNT(*) INTO v_count',
'        FROM GGS_WOONWIJK_ROUTE',
'        WHERE route_id = :P16_ROUTE_ID AND wijk_id = v_wijken_arr(i);',
'',
'        ',
'        IF v_count = 0 THEN',
'            ',
'            INSERT INTO GGS_WOONWIJK_ROUTE (route_id, wijk_id, status_id)',
'            VALUES (:P16_ROUTE_ID, v_wijken_arr(i), 1); ',
'        END IF;',
'    END LOOP;',
'',
'    COMMIT;',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Niet gelukt'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(20174369761924526155)
,p_process_success_message=>'Successvol opgeslagen'
,p_internal_uid=>8770310941556128414
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(20174370254742526160)
,p_process_sequence=>70
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Verwijder'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_count PLS_INTEGER;',
'BEGIN',
'    -- route check alle maal callen',
'    SELECT COUNT(*) INTO v_count',
'    FROM GGS_ROUTE',
'    WHERE id = :P16_ROUTE_ID;  ',
'',
'    --Als het er s',
'    IF v_count > 0 THEN',
'        ',
'        DELETE FROM GGS_WOONWIJK_ROUTE',
'        WHERE route_id = :P16_ROUTE_ID; ',
'        ',
'        COMMIT;',
'    ELSE',
'        -- error als het er niet dan',
'        RAISE_APPLICATION_ERROR(-20001, ''Route niet gevonden'');',
'    END IF;',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(20174370163070526159)
,p_internal_uid=>8770311606021128421
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(19889756287674412679)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(19889750935281412674)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form EditRouteDelivery'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>8485697638953014940
);
end;
/
prompt --application/pages/page_00017
begin
wwv_flow_imp_page.create_page(
 p_id=>17
,p_name=>'Gebruiker Koppelen Aan Rol'
,p_alias=>'USER-ROLES-ASSIGNMENT1'
,p_step_title=>'Gebruiker Koppelen Aan Rol'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(20166754744159828055)
,p_plug_name=>'User Roles Assignment'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_query_type=>'TABLE'
,p_query_table=>'GGS_AUT_AUT_USR_RLE'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IG'
,p_prn_page_header=>'User Roles Assignment'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(20166756011600828057)
,p_name=>'APEX$LINK'
,p_source_type=>'NONE'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_LINK'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>10
,p_value_alignment=>'CENTER'
,p_link_target=>'f?p=&APP_ID.:22:&APP_SESSION.::&DEBUG.:RP,22:P22_ID:\&ID.\'
,p_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(20166757015716828058)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>20
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_enable_filter=>false
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(20166758084545828059)
,p_name=>'GEBRUIKER_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'GEBRUIKER_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Gebruiker '
,p_heading_alignment=>'LEFT'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(20166743756792828043)
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(20166759547048828059)
,p_name=>'ROLE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROLE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Role '
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(17499480381851697394)
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(20166760459286828060)
,p_name=>'VALID_FROM'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VALID_FROM'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Valid From'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_and_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_on', 'FOCUS',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(20166761467002828061)
,p_name=>'VALID_UNTIL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VALID_UNTIL'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Valid Until'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_and_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_on', 'FOCUS',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(20166762510253828062)
,p_name=>'CREATED_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATED_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Created Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_and_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_on', 'FOCUS',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(20166763450258828062)
,p_name=>'CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>80
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(20166764522816828064)
,p_name=>'MODIFIED_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MODIFIED_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>90
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(20166765465821828064)
,p_name=>'MODIFIED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MODIFIED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>100
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(20166755237214828055)
,p_internal_uid=>8762696588493430316
,p_is_editable=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(20166755573066828056)
,p_interactive_grid_id=>wwv_flow_imp.id(20166755237214828055)
,p_static_id=>'87626970'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(20166755809481828056)
,p_report_id=>wwv_flow_imp.id(20166755573066828056)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(20166756353692828057)
,p_view_id=>wwv_flow_imp.id(20166755809481828056)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(20166756011600828057)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(20166757407710828058)
,p_view_id=>wwv_flow_imp.id(20166755809481828056)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(20166757015716828058)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(20166758900085828059)
,p_view_id=>wwv_flow_imp.id(20166755809481828056)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(20166758084545828059)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(20166759897607828060)
,p_view_id=>wwv_flow_imp.id(20166755809481828056)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(20166759547048828059)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(20166760892023828060)
,p_view_id=>wwv_flow_imp.id(20166755809481828056)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(20166760459286828060)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(20166761947021828061)
,p_view_id=>wwv_flow_imp.id(20166755809481828056)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(20166761467002828061)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(20166762868643828062)
,p_view_id=>wwv_flow_imp.id(20166755809481828056)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(20166762510253828062)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(20166763922390828063)
,p_view_id=>wwv_flow_imp.id(20166755809481828056)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(20166763450258828062)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(20166764900204828064)
,p_view_id=>wwv_flow_imp.id(20166755809481828056)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(20166764522816828064)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(20166765922126828065)
,p_view_id=>wwv_flow_imp.id(20166755809481828056)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(20166765465821828064)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(20166767331673828066)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(20166754744159828055)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Creer'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:22:&APP_SESSION.::&DEBUG.:22::'
,p_icon_css_classes=>'fa-plus-square'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(20166767593900828066)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(20166754744159828055)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20166768137455828067)
,p_event_id=>wwv_flow_imp.id(20166767593900828066)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(20166754744159828055)
);
end;
/
prompt --application/pages/page_00018
begin
wwv_flow_imp_page.create_page(
 p_id=>18
,p_name=>'Routes Bezichten'
,p_alias=>'ROUTES-BEZICHTEN'
,p_step_title=>'Routes Bezichten'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18529794207703625684)
,p_plug_name=>'Routes Bezichten'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'GGS_ROUTE'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Routes Bezichten'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(18529794293955625684)
,p_name=>'Routes Bezichten'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:19:&APP_SESSION.::&DEBUG.:RP:P19_ID:\#ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="apex-edit-pencil" title="Edit"></span><img src="#APEX_FILES#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_owner=>'E.LOKHAI@UNASAT.SR'
,p_internal_uid=>7125735645234227945
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18529794993375625685)
,p_db_column_name=>'ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18529795372220625685)
,p_db_column_name=>'NAAM'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Naam'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18545367399280270852)
,p_db_column_name=>'STATUS_ID'
,p_display_order=>12
,p_column_identifier=>'C'
,p_column_label=>'Status '
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(17499481057133697395)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(18530519370638626749)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'71264608'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'NAAM:STATUS_ID:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18529797548275625687)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(16199428455127615231)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18529795934556625686)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(18529794207703625684)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Creer route'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:19:&APP_SESSION.::&DEBUG.:19::'
,p_icon_css_classes=>'fa-plus-square'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(17751484123819091285)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(18529794207703625684)
,p_button_name=>'Wijken'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Woon wijken'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-map-pin-circle'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(18529796164466625686)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(18529794207703625684)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18529796698384625686)
,p_event_id=>wwv_flow_imp.id(18529796164466625686)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(18529794207703625684)
);
end;
/
prompt --application/pages/page_00019
begin
wwv_flow_imp_page.create_page(
 p_id=>19
,p_name=>'Routes toevoegen'
,p_alias=>'ROUTES-TOEVOEGEN'
,p_page_mode=>'MODAL'
,p_step_title=>'Routes toevoegen'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18529787744935625678)
,p_plug_name=>'Routes toevoegen'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'GGS_ROUTE'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18529789391312625680)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18529789758239625681)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(18529789391312625680)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Terug'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-undo-arrow'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18529791214098625682)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(18529789391312625680)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Verwijder'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P19_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-trash'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18529791580750625682)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(18529789391312625680)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Opslaan'
,p_button_position=>'NEXT'
,p_button_condition=>'P19_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-edit'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18529792035136625682)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(18529789391312625680)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Creer'
,p_button_position=>'NEXT'
,p_button_condition=>'P19_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_icon_css_classes=>'fa-plus-square'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18529788027202625679)
,p_name=>'P19_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(18529787744935625678)
,p_item_source_plug_id=>wwv_flow_imp.id(18529787744935625678)
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18529788399668625680)
,p_name=>'P19_NAAM'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(18529787744935625678)
,p_item_source_plug_id=>wwv_flow_imp.id(18529787744935625678)
,p_prompt=>'Naam'
,p_source=>'NAAM'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18545367585434270854)
,p_name=>'P19_STATUS_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(18529787744935625678)
,p_item_source_plug_id=>wwv_flow_imp.id(18529787744935625678)
,p_prompt=>'Status '
,p_source=>'STATUS_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'GGS_STATUS.NAAM'
,p_cHeight=>1
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(18529789877486625681)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(18529789758239625681)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18529790709884625681)
,p_event_id=>wwv_flow_imp.id(18529789877486625681)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(18529792835038625683)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(18529787744935625678)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Routes toevoegen'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>7125734186317227944
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(18277809955539752141)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Auditlog'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  v_address_id INT;',
'  v_user_id NUMBER;',
'  v_username VARCHAR2(100);',
'BEGIN',
'',
' SELECT ID INTO v_user_id',
'    FROM GGS_GEBRUIKER',
'    WHERE UPPER(USERNAME) = UPPER(:APP_USER);',
'',
'  INSERT INTO GGS_AUDIT(ACTIE,GEBRUIKER_ID,DATUM)',
'    VALUES (',
'    ''Route Toegevoegd: '' || :P19_NAAM,',
'    v_user_id,',
'    SYSTIMESTAMP',
'  );',
'  ',
'  COMMIT;',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>6873751306818354402
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(18529793232754625683)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_attribute_02=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>7125734584033227944
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(18529792408452625682)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(18529787744935625678)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Routes toevoegen'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>7125733759731227943
);
end;
/
prompt --application/pages/page_00020
begin
wwv_flow_imp_page.create_page(
 p_id=>20
,p_name=>'Wijken'
,p_alias=>'WOONWIJKEN'
,p_step_title=>'Woon wijken'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(18555875673040645084)
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18533110129916969882)
,p_plug_name=>'Wijken'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'GGS_WOONWIJK'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Wijken'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(18533110188780969882)
,p_name=>'Wijken'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:21:&APP_SESSION.::&DEBUG.:RP:P21_ID:\#ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="apex-edit-pencil" title="Edit"></span><img src="#APEX_FILES#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_owner=>'E.LOKHAI@UNASAT.SR'
,p_internal_uid=>7129051540059572143
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18533110906991969883)
,p_db_column_name=>'ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18533111299254969884)
,p_db_column_name=>'NAAM'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Naam'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18533111650119969884)
,p_db_column_name=>'STATUS_ID'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_named_lov=>wwv_flow_imp.id(17499481057133697395)
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18533112073092969884)
,p_db_column_name=>'PRIJS'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Prijs'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(18533168948161974650)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'71291103'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID:NAAM:STATUS_ID:PRIJS'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18533114195726969886)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(16199428455127615231)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18533112611939969885)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(18533110129916969882)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Creer woon wijk'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:21:&APP_SESSION.::&DEBUG.:21::'
,p_icon_css_classes=>'fa-plus-square'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(17751484192803091286)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(18533110129916969882)
,p_button_name=>'New'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Route'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:18:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-road'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(18533112861665969885)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(18533110129916969882)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18533113408118969885)
,p_event_id=>wwv_flow_imp.id(18533112861665969885)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(18533110129916969882)
);
end;
/
prompt --application/pages/page_00021
begin
wwv_flow_imp_page.create_page(
 p_id=>21
,p_name=>'Wijken Toevoegen'
,p_alias=>'WIJKEN-TOEVOEGEN'
,p_page_mode=>'MODAL'
,p_step_title=>'Wijken Toevoegen'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18533102196964969874)
,p_plug_name=>'Wijken Toevoegen'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'GGS_WOONWIJK'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18533105306150969878)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18533105720520969878)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(18533105306150969878)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Terug'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-undo-arrow'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18533107111642969879)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(18533105306150969878)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Verwijder'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P21_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-trash'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18533107480280969879)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(18533105306150969878)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Opslaan'
,p_button_position=>'NEXT'
,p_button_condition=>'P21_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-plus-square'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18533107860367969879)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(18533105306150969878)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Creer'
,p_button_position=>'NEXT'
,p_button_condition=>'P21_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_icon_css_classes=>'fa-plus-square'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18533102520239969875)
,p_name=>'P21_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(18533102196964969874)
,p_item_source_plug_id=>wwv_flow_imp.id(18533102196964969874)
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18533102938430969875)
,p_name=>'P21_NAAM'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(18533102196964969874)
,p_item_source_plug_id=>wwv_flow_imp.id(18533102196964969874)
,p_prompt=>'Naam'
,p_source=>'NAAM'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18533103254551969876)
,p_name=>'P21_STATUS_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(18533102196964969874)
,p_item_source_plug_id=>wwv_flow_imp.id(18533102196964969874)
,p_prompt=>'Status '
,p_source=>'STATUS_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'GGS_STATUS.NAAM'
,p_cHeight=>1
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18533103742149969876)
,p_name=>'P21_PRIJS'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(18533102196964969874)
,p_item_source_plug_id=>wwv_flow_imp.id(18533102196964969874)
,p_prompt=>'Prijs'
,p_source=>'PRIJS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(18533105833746969878)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(18533105720520969878)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18533106617823969879)
,p_event_id=>wwv_flow_imp.id(18533105833746969878)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(18533108733103969880)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(18533102196964969874)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Wijken Toevoegen'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>7129050084382572141
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(18277810067760752142)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Auditlog'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  v_address_id INT;',
'  v_user_id NUMBER;',
'  v_username VARCHAR2(100);',
'  v_status_name VARCHAR2(100);',
'BEGIN',
'',
' SELECT ID INTO v_user_id',
'    FROM GGS_GEBRUIKER',
'    WHERE UPPER(USERNAME) = UPPER(:APP_USER);',
'',
'  SELECT NAAM INTO v_status_name',
'  FROM GGS_STATUS',
'  WHERE ID = :P21_STATUS_ID;',
'',
'  INSERT INTO GGS_AUDIT(ACTIE,GEBRUIKER_ID,DATUM)',
'    VALUES (',
'    ''Wijk Toegevoegd: '' || :P21_NAAM || '',Prijs:'' || :P21_PRIJS || '',Status:'' || :v_status_name,',
'    v_user_id,',
'    SYSTIMESTAMP',
'  );',
'  ',
'  COMMIT;',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>6873751419039354403
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(18533109049687969880)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_attribute_02=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>7129050400966572141
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(18533108284725969880)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(18533102196964969874)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Wijken Toevoegen'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>7129049636004572141
);
end;
/
prompt --application/pages/page_00022
begin
wwv_flow_imp_page.create_page(
 p_id=>22
,p_name=>'User Roles Assignment'
,p_alias=>'USER-ROLES-ASSIGNMENT'
,p_page_mode=>'MODAL'
,p_step_title=>'User Roles Assignment'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(20166743048200828041)
,p_plug_name=>'User Roles Assignment'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'GGS_AUT_AUT_USR_RLE'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(20166749894980828049)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(20166750312102828050)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(20166749894980828049)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Terug'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-undo-arrow'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(20166751744823828052)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(20166749894980828049)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P22_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(20166752061656828052)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(20166749894980828049)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P22_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(20166752488870828052)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(20166749894980828049)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Creer'
,p_button_position=>'NEXT'
,p_button_condition=>'P22_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_icon_css_classes=>'fa-plus-square'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(20166743252690828042)
,p_name=>'P22_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(20166743048200828041)
,p_item_source_plug_id=>wwv_flow_imp.id(20166743048200828041)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id'
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(20166743656386828043)
,p_name=>'P22_GEBRUIKER_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(20166743048200828041)
,p_item_source_plug_id=>wwv_flow_imp.id(20166743048200828041)
,p_prompt=>'Gebruiker '
,p_source=>'GEBRUIKER_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'GEBRUIKERFULLNAME'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    id, ',
'    naam || '' '' || familynaam AS full_name ',
'FROM ',
'    GGS_GEBRUIKER;',
''))
,p_cHeight=>1
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(20166744393643828044)
,p_name=>'P22_ROLE_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(20166743048200828041)
,p_item_source_plug_id=>wwv_flow_imp.id(20166743048200828041)
,p_prompt=>'Role '
,p_source=>'ROLE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'GGS_ROLLEN.NAAM'
,p_cHeight=>1
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(20166744796159828044)
,p_name=>'P22_VALID_FROM'
,p_source_data_type=>'DATE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(20166743048200828041)
,p_item_source_plug_id=>wwv_flow_imp.id(20166743048200828041)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Valid From'
,p_source=>'VALID_FROM'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_and_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_on', 'FOCUS',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(20166745219801828045)
,p_name=>'P22_VALID_UNTIL'
,p_source_data_type=>'DATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(20166743048200828041)
,p_item_source_plug_id=>wwv_flow_imp.id(20166743048200828041)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Valid Until'
,p_source=>'VALID_UNTIL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_and_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_on', 'FOCUS',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(20166745592325828046)
,p_name=>'P22_CREATED_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(20166743048200828041)
,p_item_source_plug_id=>wwv_flow_imp.id(20166743048200828041)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Created Date'
,p_source=>'CREATED_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_and_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_on', 'FOCUS',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(20166746039176828046)
,p_name=>'P22_CREATED_BY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(20166743048200828041)
,p_item_source_plug_id=>wwv_flow_imp.id(20166743048200828041)
,p_source=>'CREATED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(20166746351999828046)
,p_name=>'P22_MODIFIED_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(20166743048200828041)
,p_item_source_plug_id=>wwv_flow_imp.id(20166743048200828041)
,p_source=>'MODIFIED_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(20166746776925828047)
,p_name=>'P22_MODIFIED_BY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(20166743048200828041)
,p_item_source_plug_id=>wwv_flow_imp.id(20166743048200828041)
,p_source=>'MODIFIED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(20166750355837828050)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(20166750312102828050)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20166751231105828051)
,p_event_id=>wwv_flow_imp.id(20166750355837828050)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(20166753255863828053)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(20166743048200828041)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form User Roles Assignment'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>8762694607142430314
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(20166753682558828053)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>8762695033837430314
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(20166752945187828052)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(20166743048200828041)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form User Roles Assignment'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>8762694296466430313
);
end;
/
prompt --application/pages/page_00023
begin
wwv_flow_imp_page.create_page(
 p_id=>23
,p_name=>'Auth Beheer'
,p_alias=>'AUTH-BEHEER'
,p_step_title=>'Auth Beheer'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(18555875673040645084)
,p_protection_level=>'C'
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(13503675133529367129)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(16199428455127615231)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
end;
/
prompt --application/pages/page_00024
begin
wwv_flow_imp_page.create_page(
 p_id=>24
,p_name=>'Totale Kosten'
,p_alias=>'TOTALE-KOSTEN'
,p_page_mode=>'MODAL'
,p_step_title=>'Totale Kosten'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(22249385596470607425)
,p_plug_name=>'Totale Kosten'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'GGS_BETALLING'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(22249390796375607430)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(22249391156407607431)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(22249390796375607430)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Terug'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-undo-arrow'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(22249392563709607432)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(22249390796375607430)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P24_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(22249392982544607432)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(22249390796375607430)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P24_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(22249393380174607433)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(22249390796375607430)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Creer'
,p_button_position=>'NEXT'
,p_button_condition=>'P24_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_icon_css_classes=>'fa-plus-square'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22249385893788607426)
,p_name=>'P24_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(22249385596470607425)
,p_item_source_plug_id=>wwv_flow_imp.id(22249385596470607425)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id'
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22249386311765607426)
,p_name=>'P24_BETALINGTYPE_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(22249385596470607425)
,p_item_source_plug_id=>wwv_flow_imp.id(22249385596470607425)
,p_prompt=>'Betaling type '
,p_source=>'BETALINGTYPE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'GGS_BETALLINGTYPE.NAAM'
,p_cHeight=>1
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22249386714869607427)
,p_name=>'P24_PAYMENT_DATE'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(22249385596470607425)
,p_item_source_plug_id=>wwv_flow_imp.id(22249385596470607425)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Payment Date'
,p_source=>'PAYMENT_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_and_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_on', 'FOCUS',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22249387070069607427)
,p_name=>'P24_IMAGE'
,p_source_data_type=>'BLOB'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(22249385596470607425)
,p_item_source_plug_id=>wwv_flow_imp.id(22249385596470607425)
,p_prompt=>'Image'
,p_source=>'IMAGE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>60
,p_cMaxlength=>255
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'content_disposition', 'attachment',
  'display_as', 'INLINE',
  'display_download_link', 'Y',
  'storage_type', 'DB_COLUMN')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22249387455864607428)
,p_name=>'P24_GEBRUIKER_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(22249385596470607425)
,p_item_source_plug_id=>wwv_flow_imp.id(22249385596470607425)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT id',
'FROM GGS_GEBRUIKER',
'WHERE UPPER(username) = UPPER(:APP_USER);',
''))
,p_item_default_type=>'SQL_QUERY_COLON'
,p_source=>'GEBRUIKER_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22249387864414607428)
,p_name=>'P24_BETALING_STATUS_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(22249385596470607425)
,p_item_source_plug_id=>wwv_flow_imp.id(22249385596470607425)
,p_item_default=>'1'
,p_source=>'BETALING_STATUS_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22249388309669607428)
,p_name=>'P24_AMOUNT'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(22249385596470607425)
,p_item_source_plug_id=>wwv_flow_imp.id(22249385596470607425)
,p_prompt=>'Amount'
,p_source=>'AMOUNT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(22249391299915607431)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(22249391156407607431)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(22249392080302607432)
,p_event_id=>wwv_flow_imp.id(22249391299915607431)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(22218376131824163762)
,p_name=>'New'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P24_AMOUNT'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(22218376157112163763)
,p_event_id=>wwv_flow_imp.id(22218376131824163762)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'BEGIN',
'   UPDATE GGS_BETALLING',
'   SET',
'       amount = :TOTALEKOSTEN',
'   WHERE',
'       id = :P24_ID;',
'END;',
''))
,p_attribute_03=>'P24_AMOUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(22249394164319607433)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(22249385596470607425)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Totale Kosten'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>10845335515598209694
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(22249394605013607434)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>10845335956292209695
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(22218375984171163761)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'New'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'DECLARE',
'BEGIN',
'   UPDATE GGS_BETALLING',
'   SET',
'       amount = :TOTALEKOSTEN',
'   WHERE',
'       id = :P24_ID; -- Ensure you have the correct condition',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>10814317335449766022
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(22249393777951607433)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(22249385596470607425)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Totale Kosten'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>10845335129230209694
);
end;
/
prompt --application/pages/page_00025
begin
wwv_flow_imp_page.create_page(
 p_id=>25
,p_name=>'ProductBloeiSeizoen'
,p_alias=>'PRODUCTBLOEISEIZOEN'
,p_step_title=>'ProductBloeiSeizoen'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(18555875673040645084)
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(20170380526797039371)
,p_plug_name=>'ProductBloeiSeizoen'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    p.id AS product_id,',
'    p.naam AS product_naam,',
'    LISTAGG(s.naam, '', '') WITHIN GROUP (ORDER BY s.naam) AS geselecteerde_seizoenen',
'FROM GGS_PRODUCTEN p',
'INNER JOIN GGS_BLOESEIZOEN b ON p.id = b.product_id  -- Inner join bc dan alleen zie ik alleen producten die een seizon heeft, zonder zal je alle prodcuten zien met of zonder een seizon',
'INNER JOIN GGS_SEIZOEN s ON b.seizoen_id = s.id',
'GROUP BY p.id, p.naam;',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(18545370133173270879)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:30:&SESSION.::&DEBUG.::P30_ID,P30_PRODUCT_ID:,#PRODUCT_ID#'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="apex-edit-pencil" title="Edit"></span><img src="#APEX_FILES#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_owner=>'E.LOKHAI@UNASAT.SR'
,p_internal_uid=>7141311484451873140
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18545370330968270881)
,p_db_column_name=>'PRODUCT_NAAM'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Product Naam'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(20174368622266526143)
,p_db_column_name=>'PRODUCT_ID'
,p_display_order=>30
,p_column_identifier=>'E'
,p_column_label=>'Product Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(20174368717462526144)
,p_db_column_name=>'GESELECTEERDE_SEIZOENEN'
,p_display_order=>40
,p_column_identifier=>'F'
,p_column_label=>'Geselecteerde Seizoenen'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(20170542330918322563)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'87664837'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PRODUCT_NAAM:GESELECTEERDE_SEIZOENEN:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(20170384178893039374)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(16199428455127615231)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(20170382640812039373)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(20170380526797039371)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Creer'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:29:&APP_SESSION.::&DEBUG.:29::'
,p_icon_css_classes=>'fa-plus-square'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(20170382913375039373)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(20170380526797039371)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20170383418454039374)
,p_event_id=>wwv_flow_imp.id(20170382913375039373)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(20170380526797039371)
);
end;
/
prompt --application/pages/page_00026
begin
wwv_flow_imp_page.create_page(
 p_id=>26
,p_name=>'Delivery Routes'
,p_alias=>'DELIVERY-ROUTES'
,p_step_title=>'Delivery Routes'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(18555875673040645084)
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18538884358033784168)
,p_plug_name=>'Delivery Routes'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    r.id AS route_id,',
'    r.naam AS route_naam,',
'    r.status_id AS route_status_id,  ',
'    LISTAGG(w.naam, '', '') WITHIN GROUP (ORDER BY w.naam) AS wijken',
'FROM GGS_WOONWIJK_ROUTE wr',
'JOIN GGS_ROUTE r ON wr.route_id = r.id',
'JOIN GGS_WOONWIJK w ON wr.wijk_id = w.id',
'JOIN GGS_STATUS s ON w.status_id = s.id',
'GROUP BY r.id, r.naam, r.status_id  ',
'ORDER BY r.naam;',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Delivery Routes'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(18538884517934784168)
,p_name=>'Delivery Routes'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:16:&SESSION.::&DEBUG.::P16_ROUTE_ID:#ROUTE_ID##ID#'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="apex-edit-pencil" title="Edit"></span><img src="#APEX_FILES#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_owner=>'E.LOKHAI@UNASAT.SR'
,p_internal_uid=>7134825869213386429
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18545367743556270855)
,p_db_column_name=>'ROUTE_NAAM'
,p_display_order=>10
,p_column_identifier=>'H'
,p_column_label=>'Route Naam'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(20174369016215526147)
,p_db_column_name=>'ROUTE_ID'
,p_display_order=>20
,p_column_identifier=>'M'
,p_column_label=>'Route Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(20174369161648526149)
,p_db_column_name=>'WIJKEN'
,p_display_order=>30
,p_column_identifier=>'O'
,p_column_label=>'Wijken'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(20174369966032526157)
,p_db_column_name=>'ROUTE_STATUS_ID'
,p_display_order=>40
,p_column_identifier=>'P'
,p_column_label=>'Route Status '
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(17499481057133697395)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(18538773299745094230)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'71347147'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ROUTE_ID:ROUTE_NAAM:ROUTE_STATUS_ID:WIJKEN:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18538888143602784171)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(16199428455127615231)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18538886517167784170)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(18538884358033784168)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Creer'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:14:&SESSION.::&DEBUG.:27::'
,p_icon_css_classes=>'fa-plus-square'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(18538886759510784170)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(18538884358033784168)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18538887294943784170)
,p_event_id=>wwv_flow_imp.id(18538886759510784170)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(18538884358033784168)
);
end;
/
prompt --application/pages/page_00027
begin
wwv_flow_imp_page.create_page(
 p_id=>27
,p_name=>'Creer Delivery routes'
,p_alias=>'CREER-DELIVERY-ROUTES'
,p_page_mode=>'MODAL'
,p_step_title=>'Creer Delivery routes'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>1661186590416509825
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18538877166671784161)
,p_plug_name=>'Creer Delivery routes'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       ROUTE_ID,',
'       WOONWIJK_ID',
'  from GGS_ROUTE_WOONWIJK'))
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18538879647514784164)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18538880013247784164)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(18538879647514784164)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Terug'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18538881355452784165)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(18538879647514784164)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Verwijder'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P27_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18538881789605784166)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(18538879647514784164)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Opslaan'
,p_button_position=>'NEXT'
,p_button_condition=>'P27_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18545366612167270844)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(18538879647514784164)
,p_button_name=>'Creer'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Creer'
,p_button_position=>'NEXT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18538882211178784166)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(18538879647514784164)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Creer'
,p_button_position=>'NEXT'
,p_button_condition=>'P27_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_required_patch=>wwv_flow_imp.id(16199427946544615230)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18545366855776270847)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(18538879647514784164)
,p_button_name=>'New'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'New'
,p_button_position=>'NEXT'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(18545366720830270845)
,p_branch_action=>'f?p=&APP_ID.:26:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(18545366612167270844)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18538877502636784161)
,p_name=>'P27_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(18538877166671784161)
,p_item_source_plug_id=>wwv_flow_imp.id(18538877166671784161)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id'
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18538877851673784162)
,p_name=>'P27_ROUTE_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(18538877166671784161)
,p_item_source_plug_id=>wwv_flow_imp.id(18538877166671784161)
,p_prompt=>'Route '
,p_source=>'ROUTE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'GGS_ROUTE.NAAM'
,p_cHeight=>1
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18538878327627784163)
,p_name=>'P27_WOONWIJK_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(18538877166671784161)
,p_item_source_plug_id=>wwv_flow_imp.id(18538877166671784161)
,p_prompt=>'Woonwijk '
,p_source=>'WOONWIJK_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_MANY'
,p_named_lov=>'GGS_WOONWIJK.NAAM'
,p_cSize=>30
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'fetch_on_search', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0',
  'use_defaults', 'Y')).to_clob
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(18538880115235784164)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(18538880013247784164)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18538880944541784165)
,p_event_id=>wwv_flow_imp.id(18538880115235784164)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(18538882950942784167)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(18538877166671784161)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Creer Delivery routes'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>7134824302221386428
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(18538883412415784167)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>7134824763694386428
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(17751484345194091287)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Add_DeRoute'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    -- Declare a variable to store the route_id selected in the form',
'    v_route_id NUMBER := :P27_ROUTE_ID;',
'    -- Declare a collection to hold the list of woonwijk_ids',
'    v_woonwijk_ids APEX_APPLICATION_GLOBAL.VC_ARR2;',
'BEGIN',
'    -- Split the string of woonwijk_ids (from the multi-select list) into a collection',
'    v_woonwijk_ids := APEX_UTIL.STRING_TO_TABLE(:P27_WOONWIJK_ID, '':'');',
'',
'    -- Loop through each selected woonwijk_id and insert them into the GGS_ROUTE_WOONWIJK table',
'    FOR i IN 1..v_woonwijk_ids.COUNT LOOP',
'        INSERT INTO GGS_ROUTE_WOONWIJK (route_id, woonwijk_id)',
'        VALUES (v_route_id, v_woonwijk_ids(i));',
'    END LOOP;',
'',
'    -- Commit the changes to the database (optional based on your settings)',
'    COMMIT;',
'',
'    -- Optionally, redirect or show a success message',
'    -- APEX_UTIL.REDIRECT_URL(''f?p=&APP_ID.:<report_page_id>::&SESSION.'');',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(18545366612167270844)
,p_process_success_message=>'SUCCES'
,p_internal_uid=>6347425696472693548
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(18545366827852270846)
,p_process_sequence=>70
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'New'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_route_id NUMBER := :P27_ROUTE_ID; -- The route selected in the form',
'    v_woonwijk_ids APEX_APPLICATION_GLOBAL.VC_ARR2; -- Collection for selected woonwijk_ids',
'BEGIN',
'    -- Step 1: Delete existing records for the selected route_id',
'    DELETE FROM GGS_ROUTE_WOONWIJK',
'    WHERE route_id = v_route_id;',
'',
'    -- Step 2: Split the selected woonwijk_ids into a collection',
'    v_woonwijk_ids := APEX_UTIL.STRING_TO_TABLE(:P27_WOONWIJK_ID, '':'');',
'',
'    -- Step 3: Insert new records based on the selected woonwijk_ids',
'    FOR i IN 1..v_woonwijk_ids.COUNT LOOP',
'        INSERT INTO GGS_ROUTE_WOONWIJK (route_id, woonwijk_id)',
'        VALUES (v_route_id, v_woonwijk_ids(i));',
'    END LOOP;',
'',
'    -- Commit the changes to the database (optional based on your settings)',
'    COMMIT;',
'',
'    -- Optionally, redirect the user or show a success message',
'    -- APEX_UTIL.REDIRECT_URL(''f?p=&APP_ID.:<report_page_id>::&SESSION.'');',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(18545366855776270847)
,p_internal_uid=>7141308179130873107
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(18538882583846784166)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(18538877166671784161)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Creer Delivery routes'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>7134823935125386427
);
end;
/
prompt --application/pages/page_00028
begin
wwv_flow_imp_page.create_page(
 p_id=>28
,p_name=>'ROLLEN'
,p_alias=>'ROLLEN'
,p_step_title=>'ROLLEN'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10814319422894766043)
,p_plug_name=>'ROLLEN'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>30
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select *',
'  from Rollenview'))
,p_plug_source_type=>'NATIVE_IG'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'ROLLEN'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(10814319696766766045)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'enable_multi_select', 'Y',
  'hide_control', 'N',
  'show_select_all', 'Y')).to_clob
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(10814319790641766046)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(10814319858579766047)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(10814319993236766048)
,p_name=>'NAAM'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NAAM'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Naam'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
,p_max_length=>255
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(10814320069247766049)
,p_name=>'DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DESCRIPTION'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Description'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>200
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(10814320159410766050)
,p_name=>'CREATED_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATED_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>60
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(12160349716560277001)
,p_name=>'CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>70
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(12160349891606277002)
,p_name=>'MODIFIED_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MODIFIED_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>80
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(12160349974957277003)
,p_name=>'MODIFIED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MODIFIED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>90
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(10814319540232766044)
,p_internal_uid=>10814319540232766044
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(12160634646762008902)
,p_interactive_grid_id=>wwv_flow_imp.id(10814319540232766044)
,p_static_id=>'121606347'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(12160634896650008902)
,p_report_id=>wwv_flow_imp.id(12160634646762008902)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(12160635794319008906)
,p_view_id=>wwv_flow_imp.id(12160634896650008902)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(10814319790641766046)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(12160636616689008908)
,p_view_id=>wwv_flow_imp.id(12160634896650008902)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(10814319858579766047)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(12160637541362008910)
,p_view_id=>wwv_flow_imp.id(12160634896650008902)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(10814319993236766048)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(12160638489002008912)
,p_view_id=>wwv_flow_imp.id(12160634896650008902)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(10814320069247766049)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(12160639537385008914)
,p_view_id=>wwv_flow_imp.id(12160634896650008902)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(10814320159410766050)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(12160640467597008916)
,p_view_id=>wwv_flow_imp.id(12160634896650008902)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(12160349716560277001)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(12160641347659008918)
,p_view_id=>wwv_flow_imp.id(12160634896650008902)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(12160349891606277002)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(12160642286844008920)
,p_view_id=>wwv_flow_imp.id(12160634896650008902)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(12160349974957277003)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18551771537345492134)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(16199428455127615231)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(12160350008690277004)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(10814319422894766043)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'ROLLEN - Save Interactive Grid Data_1'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>12160350008690277004
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(18277810238614752143)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Auditlog'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  v_address_id INT;',
'  v_user_id NUMBER;',
'  v_username VARCHAR2(100);',
'BEGIN',
'',
' SELECT ID INTO v_user_id',
'    FROM GGS_GEBRUIKER',
'    WHERE UPPER(USERNAME) = UPPER(:APP_USER);',
'',
'  INSERT INTO GGS_AUDIT(ACTIE,GEBRUIKER_ID,DATUM)',
'    VALUES (',
'    ''Rol Toegevoegd: '' || :NAAM || '',Omschrijving:'' || :DESCRIPTION,',
'    v_user_id,',
'    SYSTIMESTAMP',
'  );',
'  ',
'  COMMIT;',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>6873751589893354404
);
end;
/
prompt --application/pages/page_00029
begin
wwv_flow_imp_page.create_page(
 p_id=>29
,p_name=>'ProductBloeiSeizoenBewerk'
,p_alias=>'PRODUCTBLOEISEIZOENBEWERK'
,p_page_mode=>'MODAL'
,p_step_title=>'ProductBloeiSeizoenBewerk'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(20170372506939039364)
,p_plug_name=>'ProductBloeiSeizoenBewerk'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'GGS_BLOESEIZOEN'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(20170375708019039367)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(20170376133223039368)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(20170375708019039367)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Terug'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-undo-arrow'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(20170377537512039369)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(20170375708019039367)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P29_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(20170377868807039369)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(20170375708019039367)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P29_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(20170378326079039369)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(20170375708019039367)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Creer'
,p_button_position=>'NEXT'
,p_button_condition=>'P29_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_required_patch=>wwv_flow_imp.id(16199427946544615230)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(20174368309204526140)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(20170375708019039367)
,p_button_name=>'Creer'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Creer'
,p_button_position=>'NEXT'
,p_icon_css_classes=>'fa-plus-square'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(20174368407668526141)
,p_branch_action=>'f?p=&APP_ID.:25:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18545370749477270886)
,p_name=>'P29_PRODUCT_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(20170372506939039364)
,p_item_source_plug_id=>wwv_flow_imp.id(20170372506939039364)
,p_prompt=>'Product '
,p_source=>'PRODUCT_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'PRODUCTS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT naam, id FROM GGS_PRODUCTEN ORDER BY naam;',
''))
,p_cHeight=>1
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18545370931187270887)
,p_name=>'P29_SEIZOEN_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(20170372506939039364)
,p_item_source_plug_id=>wwv_flow_imp.id(20170372506939039364)
,p_prompt=>'Seizoen '
,p_source=>'SEIZOEN_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'SEASONS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT naam, id FROM GGS_SEIZOEN ORDER BY naam;',
''))
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1')).to_clob
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18545371043083270888)
,p_name=>'P29_RANKING'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(20170372506939039364)
,p_item_source_plug_id=>wwv_flow_imp.id(20170372506939039364)
,p_source=>'RANKING'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(20170372875113039364)
,p_name=>'P29_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(20170372506939039364)
,p_item_source_plug_id=>wwv_flow_imp.id(20170372506939039364)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id'
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(20170376173612039368)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(20170376133223039368)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20170376983179039368)
,p_event_id=>wwv_flow_imp.id(20170376173612039368)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(20170379074396039370)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(20170372506939039364)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form ProductBloeiSeizoenBewerk'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_required_patch=>wwv_flow_imp.id(16199427946544615230)
,p_internal_uid=>8766320425674641631
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(20170379500326039370)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_attribute_02=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_required_patch=>wwv_flow_imp.id(16199427946544615230)
,p_internal_uid=>8766320851604641631
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(18545370551982270884)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'New'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    TYPE season_array IS TABLE OF NUMBER INDEX BY PLS_INTEGER; -- Define custom array type',
'    v_season_rry season_array;',
'    v_count PLS_INTEGER;',
'    v_user_id NUMBER;',
'    v_season_name VARCHAR2(100);',
'    v_product_name VARCHAR2(100);',
'BEGIN',
'    -- Haal de user ID op',
'    SELECT ID INTO v_user_id',
'    FROM GGS_GEBRUIKER',
'    WHERE UPPER(USERNAME) = UPPER(:APP_USER);',
'',
'    -- Haal de productnaam op',
'    SELECT NAAM INTO v_product_name',
'    FROM GGS_PRODUCTEN',
'    WHERE ID = :P29_PRODUCT_ID;',
'',
'    -- Zet de gescheiden waarden om naar een array van nummers',
'    SELECT TO_NUMBER(REGEXP_SUBSTR(:P29_SEIZOEN_ID, ''[^:]+'', 1, LEVEL))',
'    BULK COLLECT INTO v_season_rry',
'    FROM dual',
'    CONNECT BY LEVEL <= REGEXP_COUNT(:P29_SEIZOEN_ID, '':'') + 1;',
'',
unistr('    -- Loop door de seizoen_id\2019s'),
'    FOR i IN 1 .. v_season_rry.COUNT LOOP',
'        -- Controleer of de combinatie al bestaat',
'        SELECT COUNT(*) INTO v_count',
'        FROM GGS_BLOESEIZOEN',
'        WHERE product_id = :P29_PRODUCT_ID AND seizoen_id = v_season_rry(i);',
'',
'        -- Haal de seizoennaam op',
'        SELECT NAAM INTO v_season_name',
'        FROM GGS_SEIZOEN',
'        WHERE ID = v_season_rry(i);',
'',
'        -- Voeg alleen toe als de combinatie nog niet bestaat',
'        IF v_count = 0 THEN',
'            INSERT INTO GGS_BLOESEIZOEN (product_id, seizoen_id)',
'            VALUES (:P29_PRODUCT_ID, v_season_rry(i));',
'',
unistr('            -- Voeg auditlog toe met namen in plaats van ID\2019s'),
'            INSERT INTO GGS_AUDIT(ACTIE, GEBRUIKER_ID, DATUM)',
'            VALUES (',
'                ''Seizoen toegevoegd: Product "'' || v_product_name || ''", Seizoen "'' || v_season_name || ''"'',',
'                v_user_id,',
'                SYSTIMESTAMP',
'            );',
'        END IF;',
'    END LOOP;',
'',
'    COMMIT;',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Niet gelukt record toe tevoegen'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(20174368309204526140)
,p_process_success_message=>'Succesful '
,p_internal_uid=>7141311903260873145
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(20170378725779039370)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(20170372506939039364)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form ProductBloeiSeizoenBewerk'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>8766320077057641631
);
end;
/
prompt --application/pages/page_00030
begin
wwv_flow_imp_page.create_page(
 p_id=>30
,p_name=>'EditBloeiProduct'
,p_alias=>'EDITBLOEIPRODUCT'
,p_page_mode=>'MODAL'
,p_step_title=>'EditBloeiProduct'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(20176113466953594259)
,p_plug_name=>'EditBloeiProduct'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'GGS_BLOESEIZOEN'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(20176117189172594263)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(20176117565452594264)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(20176117189172594263)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Terug'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-undo-arrow'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(20176118997076594265)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(20176117189172594263)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P30_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(20176119375780594265)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(20176117189172594263)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P30_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_required_patch=>wwv_flow_imp.id(16199427946544615230)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(20176119821266594265)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(20176117189172594263)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_condition=>'P30_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_required_patch=>wwv_flow_imp.id(16199427946544615230)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(20174368921832526146)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(20176117189172594263)
,p_button_name=>'Opslaan'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Opslaan'
,p_button_position=>'NEXT'
,p_icon_css_classes=>'fa-plus-square'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(20174368790516526145)
,p_branch_name=>'Terug'
,p_branch_action=>'f?p=&APP_ID.:25:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(20176113757045594259)
,p_name=>'P30_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(20176113466953594259)
,p_item_source_plug_id=>wwv_flow_imp.id(20176113466953594259)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id'
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(20176114189261594260)
,p_name=>'P30_PRODUCT_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(20176113466953594259)
,p_item_source_plug_id=>wwv_flow_imp.id(20176113466953594259)
,p_prompt=>'Product '
,p_source=>'PRODUCT_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'PRODUCTS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT naam, id FROM GGS_PRODUCTEN ORDER BY naam;',
''))
,p_cHeight=>1
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(20176114901088594261)
,p_name=>'P30_SEIZOEN_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(20176113466953594259)
,p_item_source_plug_id=>wwv_flow_imp.id(20176113466953594259)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT seizoen_id',
'FROM GGS_BLOESEIZOEN',
'WHERE product_id = :P30_PRODUCT_ID',
''))
,p_item_default_type=>'SQL_QUERY_COLON'
,p_prompt=>'Seizoen Id'
,p_source=>'SEIZOEN_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'SEASONS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT naam, id FROM GGS_SEIZOEN ORDER BY naam;',
''))
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1')).to_clob
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(20176115574826594261)
,p_name=>'P30_RANKING'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(20176113466953594259)
,p_item_source_plug_id=>wwv_flow_imp.id(20176113466953594259)
,p_source=>'RANKING'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(20176117734075594264)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(20176117565452594264)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20176118545491594265)
,p_event_id=>wwv_flow_imp.id(20176117734075594264)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(20176120581521594266)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(20176113466953594259)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form EditBloeiProduct'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_required_patch=>wwv_flow_imp.id(16199427946544615230)
,p_internal_uid=>8772061932800196527
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(20176121036517594266)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>8772062387796196527
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(20174368479224526142)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'New'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    TYPE season_array IS TABLE OF NUMBER INDEX BY PLS_INTEGER; -- Define custom array type',
'    v_season_rry season_array;',
'    v_count PLS_INTEGER;',
'BEGIN',
'    -- Convert colons zodat ze kunnen opslaan',
'    SELECT TO_NUMBER(REGEXP_SUBSTR(:P30_SEIZOEN_ID, ''[^:]+'', 1, LEVEL))',
'    BULK COLLECT INTO v_season_rry',
'    FROM dual',
'    CONNECT BY LEVEL <= REGEXP_COUNT(:P30_SEIZOEN_ID, '':'') + 1;',
'',
'    -- delete vorige om nieuwe op teslaan',
'    DELETE FROM GGS_BLOESEIZOEN WHERE product_id = :P30_PRODUCT_ID;',
'',
'     -- Loop through',
'    FOR i IN 1 .. v_season_rry.COUNT LOOP',
'        -- Check als de combination als bestaat',
'        SELECT COUNT(*) INTO v_count',
'        FROM GGS_BLOESEIZOEN',
'        WHERE product_id = :P30_PRODUCT_ID AND seizoen_id = v_season_rry(i);',
'',
'        -- Only insert als combo niet bestaat',
'        IF v_count = 0 THEN',
'            INSERT INTO GGS_BLOESEIZOEN (product_id, seizoen_id)',
'            VALUES (:P30_PRODUCT_ID, v_season_rry(i)); -- Set status_id to active bc bij create is het standaard actve',
'        END IF;',
'    END LOOP;',
'',
'    COMMIT;',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(20174368921832526146)
,p_internal_uid=>8770309830503128403
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(20176120205863594266)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(20176113466953594259)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form EditBloeiProduct'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>8772061557142196527
);
end;
/
prompt --application/pages/page_00031
begin
wwv_flow_imp_page.create_page(
 p_id=>31
,p_name=>'KlantenView'
,p_alias=>'KLANTENVIEW'
,p_step_title=>'KlantenView'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10814317857327766027)
,p_plug_name=>'KlantenView'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT * FROM KLANTENVIEW;',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(10814317953343766028)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'E.LOKHAI@UNASAT.SR'
,p_internal_uid=>10814317953343766028
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10814318061105766029)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10814318118159766030)
,p_db_column_name=>'NAAM'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Naam'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10814318275366766031)
,p_db_column_name=>'FAMILYNAAM'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Family naam'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10814318308562766032)
,p_db_column_name=>'WACHTWOORD'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Wachtwoord'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10814318468496766033)
,p_db_column_name=>'ROL_ID'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Rol Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10814318549870766034)
,p_db_column_name=>'STATUS_ID'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Status '
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(17499481057133697395)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10814318685327766035)
,p_db_column_name=>'ADRES_ID'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Adres '
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(17499481790548697396)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10814318706037766036)
,p_db_column_name=>'USERNAME'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Username'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10814318828955766037)
,p_db_column_name=>'EMAIL'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Email'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10814318974338766038)
,p_db_column_name=>'CREATED_DATE'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Created Date'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10814319078022766039)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10814319104079766040)
,p_db_column_name=>'MODIFIED_DATE'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Modified Date'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10814319248397766041)
,p_db_column_name=>'MODIFIED_BY'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Modified By'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10814319376164766042)
,p_db_column_name=>'DELETED'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Deleted'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(12159872211345975149)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'121598723'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'NAAM:FAMILYNAAM:ADRES_ID:USERNAME:EMAIL:STATUS_ID:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(20198932412458466040)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(16199428455127615231)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
end;
/
prompt --application/pages/page_00032
begin
wwv_flow_imp_page.create_page(
 p_id=>32
,p_name=>'Rollen_Privileges'
,p_alias=>'ROLLEN-PRIVILEGES'
,p_step_title=>'Rollen_Privileges'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18552806829804521988)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(16199428455127615231)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18552807515946521991)
,p_plug_name=>'Rollen_Privileges'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>20
,p_query_type=>'TABLE'
,p_query_table=>'GSS_AUT_AUT_RLE_PVE'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IG'
,p_prn_page_header=>'Rollen_Privileges'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(18552808848062521992)
,p_name=>'APEX$ROW_SELECTOR'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'enable_multi_select', 'Y',
  'hide_control', 'N',
  'show_select_all', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(18552809302163521992)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_label=>'Actions'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
,p_value_alignment=>'CENTER'
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(18552810340741521997)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_enable_filter=>false
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(18552811254207521998)
,p_name=>'ROLE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROLE_ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Role '
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(17499480381851697394)
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(18552812259941521998)
,p_name=>'PVE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PVE_ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'privileges'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(18552819279047522003)
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(18552813266337521999)
,p_name=>'RPE_VALID_FROM'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RPE_VALID_FROM'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Valid From'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(18552814293663522000)
,p_name=>'RPE_VALID_UNTIL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RPE_VALID_UNTIL'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Valid Until'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(18552815337393522000)
,p_name=>'RPE_CREATED_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RPE_CREATED_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>80
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(18552816276563522001)
,p_name=>'RPE_CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RPE_CREATED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>90
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(18552817425430522002)
,p_name=>'RPE_MODIFIED_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RPE_MODIFIED_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>100
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(18552818419773522002)
,p_name=>'RPE_MODIFIED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RPE_MODIFIED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>110
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(18552807961254521991)
,p_internal_uid=>7148749312533124252
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(18552808364677521991)
,p_interactive_grid_id=>wwv_flow_imp.id(18552807961254521991)
,p_static_id=>'71487498'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(18552808615115521992)
,p_report_id=>wwv_flow_imp.id(18552808364677521991)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(18552809685003521993)
,p_view_id=>wwv_flow_imp.id(18552808615115521992)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(18552809302163521992)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(18552810730416521997)
,p_view_id=>wwv_flow_imp.id(18552808615115521992)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(18552810340741521997)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(18552811716333521998)
,p_view_id=>wwv_flow_imp.id(18552808615115521992)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(18552811254207521998)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(18552812731085521999)
,p_view_id=>wwv_flow_imp.id(18552808615115521992)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(18552812259941521998)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(18552813699216521999)
,p_view_id=>wwv_flow_imp.id(18552808615115521992)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(18552813266337521999)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(18552814724438522000)
,p_view_id=>wwv_flow_imp.id(18552808615115521992)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(18552814293663522000)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(18552815734991522001)
,p_view_id=>wwv_flow_imp.id(18552808615115521992)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(18552815337393522000)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(18552816684771522001)
,p_view_id=>wwv_flow_imp.id(18552808615115521992)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(18552816276563522001)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(18552817810991522002)
,p_view_id=>wwv_flow_imp.id(18552808615115521992)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(18552817425430522002)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(18552818759778522003)
,p_view_id=>wwv_flow_imp.id(18552808615115521992)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(18552818419773522002)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(18552820473855522005)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(18552807515946521991)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Rollen_Privileges - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>7148761825134124266
);
end;
/
prompt --application/pages/page_00033
begin
wwv_flow_imp_page.create_page(
 p_id=>33
,p_name=>'ProcessToAddToCart'
,p_alias=>'BENUZEKER'
,p_page_mode=>'MODAL'
,p_step_title=>'Bent U zeker?'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(20174372718299526184)
,p_plug_name=>'Add to cart'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(20952672209487875084)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_location=>null
,p_menu_id=>wwv_flow_imp.id(16199428455127615231)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
,p_required_patch=>wwv_flow_imp.id(16199427946544615230)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(20954153940183751346)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(20174372718299526184)
,p_button_name=>'New_1'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Terug'
,p_button_redirect_url=>'f?p=&APP_ID.:42:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-undo-arrow'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(20954153763582751345)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(20174372718299526184)
,p_button_name=>'Zeker'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Plaats in mandje'
,p_icon_css_classes=>'fa-shopping-cart'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(20954153511324751342)
,p_branch_name=>'Go To Page 42'
,p_branch_action=>'f?p=&APP_ID.:46:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(20174372817426526185)
,p_name=>'P_PRODUCT_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(20174372718299526184)
,p_item_default=>'P_PRODUCT_ID'
,p_item_default_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(20954154134949751348)
,p_name=>'P33_NEW'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(20174372718299526184)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT G.ID,',
'',
'       G.USERNAME',
'FROM GGS_GEBRUIKER G',
'WHERE UPPER(USERNAME) = UPPER(:APP_USER);',
''))
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(20954154276688751350)
,p_name=>'P33_NEW_1'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(20174372718299526184)
,p_prompt=>'Aantal'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'min_value', '1',
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(20954153406219751341)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'New'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'DECLARE',
'    v_product_id NUMBER;  ',
'    v_user_id NUMBER;',
'    v_aantal NUMBER;',
'    v_product_name VARCHAR2(100);',
'    v_username VARCHAR2(100);',
'BEGIN',
'    ',
'    v_user_id := :P33_NEW;',
'    v_product_id := :P_PRODUCT_ID;',
'    v_aantal := :P33_NEW_1;',
'',
'   ',
'    SELECT NAAM INTO v_product_name',
'    FROM GGS_PRODUCTEN',
'    WHERE ID = v_product_id;',
'',
'   ',
'    SELECT USERNAME INTO v_username',
'    FROM GGS_GEBRUIKER',
'    WHERE ID = v_user_id;',
'',
'   ',
'    ADD_TO_CART_SIMPLE(v_user_id, v_product_id, v_aantal);',
'',
'',
'    INSERT INTO GGS_AUDIT(ACTIE, GEBRUIKER_ID, DATUM)',
'    VALUES (',
'        ''Product toegevoegd aan winkelwagen: "'' || v_product_name || ''" ('' || v_aantal || '' stuks)'',',
'        v_user_id,',
'        SYSTIMESTAMP',
'    );',
'',
'    COMMIT;',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(20954153763582751345)
,p_internal_uid=>9550094757498353602
);
end;
/
prompt --application/pages/page_00034
begin
wwv_flow_imp_page.create_page(
 p_id=>34
,p_name=>'producten'
,p_alias=>'PRODUCTENVIEW'
,p_step_title=>'producten'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(18555875673040645084)
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(17820780341167239550)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(16199428455127615231)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(17820781018207239551)
,p_plug_name=>'Producten'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    p."ID",',
'    p."NAAM",',
'    p."PRIJS",',
'    p."VOORRAAD",',
'    c."NAAM" AS "CATEGORIE",',
'    s."NAAM" AS "STATUS",',
'    sys.dbms_lob.getlength(p."IMAGE") AS "IMAGE",',
'    ''Some Value'' AS "NEW_COLUMN"',
'FROM "GGS_PRODUCTEN" p',
'LEFT JOIN "GGS_CATEGORIEEN" c ON p."CATEGORIEEN_ID" = c."ID"',
'LEFT JOIN "GGS_STATUS" s ON p."STATUS_ID" = s."ID";',
'',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(18154465618334480648)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'O.SAMUELS@UNASAT.SR'
,p_internal_uid=>6750406969613082909
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18154465704892480649)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18154465841626480650)
,p_db_column_name=>'NAAM'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Naam'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18154465857425480651)
,p_db_column_name=>'PRIJS'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Prijs'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18154465980570480652)
,p_db_column_name=>'VOORRAAD'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Voorraad'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18154466141872480653)
,p_db_column_name=>'CATEGORIE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Categorie'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18154466182864480654)
,p_db_column_name=>'STATUS'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18154466294065480655)
,p_db_column_name=>'IMAGE'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Image'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'IMAGE:GGS_PRODUCTEN:IMAGE:ID::::::::'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(18154466381279480656)
,p_db_column_name=>'NEW_COLUMN'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Bewerken'
,p_column_link=>'f?p=&APP_ID.:36:&SESSION.::&DEBUG.::P36_ID:#ID#'
,p_column_linktext=>'<img src="#APEX_FILES#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(18154433815657790316)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'67503752'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'NEW_COLUMN:NAAM:PRIJS:VOORRAAD:CATEGORIE:STATUS:IMAGE:'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(17751482130342091265)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(17820781018207239551)
,p_button_name=>'ADD'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Voeg niew product toe'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:13:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-plus-square'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12931174406954715510)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(17820781018207239551)
,p_button_name=>'Voegladingtoe'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Voeg vooraad'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-plus-square'
);
end;
/
prompt --application/pages/page_00035
begin
wwv_flow_imp_page.create_page(
 p_id=>35
,p_name=>'VoorraadView'
,p_alias=>'VOORRAADVIEW'
,p_step_title=>'VoorraadView'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(20199505364774772339)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(16199428455127615231)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(20199506092056772341)
,p_plug_name=>'VoorraadView'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    p."ID",',
'    p."NAAM",',
'    p."PRIJS",',
'    p."VOORRAAD",',
'    c."NAAM" AS "CATEGORIE",',
'    s."NAAM" AS "STATUS",',
'    sys.dbms_lob.getlength(p."IMAGE") AS "IMAGE"',
'FROM "GGS_PRODUCTEN" p',
'LEFT JOIN "GGS_CATEGORIEEN" c ON p."CATEGORIEEN_ID" = c."ID"',
'LEFT JOIN "GGS_STATUS" s ON p."STATUS_ID" = s."ID";',
'',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'VoorraadView'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(20199506241905772341)
,p_name=>'VoorraadView'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'E.LOKHAI@UNASAT.SR'
,p_internal_uid=>8795447593184374602
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(20199506865596772343)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(20199507305857772343)
,p_db_column_name=>'NAAM'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Naam'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(20199507674618772343)
,p_db_column_name=>'PRIJS'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Prijs'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(20199508146407772344)
,p_db_column_name=>'VOORRAAD'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Voorraad'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(20199508532530772344)
,p_db_column_name=>'CATEGORIE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Categorie'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(20199508908694772345)
,p_db_column_name=>'STATUS'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(20199509261143772345)
,p_db_column_name=>'IMAGE'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Image'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'IMAGE:GGS_PRODUCTEN:IMAGE:ID::::::::'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(20199245304951502449)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'87951867'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'NAAM:PRIJS:VOORRAAD:CATEGORIE:STATUS:IMAGE:'
);
end;
/
prompt --application/pages/page_00036
begin
wwv_flow_imp_page.create_page(
 p_id=>36
,p_name=>'Bewerk Product'
,p_alias=>'BEWERKPRODUCT'
,p_page_mode=>'MODAL'
,p_step_title=>'Bewerk Product'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(17822751585726599572)
,p_plug_name=>'BewerkProduct'
,p_title=>'Bewerk Product'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'GGS_PRODUCTEN'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(17822750158935599434)
,p_plug_name=>'Breadcrumb'
,p_parent_plug_id=>wwv_flow_imp.id(17822751585726599572)
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_menu_id=>wwv_flow_imp.id(16199428455127615231)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
,p_required_patch=>wwv_flow_imp.id(16199427946544615230)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(17822757836784599579)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(17822751585726599572)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Opslaan'
,p_button_position=>'CHANGE'
,p_button_condition=>'P36_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-edit'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(17822756804371599578)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(17822751585726599572)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Terug'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:34:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-undo-arrow'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(17822758211832599580)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(17822751585726599572)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Creer'
,p_button_position=>'CREATE'
,p_button_condition=>'P36_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_icon_css_classes=>'fa-plus-square'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(17822757430137599579)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(17822751585726599572)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Verwijder'
,p_button_position=>'DELETE'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P36_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-trash'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(17822758510771599580)
,p_branch_name=>'Go To Page 1'
,p_branch_action=>'f?p=&APP_ID.:34:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17822751892030599573)
,p_name=>'P36_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(17822751585726599572)
,p_item_source_plug_id=>wwv_flow_imp.id(17822751585726599572)
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17822752265227599573)
,p_name=>'P36_NAAM'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(17822751585726599572)
,p_item_source_plug_id=>wwv_flow_imp.id(17822751585726599572)
,p_prompt=>'Naam'
,p_source=>'NAAM'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17822752720780599574)
,p_name=>'P36_PRIJS'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(17822751585726599572)
,p_item_source_plug_id=>wwv_flow_imp.id(17822751585726599572)
,p_prompt=>'Prijs'
,p_source=>'PRIJS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17822753092668599574)
,p_name=>'P36_VOORRAAD'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(17822751585726599572)
,p_item_source_plug_id=>wwv_flow_imp.id(17822751585726599572)
,p_prompt=>'Voorraad'
,p_source=>'VOORRAAD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17822753465075599575)
,p_name=>'P36_CATEGORIEEN_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(17822751585726599572)
,p_item_source_plug_id=>wwv_flow_imp.id(17822751585726599572)
,p_prompt=>'Categorieen '
,p_source=>'CATEGORIEEN_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'CATEGORIE'
,p_cHeight=>1
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17822753919498599575)
,p_name=>'P36_STATUS_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(17822751585726599572)
,p_item_source_plug_id=>wwv_flow_imp.id(17822751585726599572)
,p_prompt=>'Status '
,p_source=>'STATUS_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'GGS_STATUS.NAAM'
,p_cHeight=>1
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17822754265820599576)
,p_name=>'P36_IMAGE'
,p_source_data_type=>'BLOB'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(17822751585726599572)
,p_item_source_plug_id=>wwv_flow_imp.id(17822751585726599572)
,p_prompt=>'Image'
,p_source=>'IMAGE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>60
,p_cMaxlength=>255
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'content_disposition', 'attachment',
  'display_as', 'INLINE',
  'display_download_link', 'Y',
  'storage_type', 'DB_COLUMN')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(17822759402056599581)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(17822751585726599572)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form BewerkProduct'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_process_error_message=>'Niet gelukt te bewerken'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Succesvol bewerkt'
,p_internal_uid=>6418700753335201842
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(17822759036445599580)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(17822751585726599572)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form BewerkProduct'
,p_internal_uid=>6418700387724201841
);
end;
/
prompt --application/pages/page_00037
begin
wwv_flow_imp_page.create_page(
 p_id=>37
,p_name=>'Waardebon beheer'
,p_alias=>'WAARDEBON-BEHEER'
,p_step_title=>'Waardebon beheer'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(18555875673040645084)
,p_protection_level=>'C'
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(13506143154565527544)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(16199428455127615231)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12931177077701715536)
,p_button_sequence=>10
,p_button_name=>'New'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Korting beheer'
,p_button_redirect_url=>'f?p=&APP_ID.:62:&SESSION.::&DEBUG.:::'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12931177195900715537)
,p_button_sequence=>20
,p_button_name=>'Promocode'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Promocode beheer'
,p_button_redirect_url=>'f?p=&APP_ID.:40:&SESSION.::&DEBUG.:::'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
end;
/
prompt --application/pages/page_00038
begin
wwv_flow_imp_page.create_page(
 p_id=>38
,p_name=>'Personal page'
,p_alias=>'PERSONAL-PAGE'
,p_page_mode=>'MODAL'
,p_step_title=>'Personal page'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18554611523588582845)
,p_plug_name=>'Personal page'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    G.ID,',
'    G.NAAM AS "Voornaam",',
'    G.FAMILYNAAM AS "Achternaam",',
'    G.WACHTWOORD AS "Wachtwoord",',
'    G.STATUS_ID,',
'    G.ADRES_ID,',
'    G.USERNAME,',
'    G.EMAIL,',
'    A.ADRES,',
'    A.HUISNUMMER,',
'    A.WOONWIJK_ID',
'FROM GGS_GEBRUIKER G',
'JOIN GGS_ADRES A ON G.ADRES_ID = A.ID',
'WHERE UPPER(G.USERNAME) = UPPER(:APP_USER);',
''))
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18554619562643582852)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18554619950595582853)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(18554619562643582852)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18554621389990582854)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(18554619562643582852)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P38_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18554621783945582854)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(18554619562643582852)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P38_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18554622202173582854)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(18554619562643582852)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P38_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18554611851812582845)
,p_name=>'P38_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(18554611523588582845)
,p_item_source_plug_id=>wwv_flow_imp.id(18554611523588582845)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id'
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18554612327530582846)
,p_name=>'P38_VOORNAAM'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(18554611523588582845)
,p_item_source_plug_id=>wwv_flow_imp.id(18554611523588582845)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Voornaam'
,p_source=>'Voornaam'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18554612718502582847)
,p_name=>'P38_ACHTERNAAM'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(18554611523588582845)
,p_item_source_plug_id=>wwv_flow_imp.id(18554611523588582845)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Achternaam'
,p_source=>'Achternaam'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18554613094233582847)
,p_name=>'P38_WACHTWOORD'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(18554611523588582845)
,p_item_source_plug_id=>wwv_flow_imp.id(18554611523588582845)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Wachtwoord'
,p_source=>'Wachtwoord'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18554613495881582847)
,p_name=>'P38_STATUS_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(18554611523588582845)
,p_item_source_plug_id=>wwv_flow_imp.id(18554611523588582845)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Status Id'
,p_source=>'STATUS_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18554613908106582848)
,p_name=>'P38_ADRES_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(18554611523588582845)
,p_item_source_plug_id=>wwv_flow_imp.id(18554611523588582845)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Adres Id'
,p_source=>'ADRES_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18554614298093582848)
,p_name=>'P38_USERNAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(18554611523588582845)
,p_item_source_plug_id=>wwv_flow_imp.id(18554611523588582845)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Username'
,p_source=>'USERNAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18554614733085582849)
,p_name=>'P38_EMAIL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(18554611523588582845)
,p_item_source_plug_id=>wwv_flow_imp.id(18554611523588582845)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Email'
,p_source=>'EMAIL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18554615099570582849)
,p_name=>'P38_ADRES'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(18554611523588582845)
,p_item_source_plug_id=>wwv_flow_imp.id(18554611523588582845)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Adres'
,p_source=>'ADRES'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18554615476264582849)
,p_name=>'P38_HUISNUMMER'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(18554611523588582845)
,p_item_source_plug_id=>wwv_flow_imp.id(18554611523588582845)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Huisnummer'
,p_source=>'HUISNUMMER'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18554615946093582850)
,p_name=>'P38_WOONWIJK_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(18554611523588582845)
,p_item_source_plug_id=>wwv_flow_imp.id(18554611523588582845)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Woonwijk Id'
,p_source=>'WOONWIJK_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(18554620052759582853)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(18554619950595582853)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18554620907425582853)
,p_event_id=>wwv_flow_imp.id(18554620052759582853)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(18554623027264582855)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(18554611523588582845)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Personal page'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>7150564378543185116
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(18554623396362582855)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>7150564747641185116
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(18554622575332582854)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(18554611523588582845)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Personal page'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>7150563926611185115
);
end;
/
prompt --application/pages/page_00039
begin
wwv_flow_imp_page.create_page(
 p_id=>39
,p_name=>'Views'
,p_alias=>'VIEWS'
,p_step_title=>'Views'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(18555875673040645084)
,p_protection_level=>'C'
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(13511414101299859096)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(16199428455127615231)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12931178321158715549)
,p_button_sequence=>10
,p_button_name=>'New'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Klanten Bezichten'
,p_button_redirect_url=>'f?p=&APP_ID.:31:&SESSION.::&DEBUG.:::'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12931178471142715550)
,p_button_sequence=>20
,p_button_name=>'New_1'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Voorraad Bezichten'
,p_button_redirect_url=>'f?p=&APP_ID.:35:&SESSION.::&DEBUG.:::'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(15087914400733051722)
,p_button_sequence=>30
,p_button_name=>'New_1_1'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Meet Verkochte Goederen Bezichten'
,p_button_redirect_url=>'f?p=&APP_ID.:61:&SESSION.::&DEBUG.:::'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
end;
/
prompt --application/pages/page_00040
begin
wwv_flow_imp_page.create_page(
 p_id=>40
,p_name=>'PromoCode'
,p_alias=>'PROMOCODE'
,p_step_title=>'PromoCode'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(20200518970962819649)
,p_plug_name=>'PromoCode'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_query_type=>'TABLE'
,p_query_table=>'GGS_PROMOCODE'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IG'
,p_prn_page_header=>'PromoCode'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(20200520309985819650)
,p_name=>'APEX$LINK'
,p_source_type=>'NONE'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_LINK'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>10
,p_value_alignment=>'CENTER'
,p_link_target=>'f?p=&APP_ID.:41:&APP_SESSION.::&DEBUG.:RP,41:P41_ID:\&ID.\'
,p_link_text=>'<img src="#APEX_FILES#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(20200521318667819651)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>20
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_enable_filter=>false
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(20200522283665819652)
,p_name=>'CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CODE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Code'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'send_on_page_submit', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
,p_max_length=>50
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(20200523297443819653)
,p_name=>'BEDRAG'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BEDRAG'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Bedrag'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>40
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(20200524294734819653)
,p_name=>'STATUS_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATUS_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Status '
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(17499481057133697395)
,p_lov_display_extra=>false
,p_lov_display_null=>false
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(20200519494892819649)
,p_internal_uid=>8796460846171421910
,p_is_editable=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(20200519850845819649)
,p_interactive_grid_id=>wwv_flow_imp.id(20200519494892819649)
,p_static_id=>'87964613'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(20200520125988819650)
,p_report_id=>wwv_flow_imp.id(20200519850845819649)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(20200520706120819651)
,p_view_id=>wwv_flow_imp.id(20200520125988819650)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(20200520309985819650)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(20200521711007819652)
,p_view_id=>wwv_flow_imp.id(20200520125988819650)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(20200521318667819651)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(20200522667623819652)
,p_view_id=>wwv_flow_imp.id(20200520125988819650)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(20200522283665819652)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(20200523673003819653)
,p_view_id=>wwv_flow_imp.id(20200520125988819650)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(20200523297443819653)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(20200524678893819653)
,p_view_id=>wwv_flow_imp.id(20200520125988819650)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(20200524294734819653)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(20200527274894819656)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(16199428455127615231)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(20200525649427819654)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(20200518970962819649)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Creer'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:41:&APP_SESSION.::&DEBUG.:41::'
,p_icon_css_classes=>'fa-plus-square'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(20200526043549819655)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(20200518970962819649)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20200526515056819655)
,p_event_id=>wwv_flow_imp.id(20200526043549819655)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(20200518970962819649)
);
end;
/
prompt --application/pages/page_00041
begin
wwv_flow_imp_page.create_page(
 p_id=>41
,p_name=>'CreatePromoCode'
,p_alias=>'CREATEPROMOCODE'
,p_page_mode=>'MODAL'
,p_step_title=>'CreatePromoCode'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(20200511051903819640)
,p_plug_name=>'CreatePromoCode'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'GGS_PROMOCODE'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(20200514196652819644)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(20200514581555819644)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(20200514196652819644)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Terug'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-undo-arrow'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(20200515991410819646)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(20200514196652819644)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Verwijder'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P41_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-trash'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(20200516370602819646)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(20200514196652819644)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Opslaan'
,p_button_position=>'NEXT'
,p_button_condition=>'P41_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-edit'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(20200516843635819646)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(20200514196652819644)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Creer'
,p_button_position=>'NEXT'
,p_button_condition=>'P41_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_icon_css_classes=>'fa-plus-square'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(20200511419990819641)
,p_name=>'P41_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(20200511051903819640)
,p_item_source_plug_id=>wwv_flow_imp.id(20200511051903819640)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id'
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(20200511805973819641)
,p_name=>'P41_CODE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(20200511051903819640)
,p_item_source_plug_id=>wwv_flow_imp.id(20200511051903819640)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Code'
,p_source=>'CODE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(20200512235740819642)
,p_name=>'P41_BEDRAG'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(20200511051903819640)
,p_item_source_plug_id=>wwv_flow_imp.id(20200511051903819640)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Bedrag'
,p_source=>'BEDRAG'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(20200512552068819642)
,p_name=>'P41_STATUS_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(20200511051903819640)
,p_item_source_plug_id=>wwv_flow_imp.id(20200511051903819640)
,p_prompt=>'Status '
,p_source=>'STATUS_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'GGS_STATUS.NAAM'
,p_cHeight=>1
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(20200514675851819644)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(20200514581555819644)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20200515532836819645)
,p_event_id=>wwv_flow_imp.id(20200514675851819644)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(20200517635143819647)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(20200511051903819640)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form CreatePromoCode'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>8796458986422421908
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(20200518003182819647)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>8796459354461421908
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(20200517237145819646)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(20200511051903819640)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form CreatePromoCode'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>8796458588424421907
);
end;
/
prompt --application/pages/page_00042
begin
wwv_flow_imp_page.create_page(
 p_id=>42
,p_name=>'catalog'
,p_alias=>'CATALOG'
,p_step_title=>'catalog'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'24'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(20462690781187786164)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(16199428455127615231)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12931177483402715540)
,p_plug_name=>'New'
,p_parent_plug_id=>wwv_flow_imp.id(20462690781187786164)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_display_point=>'SMART_FILTERS'
,p_location=>null
,p_plug_source_type=>'NATIVE_SMART_FILTERS'
,p_filtered_region_id=>wwv_flow_imp.id(20462691480461786165)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'compact_numbers_threshold', '10000',
  'more_filters_suggestion_chip', 'N',
  'show_total_row_count', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(20462691480461786165)
,p_plug_name=>'catalog'
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2072724515482255512
,p_plug_display_sequence=>30
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT "ID",',
'       "NAAM",',
'       "PRIJS" || '' SRD'' AS "PRIJS",',
'       "VOORRAAD",',
'       "CATEGORIEEN_ID",',
'       (SELECT l1."NAAM" FROM "GGS_CATEGORIEEN" l1 WHERE l1."ID" = m."CATEGORIEEN_ID") AS "CATEGORIEEN_ID_L$1",',
'       "STATUS_ID",',
'       (SELECT l2."NAAM" FROM "GGS_STATUS" l2 WHERE l2."ID" = m."STATUS_ID") AS "STATUS_ID_L$2",',
'       "IMAGE"',
'FROM "GGS_PRODUCTEN" m',
'WHERE "STATUS_ID" = 1;',
''))
,p_query_order_by_type=>'ITEM'
,p_query_order_by=>'{ "itemName": "P42_ORDER_BY", "orderBys": [{"key":"NAAM","expr":"\"NAAM\" asc"},{"key":"PRIJS","expr":"\"PRIJS\" asc"},{"key":"IMAGE","expr":"\"IMAGE\" asc"}]}'
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows=>12
,p_plug_query_num_rows_type=>'SET'
,p_show_total_row_count=>false
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(20462692026453786168)
,p_region_id=>wwv_flow_imp.id(20462691480461786165)
,p_layout_type=>'GRID'
,p_title_adv_formatting=>false
,p_title_column_name=>'NAAM'
,p_sub_title_adv_formatting=>true
,p_sub_title_html_expr=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<style>',
'    .hidden-id {',
'        display: none;',
'    }',
'</style>',
'',
'<span class="hidden-id">#ID#</span>',
''))
,p_body_adv_formatting=>false
,p_body_column_name=>'PRIJS'
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
,p_media_source_type=>'BLOB'
,p_media_blob_column_name=>'IMAGE'
,p_media_display_position=>'BODY'
,p_media_sizing=>'FIT'
,p_pk1_column_name=>'ID'
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(20174372004208526177)
,p_card_id=>wwv_flow_imp.id(20462692026453786168)
,p_action_type=>'BUTTON'
,p_position=>'PRIMARY'
,p_display_sequence=>10
,p_label=>'Toevoegen'
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:33:&SESSION.::&DEBUG.::P_PRODUCT_ID:&ID.'
,p_button_display_type=>'TEXT_WITH_ICON'
,p_icon_css_classes=>'fa-shopping-cart'
,p_is_hot=>false
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(20954154167280751349)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(20462691480461786165)
,p_button_name=>'New'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Ga naar maandje'
,p_button_position=>'TOP'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:49:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-cart-arrow-down'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12931177522060715541)
,p_name=>'P42_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(12931177483402715540)
,p_prompt=>'Search'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_SEARCH'
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'collapsed_search_field', 'N',
  'search_type', 'ROW')).to_clob
,p_fc_show_chart=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12931177670412715542)
,p_name=>'P42_NEW'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(12931177483402715540)
,p_prompt=>'New'
,p_source=>'NAAM'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>'STATIC:WORTEL;WORTEL,Display2;Return2'
,p_item_template_options=>'#DEFAULT#'
,p_fc_show_label=>true
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>false
,p_suggestions_type=>'DYNAMIC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(20462692480933786170)
,p_name=>'P42_ORDER_BY'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(20462691480461786165)
,p_item_display_point=>'ORDER_BY_ITEM'
,p_item_default=>'NAAM'
,p_prompt=>'Order By'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:PRIJS;PRIJS,NAAM;NAAM'
,p_cHeight=>1
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_lov_display_extra=>'NO'
,p_required_patch=>wwv_flow_imp.id(16199427946544615230)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
end;
/
prompt --application/pages/page_00043
begin
wwv_flow_imp_page.create_page(
 p_id=>43
,p_name=>'BewerkMaand'
,p_alias=>'BEWERKMAAND'
,p_page_mode=>'MODAL'
,p_step_title=>'BewerkMaand'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(21276283954041026416)
,p_plug_name=>'BewerkMaand'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'GGS_CART'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(21276689980522026425)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(21276690440003026425)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(21276689980522026425)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Terug'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-undo-arrow'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(21276691783449026426)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(21276689980522026425)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Verwijder'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'Bent u zeker dat u dit wilt verwijderen van uw maandje?'
,p_confirm_style=>'danger'
,p_button_condition=>'P43_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-trash'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(21276692213158026427)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(21276689980522026425)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Opslaan'
,p_button_position=>'NEXT'
,p_button_condition=>'P43_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-edit'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(21276692627180026427)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(21276689980522026425)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Creer'
,p_button_position=>'NEXT'
,p_button_condition=>'P43_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_icon_css_classes=>'fa-plus-square'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(20954156949728751377)
,p_branch_name=>'After'
,p_branch_action=>'f?p=&APP_ID.:49:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(20954156701915751374)
,p_name=>'P43_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(21276283954041026416)
,p_item_source_plug_id=>wwv_flow_imp.id(21276283954041026416)
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(20954156823658751375)
,p_name=>'P43_HOEVEELHEID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(21276283954041026416)
,p_item_source_plug_id=>wwv_flow_imp.id(21276283954041026416)
,p_prompt=>'Hoeveelheid'
,p_source=>'HOEVEELHEID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(20954156933169751376)
,p_name=>'P43_DATUM'
,p_source_data_type=>'TIMESTAMP'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(21276283954041026416)
,p_item_source_plug_id=>wwv_flow_imp.id(21276283954041026416)
,p_source=>'DATUM'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(21276284782563026417)
,p_name=>'P43_GEBRUIKER_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(21276283954041026416)
,p_item_source_plug_id=>wwv_flow_imp.id(21276283954041026416)
,p_source=>'GEBRUIKER_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(21276685595163026418)
,p_name=>'P43_PRODUCT_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(21276283954041026416)
,p_item_source_plug_id=>wwv_flow_imp.id(21276283954041026416)
,p_prompt=>'Product '
,p_source=>'PRODUCT_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_named_lov=>'GGS_PRODUCTEN.NAAM'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'LOV',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(21276690526627026425)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(21276690440003026425)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(21276691277605026426)
,p_event_id=>wwv_flow_imp.id(21276690526627026425)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(21276693398761026428)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(21276283954041026416)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form BewerkMaand'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>9872634750039628689
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(21276693809620026428)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>9872635160898628689
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(21276692949435026427)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(21276283954041026416)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form BewerkMaand'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>9872634300713628688
);
end;
/
prompt --application/pages/page_00044
begin
wwv_flow_imp_page.create_page(
 p_id=>44
,p_name=>'Auditlog'
,p_alias=>'AUDITLOG'
,p_step_title=>'Auditlog'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(18555875673040645084)
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(21278530920795089945)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(16199428455127615231)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(21278531595542089947)
,p_plug_name=>'Auditlog'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'GGS_AUDIT'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Auditlog'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(21278531738477089947)
,p_name=>'Auditlog'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'O.SAMUELS@UNASAT.SR'
,p_internal_uid=>9874473089755692208
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(21278532333622090109)
,p_db_column_name=>'ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(21278532743430090110)
,p_db_column_name=>'ACTIE'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Actie'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(21278533457097090110)
,p_db_column_name=>'DATUM'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Datum'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10814093151710040023)
,p_db_column_name=>'GEBRUIKER_ID'
,p_display_order=>14
,p_column_identifier=>'E'
,p_column_label=>'Gebruiker'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(20166743756792828043)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10814093220955040024)
,p_db_column_name=>'OMSCHRIJVING'
,p_display_order=>24
,p_column_identifier=>'F'
,p_column_label=>'Omschrijving'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(21278302924751820319)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'98742443'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID:ACTIE:DATUM'
);
end;
/
prompt --application/pages/page_00045
begin
wwv_flow_imp_page.create_page(
 p_id=>45
,p_name=>'CheckUit'
,p_alias=>'CHECKUIT'
,p_step_title=>'CheckUit'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(21878636956074556059)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(16199428455127615231)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(21878637694328556060)
,p_name=>'CheckUit'
,p_template=>4072358936313175081
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlight:t-Report--inline:t-Report--hideNoPagination'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    LISTAGG(p.naam || '' (x'' || ci.hoeveelheid || '')'', '', '') ',
'        WITHIN GROUP (ORDER BY p.naam) AS product_names, ',
'    SUM(p.prijs * ci.hoeveelheid) || '' SRD'' AS total_cart_value',
'FROM ggs_cart ci',
'JOIN ggs_producten p ON p.id = ci.product_id',
'JOIN ggs_gebruiker g ON ci.gebruiker_id = g.id',
'WHERE UPPER(g.username) = UPPER(:APP_USER);',
''))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>50
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_prn_output=>'N'
,p_prn_format=>'PDF'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(21837822406241873866)
,p_query_column_id=>1
,p_column_alias=>'PRODUCT_NAMES'
,p_column_display_sequence=>10
,p_column_heading=>'Product Names'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(21837822528054873867)
,p_query_column_id=>2
,p_column_alias=>'TOTAL_CART_VALUE'
,p_column_display_sequence=>20
,p_column_heading=>'Total Cart Value'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(21837822100767873863)
,p_name=>'P45_TOTAL_ITEMS_PRICE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(21878637694328556060)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT SUM(c.hoeveelheid * p.prijs)',
'FROM GGS_CART c',
'JOIN GGS_PRODUCTEN p ON c.product_id = p.id',
'JOIN ggs_gebruiker g ON c.gebruiker_id = g.id',
'WHERE UPPER(g.username) = UPPER(:APP_USER);',
''))
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'Total Items Price'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(21837822690517873869)
,p_name=>'P45_ADDRESS'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(21878637694328556060)
,p_prompt=>'New'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(21837822777306873870)
,p_name=>'P45_NUMMER'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(21878637694328556060)
,p_prompt=>'Nummer'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'min_value', '1',
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(21837822856782873871)
,p_name=>'P45_WOONWIJK'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(21878637694328556060)
,p_prompt=>'Woonwijk'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'WIJKEN_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT naam, id',
'FROM GGS_WOONWIJK',
'WHERE status_id = 1  ',
'ORDER BY naam;',
''))
,p_cHeight=>1
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
end;
/
prompt --application/pages/page_00046
begin
wwv_flow_imp_page.create_page(
 p_id=>46
,p_name=>'Catalog'
,p_alias=>'CATALOG1'
,p_step_title=>'Catalog'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4072355960268175073
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'24'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(13512971800355948465)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(16199428455127615231)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(13512972652245948467)
,p_plug_name=>'Search'
,p_parent_plug_id=>wwv_flow_imp.id(13512971800355948465)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>3371237801798025892
,p_plug_display_sequence=>10
,p_plug_display_point=>'SMART_FILTERS'
,p_plug_source_type=>'NATIVE_SMART_FILTERS'
,p_filtered_region_id=>wwv_flow_imp.id(13512972511392948467)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'compact_numbers_threshold', '10000',
  'more_filters_suggestion_chip', 'N',
  'show_total_row_count', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(13512972511392948467)
,p_plug_name=>'Search Results'
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2072724515482255512
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select "ID",',
'       "NAAM",',
'       "PRIJS" || '' SRD'' AS "PRIJS",',
'       "VOORRAAD",',
'       "CATEGORIEEN_ID",',
'       ( select l1."NAAM" from "GGS_CATEGORIEEN" l1 where l1."ID" = m."CATEGORIEEN_ID") "CATEGORIEEN_ID_L$1",',
'       "STATUS_ID",',
'       ( select l2."NAAM" from "GGS_STATUS" l2 where l2."ID" = m."STATUS_ID") "STATUS_ID_L$2",',
'       "IMAGE"',
'from "GGS_PRODUCTEN" m',
'WHERE "STATUS_ID" = 1;'))
,p_query_order_by_type=>'ITEM'
,p_query_order_by=>'{ "itemName": "P46_ORDER_BY", "orderBys": [{"key":"NAAM","expr":"\"NAAM\" asc"}]}'
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows=>12
,p_plug_query_num_rows_type=>'SET'
,p_show_total_row_count=>true
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(13512973851943948469)
,p_region_id=>wwv_flow_imp.id(13512972511392948467)
,p_layout_type=>'GRID'
,p_title_adv_formatting=>false
,p_title_column_name=>'NAAM'
,p_sub_title_adv_formatting=>false
,p_sub_title_column_name=>'CATEGORIEEN_ID_L$1'
,p_body_adv_formatting=>false
,p_body_column_name=>'PRIJS'
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
,p_media_source_type=>'BLOB'
,p_media_blob_column_name=>'IMAGE'
,p_media_display_position=>'BODY'
,p_media_sizing=>'FIT'
,p_pk1_column_name=>'ID'
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(12931177955483715545)
,p_card_id=>wwv_flow_imp.id(13512973851943948469)
,p_action_type=>'BUTTON'
,p_position=>'PRIMARY'
,p_display_sequence=>10
,p_label=>'Toevoegen'
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:33:&SESSION.::&DEBUG.::P_PRODUCT_ID:&ID.'
,p_button_display_type=>'TEXT_WITH_ICON'
,p_icon_css_classes=>'fa-shopping-cart'
,p_is_hot=>false
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(13521000584657285460)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(13512971800355948465)
,p_button_name=>'New'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Ga naar mandje'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:49:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-cart-arrow-down'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13512973122313948468)
,p_name=>'P46_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(13512972652245948467)
,p_prompt=>'Search'
,p_source=>'STATUS_ID,NAAM,CATEGORIEEN_ID'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_SEARCH'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'collapsed_search_field', 'N',
  'input_field', 'FACET',
  'search_type', 'ROW')).to_clob
,p_fc_show_chart=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13512974305444948470)
,p_name=>'P46_ORDER_BY'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(13512972511392948467)
,p_item_display_point=>'ORDER_BY_ITEM'
,p_item_default=>'NAAM'
,p_prompt=>'Order By'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:Naam;NAAM'
,p_cHeight=>1
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
end;
/
prompt --application/pages/page_00047
begin
wwv_flow_imp_page.create_page(
 p_id=>47
,p_name=>'BetalingBeheer'
,p_alias=>'BETALINGBEHEER'
,p_step_title=>'BetalingBeheer'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(18555875673040645084)
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(22217889759498392849)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(16199428455127615231)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(22217890508420392852)
,p_plug_name=>'BetalingBeheer'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       BETALINGTYPE_ID,',
'       PAYMENT_DATE,',
'       GEBRUIKER_ID,',
'       sys.dbms_lob.getlength("IMAGE") AS "IMAGE",',
'       BETALING_STATUS_ID,',
'       AMOUNT,',
'       ''Some Value'' AS "NEW_COLUMN"',
'  from GGS_BETALLING',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(22218373979065163741)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'E.LOKHAI@UNASAT.SR'
,p_internal_uid=>10814315330343766002
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22218374118052163742)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22218374224152163743)
,p_db_column_name=>'BETALINGTYPE_ID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Betalingtype '
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(22217897685155392860)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22218374289283163744)
,p_db_column_name=>'PAYMENT_DATE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Payment Date'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22218374480519163746)
,p_db_column_name=>'GEBRUIKER_ID'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Gebruiker'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(20166743756792828043)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22218374607821163747)
,p_db_column_name=>'BETALING_STATUS_ID'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Betaling Status'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(22217898757881392861)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22218374671331163748)
,p_db_column_name=>'AMOUNT'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Amount'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22218375289018163754)
,p_db_column_name=>'IMAGE'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Image'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'IMAGE:GGS_BETALLING:IMAGE:ID::::::::'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22218375383204163755)
,p_db_column_name=>'NEW_COLUMN'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Bewerk'
,p_column_link=>'f?p=&APP_ID.:50:&SESSION.::&DEBUG.::P50_ID:#ID#'
,p_column_linktext=>'<img src="#APEX_FILES#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(22218243613241443508)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'108141850'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'NEW_COLUMN:BETALINGTYPE_ID:GEBRUIKER_ID:BETALING_STATUS_ID:AMOUNT:IMAGE:'
);
end;
/
prompt --application/pages/page_00048
begin
wwv_flow_imp_page.create_page(
 p_id=>48
,p_name=>'Bewerk Bestelling'
,p_alias=>'BEWERK-BESTELLING'
,p_page_mode=>'MODAL'
,p_step_title=>'Bewerk Bestelling'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12217902329749530114)
,p_plug_name=>'Bewerk Bestelling'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    b.id AS bestelling_id,',
'    b.route_id,',
'    b.adres_id,',
'    b.bestellingstatus_id',
'FROM ',
'    GGS_BESTELLINGEN b',
'JOIN ',
'    GGS_BETALLING bet ON b.betaling_id = bet.id',
'WHERE ',
'    bet.betaling_status_id = 21;',
''))
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12217905516854530117)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12217905997399530118)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(12217905516854530117)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Terug'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-undo-arrow'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12217907311372530119)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(12217905516854530117)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P48_BESTELLING_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_required_patch=>wwv_flow_imp.id(16199427946544615230)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12217907748624530119)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(12217905516854530117)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Opslaan'
,p_button_position=>'NEXT'
,p_button_condition=>'P48_BESTELLING_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-edit'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12217908112748530119)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(12217905516854530117)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P48_BESTELLING_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(12160351458611277018)
,p_branch_name=>'terug'
,p_branch_action=>'f?p=&APP_ID.:52:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12217902704282530115)
,p_name=>'P48_BESTELLING_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(12217902329749530114)
,p_item_source_plug_id=>wwv_flow_imp.id(12217902329749530114)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Bestelling Id'
,p_source=>'BESTELLING_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12217903173374530115)
,p_name=>'P48_ROUTE_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(12217902329749530114)
,p_item_source_plug_id=>wwv_flow_imp.id(12217902329749530114)
,p_prompt=>'Route '
,p_source=>'ROUTE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'ROUTEPERWIJK'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT r.id AS route_id, r.naam AS route_name',
'FROM GGS_ROUTE r',
'JOIN GGS_WOONWIJK_ROUTE wr ON r.id = wr.route_id',
'WHERE wr.wijk_id = (',
'    SELECT a.woonwijk_id',
'    FROM GGS_ADRES a',
'    WHERE a.id = :P48_ADRES_ID',
');',
''))
,p_cHeight=>1
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12217903557844530116)
,p_name=>'P48_ADRES_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(12217902329749530114)
,p_item_source_plug_id=>wwv_flow_imp.id(12217902329749530114)
,p_source=>'ADRES_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12217903987386530116)
,p_name=>'P48_BESTELLINGSTATUS_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(12217902329749530114)
,p_item_source_plug_id=>wwv_flow_imp.id(12217902329749530114)
,p_prompt=>'Bestelling status '
,p_source=>'BESTELLINGSTATUS_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'BESTELLINGSTATUS'
,p_cHeight=>1
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12217906092638530118)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(12217905997399530118)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12217906829798530118)
,p_event_id=>wwv_flow_imp.id(12217906092638530118)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(12217908926355530120)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(12217902329749530114)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Bewerk Bestelling'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>12217908926355530120
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(12217909372848530120)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>12217909372848530120
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(12217908598464530119)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(12217902329749530114)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Bewerk Bestelling'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>12217908598464530119
);
end;
/
prompt --application/pages/page_00049
begin
wwv_flow_imp_page.create_page(
 p_id=>49
,p_name=>'mandje'
,p_alias=>'MANDJE'
,p_step_title=>'mandje'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(18555875673040645084)
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(20972090023919706001)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_location=>null
,p_menu_id=>wwv_flow_imp.id(16199428455127615231)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
,p_required_patch=>wwv_flow_imp.id(16199427946544615230)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(20972090743335706004)
,p_plug_name=>'maandje'
,p_icon_css_classes=>'fa-shopping-basket'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT p.id AS Product_ID,',
'       ci.id as Cart_id,',
'       g.id AS ID_GEB,',
'       p.naam AS product_name, ',
'       p.prijs AS Prijs, ',
'       ci.hoeveelheid AS quantity, ',
'       (p.prijs * ci.hoeveelheid) AS totale_prijs',
'FROM ggs_cart ci',
'JOIN ggs_producten p ON p.id = ci.product_id',
'JOIN ggs_gebruiker g ON ci.gebruiker_id = g.id',
'WHERE UPPER(g.username) = UPPER(:APP_USER);',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(20954154432993751351)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:43:&SESSION.::&DEBUG.::P43_ID:#CART_ID#'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="apex-edit-pencil" title="Edit"></span><img src="#APEX_FILES#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_owner=>'E.LOKHAI@UNASAT.SR'
,p_internal_uid=>9550095784272353612
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(20954154528348751352)
,p_db_column_name=>'PRODUCT_NAME'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Product'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(20954154656536751354)
,p_db_column_name=>'QUANTITY'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Quantity'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(20954154965615751357)
,p_db_column_name=>'ID_GEB'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Id Geb'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(20954156151055751369)
,p_db_column_name=>'CART_ID'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Cart Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(20954156444885751371)
,p_db_column_name=>'PRODUCT_ID'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Product Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(20954156538294751372)
,p_db_column_name=>'PRIJS'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Prijs'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(20954156556132751373)
,p_db_column_name=>'TOTALE_PRIJS'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Totale Prijs'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(20974192634046056870)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'95701340'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PRODUCT_NAME:QUANTITY:PRIJS:TOTALE_PRIJS:'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(20954157057056751378)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(20972090743335706004)
,p_button_name=>'Terug'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Terug naar catalog'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:42:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-undo-arrow'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(20954157174867751379)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(20972090743335706004)
,p_button_name=>'uitchecken'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Uitchecken'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:66:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-credit-card-alt'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(20954157340537751380)
,p_name=>'P49_TOT_BEDRAG'
,p_item_sequence=>20
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT SUM(p.prijs * ci.hoeveelheid) || '' SRD'' AS total_cart_value',
'FROM ggs_cart ci',
'JOIN ggs_producten p ON p.id = ci.product_id',
'JOIN ggs_gebruiker g ON ci.gebruiker_id = g.id',
'WHERE UPPER(g.username) = UPPER(:APP_USER);',
''))
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'Totale bedrag'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--boldDisplay'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
end;
/
prompt --application/pages/page_00050
begin
wwv_flow_imp_page.create_page(
 p_id=>50
,p_name=>'Berwerk Betaling status'
,p_alias=>'BERWERK-BETALING-STATUS'
,p_page_mode=>'MODAL'
,p_step_title=>'Berwerk Betaling status'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(22250024443476916135)
,p_plug_name=>'Berwerk Betaling status'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'GGS_BETALLING'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(22250029573552916141)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(22250029962419916141)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(22250029573552916141)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Terug'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-undo-arrow'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(22250031406331916142)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(22250029573552916141)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P50_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_required_patch=>wwv_flow_imp.id(16199427946544615230)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(22250031800514916143)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(22250029573552916141)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Opslaan'
,p_button_position=>'NEXT'
,p_button_condition=>'P50_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-edit'
,p_database_action=>'UPDATE'
,p_required_patch=>wwv_flow_imp.id(16199427946544615230)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(22250032204606916143)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(22250029573552916141)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_condition=>'P50_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_required_patch=>wwv_flow_imp.id(16199427946544615230)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(22218375840599163759)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(22250029573552916141)
,p_button_name=>'Creeer'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Opslaan'
,p_button_position=>'NEXT'
,p_icon_css_classes=>'fa-edit'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(22218375920809163760)
,p_branch_action=>'f?p=&APP_ID.:47:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22250024660738916136)
,p_name=>'P50_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(22250024443476916135)
,p_item_source_plug_id=>wwv_flow_imp.id(22250024443476916135)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id'
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22250025081009916136)
,p_name=>'P50_BETALINGTYPE_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(22250024443476916135)
,p_item_source_plug_id=>wwv_flow_imp.id(22250024443476916135)
,p_source=>'BETALINGTYPE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22250025502967916137)
,p_name=>'P50_PAYMENT_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(22250024443476916135)
,p_item_source_plug_id=>wwv_flow_imp.id(22250024443476916135)
,p_source=>'PAYMENT_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22250025886637916137)
,p_name=>'P50_IMAGE'
,p_source_data_type=>'BLOB'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(22250024443476916135)
,p_item_source_plug_id=>wwv_flow_imp.id(22250024443476916135)
,p_prompt=>'Bewijs'
,p_source=>'IMAGE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_IMAGE'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'DB_COLUMN')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22250026295750916138)
,p_name=>'P50_GEBRUIKER_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(22250024443476916135)
,p_item_source_plug_id=>wwv_flow_imp.id(22250024443476916135)
,p_source=>'GEBRUIKER_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22250026713786916138)
,p_name=>'P50_BETALING_STATUS_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(22250024443476916135)
,p_item_source_plug_id=>wwv_flow_imp.id(22250024443476916135)
,p_prompt=>'Betaling Status '
,p_source=>'BETALING_STATUS_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'GGS_BETALING_STATUS.NAAM'
,p_cHeight=>1
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22250027060084916139)
,p_name=>'P50_AMOUNT'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(22250024443476916135)
,p_item_source_plug_id=>wwv_flow_imp.id(22250024443476916135)
,p_source=>'AMOUNT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(22250030069468916141)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(22250029962419916141)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(22250030881872916142)
,p_event_id=>wwv_flow_imp.id(22250030069468916141)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(22250032956818916143)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(22250024443476916135)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Berwerk Betaling status'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_required_patch=>wwv_flow_imp.id(16199427946544615230)
,p_internal_uid=>10845974308097518404
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(22250033448268916144)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>10845974799547518405
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(22218375692401163758)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Bewerk'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'UPDATE GGS_BETALLING',
'SET',
'    betaling_status_id = :P50_BETALING_STATUS_ID',
'WHERE id = :P50_ID;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Niet gelukt'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(22218375840599163759)
,p_process_success_message=>'Gelukt'
,p_internal_uid=>10814317043679766019
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(22250032552541916143)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(22250024443476916135)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Berwerk Betaling status'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>10845973903820518404
);
end;
/
prompt --application/pages/page_00051
begin
wwv_flow_imp_page.create_page(
 p_id=>51
,p_name=>'BewerkMaandje'
,p_alias=>'BEWERKMAANDJE'
,p_page_mode=>'MODAL'
,p_step_title=>'BewerkMaandje'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(20973731895682769248)
,p_plug_name=>'BewerkMaandje'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ci.id AS CART_ID, ',
'       g.id AS GEBRUIKER_ID, ',
'       g.username AS USERNAME,',
'       p.id AS PRODUCT_ID,',
'       p.naam AS PRODUCT_NAME,',
'       p.prijs AS PRICE,',
'       ci.hoeveelheid AS QUANTITY,',
'       (p.prijs * ci.hoeveelheid) AS TOTAL_PRICE',
'FROM ggs_cart ci',
'JOIN ggs_producten p ON p.id = ci.product_id',
'JOIN ggs_gebruiker g ON ci.gebruiker_id = g.id',
'WHERE UPPER(g.username) = UPPER(:APP_USER)',
'AND ci.product_id = :P_SELECTED_PRODUCT;',
''))
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(20973736068906769254)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(20973736472607769255)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(20973736068906769254)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(20973737863593769256)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(20973736068906769254)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P51_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(20973738331463769257)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(20973736068906769254)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P51_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(20973738699242769257)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(20973736068906769254)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_condition=>'P51_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(20954155085790751358)
,p_name=>'P51_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_is_primary_key=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(20973731895682769248)
,p_item_source_plug_id=>wwv_flow_imp.id(20973731895682769248)
,p_prompt=>'Id'
,p_source=>'CART_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(20954155158165751359)
,p_name=>'P51_USERNAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(20973731895682769248)
,p_item_source_plug_id=>wwv_flow_imp.id(20973731895682769248)
,p_prompt=>'Username'
,p_source=>'USERNAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(20954155291568751360)
,p_name=>'P51_PRODUCT_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(20973731895682769248)
,p_item_source_plug_id=>wwv_flow_imp.id(20973731895682769248)
,p_prompt=>'Product Name'
,p_source=>'PRODUCT_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(20954155381706751361)
,p_name=>'P51_PRICE'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(20973731895682769248)
,p_item_source_plug_id=>wwv_flow_imp.id(20973731895682769248)
,p_prompt=>'Price'
,p_source=>'PRICE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(20954155546935751362)
,p_name=>'P51_QUANTITY'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(20973731895682769248)
,p_item_source_plug_id=>wwv_flow_imp.id(20973731895682769248)
,p_prompt=>'Quantity'
,p_source=>'QUANTITY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(20954155593889751363)
,p_name=>'P51_TOTAL_PRICE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(20973731895682769248)
,p_item_source_plug_id=>wwv_flow_imp.id(20973731895682769248)
,p_prompt=>'Total Price'
,p_source=>'TOTAL_PRICE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(20973732619356769249)
,p_name=>'P51_GEBRUIKER_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(20973731895682769248)
,p_item_source_plug_id=>wwv_flow_imp.id(20973731895682769248)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Gebruiker Id'
,p_source=>'GEBRUIKER_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'GGS_GEBRUIKER.NAAM'
,p_lov_display_null=>'YES'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(20973733007377769250)
,p_name=>'P51_PRODUCT_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(20973731895682769248)
,p_item_source_plug_id=>wwv_flow_imp.id(20973731895682769248)
,p_prompt=>'Product Id'
,p_source=>'PRODUCT_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'GGS_PRODUCTEN.NAAM'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(20973736569700769255)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(20973736472607769255)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20973737372721769256)
,p_event_id=>wwv_flow_imp.id(20973736569700769255)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(20973739533404769257)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(20973731895682769248)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form BewerkMaandje'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>9569680884683371518
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(20973739941421769258)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>9569681292700371519
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(20973739109887769257)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(20973731895682769248)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form BewerkMaandje'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>9569680461166371518
);
end;
/
prompt --application/pages/page_00052
begin
wwv_flow_imp_page.create_page(
 p_id=>52
,p_name=>'Bestellingen Processen'
,p_alias=>'BESTELLINGEN-PROCESSEN'
,p_step_title=>'Bestellingen Processen'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(18555875673040645084)
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12220386660202647061)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(16199428455127615231)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12220387263663647062)
,p_plug_name=>'Bestellingen Processen'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    b.id AS bestelling_id,',
'    b.gebruiker_id,',
'    b.datum,',
'    b.totalbedrag,',
'    b.bestellingstatus_id,',
'    b.adres_id,',
'    b.omschrijving,',
'    b.route_id,',
'    bet.betaling_status_id',
'FROM ',
'    GGS_BESTELLINGEN b',
'JOIN ',
'    GGS_BETALLING bet ON b.betaling_id = bet.id',
'WHERE ',
'    bet.betaling_status_id = 21',
'    AND b.bestellingstatus_id = 1;',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Bestellingen Processen'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(12220387331917647062)
,p_name=>'Bestellingen Processen'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:48:&SESSION.::&DEBUG.::P48_BESTELLING_ID:#BESTELLING_ID#'
,p_detail_link_text=>'<img src="#APEX_FILES#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_owner=>'E.LOKHAI@UNASAT.SR'
,p_internal_uid=>12220387331917647062
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12220388011100647063)
,p_db_column_name=>'BESTELLING_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Bestelling Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12220388470860647064)
,p_db_column_name=>'GEBRUIKER_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Klant'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(20166743756792828043)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12220390447500647066)
,p_db_column_name=>'OMSCHRIJVING'
,p_display_order=>12
,p_column_identifier=>'G'
,p_column_label=>'Omschrijving'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12220389246757647065)
,p_db_column_name=>'TOTALBEDRAG'
,p_display_order=>22
,p_column_identifier=>'D'
,p_column_label=>'Totalbedrag'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12220388883937647064)
,p_db_column_name=>'DATUM'
,p_display_order=>32
,p_column_identifier=>'C'
,p_column_label=>'Datum'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12220389601450647065)
,p_db_column_name=>'BESTELLINGSTATUS_ID'
,p_display_order=>42
,p_column_identifier=>'E'
,p_column_label=>'Bestelling status '
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(20200830729000861977)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12220390080875647065)
,p_db_column_name=>'ADRES_ID'
,p_display_order=>52
,p_column_identifier=>'F'
,p_column_label=>'Adres '
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(12220865973168405924)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12220390874120647066)
,p_db_column_name=>'ROUTE_ID'
,p_display_order=>72
,p_column_identifier=>'H'
,p_column_label=>'Route '
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(18538427204798083579)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12220392420540647067)
,p_db_column_name=>'BETALING_STATUS_ID'
,p_display_order=>82
,p_column_identifier=>'L'
,p_column_label=>'Betaling Status Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(12220480141462381397)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'122204802'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'BESTELLING_ID:GEBRUIKER_ID:DATUM:TOTALBEDRAG:BESTELLINGSTATUS_ID:ADRES_ID:OMSCHRIJVING:ROUTE_ID:BETALING_STATUS_ID'
);
end;
/
prompt --application/pages/page_00053
begin
wwv_flow_imp_page.create_page(
 p_id=>53
,p_name=>'Tracker'
,p_alias=>'TRACKER'
,p_step_title=>'Tracker'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'19'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14363142396884807822)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(16199428455127615231)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14363143055625807823)
,p_plug_name=>'Tracker'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>3371237801798025892
,p_plug_display_sequence=>10
,p_location=>null
,p_lazy_loading=>true
,p_plug_source_type=>'NATIVE_MAP_REGION'
);
wwv_flow_imp_page.create_map_region(
 p_id=>wwv_flow_imp.id(14363143476361807824)
,p_region_id=>wwv_flow_imp.id(14363143055625807823)
,p_height=>640
,p_navigation_bar_type=>'FULL'
,p_navigation_bar_position=>'END'
,p_init_position_zoom_type=>'QUERY_RESULTS'
,p_layer_messages_position=>'BELOW'
,p_legend_position=>'END'
,p_features=>'SCALE_BAR:INFINITE_MAP:RECTANGLE_ZOOM'
);
wwv_flow_imp_page.create_map_region_layer(
 p_id=>wwv_flow_imp.id(14363143975098807824)
,p_map_region_id=>wwv_flow_imp.id(14363143476361807824)
,p_name=>'Tracker'
,p_layer_type=>'POINT'
,p_display_sequence=>10
,p_location=>'LOCAL'
,p_query_type=>'SQL'
,p_layer_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    b.ID AS DELIVERY_ID,',
'    CASE ',
'        WHEN b.BESTELLINGSTATUS_ID = 1 THEN ',
'            SDO_GEOMETRY(2001, 4326, SDO_POINT_TYPE(-55.1520, 5.8393, NULL), NULL, NULL)',
'        WHEN b.BESTELLINGSTATUS_ID = 21 THEN ',
'            SDO_GEOMETRY(2001, 4326, SDO_POINT_TYPE(a.LONGITUDE, a.LATITUDE, NULL), NULL, NULL)',
'        ELSE ',
'            NULL',
'    END AS LOCATION_POINT,',
'    ',
'    CASE ',
'        WHEN b.BESTELLINGSTATUS_ID = 1 THEN ''In-behandeling''',
'        WHEN b.BESTELLINGSTATUS_ID = 21 THEN ''Verzonden''',
'        ELSE NULL',
'    END AS TOOLTIP_TEXT,',
'',
'    a.LONGITUDE,            ',
'    a.LATITUDE,             ',
'    a.NAAM AS ADDRESS_NAME  ',
'FROM GGS_BESTELLINGEN b',
'JOIN GGS_ADRES a ON b.ADRES_ID = a.ID',
'JOIN GGS_GEBRUIKER g ON b.GEBRUIKER_ID = g.ID  ',
'WHERE b.BESTELLINGSTATUS_ID IN (1, 21, 3)',
'AND UPPER(g.USERNAME) = UPPER(:APP_USER);',
''))
,p_has_spatial_index=>false
,p_geometry_column_data_type=>'SDO_GEOMETRY'
,p_geometry_column=>'LOCATION_POINT'
,p_point_display_type=>'SVG'
,p_point_svg_shape=>'Default'
,p_feature_clustering=>false
,p_tooltip_adv_formatting=>true
,p_tooltip_html_expr=>'Locatie: &ADDRESS_NAME. <br> Order Status: &TOOLTIP_TEXT. <br>  Bestelling ID:&DELIVERY_ID.'
,p_info_window_adv_formatting=>false
,p_allow_hide=>true
);
end;
/
prompt --application/pages/page_00054
begin
wwv_flow_imp_page.create_page(
 p_id=>54
,p_name=>'AddresBoek'
,p_alias=>'ADDRESBOEK'
,p_step_title=>'AddresBoek'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(18555875673040645084)
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(21881725605003642716)
,p_plug_name=>'AddresBoek'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    a.id AS address_id,',
'    a.naam as naam,',
'    a.adres || '' '' || a.huisnummer AS adres,  ',
'    a.woonwijk_id AS Wijk',
'FROM GGS_ADRES a',
'JOIN GGS_GEBRUIKER g ON a.gebruiker_id = g.id',
'WHERE UPPER(g.username) = UPPER(:APP_USER);',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(21837823950700873882)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:55:&SESSION.::&DEBUG.::P55_ID:#ADDRESS_ID#'
,p_detail_link_text=>'<img src="#APEX_FILES#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_owner=>'E.LOKHAI@UNASAT.SR'
,p_internal_uid=>10433765301979476143
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(21837824120257873883)
,p_db_column_name=>'ADDRESS_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Address Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(21837824165785873884)
,p_db_column_name=>'ADRES'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Adres'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(21837824376520873886)
,p_db_column_name=>'WIJK'
,p_display_order=>30
,p_column_identifier=>'D'
,p_column_label=>'Wijk'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(17503383740077893506)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(21884719528140052076)
,p_db_column_name=>'NAAM'
,p_display_order=>40
,p_column_identifier=>'E'
,p_column_label=>'Naam'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(21884017021306732905)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'104799584'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ADDRESS_ID:ADRES'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(21881729341975642721)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(16199428455127615231)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(21881727733293642719)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(21881725605003642716)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Creer'
,p_button_position=>'ORDER_BY_ITEM'
,p_button_redirect_url=>'f?p=&APP_ID.:55:&APP_SESSION.::&DEBUG.:55::'
,p_icon_css_classes=>'fa-plus-square'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(21881727966184642719)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(21881725605003642716)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(21881728548028642720)
,p_event_id=>wwv_flow_imp.id(21881727966184642719)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(21881725605003642716)
);
end;
/
prompt --application/pages/page_00055
begin
wwv_flow_imp_page.create_page(
 p_id=>55
,p_name=>'VoegAddress'
,p_alias=>'VOEGADDRESS'
,p_page_mode=>'MODAL'
,p_step_title=>'VoegAddress'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(21881717622618642707)
,p_plug_name=>'VoegAddress'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       ADRES,',
'       HUISNUMMER,',
'       WOONWIJK_ID,',
'       GEBRUIKER_ID,',
'       NAAM',
'  from GGS_ADRES'))
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(21881720762294642711)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(21881721183933642712)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(21881720762294642711)
,p_button_name=>'Terug'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Terug'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-undo-arrow'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(21884716029753052041)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(21881720762294642711)
,p_button_name=>'Verwijder'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Verwijder'
,p_button_position=>'DELETE'
,p_confirm_message=>'Bent U zeker dat U dit wilt verwijderen?'
,p_confirm_style=>'danger'
,p_icon_css_classes=>'fa-trash'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(21837824659021873889)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(21881720762294642711)
,p_button_name=>'Opslaan'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Opslaan'
,p_button_position=>'NEXT'
,p_icon_css_classes=>'fa-edit'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(21837823625934873878)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(21881720762294642711)
,p_button_name=>'Creer'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Creer'
,p_button_position=>'NEXT'
,p_icon_css_classes=>'fa-plus-square'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(21884715854697052040)
,p_branch_name=>'Terug'
,p_branch_action=>'f?p=&APP_ID.:54:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(21837823025028873872)
,p_name=>'P55_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(21881717622618642707)
,p_item_source_plug_id=>wwv_flow_imp.id(21881717622618642707)
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(21837823141787873873)
,p_name=>'P55_ADRES'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(21881717622618642707)
,p_item_source_plug_id=>wwv_flow_imp.id(21881717622618642707)
,p_prompt=>'Straatnaam'
,p_source=>'ADRES'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(21837823228271873874)
,p_name=>'P55_HUISNUMMER'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(21881717622618642707)
,p_item_source_plug_id=>wwv_flow_imp.id(21881717622618642707)
,p_prompt=>'Huisnummer'
,p_source=>'HUISNUMMER'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(21837823288778873875)
,p_name=>'P55_WOONWIJK_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(21881717622618642707)
,p_item_source_plug_id=>wwv_flow_imp.id(21881717622618642707)
,p_prompt=>'Woonwijk'
,p_source=>'WOONWIJK_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'WIJKEN_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT naam, id',
'FROM GGS_WOONWIJK',
'WHERE status_id = 1  ',
'ORDER BY naam;',
''))
,p_cHeight=>1
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(21837823445104873876)
,p_name=>'P55_GEBRUIKER_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(21881717622618642707)
,p_item_source_plug_id=>wwv_flow_imp.id(21881717622618642707)
,p_source=>'GEBRUIKER_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(21884719582753052077)
,p_name=>'P55_NAAM'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(21881717622618642707)
,p_item_source_plug_id=>wwv_flow_imp.id(21881717622618642707)
,p_prompt=>'Naam'
,p_source=>'NAAM'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(21881721270856642712)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(21881721183933642712)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(21881722142845642713)
,p_event_id=>wwv_flow_imp.id(21881721270856642712)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(21881724228519642714)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(21881717622618642707)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form VoegAddress'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_required_patch=>wwv_flow_imp.id(16199427946544615230)
,p_internal_uid=>10477665579798244975
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(21881724571505642715)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>10477665922784244976
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(21837823467010873877)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Niew'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_gebruiker_id GGS_GEBRUIKER.id%TYPE;',
'BEGIN',
'    ',
'    SELECT g.id',
'    INTO v_gebruiker_id',
'    FROM GGS_GEBRUIKER g',
'    WHERE UPPER(g.username) = UPPER(:APP_USER);',
'',
'    ',
'    INSERT INTO GGS_ADRES (adres, naam, huisnummer, woonwijk_id, gebruiker_id)',
'    VALUES (',
'        :P55_ADRES,',
'        :P55_NAAM,                ',
'        :P55_HUISNUMMER,           ',
'        :P55_WOONWIJK_ID,          ',
'        v_gebruiker_id            ',
'    );',
'',
'   ',
'',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(21837823625934873878)
,p_internal_uid=>10433764818289476138
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(21837824509595873887)
,p_process_sequence=>70
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Bewerk'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_gebruiker_id GGS_GEBRUIKER.id%TYPE;',
'BEGIN',
'    ',
'    SELECT g.id',
'    INTO v_gebruiker_id',
'    FROM GGS_GEBRUIKER g',
'    WHERE UPPER(g.username) = UPPER(:APP_USER);',
'',
'   ',
'    UPDATE GGS_ADRES',
'    SET',
'        adres = :P55_ADRES,',
'        naam = :P55_NAAM,            ',
'        huisnummer = :P55_HUISNUMMER,  ',
'        woonwijk_id = :P55_WOONWIJK_ID ',
'    WHERE id = :P55_ID         ',
'    AND gebruiker_id = v_gebruiker_id; ',
'',
'    ',
'    COMMIT;',
'',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(21837824659021873889)
,p_internal_uid=>10433765860874476148
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(21884716142204052042)
,p_process_sequence=>80
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Verwijder'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_gebruiker_id GGS_GEBRUIKER.id%TYPE;',
'BEGIN',
'  ',
'    SELECT g.id',
'    INTO v_gebruiker_id',
'    FROM GGS_GEBRUIKER g',
'    WHERE UPPER(g.username) = UPPER(:APP_USER);',
'',
'',
'    DELETE FROM GGS_ADRES',
'    WHERE id = :P55_ID        ',
'    AND gebruiker_id = v_gebruiker_id; ',
'',
'',
'    COMMIT;',
'',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(21884716029753052041)
,p_internal_uid=>10480657493482654303
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(21881723755402642714)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(21881717622618642707)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form VoegAddress'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>10477665106681244975
);
end;
/
prompt --application/pages/page_00056
begin
wwv_flow_imp_page.create_page(
 p_id=>56
,p_name=>'Verzonden bestellingen'
,p_alias=>'VERZONDEN-BESTELLINGEN'
,p_step_title=>'Verzonden bestellingen'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(18555875673040645084)
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12222090068471756346)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(16199428455127615231)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12222090751091756348)
,p_plug_name=>'Verzonden bestellingen'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    b.id AS bestelling_id,',
'    b.gebruiker_id,',
'    b.datum,',
'    b.totalbedrag,',
'    b.bestellingstatus_id,',
'    b.adres_id,',
'    b.omschrijving,',
'    b.route_id',
'FROM ',
'    GGS_BESTELLINGEN b',
'WHERE ',
'b.bestellingstatus_id = 21;',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Verzonden bestellingen'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(12222090872009756348)
,p_name=>'Verzonden bestellingen'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:59:&SESSION.::&DEBUG.::P59_BESTELLING_ID:#BESTELLING_ID#'
,p_detail_link_text=>'<img src="#APEX_FILES#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_owner=>'E.LOKHAI@UNASAT.SR'
,p_internal_uid=>12222090872009756348
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12222091531445756351)
,p_db_column_name=>'BESTELLING_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Bestelling Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12222091900347756351)
,p_db_column_name=>'GEBRUIKER_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Gebruiker '
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(20166743756792828043)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12222092382579756352)
,p_db_column_name=>'DATUM'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Datum'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12222092758376756352)
,p_db_column_name=>'TOTALBEDRAG'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Total bedrag'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12222093141683756352)
,p_db_column_name=>'BESTELLINGSTATUS_ID'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Bestellingstatus Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12222093533099756353)
,p_db_column_name=>'ADRES_ID'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Adres '
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(12220865973168405924)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12222093987424756353)
,p_db_column_name=>'OMSCHRIJVING'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Omschrijving'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12222094397179756353)
,p_db_column_name=>'ROUTE_ID'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Route '
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(18538427204798083579)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(12221934186583486362)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'122219342'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'BESTELLING_ID:GEBRUIKER_ID:DATUM:TOTALBEDRAG:BESTELLINGSTATUS_ID:ADRES_ID:OMSCHRIJVING:ROUTE_ID'
);
end;
/
prompt --application/pages/page_00057
begin
wwv_flow_imp_page.create_page(
 p_id=>57
,p_name=>'DeliveryFee'
,p_alias=>'DELIVERYFEE'
,p_page_mode=>'MODAL'
,p_step_title=>'DeliveryFee'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(21884718530780052066)
,p_plug_name=>'betaling'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       BETALINGTYPE_ID,',
'       PAYMENT_DATE,',
'       IMAGE,',
'       GEBRUIKER_ID,',
'       BETALING_STATUS_ID,',
'       AMOUNT',
'  from GGS_BETALLING'))
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(21884720113641052082)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(21884718530780052066)
,p_button_name=>'Betalen'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Betalen'
,p_button_position=>'CHANGE'
,p_icon_css_classes=>'fa-credit-card-alt'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(21884720150440052083)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(21884718530780052066)
,p_button_name=>'Terug'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Terug'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:57:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-undo-arrow'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(12160351167793277015)
,p_branch_action=>'f?p=&APP_ID.:42:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10814091882769040010)
,p_name=>'P57_NEW'
,p_item_sequence=>10
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10814091965668040011)
,p_name=>'P57_TOTAAL_BEDRAG'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(21884718530780052066)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10814092036397040012)
,p_name=>'P57_OMSCHRIJVING'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(21884718530780052066)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10814092240422040014)
,p_name=>'P57_NEW_BETALING'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(21884718530780052066)
,p_source=>'P57_AMOUNT'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12160350940827277013)
,p_name=>'P57_ADDRESS'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(21884718530780052066)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(21884718739392052068)
,p_name=>'P57_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(21884718530780052066)
,p_item_source_plug_id=>wwv_flow_imp.id(21884718530780052066)
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(21884718774566052069)
,p_name=>'P57_BETALINGTYPE_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(21884718530780052066)
,p_item_source_plug_id=>wwv_flow_imp.id(21884718530780052066)
,p_prompt=>'Betaling type'
,p_source=>'BETALINGTYPE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT naam AS display_value, ',
'       id AS return_value',
'  FROM GGS_BETALLINGTYPE;',
''))
,p_cHeight=>1
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(21884718872313052070)
,p_name=>'P57_PAYMENT_DATE'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(21884718530780052066)
,p_item_source_plug_id=>wwv_flow_imp.id(21884718530780052066)
,p_prompt=>'Payment Date'
,p_source=>'PAYMENT_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(21884719334299052074)
,p_name=>'P57_GEBRUIKER_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(21884718530780052066)
,p_item_source_plug_id=>wwv_flow_imp.id(21884718530780052066)
,p_source=>'GEBRUIKER_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22218374821641163749)
,p_name=>'P57_BETALING_STATUS_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(21884718530780052066)
,p_item_source_plug_id=>wwv_flow_imp.id(21884718530780052066)
,p_source=>'BETALING_STATUS_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22218374872749163750)
,p_name=>'P57_AMOUNT'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(21884718530780052066)
,p_item_source_plug_id=>wwv_flow_imp.id(21884718530780052066)
,p_item_default=>'P57_AMOUNT'
,p_item_default_type=>'ITEM'
,p_prompt=>'Amount'
,p_source=>'AMOUNT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22218375505971163756)
,p_name=>'P57_IMAGE'
,p_source_data_type=>'BLOB'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(21884718530780052066)
,p_item_source_plug_id=>wwv_flow_imp.id(21884718530780052066)
,p_prompt=>'Image'
,p_source=>'IMAGE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>30
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'allow_multiple_files', 'N',
  'display_as', 'INLINE',
  'purge_file_at', 'SESSION',
  'storage_type', 'APEX_APPLICATION_TEMP_FILES')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(21901577351188771612)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>10497518702467373873
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(12160351232982277016)
,p_process_sequence=>80
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Opslaan_1_1'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_image BLOB;',
'BEGIN',
'    SELECT blob_content',
'    INTO v_image',
'    FROM APEX_APPLICATION_TEMP_FILES',
'    WHERE name = :P57_IMAGE;',
'',
'    BETALING_BESTELLING_SAVE_PKG.betaling_bestelling_save_procedure(',
'        p_betalingtype_id    => :P57_BETALINGTYPE_ID,',
'        p_payment_date       => :P57_PAYMENT_DATE,',
'        p_amount             => :P57_AMOUNT,',
'        p_total_amount       => :P57_TOTAAL_BEDRAG,',
'        p_address_id         => :P57_ADDRESS,',
'        p_description        => :P57_OMSCHRIJVING,',
'        p_image              => v_image',
'    );',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Betaling niet gelukt'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(21884720113641052082)
,p_process_success_message=>'Betaling succesvol'
,p_internal_uid=>12160351232982277016
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(21884718615118052067)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(21884718530780052066)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form DeliveryFee'
,p_internal_uid=>10480659966396654328
);
end;
/
prompt --application/pages/page_00058
begin
wwv_flow_imp_page.create_page(
 p_id=>58
,p_name=>'Bestelling rapport'
,p_alias=>'BESTELLING-RAPPORT'
,p_step_title=>'Bestelling rapport'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12893762686641232993)
,p_plug_name=>'Bestelling rapport'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_location=>null
,p_menu_id=>wwv_flow_imp.id(16199428455127615231)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12893763361689232995)
,p_plug_name=>'Bestelling rapport'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'GGS_BESTELLINGEN'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Bestelling rapport'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(12893763417500232995)
,p_name=>'Bestelling rapport'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'E.LOKHAI@UNASAT.SR'
,p_internal_uid=>12893763417500232995
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12893764230173233137)
,p_db_column_name=>'ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12893764644432233138)
,p_db_column_name=>'GEBRUIKER_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Klant'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(20166743756792828043)
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12893765020741233138)
,p_db_column_name=>'DATUM'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Datum'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12893765466348233138)
,p_db_column_name=>'TOTALBEDRAG'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Total bedrag'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12893765885669233138)
,p_db_column_name=>'BESTELLINGSTATUS_ID'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Bestelling status'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(20200830729000861977)
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12893766240074233139)
,p_db_column_name=>'ROUTE_ID'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Route '
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(18538427204798083579)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12893766673288233139)
,p_db_column_name=>'OMSCHRIJVING'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Omschrijving'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12893767082835233139)
,p_db_column_name=>'ADRES_ID'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Adres'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(12220865973168405924)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12893767419170233139)
,p_db_column_name=>'BETALING_ID'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Betaling ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(12893778276653236691)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'128937783'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID:GEBRUIKER_ID:DATUM:TOTALBEDRAG:BESTELLINGSTATUS_ID:ROUTE_ID:OMSCHRIJVING:ADRES_ID:BETALING_ID'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12931173732722715503)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(12893763361689232995)
,p_button_name=>'Terug'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Terug'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:69:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-undo-arrow'
);
end;
/
prompt --application/pages/page_00059
begin
wwv_flow_imp_page.create_page(
 p_id=>59
,p_name=>'Bewerk Bestelling'
,p_alias=>'BEWERK-BESTELLING1'
,p_page_mode=>'MODAL'
,p_step_title=>'Bewerk Bestelling'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12223068003400824320)
,p_plug_name=>'Bewerk Bestelling'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    b.id AS bestelling_id,',
'    b.bestellingstatus_id',
'FROM ',
'    GGS_BESTELLINGEN b',
'',
''))
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12223071239404824322)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12223071622685824323)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(12223071239404824322)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Terug'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-undo-arrow'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12223073038683824324)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(12223071239404824322)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P59_BESTELLING_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_required_patch=>wwv_flow_imp.id(16199427946544615230)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12223073444248824324)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(12223071239404824322)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Opslaan'
,p_button_position=>'NEXT'
,p_button_condition=>'P59_BESTELLING_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-edit'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12223073869999824324)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(12223071239404824322)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P59_BESTELLING_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12223068454871824320)
,p_name=>'P59_BESTELLING_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(12223068003400824320)
,p_item_source_plug_id=>wwv_flow_imp.id(12223068003400824320)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Bestelling Id'
,p_source=>'BESTELLING_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12223069616789824321)
,p_name=>'P59_BESTELLINGSTATUS_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(12223068003400824320)
,p_item_source_plug_id=>wwv_flow_imp.id(12223068003400824320)
,p_prompt=>'Bestelling status '
,p_source=>'BESTELLINGSTATUS_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'BESTELLINGSTATUS'
,p_cHeight=>1
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12223071775363824323)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(12223071622685824323)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12223072506396824323)
,p_event_id=>wwv_flow_imp.id(12223071775363824323)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(12223074645221824324)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(12223068003400824320)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Bewerk Bestelling'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>12223074645221824324
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(12223075062920824325)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>12223075062920824325
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(12223074291472824324)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(12223068003400824320)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Bewerk Bestelling'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>12223074291472824324
);
end;
/
prompt --application/pages/page_00060
begin
wwv_flow_imp_page.create_page(
 p_id=>60
,p_name=>'Geleverd bestellingen'
,p_alias=>'GELEVERD-BESTELLINGEN'
,p_step_title=>'Geleverd bestellingen'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(18555875673040645084)
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12223356664881593247)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(16199428455127615231)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12223357384101593251)
,p_plug_name=>'Geleverd bestellingen'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    b.id AS bestelling_id,',
'    b.gebruiker_id,',
'    b.datum,',
'    b.totalbedrag,',
'    b.bestellingstatus_id,',
'    b.adres_id,',
'    b.omschrijving,',
'    b.route_id',
'FROM ',
'    GGS_BESTELLINGEN b',
'WHERE ',
'b.bestellingstatus_id = 2;',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Geleverd bestellingen'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(12223357482094593251)
,p_name=>'Geleverd bestellingen'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:59:&SESSION.::&DEBUG.::P59_BESTELLING_ID:#BESTELLING_ID#'
,p_detail_link_text=>'<img src="#APEX_FILES#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_owner=>'E.LOKHAI@UNASAT.SR'
,p_internal_uid=>12223357482094593251
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12223358298641593255)
,p_db_column_name=>'BESTELLING_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Bestelling Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12223358698695593255)
,p_db_column_name=>'GEBRUIKER_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Klant'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(20166743756792828043)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12223359015295593255)
,p_db_column_name=>'DATUM'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Datum'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12223359480804593256)
,p_db_column_name=>'TOTALBEDRAG'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Totalbedrag'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12223359819914593256)
,p_db_column_name=>'BESTELLINGSTATUS_ID'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Bestelling status '
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(20200830729000861977)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12223360213935593257)
,p_db_column_name=>'ADRES_ID'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Adres '
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(12220865973168405924)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12223360699162593257)
,p_db_column_name=>'OMSCHRIJVING'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Omschrijving'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12223361031289593258)
,p_db_column_name=>'ROUTE_ID'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Route'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(18538427204798083579)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(12223363585608593754)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'122233636'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'BESTELLING_ID:GEBRUIKER_ID:DATUM:TOTALBEDRAG:BESTELLINGSTATUS_ID:ADRES_ID:OMSCHRIJVING:ROUTE_ID'
);
end;
/
prompt --application/pages/page_00061
begin
wwv_flow_imp_page.create_page(
 p_id=>61
,p_name=>'Meest verkochte producten'
,p_alias=>'MEEST-VERKOCHTE-PRODUCTEN'
,p_step_title=>'Meest verkochte producten'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(18555875673040645084)
,p_protection_level=>'C'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(15689133422028016099)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(16199428455127615231)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(15689134123802016101)
,p_name=>'Meest verkochte producten'
,p_template=>4072358936313175081
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlight:t-Report--inline:t-Report--hideNoPagination'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'TABLE'
,p_query_table=>'MEEST_VERKOCHTE_PRODUCTEN'
,p_include_rowid_column=>false
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>50
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_prn_output=>'N'
,p_prn_format=>'PDF'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(15689134523978016375)
,p_query_column_id=>1
,p_column_alias=>'PRODUCT_NAAM'
,p_column_display_sequence=>1
,p_column_heading=>'Product Naam'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(15689134925614016375)
,p_query_column_id=>2
,p_column_alias=>'TOTAAL_VERKOCHT'
,p_column_display_sequence=>2
,p_column_heading=>'Totaal Verkocht'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
end;
/
prompt --application/pages/page_00062
begin
wwv_flow_imp_page.create_page(
 p_id=>62
,p_name=>'Korting'
,p_alias=>'KORTINGEN'
,p_step_title=>'Korting'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12160350129046277005)
,p_plug_name=>'Discount'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_query_type=>'SQL'
,p_plug_source=>'select * from KORTINGVIEW'
,p_plug_source_type=>'NATIVE_IG'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Discount'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(12160350309983277007)
,p_name=>'APEX$LINK'
,p_source_type=>'NONE'
,p_item_type=>'NATIVE_LINK'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>10
,p_value_alignment=>'CENTER'
,p_link_target=>'f?p=&APP_ID.:63:&APP_SESSION.::&DEBUG.:RP,63:P63_ID:\&ID.\'
,p_link_text=>'<img src="#APEX_FILES#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(12160350444051277008)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>20
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(12160350514959277009)
,p_name=>'CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Code'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
,p_max_length=>50
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(12160350679760277010)
,p_name=>'BEDRAG'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BEDRAG'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'% bedrag'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>40
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(12160350763509277011)
,p_name=>'STATUS_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATUS_ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Status '
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(17499481057133697395)
,p_lov_display_extra=>false
,p_lov_display_null=>false
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(12160350280038277006)
,p_internal_uid=>12160350280038277006
,p_is_editable=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(12200294533056570165)
,p_interactive_grid_id=>wwv_flow_imp.id(12160350280038277006)
,p_static_id=>'122002946'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(12200294734780570165)
,p_report_id=>wwv_flow_imp.id(12200294533056570165)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(12200295130923570167)
,p_view_id=>wwv_flow_imp.id(12200294734780570165)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(12160350309983277007)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(12200296031540570170)
,p_view_id=>wwv_flow_imp.id(12200294734780570165)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(12160350444051277008)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(12200296994228570171)
,p_view_id=>wwv_flow_imp.id(12200294734780570165)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(12160350514959277009)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(12200297898072570173)
,p_view_id=>wwv_flow_imp.id(12200294734780570165)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(12160350679760277010)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(12200298748269570176)
,p_view_id=>wwv_flow_imp.id(12200294734780570165)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(12160350763509277011)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(22221613425404576852)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(16199428455127615231)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12160350810360277012)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(12160350129046277005)
,p_button_name=>'Creeer'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Creer'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:63:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-plus-square'
);
end;
/
prompt --application/pages/page_00063
begin
wwv_flow_imp_page.create_page(
 p_id=>63
,p_name=>'AddDiscount'
,p_alias=>'KORTING'
,p_page_mode=>'MODAL'
,p_step_title=>'Korting'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(22221599289000576838)
,p_plug_name=>'AddDiscount'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'GGS_KORTINGCODE'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(22221601740216576842)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(22221602129578576842)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(22221601740216576842)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Terug'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-undo-arrow'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(22221603534815576843)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(22221601740216576842)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Verwijder'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'Wilt u dit code verwijderen?'
,p_confirm_style=>'danger'
,p_button_condition=>'P63_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-trash'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(22221603869416576843)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(22221601740216576842)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Opslaan'
,p_button_position=>'NEXT'
,p_button_condition=>'P63_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-edit'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(22221604344947576843)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(22221601740216576842)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Creer'
,p_button_position=>'NEXT'
,p_button_condition=>'P63_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_icon_css_classes=>'fa-plus-square'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22218375127280163752)
,p_name=>'P63_STATUS_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(22221599289000576838)
,p_item_source_plug_id=>wwv_flow_imp.id(22221599289000576838)
,p_prompt=>'Status '
,p_source=>'STATUS_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'GGS_STATUS.NAAM'
,p_cHeight=>1
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22221599571891576839)
,p_name=>'P63_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(22221599289000576838)
,p_item_source_plug_id=>wwv_flow_imp.id(22221599289000576838)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id'
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22221599959635576839)
,p_name=>'P63_CODE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(22221599289000576838)
,p_item_source_plug_id=>wwv_flow_imp.id(22221599289000576838)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Code'
,p_source=>'CODE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22221600437627576840)
,p_name=>'P63_BEDRAG'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(22221599289000576838)
,p_item_source_plug_id=>wwv_flow_imp.id(22221599289000576838)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Bedrag'
,p_source=>'BEDRAG'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(22221602179379576842)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(22221602129578576842)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(22221603029939576843)
,p_event_id=>wwv_flow_imp.id(22221602179379576842)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(22221605104824576844)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(22221599289000576838)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form AddDiscount'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>10817546456103179105
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(22221605527416576844)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>10817546878695179105
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(22221604710166576844)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(22221599289000576838)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form AddDiscount'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>10817546061445179105
);
end;
/
prompt --application/pages/page_00064
begin
wwv_flow_imp_page.create_page(
 p_id=>64
,p_name=>'Bestelling geschiedenis'
,p_alias=>'BESTELLING-GESCHIEDENIS'
,p_step_title=>'Bestelling geschiedenis'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(18555875673040645084)
,p_protection_level=>'C'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12223622104400895750)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(16199428455127615231)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(12223622835100895752)
,p_name=>'Bestelling geschiedenis'
,p_template=>4072358936313175081
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlight:t-Report--inline:t-Report--hideNoPagination'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    b.id AS bestelling_id,',
'    b.gebruiker_id,',
'    b.datum,',
'    b.totalbedrag,',
'    b.bestellingstatus_id,',
'    b.adres_id,',
'    b.omschrijving,',
'    b.route_id',
'FROM ',
'    GGS_BESTELLINGEN b',
'JOIN ',
'    GGS_GEBRUIKER g ON b.gebruiker_id = g.id',
'WHERE ',
'    UPPER(g.username) = UPPER(:APP_USER);',
''))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>50
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_prn_output=>'N'
,p_prn_format=>'PDF'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12160351519266277019)
,p_query_column_id=>1
,p_column_alias=>'BESTELLING_ID'
,p_column_display_sequence=>80
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12160351637185277020)
,p_query_column_id=>2
,p_column_alias=>'GEBRUIKER_ID'
,p_column_display_sequence=>90
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12160351730915277021)
,p_query_column_id=>3
,p_column_alias=>'DATUM'
,p_column_display_sequence=>10
,p_column_heading=>'Datum'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12160351891761277022)
,p_query_column_id=>4
,p_column_alias=>'TOTALBEDRAG'
,p_column_display_sequence=>60
,p_column_heading=>'Totalbedrag'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12160351998380277023)
,p_query_column_id=>5
,p_column_alias=>'BESTELLINGSTATUS_ID'
,p_column_display_sequence=>70
,p_column_heading=>'Bestelling status '
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(20200830729000861977)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12223625645153895756)
,p_query_column_id=>6
,p_column_alias=>'ADRES_ID'
,p_column_display_sequence=>30
,p_column_heading=>'Adres '
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(12220865973168405924)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12160352010801277024)
,p_query_column_id=>7
,p_column_alias=>'OMSCHRIJVING'
,p_column_display_sequence=>20
,p_column_heading=>'Omschrijving'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12160352172087277025)
,p_query_column_id=>8
,p_column_alias=>'ROUTE_ID'
,p_column_display_sequence=>100
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
end;
/
prompt --application/pages/page_00065
begin
wwv_flow_imp_page.create_page(
 p_id=>65
,p_name=>'Voorraad rapport'
,p_alias=>'VOORRAAD-RAPPORT'
,p_step_title=>'Voorraad rapport'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12160354237089277046)
,p_plug_name=>'Voorraad rapport'
,p_title=>'Voorraad rapport'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_location=>null
,p_menu_id=>wwv_flow_imp.id(16199428455127615231)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(30742207798407434470)
,p_plug_name=>'Producten'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    p."ID",',
'    p."NAAM",',
'    p."PRIJS",',
'    p."VOORRAAD",',
'    c."NAAM" AS "CATEGORIE",',
'    s."NAAM" AS "STATUS",',
'    sys.dbms_lob.getlength(p."IMAGE") AS "IMAGE"',
'FROM "GGS_PRODUCTEN" p',
'LEFT JOIN "GGS_CATEGORIEEN" c ON p."CATEGORIEEN_ID" = c."ID"',
'LEFT JOIN "GGS_STATUS" s ON p."STATUS_ID" = s."ID";',
'',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(31075892398534675567)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'O.SAMUELS@UNASAT.SR'
,p_internal_uid=>31075892398534675567
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(31075892485092675568)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(31075892621826675569)
,p_db_column_name=>'NAAM'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Naam'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(31075892637625675570)
,p_db_column_name=>'PRIJS'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Prijs'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(31075892760770675571)
,p_db_column_name=>'VOORRAAD'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Voorraad'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(31075892922072675572)
,p_db_column_name=>'CATEGORIE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Categorie'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(31075892963064675573)
,p_db_column_name=>'STATUS'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(31075893074265675574)
,p_db_column_name=>'IMAGE'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Image'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'IMAGE:GGS_PRODUCTEN:IMAGE:ID::::::::'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(31075860595857985235)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'67503752'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'NAAM:PRIJS:VOORRAAD:CATEGORIE:STATUS:IMAGE:'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12931174066957715506)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(30742207798407434470)
,p_button_name=>'Terug'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Terug'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:69:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-undo-arrow'
);
end;
/
prompt --application/pages/page_00066
begin
wwv_flow_imp_page.create_page(
 p_id=>66
,p_name=>'Uitchecken'
,p_alias=>'UITCHECKENTESTNEW'
,p_step_title=>'Uitchecken'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(34299064372500963158)
,p_name=>'Uitchecken'
,p_template=>4072358936313175081
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlight:t-Report--inline:t-Report--hideNoPagination'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    LISTAGG(p.naam || '' (x'' || ci.hoeveelheid || '')'', '', '') ',
'        WITHIN GROUP (ORDER BY p.naam) AS product_names, ',
'    SUM(p.prijs * ci.hoeveelheid) || '' SRD'' AS total_cart_value',
'FROM ggs_cart ci',
'JOIN ggs_producten p ON p.id = ci.product_id',
'JOIN ggs_gebruiker g ON ci.gebruiker_id = g.id',
'JOIN ggs_adres a ON g.adres_id = a.id',
'WHERE UPPER(g.username) = UPPER(:APP_USER)',
'',
''))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>50
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_prn_output=>'N'
,p_prn_format=>'PDF'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12478681871608762914)
,p_query_column_id=>1
,p_column_alias=>'PRODUCT_NAMES'
,p_column_display_sequence=>1
,p_column_heading=>'Producten'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12478682228955762915)
,p_query_column_id=>2
,p_column_alias=>'TOTAL_CART_VALUE'
,p_column_display_sequence=>2
,p_column_heading=>'totale bedrag van items'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12478680734241762911)
,p_button_sequence=>80
,p_button_name=>'Opslaan'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Verder'
,p_button_redirect_url=>'f?p=&APP_ID.:57:&SESSION.::&DEBUG.::P57_AMOUNT,P57_TOTAAL_BEDRAG,P57_OMSCHRIJVING,P57_NEW_BETALING,P57_ADDRESS:&66_TOTALEKOSTEN.,&66_TOTALEKOSTEN.,&P66_OMSCHRIJVING.,&66_TOTALEKOSTEN.,&P66_ADDRESS.'
,p_icon_css_classes=>'fa-arrow-right'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23292775166960802929)
,p_name=>'P66_OMSCHRIJVING'
,p_item_sequence=>50
,p_use_cache_before_default=>'NO'
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    LISTAGG(p.naam || '' (x'' || ci.hoeveelheid || '')'', '' '') ',
'        WITHIN GROUP (ORDER BY p.naam) AS product_names',
'FROM ggs_cart ci',
'JOIN ggs_producten p ON p.id = ci.product_id',
'JOIN ggs_gebruiker g ON ci.gebruiker_id = g.id',
'JOIN ggs_adres a ON g.adres_id = a.id',
'WHERE UPPER(g.username) = UPPER(:APP_USER);',
''))
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30633152029516243598)
,p_name=>'P66_DELIVERY_PRICE'
,p_item_sequence=>30
,p_prompt=>'Delivery Fee'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(34316504512025636773)
,p_name=>'P66_ADDRESS'
,p_item_sequence=>20
,p_prompt=>'Adres'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'ADRESSPERUSERADDRES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT *',
'FROM GGS_ADRES ',
'WHERE GEBRUIKER_ID = (SELECT ID FROM GGS_GEBRUIKER WHERE UPPER(USERNAME) = UPPER(:APP_USER))'))
,p_cHeight=>1
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(34363399562609814962)
,p_name=>'66_TOTALEKOSTEN'
,p_item_sequence=>70
,p_prompt=>'Totale kosten'
,p_source=>'66_TOTALEKOSTEN'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(34696832781186200657)
,p_name=>'P66_KORTING'
,p_item_sequence=>60
,p_prompt=>'Korting'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(34696832807613200658)
,p_name=>'P66_PROMOCODE'
,p_item_sequence=>40
,p_prompt=>'Promocode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12478684939519762918)
,p_name=>'Refresh'
,p_event_sequence=>10
,p_bind_type=>'live'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexbeforepagesubmit'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12478685581123762919)
,p_event_id=>wwv_flow_imp.id(12478684939519762918)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Refresh_Before_submit'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'EVENT_SOURCE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12478685950900762919)
,p_name=>'OnChangePice'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P66_DELIVERY_PRICE'
,p_bind_type=>'live'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12478686499558762919)
,p_event_id=>wwv_flow_imp.id(12478685950900762919)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>'CalculateCost'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_product_names VARCHAR2(4000);',
'    v_total_cart_value NUMBER;',
'    v_delivery_price NUMBER := NVL(:P66_DELIVERY_PRICE, 0);',
'    korting_value NUMBER := 0;',
'    promo_value NUMBER := 0;',
'    bedrag_na_korting_value NUMBER;',
'    bedrag_na_promo_value NUMBER;',
'',
'BEGIN',
'    -- Calculate total cart value',
'    SELECT ',
'        LISTAGG(p.naam || '' (x'' || ci.hoeveelheid || '')'', '', '') ',
'            WITHIN GROUP (ORDER BY p.naam),',
'        SUM(p.prijs * ci.hoeveelheid)',
'    INTO v_product_names, v_total_cart_value',
'    FROM ggs_cart ci',
'    JOIN ggs_producten p ON p.id = ci.product_id',
'    JOIN ggs_gebruiker g ON ci.gebruiker_id = g.id',
'    JOIN ggs_adres a ON g.adres_id = a.id',
'    WHERE UPPER(g.username) = UPPER(:APP_USER);',
'',
'    -- Ensure NULL values are handled',
'    v_total_cart_value := NVL(v_total_cart_value, 0);',
'',
'    -- Add delivery price to total',
'    v_total_cart_value := v_total_cart_value + v_delivery_price;',
'',
'    -- Check if a discount code (korting) is provided',
'    IF :P66_KORTING IS NOT NULL THEN',
'        BEGIN',
'            -- Retrieve discount amount (assuming it''s an absolute amount)',
'            SELECT NVL(BEDRAG, 0)',
'            INTO korting_value',
'            FROM GGS_KORTINGCODE',
'            WHERE UPPER(CODE) = UPPER(:P66_KORTING) AND STATUS_ID = 1;',
'',
'        EXCEPTION',
'            WHEN NO_DATA_FOUND THEN',
'                korting_value := 0; -- No valid discount found',
'            WHEN OTHERS THEN',
'                korting_value := 0; -- Handle unexpected errors gracefully',
'        END;',
'',
'        -- Apply discount if valid',
'        IF korting_value > 0 THEN',
'            -- Ensure discount does not exceed total cart value (excluding delivery)',
'            IF korting_value > (v_total_cart_value - v_delivery_price) THEN',
'                korting_value := v_total_cart_value - v_delivery_price;',
'            END IF;',
'            ',
'            -- Apply discount',
'            bedrag_na_korting_value := v_total_cart_value - korting_value;',
'        ELSE',
'            bedrag_na_korting_value := v_total_cart_value;',
'        END IF;',
'    ELSE',
'        bedrag_na_korting_value := v_total_cart_value;',
'    END IF;',
'',
'    -- Check if a promotion code (promo) is provided',
'    IF :P66_PROMOCODE IS NOT NULL THEN',
'        BEGIN',
'            -- Retrieve promo amount (assuming it''s an absolute amount)',
'            SELECT NVL(BEDRAG, 0)',
'            INTO promo_value',
'            FROM GGS_PROMOCODE',
'            WHERE UPPER(CODE) = UPPER(:P66_PROMOCODE) AND STATUS_ID = 1;',
'',
'        EXCEPTION',
'            WHEN NO_DATA_FOUND THEN',
'                promo_value := 0; -- No valid promo found',
'            WHEN OTHERS THEN',
'                promo_value := 0; -- Handle unexpected errors gracefully',
'        END;',
'',
'        -- Apply promo if valid',
'        IF promo_value > 0 THEN',
'            -- Ensure promo does not exceed total cart value (excluding delivery)',
'            IF promo_value > (bedrag_na_korting_value - v_delivery_price) THEN',
'                promo_value := bedrag_na_korting_value - v_delivery_price;',
'            END IF;',
'            ',
'            -- Apply promo',
'            bedrag_na_promo_value := bedrag_na_korting_value - promo_value;',
'        ELSE',
'            bedrag_na_promo_value := bedrag_na_korting_value;',
'        END IF;',
'    ELSE',
'        bedrag_na_promo_value := bedrag_na_korting_value;',
'    END IF;',
'',
'    -- Ensure total cost is not negative',
'    IF bedrag_na_promo_value < v_delivery_price THEN',
'        bedrag_na_promo_value := v_delivery_price;',
'    END IF;',
'',
'    -- Assign final total cost',
'    :66_TOTALEKOSTEN := bedrag_na_promo_value;',
'END;',
''))
,p_attribute_02=>'P66_DELIVERY_PRICE,P66_KORTING,P66_PROMOCODE'
,p_attribute_03=>'66_TOTALEKOSTEN'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12478686835107762920)
,p_name=>'OnChange'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P66_ADDRESS'
,p_bind_type=>'live'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12478687318408762920)
,p_event_id=>wwv_flow_imp.id(12478686835107762920)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_name=>'Change_Values'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_woonwijk_id GGS_ADRES.woonwijk_id%TYPE;',
'BEGIN',
'    ',
'    SELECT woonwijk_id ',
'    INTO v_woonwijk_id ',
'    FROM GGS_ADRES ',
'    WHERE id = :P66_ADDRESS;',
'    ',
' ',
'    SELECT prijs ',
'    INTO :P66_DELIVERY_PRICE',
'    FROM GGS_WOONWIJK ',
'    WHERE id = v_woonwijk_id;',
'END;',
''))
,p_attribute_02=>'P66_ADDRESS'
,p_attribute_03=>'P66_DELIVERY_PRICE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12478688658416762921)
,p_name=>'CostAfterKorting'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P66_KORTING'
,p_bind_type=>'live'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12478689133874762921)
,p_event_id=>wwv_flow_imp.id(12478688658416762921)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'CalculateCostAfterKorting'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_product_names VARCHAR2(4000);',
'    v_total_cart_value NUMBER := :66_TOTALEKOSTEN;',
'    korting_value NUMBER := 0; ',
'    bedrag_na_korting_value NUMBER;',
'    v_delivery_price NUMBER := :P66_DELIVERY_PRICE;',
'    v_korting_status INT;',
'BEGIN',
'    IF :P66_KORTING IS NOT NULL THEN',
'        BEGIN',
'            SELECT BEDRAG, STATUS_ID',
'            INTO korting_value, v_korting_status',
'            FROM GGS_KORTINGCODE',
'            WHERE UPPER(CODE) = UPPER(:P66_KORTING);',
'',
'            IF v_korting_status != 1 THEN',
'                RAISE_APPLICATION_ERROR(-20001, ''Kortingcode is niet geldig'');',
'            END IF;',
'        EXCEPTION',
'            WHEN NO_DATA_FOUND THEN',
'                RAISE_APPLICATION_ERROR(-20002, ''Code is niet gevonden.'');',
'        END;',
'    END IF;',
'',
'    bedrag_na_korting_value := (v_total_cart_value / 100) * korting_value;',
'',
'',
'    :66_TOTALEKOSTEN := v_total_cart_value - bedrag_na_korting_value;',
'',
'    IF :66_TOTALEKOSTEN < 0 THEN',
'        :66_TOTALEKOSTEN := 0;',
'    END IF;',
'END;',
''))
,p_attribute_02=>'P66_KORTING,P66_DELIVERY_PRICE'
,p_attribute_03=>'66_TOTALEKOSTEN'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12478687729994762920)
,p_name=>'New_1'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P66_PROMOCODE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12478688249878762921)
,p_event_id=>wwv_flow_imp.id(12478687729994762920)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_product_names VARCHAR2(4000);',
'    v_total_cart_value NUMBER := :66_TOTALEKOSTEN;',
'    v_delivery_price NUMBER := :P66_DELIVERY_PRICE;',
'    v_promocode_bedrag NUMBER := 0; ',
'    v_promocode_status INT;',
'BEGIN',
'    ',
'    -- SELECT ',
'    --     LISTAGG(p.naam || '' (x'' || ci.hoeveelheid || '')'', '', '') ',
'    --         WITHIN GROUP (ORDER BY p.naam),',
'    --     SUM(p.prijs * ci.hoeveelheid)',
'    -- INTO v_product_names, v_total_cart_value',
'    -- FROM ggs_cart ci',
'    -- JOIN ggs_producten p ON p.id = ci.product_id',
'    -- JOIN ggs_gebruiker g ON ci.gebruiker_id = g.id',
'    -- JOIN ggs_adres a ON g.adres_id = a.id',
'    -- WHERE UPPER(g.username) = UPPER(:APP_USER);',
'',
'    ',
'    -- v_total_cart_value := NVL(v_total_cart_value, 0) + NVL(v_delivery_price, 0);',
'',
'    ',
'    IF :P66_PROMOCODE IS NOT NULL THEN',
'        BEGIN',
'            ',
'            SELECT bedrag, status_id ',
'            INTO v_promocode_bedrag, v_promocode_status',
'            FROM GGS_PROMOCODE',
'            WHERE UPPER(code) = UPPER(:P66_PROMOCODE);',
'',
'            --Check als valid is',
'            IF v_promocode_status != 1 THEN',
'                RAISE_APPLICATION_ERROR(-20001, ''Promocode is niet meer geldig.'');',
'            END IF;',
'        EXCEPTION',
'            WHEN NO_DATA_FOUND THEN',
'                RAISE_APPLICATION_ERROR(-20002, ''Promo code bestaat niet.'');',
'        END;',
'    END IF;',
'',
'    -- Calculate the final total cost by subtracting the promo discount',
'    :66_TOTALEKOSTEN := v_total_cart_value - v_promocode_bedrag;',
'',
'      IF :66_TOTALEKOSTEN < 0 THEN',
'        :66_TOTALEKOSTEN := 0;',
'    END IF;',
'',
'    ',
'END;',
''))
,p_attribute_02=>'P66_PROMOCODE'
,p_attribute_03=>'66_TOTALEKOSTEN'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
end;
/
prompt --application/pages/page_00067
begin
wwv_flow_imp_page.create_page(
 p_id=>67
,p_name=>'Omzet rapport'
,p_alias=>'OMZET-RAPPORT'
,p_step_title=>'Omzet rapport'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12923329143767528882)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(16199428455127615231)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12923329833568528884)
,p_plug_name=>'Omzet rapport'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ID,',
'       GEBRUIKER_ID,',
'       OMSCHRIJVING,',
'       DATUM,',
'       TOTALBEDRAG,',
'       BESTELLINGSTATUS_ID',
'  FROM GGS_BESTELLINGEN',
'WHERE BESTELLINGSTATUS_ID = 21 OR BESTELLINGSTATUS_ID = 2;',
'',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Omzet rapport'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(12923329954375528884)
,p_name=>'Omzet rapport'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'E.LOKHAI@UNASAT.SR'
,p_internal_uid=>12923329954375528884
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12923330647504529057)
,p_db_column_name=>'ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12923333035543529059)
,p_db_column_name=>'OMSCHRIJVING'
,p_display_order=>10
,p_column_identifier=>'G'
,p_column_label=>'Omschrijving'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12923331455320529057)
,p_db_column_name=>'DATUM'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Datum'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12923331894886529058)
,p_db_column_name=>'TOTALBEDRAG'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Totalbedrag'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12160354337405277047)
,p_db_column_name=>'GEBRUIKER_ID'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Klant'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(20166743756792828043)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12160354428126277048)
,p_db_column_name=>'BESTELLINGSTATUS_ID'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Bestellingstatus Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(12923345287279530804)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'129233453'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID:DATUM:TOTALBEDRAG:OMSCHRIJVING'
,p_sum_columns_on_break=>'TOTALBEDRAG'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12932076323229490142)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(12923329833568528884)
,p_button_name=>'Terug'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Terug'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:69:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-undo-arrow'
);
end;
/
prompt --application/pages/page_00069
begin
wwv_flow_imp_page.create_page(
 p_id=>69
,p_name=>'Rapporten'
,p_alias=>'RAPPORTEN'
,p_step_title=>'Rapporten'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(18555875673040645084)
,p_protection_level=>'C'
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12931165650055714263)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(16199428455127615231)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12160354699655277050)
,p_button_sequence=>10
,p_button_name=>'BestellingenRapport'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Bestellingen Rapport'
,p_button_redirect_url=>'f?p=&APP_ID.:58:&SESSION.::&DEBUG.:::'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12931173550781715501)
,p_button_sequence=>20
,p_button_name=>'Voorraadrapport'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Voorraad Rapport'
,p_button_redirect_url=>'f?p=&APP_ID.:65:&SESSION.::&DEBUG.:::'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12931173697454715502)
,p_button_sequence=>30
,p_button_name=>'OmzetRapport'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Omzet Rapport'
,p_button_redirect_url=>'f?p=&APP_ID.:67:&SESSION.::&DEBUG.:::'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
end;
/
prompt --application/pages/page_00070
begin
wwv_flow_imp_page.create_page(
 p_id=>70
,p_name=>'testie'
,p_alias=>'TESTIE'
,p_step_title=>'testie'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12932574781119781270)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(16199428455127615231)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
end;
/
prompt --application/pages/page_00072
begin
wwv_flow_imp_page.create_page(
 p_id=>72
,p_name=>'Dashboard'
,p_alias=>'DASHBOARD'
,p_step_title=>'Dashboard'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(18555875673040645084)
,p_protection_level=>'C'
,p_page_component_map=>'04'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12936137846580896319)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(16199428455127615231)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12936138502485896320)
,p_plug_name=>'Omzet'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(12936138901928896321)
,p_region_id=>wwv_flow_imp.id(12936138502485896320)
,p_chart_type=>'bar'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_connect_nulls=>'Y'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_legend_rendered=>'off'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(12936140669390896322)
,p_chart_id=>wwv_flow_imp.id(12936138901928896321)
,p_seq=>10
,p_name=>'Series 1'
,p_data_source_type=>'TABLE'
,p_max_row_count=>20
,p_query_table=>'GGS_BESTELLINGEN'
,p_query_where=>'BESTELLINGSTATUS_ID != 1'
,p_include_rowid_column=>false
,p_items_value_column_name=>'TOTALBEDRAG'
,p_group_short_desc_column_name=>'DATUM'
,p_items_label_column_name=>'DATUM'
,p_aggregate_function=>'SUM'
,p_color=>'#4cd964'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(12936139470536896321)
,p_chart_id=>wwv_flow_imp.id(12936138901928896321)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_title=>'Datum'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(12936140024516896322)
,p_chart_id=>wwv_flow_imp.id(12936138901928896321)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_title=>'Omzet'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12936141273741896322)
,p_plug_name=>'Klanten activity'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(12936141698558896323)
,p_region_id=>wwv_flow_imp.id(12936141273741896322)
,p_chart_type=>'bar'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_connect_nulls=>'Y'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_legend_rendered=>'off'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(12936142189669896323)
,p_chart_id=>wwv_flow_imp.id(12936141698558896323)
,p_seq=>10
,p_name=>'Series 1'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    g.username, ',
'    COUNT(b.id) AS bestelling_count',
'FROM ',
'    GGS_BESTELLINGEN b',
'JOIN ',
'    GGS_GEBRUIKER g ON b.gebruiker_id = g.id',
'WHERE bestellingstatus_id !=1',
'GROUP BY ',
'    g.username',
'',
''))
,p_max_row_count=>20
,p_items_value_column_name=>'BESTELLING_COUNT'
,p_items_label_column_name=>'USERNAME'
,p_color=>'#48a025'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(12931174125943715507)
,p_chart_id=>wwv_flow_imp.id(12936141698558896323)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_title=>'Klant'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(12931174208981715508)
,p_chart_id=>wwv_flow_imp.id(12936141698558896323)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_title=>'Aantal bestellingen'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12936142731804896323)
,p_plug_name=>'Voorraad'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(12936143125858896324)
,p_region_id=>wwv_flow_imp.id(12936142731804896323)
,p_chart_type=>'bar'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(12936144879950896325)
,p_chart_id=>wwv_flow_imp.id(12936143125858896324)
,p_seq=>10
,p_name=>'Series 1'
,p_data_source_type=>'TABLE'
,p_max_row_count=>20
,p_query_table=>'GGS_PRODUCTEN'
,p_query_where=>'status_id = 1'
,p_include_rowid_column=>false
,p_items_value_column_name=>'VOORRAAD'
,p_items_label_column_name=>'NAAM'
,p_color=>'#228819'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(12936143628425896324)
,p_chart_id=>wwv_flow_imp.id(12936143125858896324)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_title=>'Product'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(12936144204998896324)
,p_chart_id=>wwv_flow_imp.id(12936143125858896324)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_title=>'Aantal'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
);
end;
/
prompt --application/pages/page_00074
begin
wwv_flow_imp_page.create_page(
 p_id=>74
,p_name=>'TWO-FACTOR-AUTH'
,p_alias=>'TWO-FACTOR-AUTH'
,p_step_title=>'Please enter your verification code'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-Region{',
'    width: 40% !important;',
'    margin: 0 auto;',
'    border-radius: 10px;',
'}',
'',
''))
,p_step_template=>2101157952850466385
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(13045110056335352752)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_location=>null
,p_menu_id=>wwv_flow_imp.id(16199428455127615231)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
,p_required_patch=>wwv_flow_imp.id(16199427946544615230)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(13045113373836352907)
,p_plug_name=>'Please enter your verification code'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(13045116947536352912)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(13045113373836352907)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Terug'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:9999:&APP_SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-undo-arrow'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12434283136078996006)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(13045113373836352907)
,p_button_name=>'P74_Verder'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Verder'
,p_button_position=>'CREATE'
,p_icon_css_classes=>'fa-arrow-right'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(13045118793761352913)
,p_branch_name=>'Go To Catalog'
,p_branch_action=>'f?p=&APP_ID.:46:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(12434283136078996006)
,p_branch_sequence=>1
,p_branch_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_branch_condition=>'P74_VALID'
,p_branch_condition_text=>'true'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10814093005482040022)
,p_name=>'P74_VALID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(13045113373836352907)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10814093302862040025)
,p_name=>'P74_CODE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(13045113373836352907)
,p_prompt=>'Authenticatie Code'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12434282937168996004)
,p_name=>'P74_NEW'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(13045113373836352907)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12434283035507996005)
,p_name=>'P74_USERNAME'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(13045113373836352907)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(13045119628519352914)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Process form TWO-FACTOR-AUTH'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  v_user_id NUMBER;',
'  chk_token_existence NUMBER;',
'',
'BEGIN',
'',
'SELECT ID INTO v_user_id',
'    FROM GGS_GEBRUIKER',
'    WHERE UPPER(USERNAME) = UPPER(:APP_USER);',
'',
'SELECT COUNT(*) ',
'    INTO chk_token_existence ',
'    FROM GGS_TWO_FACTOR_TOKENS ',
'    WHERE GEBRUIKER_ID = v_user_id AND EXPIRATION_DATE > SYSTIMESTAMP ;',
'',
'    IF chk_token_existence > 0 THEN',
'        :P74_VALID := ''true'';',
'    ELSE    ',
'        :P74_VALID := ''false'';',
'        RAISE_APPLICATION_ERROR(-20001, ''Uw token is al vervallen graag opnieuw inloggen'');',
'    END IF;',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>13045119628519352914
);
end;
/
prompt --application/pages/page_09999
begin
wwv_flow_imp_page.create_page(
 p_id=>9999
,p_name=>'Login Page'
,p_alias=>'LOGIN'
,p_step_title=>'GreenGrocers - Log In'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>2101157952850466385
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'12'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(16199434648875615243)
,p_plug_name=>'GreenGrocers'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2674157997338192145
,p_plug_display_sequence=>10
,p_region_image=>'#APP_FILES#icons/app-icon-512.png'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(16199436426462615245)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(16199434648875615243)
,p_button_name=>'LOGIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Sign In'
,p_button_position=>'NEXT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(17499676454298017041)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(16199434648875615243)
,p_button_name=>'Signup'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Sign up'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(18154467400147480666)
,p_branch_name=>'TWO_FACTOR_REDIRECT'
,p_branch_action=>'f?p=&APP_ID.:74:&SESSION.::&DEBUG.:74:P74_USERNAME:&P_USERNAME.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_required_patch=>wwv_flow_imp.id(16199427946544615230)
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(6873753542555354424)
,p_branch_name=>'stay if user not found'
,p_branch_action=>'f?p=&APP_ID.:9999:&SESSION.::&DEBUG.:9999:P_USERNAME:&P_USERNAME.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>30
,p_required_patch=>wwv_flow_imp.id(16199427946544615230)
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6873753708961354426)
,p_name=>'P9999_VALID_USER_YN'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(16199434648875615243)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16199435157134615244)
,p_name=>'P_USERNAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(16199434648875615243)
,p_prompt=>'P Username'
,p_placeholder=>'Username'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_tag_attributes=>'autocomplete="username"'
,p_field_template=>2040785906935475274
,p_item_icon_css_classes=>'fa-user'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16199435575773615245)
,p_name=>'P_PASSWORD'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(16199434648875615243)
,p_prompt=>'P Password'
,p_placeholder=>'Password'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_tag_attributes=>'autocomplete="current-password"'
,p_field_template=>2040785906935475274
,p_item_icon_css_classes=>'fa-key'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'submit_when_enter_pressed', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16199435956400615245)
,p_name=>'P9999_REMEMBER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(16199434648875615243)
,p_prompt=>'Remember username'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_display_when=>'apex_authentication.persistent_cookies_enabled'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>2040785906935475274
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(6873753029660354419)
,p_name=>'msg when verification attempts maxed'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'REQUEST_EQUALS_CONDITION'
,p_display_when_cond=>'NEWCODE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(6873753122019354420)
,p_event_id=>wwv_flow_imp.id(6873753029660354419)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'<p>No more verification attempts left, request a new code.</p>'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(6873753665959354425)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'check if valid user'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P9999_VALID_USER_YN := ''N'';',
'',
'if apex_acl.has_user_any_roles (',
'               p_application_id => :APP_ID, ',
'               p_user_name => :P_USERNAME ) then',
'    :P9999_VALID_USER_YN := ''Y'';',
'end if;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>6873753665959354425
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(6873753856912354427)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'show different message if not a valid user'
,p_process_sql_clob=>'null;'
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P9999_VALID_USER_YN'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'N'
,p_process_success_message=>'A verification code will be emailed, if this user is found.'
,p_internal_uid=>6873753856912354427
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(16199438619291615247)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Set Username Cookie'
,p_attribute_01=>'PLSQL_PACKAGE'
,p_attribute_03=>'APEX_AUTHENTICATION'
,p_attribute_04=>'SEND_LOGIN_USERNAME_COOKIE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>4795379970570217508
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(16199439085480615247)
,p_page_process_id=>wwv_flow_imp.id(16199438619291615247)
,p_page_id=>9999
,p_name=>'p_username'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'EXPRESSION'
,p_value_language=>'PLSQL'
,p_value=>'lower( :P9999_USERNAME )'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(16199439641543615247)
,p_page_process_id=>wwv_flow_imp.id(16199438619291615247)
,p_page_id=>9999
,p_name=>'p_consent'
,p_direction=>'IN'
,p_data_type=>'BOOLEAN'
,p_has_default=>false
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'P9999_REMEMBER'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(16199436692068615246)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Login'
,p_attribute_01=>'PLSQL_PACKAGE'
,p_attribute_03=>'APEX_AUTHENTICATION'
,p_attribute_04=>'LOGIN'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>4795378043347217507
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(16199437216930615246)
,p_page_process_id=>wwv_flow_imp.id(16199436692068615246)
,p_page_id=>9999
,p_name=>'p_username'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'ITEM'
,p_value=>'P_USERNAME'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(16199437695625615246)
,p_page_process_id=>wwv_flow_imp.id(16199436692068615246)
,p_page_id=>9999
,p_name=>'p_password'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'P_PASSWORD'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(16199438158389615247)
,p_page_process_id=>wwv_flow_imp.id(16199436692068615246)
,p_page_id=>9999
,p_name=>'p_set_persistent_auth'
,p_direction=>'IN'
,p_data_type=>'BOOLEAN'
,p_has_default=>true
,p_display_sequence=>3
,p_value_type=>'API_DEFAULT'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(16199440494688615248)
,p_process_sequence=>80
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>4795381845967217509
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(16199440088559615248)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P9999_USERNAME := apex_authentication.get_login_username_cookie;',
':P9999_REMEMBER := case when :P9999_USERNAME is not null then ''Y'' end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>4795381439838217509
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(6873752969780354418)
,p_process_sequence=>10
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'generate_token'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_token VARCHAR2(30);',
'    v_user_email VARCHAR2(100);',
'    chk_token_existence NUMBER;',
'    v_username VARCHAR2(255) := :P_USERNAME;',
'    v_usr_id NUMBER;',
'    v_salt CONSTANT VARCHAR2(255) := ''TSK'';',
'    v_chars CONSTANT VARCHAR2(100) := ''ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789!@#$%^&*'';',
'BEGIN',
'',
'    v_token := v_salt;',
'    FOR i IN 1..10 LOOP',
'        v_token := v_token || SUBSTR(v_chars, TRUNC(DBMS_RANDOM.VALUE(1, LENGTH(v_chars) + 1)), 1);',
'    END LOOP;',
'',
'',
'    BEGIN',
'        SELECT ID, EMAIL ',
'        INTO v_usr_id, v_user_email',
'        FROM GGS_GEBRUIKER',
'        WHERE UPPER(USERNAME) = UPPER(v_username);',
'    EXCEPTION',
'        WHEN NO_DATA_FOUND THEN',
'            RAISE_APPLICATION_ERROR(-20001, ''User not found'');',
'    END;',
'',
'',
'    SELECT COUNT(*) ',
'    INTO chk_token_existence ',
'    FROM GGS_TWO_FACTOR_TOKENS ',
'    WHERE GEBRUIKER_ID = v_usr_id;',
'',
'   ',
'    IF chk_token_existence > 0 THEN',
'        UPDATE GGS_TWO_FACTOR_TOKENS ',
'        SET code = v_token,',
'            EXPIRATION_DATE = SYSDATE + (5 / 1440)',
'        WHERE GEBRUIKER_ID = v_usr_id;',
'    ELSE',
'        INSERT INTO GGS_TWO_FACTOR_TOKENS (code, EXPIRATION_DATE, GEBRUIKER_ID)',
'        VALUES (v_token, SYSDATE + (5 / 1440), v_usr_id);',
'    END IF;',
'',
'',
'    -- APEX_MAIL.SEND(',
'    --     p_to        => v_user_email,',
'    --     p_from      => ''ggstore@store.com'',',
'    --     p_subj      => ''Green Grocers Two Factor Token'',',
'    --     p_body      => ''Uw verificatie code is: '' || v_token || '' DO NOT SHARE!''',
'    -- );',
'',
'END;',
'',
''))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'something went wring'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(16199436426462615245)
,p_process_success_message=>'Check your email for your verification code.'
,p_internal_uid=>6873752969780354418
);
end;
/
prompt --application/deployment/definition
begin
wwv_flow_imp_shared.create_install(
 p_id=>wwv_flow_imp.id(21866066965984292738)
);
end;
/
prompt --application/deployment/checks
begin
null;
end;
/
prompt --application/deployment/buildoptions
begin
null;
end;
/
prompt --application/end_environment
begin
wwv_flow_imp.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false)
);
commit;
end;
/
set verify on feedback on define on
prompt  ...done
