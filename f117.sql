set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- ORACLE Application Express (APEX) export file
--
-- You should run the script connected to SQL*Plus as the Oracle user
-- APEX_050100 or as the owner (parsing schema) of the application.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_api.import_begin (
 p_version_yyyy_mm_dd=>'2016.08.24'
,p_release=>'5.1.2.00.09'
,p_default_workspace_id=>73128355368349816
,p_default_application_id=>117
,p_default_owner=>'A171942'
);
end;
/
prompt --application/set_environment
 
prompt APPLICATION 117 - Shift Scheduler
--
-- Application Export:
--   Application:     117
--   Name:            Shift Scheduler
--   Date and Time:   23:43 Tuesday August 8, 2017
--   Exported By:     MARINOSY@GMAIL.COM
--   Flashback:       0
--   Export Type:     Application Export
--   Version:         5.1.2.00.09
--   Instance ID:     63427247530298
--

-- Application Statistics:
--   Pages:                     13
--     Items:                   49
--     Processes:                8
--     Regions:                 13
--     Buttons:                  5
--   Shared Components:
--     Logic:
--     Navigation:
--       Lists:                  2
--       Breadcrumbs:            1
--         Entries:              1
--     Security:
--       Authentication:         2
--     User Interface:
--       Themes:                 1
--       Templates:
--         Page:                 9
--         Region:              15
--         Label:                5
--         List:                11
--         Popup LOV:            1
--         Calendar:             1
--         Breadcrumb:           1
--         Button:               3
--         Report:               9
--       LOVs:                   1
--     Globalization:
--     Reports:
--       Queries:                2
--       Layouts:                2
--   Supporting Objects:  Included

prompt --application/delete_application
begin
wwv_flow_api.remove_flow(wwv_flow.g_flow_id);
end;
/
prompt --application/ui_types
begin
null;
end;
/
prompt --application/create_application
begin
wwv_flow_api.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_display_id=>nvl(wwv_flow_application_install.get_application_id,117)
,p_owner=>nvl(wwv_flow_application_install.get_schema,'A171942')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'Shift Scheduler')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'MIKRO')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'4A5ADAE1095FBFE5DF617F5789B4242DD1E7D5EBA48E59AB7D88CAB1438A21ED'
,p_bookmark_checksum_function=>'SH1'
,p_compatibility_mode=>'5.1'
,p_flow_language=>'el'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_date_format=>'DD-MM-YYYY'
,p_date_time_format=>'DD-MM-YYYY HH24:MI'
,p_direction_right_to_left=>'N'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication=>'PLUGIN'
,p_authentication_id=>wwv_flow_api.id(73183183969446476)
,p_application_tab_set=>0
,p_logo_image=>'TEXT:Shift Scheduler'
,p_proxy_server=> nvl(wwv_flow_application_install.get_proxy,'')
,p_flow_version=>'release 1.0'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_flow_unavailable_text=>'This application is currently unavailable at this time.'
,p_exact_substitutions_only=>'Y'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_rejoin_existing_sessions=>'N'
,p_csv_encoding=>'N'
,p_auto_time_zone=>'N'
,p_last_updated_by=>'MARINOSY@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20170808233852'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_ui_type_name => null
);
end;
/
prompt --application/shared_components/navigation/lists
begin
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(73130780689446115)
,p_name=>'Desktop Navigation Menu'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(73184331761446531)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Αρχική'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-home'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'1'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(73255051489029957)
,p_list_item_display_sequence=>15
,p_list_item_link_text=>'Πρόγραμμα'
,p_list_item_link_target=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.:RP,6:::'
,p_list_item_icon=>'fa-calendar-edit'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'6'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(73278853031275295)
,p_list_item_display_sequence=>17
,p_list_item_link_text=>'Στατιστικά'
,p_list_item_link_target=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-bar-chart'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'7'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(73186653408825393)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Ρυθμίσεις'
,p_list_item_icon=>'fa-cogs'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(73187431215833714)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Προσωπικό'
,p_list_item_link_target=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-address-card-o'
,p_parent_list_item_id=>wwv_flow_api.id(73186653408825393)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'3'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(73193878492848768)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Βάρδιες'
,p_list_item_link_target=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-calendar-clock'
,p_parent_list_item_id=>wwv_flow_api.id(73186653408825393)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'4'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(73200066824859609)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Αργίες'
,p_list_item_link_target=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-coffee'
,p_parent_list_item_id=>wwv_flow_api.id(73186653408825393)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'5'
);
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(73182864946446408)
,p_name=>'Desktop Navigation Bar'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(73183052622446464)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Log Out'
,p_list_item_link_target=>'&LOGOUT_URL.'
,p_list_item_current_for_pages=>'&LOGOUT_URL.'
);
end;
/
prompt --application/shared_components/files
begin
null;
end;
/
prompt --application/plugin_settings
begin
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(73130164468446111)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IG'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(73130287459446114)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(73130339093446114)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attribute_01=>'Y'
,p_attribute_03=>'N'
,p_attribute_05=>'SWITCH'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(73130467951446114)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attribute_01=>'modern'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(73130557672446115)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attribute_01=>'IG'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(73130613460446115)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_CSS_CALENDAR'
);
end;
/
prompt --application/shared_components/security/authorizations
begin
null;
end;
/
prompt --application/shared_components/navigation/navigation_bar
begin
null;
end;
/
prompt --application/shared_components/logic/application_processes
begin
null;
end;
/
prompt --application/shared_components/logic/application_items
begin
null;
end;
/
prompt --application/shared_components/logic/application_computations
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
prompt --application/shared_components/user_interface/lovs
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(114402829337107110)
,p_lov_name=>'SHIFT'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select shift_code, shift_id',
'from SHC_SHIFT',
'order by 1'))
);
end;
/
prompt --application/shared_components/navigation/trees
begin
null;
end;
/
prompt --application/pages/page_groups
begin
null;
end;
/
prompt --application/comments
begin
null;
end;
/
prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
wwv_flow_api.create_menu(
 p_id=>wwv_flow_api.id(73184251483446528)
,p_name=>' Breadcrumb'
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(73184694062446532)
,p_parent_id=>0
,p_short_name=>'Home'
,p_link=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.'
,p_page_id=>1
);
end;
/
prompt --application/shared_components/user_interface/templates/page
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(73130826236446125)
,p_theme_id=>42
,p_name=>'Left Side Column'
,p_internal_name=>'LEFT_SIDE_COLUMN'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.leftSideCol();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--showLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Icon fa fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-side" id="t_Body_side">',
'      #REGION_POSITION_02#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-contentInner">',
'        #BODY#',
'      </div>',
'      <footer class="t-Footer">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>  ',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            <div class="t-Footer-srMode">#SCREEN_READER_TOGGLE#</div>',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton"><span class="a-Icon icon-up-chevron"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525196570560608698
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(73130918481446147)
,p_page_template_id=>wwv_flow_api.id(73130826236446125)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(73131077658446147)
,p_page_template_id=>wwv_flow_api.id(73130826236446125)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(73131126236446147)
,p_page_template_id=>wwv_flow_api.id(73130826236446125)
,p_name=>'Left Column'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(73131214511446147)
,p_page_template_id=>wwv_flow_api.id(73130826236446125)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(73131325317446147)
,p_page_template_id=>wwv_flow_api.id(73130826236446125)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(73131403549446147)
,p_page_template_id=>wwv_flow_api.id(73130826236446125)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(73131576517446147)
,p_page_template_id=>wwv_flow_api.id(73130826236446125)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(73131631383446147)
,p_page_template_id=>wwv_flow_api.id(73130826236446125)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(73131782150446160)
,p_theme_id=>42
,p_name=>'Left and Right Side Columns'
,p_internal_name=>'LEFT_AND_RIGHT_SIDE_COLUMNS'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.bothSideCols();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--showLeft no-anim #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Icon fa fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-side" id="t_Body_side">',
'      #REGION_POSITION_02#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-contentInner">',
'        #BODY#',
'      </div>',
'      <footer class="t-Footer">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>  ',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            <div class="t-Footer-srMode">#SCREEN_READER_TOGGLE#</div>',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton"><span class="a-Icon icon-up-chevron"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Button t-Button--icon t-Button--header t-Button--headerRight" title="#EXPAND_COLLAPSE_SIDE_COL_LABEL#" id="t_Button_rightControlButton" type="button"><span class="t-Icon fa fa-bars" aria-hidden="true"></span></button>',
'    <div class="t-Body-actionsContent">',
'    #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525203692562657055
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(73131867027446160)
,p_page_template_id=>wwv_flow_api.id(73131782150446160)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>6
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(73131975684446160)
,p_page_template_id=>wwv_flow_api.id(73131782150446160)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(73132017119446160)
,p_page_template_id=>wwv_flow_api.id(73131782150446160)
,p_name=>'Left Column'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>3
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(73132169457446160)
,p_page_template_id=>wwv_flow_api.id(73131782150446160)
,p_name=>'Right Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>3
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(73132284857446160)
,p_page_template_id=>wwv_flow_api.id(73131782150446160)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(73132332184446160)
,p_page_template_id=>wwv_flow_api.id(73131782150446160)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>6
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(73132484235446160)
,p_page_template_id=>wwv_flow_api.id(73131782150446160)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(73132543397446160)
,p_page_template_id=>wwv_flow_api.id(73131782150446160)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(73132662899446160)
,p_page_template_id=>wwv_flow_api.id(73131782150446160)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(73132749338446161)
,p_theme_id=>42
,p_name=>'Login'
,p_internal_name=>'LOGIN'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.appLogin();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody--login no-anim #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #REGION_POSITION_01#',
'  #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'  <div class="t-Body-wrap">',
'    <div class="t-Body-col t-Body-col--main">',
'      <div class="t-Login-container">',
'      #BODY#',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>6
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2099711150063350616
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(73132823530446162)
,p_page_template_id=>wwv_flow_api.id(73132749338446161)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(73132995316446162)
,p_page_template_id=>wwv_flow_api.id(73132749338446161)
,p_name=>'Body Header'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(73133023473446162)
,p_theme_id=>42
,p_name=>'Marquee'
,p_internal_name=>'MASTER_DETAIL'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.masterDetail();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--masterDetail t-PageBody--hideLeft no-anim #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Icon fa fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-info" id="t_Body_info">',
'        #REGION_POSITION_02#',
'      </div>',
'      <div class="t-Body-contentInner">',
'        #BODY#',
'      </div>',
'      <footer class="t-Footer">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>  ',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            <div class="t-Footer-srMode">#SCREEN_READER_TOGGLE#</div>',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton"><span class="a-Icon icon-up-chevron"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Button t-Button--icon t-Button--header t-Button--headerRight" title="#EXPAND_COLLAPSE_SIDE_COL_LABEL#" id="t_Button_rightControlButton" type="button"><span class="t-Icon fa fa-bars" aria-hidden="true"></span></button>',
'    <div class="t-Body-actionsContent">',
'    #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>1996914646461572319
,p_translate_this_template=>'N'
);
end;
/
begin
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(73133142970446163)
,p_page_template_id=>wwv_flow_api.id(73133023473446162)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(73133237783446163)
,p_page_template_id=>wwv_flow_api.id(73133023473446162)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(73133306255446163)
,p_page_template_id=>wwv_flow_api.id(73133023473446162)
,p_name=>'Master Detail'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(73133481702446163)
,p_page_template_id=>wwv_flow_api.id(73133023473446162)
,p_name=>'Right Side Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(73133503906446163)
,p_page_template_id=>wwv_flow_api.id(73133023473446162)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(73133656274446163)
,p_page_template_id=>wwv_flow_api.id(73133023473446162)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(73133706146446163)
,p_page_template_id=>wwv_flow_api.id(73133023473446162)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(73133831859446163)
,p_page_template_id=>wwv_flow_api.id(73133023473446162)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(73133915684446163)
,p_page_template_id=>wwv_flow_api.id(73133023473446162)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(73134012029446163)
,p_theme_id=>42
,p_name=>'Minimal (No Navigation)'
,p_internal_name=>'MINIMAL_NO_NAVIGATION'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.noSideCol();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#  ',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES# t-PageBody--noNav" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Icon fa fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'</header>',
'    '))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  <div class="t-Body-main">',
'      <div class="t-Body-title" id="t_Body_title">',
'        #REGION_POSITION_01#',
'      </div>',
'      <div class="t-Body-content" id="t_Body_content">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-contentInner">',
'          #BODY#',
'        </div>',
'        <footer class="t-Footer">',
'          <div class="t-Footer-body">',
'            <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'            <div class="t-Footer-apex">',
'              <div class="t-Footer-version">#APP_VERSION#</div>  ',
'              <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'              <div class="t-Footer-srMode">#SCREEN_READER_TOGGLE#</div>',
'            </div>',
'          </div>',
'          <div class="t-Footer-top">',
'            <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton"><span class="a-Icon icon-up-chevron"></span></a>',
'          </div>',
'        </footer>',
'      </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>',
''))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar t-NavigationBar--classic" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>4
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2977628563533209425
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(73134137993446163)
,p_page_template_id=>wwv_flow_api.id(73134012029446163)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(73134246901446163)
,p_page_template_id=>wwv_flow_api.id(73134012029446163)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(73134335775446163)
,p_page_template_id=>wwv_flow_api.id(73134012029446163)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(73134474522446163)
,p_page_template_id=>wwv_flow_api.id(73134012029446163)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(73134550756446163)
,p_page_template_id=>wwv_flow_api.id(73134012029446163)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(73134621146446163)
,p_page_template_id=>wwv_flow_api.id(73134012029446163)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(73134763365446163)
,p_page_template_id=>wwv_flow_api.id(73134012029446163)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(73134871429446163)
,p_theme_id=>42
,p_name=>'Modal Dialog'
,p_internal_name=>'MODAL_DIALOG'
,p_is_popup=>true
,p_javascript_code_onload=>'apex.theme42.initializePage.modalDialog();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-Dialog-page t-Dialog-page--standard #DIALOG_CSS_CLASSES# #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Dialog" role="dialog" aria-label="#TITLE#">',
'  <div class="t-Dialog-header">#REGION_POSITION_01#</div>',
'  <div class="t-Dialog-bodyWrapperOut">',
'      <div class="t-Dialog-bodyWrapperIn"><div class="t-Dialog-body">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      #BODY#',
'      </div></div>',
'  </div>',
'  <div class="t-Dialog-footer">#REGION_POSITION_03#</div>',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>3
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},''t-Dialog-page--standard ''+#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_height=>'auto'
,p_dialog_width=>'720'
,p_dialog_max_width=>'960'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2098960803539086924
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(73134905736446163)
,p_page_template_id=>wwv_flow_api.id(73134871429446163)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(73135058044446163)
,p_page_template_id=>wwv_flow_api.id(73134871429446163)
,p_name=>'Dialog Header'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(73135196829446163)
,p_page_template_id=>wwv_flow_api.id(73134871429446163)
,p_name=>'Dialog Footer'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(73135399171446166)
,p_theme_id=>42
,p_name=>'Right Side Column'
,p_internal_name=>'RIGHT_SIDE_COLUMN'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.rightSideCol();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8"> ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft no-anim #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Icon fa fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-contentInner">',
'        #BODY#',
'      </div>',
'      <footer class="t-Footer">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>  ',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            <div class="t-Footer-srMode">#SCREEN_READER_TOGGLE#</div>',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton"><span class="a-Icon icon-up-chevron"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Button t-Button--icon t-Button--header t-Button--headerRight" title="#EXPAND_COLLAPSE_SIDE_COL_LABEL#" id="t_Button_rightControlButton" type="button"><span class="t-Icon fa fa-bars" aria-hidden="true"></span></button>',
'    <div class="t-Body-actionsContent">',
'    #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525200116240651575
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(73135454816446167)
,p_page_template_id=>wwv_flow_api.id(73135399171446166)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(73135586094446167)
,p_page_template_id=>wwv_flow_api.id(73135399171446166)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(73135665091446167)
,p_page_template_id=>wwv_flow_api.id(73135399171446166)
,p_name=>'Right Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(73135798720446167)
,p_page_template_id=>wwv_flow_api.id(73135399171446166)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(73135883378446167)
,p_page_template_id=>wwv_flow_api.id(73135399171446166)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(73135940794446167)
,p_page_template_id=>wwv_flow_api.id(73135399171446166)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(73136053262446167)
,p_page_template_id=>wwv_flow_api.id(73135399171446166)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(73136138573446167)
,p_page_template_id=>wwv_flow_api.id(73135399171446166)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(73136255376446170)
,p_theme_id=>42
,p_name=>'Standard'
,p_internal_name=>'STANDARD'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.noSideCol();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#  ',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Icon fa fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>',
'    '))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'      <div class="t-Body-title" id="t_Body_title">',
'        #REGION_POSITION_01#',
'      </div>',
'      <div class="t-Body-content" id="t_Body_content">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-contentInner">',
'          #BODY#',
'        </div>',
'        <footer class="t-Footer">',
'          <div class="t-Footer-body">',
'            <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'            <div class="t-Footer-apex">',
'              <div class="t-Footer-version">#APP_VERSION#</div>  ',
'              <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'              <div class="t-Footer-srMode">#SCREEN_READER_TOGGLE#</div>',
'            </div>',
'          </div>',
'          <div class="t-Footer-top">',
'            <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton"><span class="a-Icon icon-up-chevron"></span></a>',
'          </div>',
'        </footer>',
'      </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>',
''))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar t-NavigationBar--classic" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>1
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>4070909157481059304
,p_translate_this_template=>'N'
);
end;
/
begin
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(73136310949446171)
,p_page_template_id=>wwv_flow_api.id(73136255376446170)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(73136459544446171)
,p_page_template_id=>wwv_flow_api.id(73136255376446170)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(73136593248446171)
,p_page_template_id=>wwv_flow_api.id(73136255376446170)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(73136684370446171)
,p_page_template_id=>wwv_flow_api.id(73136255376446170)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(73136773748446171)
,p_page_template_id=>wwv_flow_api.id(73136255376446170)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(73136891321446171)
,p_page_template_id=>wwv_flow_api.id(73136255376446170)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(73136971450446171)
,p_page_template_id=>wwv_flow_api.id(73136255376446170)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>false
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(73137048791446171)
,p_theme_id=>42
,p_name=>'Wizard Modal Dialog'
,p_internal_name=>'WIZARD_MODAL_DIALOG'
,p_is_popup=>true
,p_javascript_code_onload=>'apex.theme42.initializePage.wizardModal();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-Dialog-page t-Dialog-page--wizard #DIALOG_CSS_CLASSES# #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Dialog" role="dialog" aria-label="#TITLE#">',
'  <div class="t-Dialog-header">#REGION_POSITION_01#</div>',
'  <div class="t-Dialog-bodyWrapperOut">',
'      <div class="t-Dialog-bodyWrapperIn"><div class="t-Dialog-body">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      #BODY#',
'      </div></div>',
'  </div>',
'  <div class="t-Dialog-footer">#REGION_POSITION_03#</div>',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_theme_class_id=>3
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},''t-Dialog-page--wizard ''+#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_height=>'auto'
,p_dialog_width=>'720'
,p_dialog_max_width=>'960'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2120348229686426515
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(73137130466446172)
,p_page_template_id=>wwv_flow_api.id(73137048791446171)
,p_name=>'Wizard Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(73137291751446172)
,p_page_template_id=>wwv_flow_api.id(73137048791446171)
,p_name=>'Wizard Progress Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(73137389836446172)
,p_page_template_id=>wwv_flow_api.id(73137048791446171)
,p_name=>'Wizard Buttons'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/button
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(73172026542446351)
,p_template_name=>'Icon'
,p_internal_name=>'ICON'
,p_template=>'<button class="t-Button t-Button--noLabel t-Button--icon #BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#" title="#LABEL#" aria-label="#LABEL#"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"><'
||'/span></button>'
,p_hot_template=>'<button class="t-Button t-Button--noLabel t-Button--icon #BUTTON_CSS_CLASSES# t-Button--hot" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#" title="#LABEL#" aria-label="#LABEL#"><span class="t-Icon #ICON_CSS_CLASSES#" aria-h'
||'idden="true"></span></button>'
,p_reference_id=>2347660919680321258
,p_translate_this_template=>'N'
,p_theme_class_id=>5
,p_theme_id=>42
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(73172160222446356)
,p_template_name=>'Text'
,p_internal_name=>'TEXT'
,p_template=>'<button onclick="#JAVASCRIPT#" class="t-Button #BUTTON_CSS_CLASSES#" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#"><span class="t-Button-label">#LABEL#</span></button>'
,p_hot_template=>'<button onclick="#JAVASCRIPT#" class="t-Button t-Button--hot #BUTTON_CSS_CLASSES#" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#"><span class="t-Button-label">#LABEL#</span></button>'
,p_reference_id=>4070916158035059322
,p_translate_this_template=>'N'
,p_theme_class_id=>1
,p_theme_id=>42
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(73172232404446357)
,p_template_name=>'Text with Icon'
,p_internal_name=>'TEXT_WITH_ICON'
,p_template=>'<button class="t-Button t-Button--icon #BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#"><span class="t-Icon t-Icon--left #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="t-Button-label">#LABEL#'
||'</span><span class="t-Icon t-Icon--right #ICON_CSS_CLASSES#" aria-hidden="true"></span></button>'
,p_hot_template=>'<button class="t-Button t-Button--icon #BUTTON_CSS_CLASSES# t-Button--hot" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#"><span class="t-Icon t-Icon--left #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="t-Button-'
||'label">#LABEL#</span><span class="t-Icon t-Icon--right #ICON_CSS_CLASSES#" aria-hidden="true"></span></button>'
,p_reference_id=>2081382742158699622
,p_translate_this_template=>'N'
,p_theme_class_id=>4
,p_preset_template_options=>'t-Button--iconRight'
,p_theme_id=>42
);
end;
/
prompt --application/shared_components/user_interface/templates/region
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(73137532787446178)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-header">',
'        <h2 class="t-Alert-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'      </div>',
'      <div class="t-Alert-body">#BODY#</div>',
'    </div>',
'    <div class="t-Alert-buttons">#PREVIOUS##CLOSE##CREATE##NEXT#</div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Alert'
,p_internal_name=>'ALERT'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>21
,p_preset_template_options=>'t-Alert--horizontal:t-Alert--defaultIcons:t-Alert--warning'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2039236646100190748
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(73137670817446190)
,p_plug_template_id=>wwv_flow_api.id(73137532787446178)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(73139391964446210)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="#REGION_CSS_CLASSES#"> ',
'#PREVIOUS##BODY##SUB_REGIONS##NEXT#',
'</div>'))
,p_page_plug_template_name=>'Blank with Attributes'
,p_internal_name=>'BLANK_WITH_ATTRIBUTES'
,p_theme_id=>42
,p_theme_class_id=>7
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>4499993862448380551
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(73139448370446210)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="#REGION_CSS_CLASSES#"> ',
'#PREVIOUS##BODY##SUB_REGIONS##NEXT#',
'</div>'))
,p_page_plug_template_name=>'Blank with Attributes (No Grid)'
,p_internal_name=>'BLANK_WITH_ATTRIBUTES_NO_GRID'
,p_theme_id=>42
,p_theme_class_id=>7
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3369790999010910123
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(73139509459446210)
,p_plug_template_id=>wwv_flow_api.id(73139448370446210)
,p_name=>'Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(73139605810446210)
,p_plug_template_id=>wwv_flow_api.id(73139448370446210)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(73139702456446210)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ButtonRegion t-Form--floatLeft #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-ButtonRegion-wrap">',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--left"><div class="t-ButtonRegion-buttons">#PREVIOUS##CLOSE##DELETE#</div></div>',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--content">',
'      <h2 class="t-ButtonRegion-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'      #BODY#',
'      <div class="t-ButtonRegion-buttons">#CHANGE#</div>',
'    </div>',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--right"><div class="t-ButtonRegion-buttons">#EDIT##CREATE##NEXT#</div></div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Buttons Container'
,p_internal_name=>'BUTTONS_CONTAINER'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>17
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2124982336649579661
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(73139887748446210)
,p_plug_template_id=>wwv_flow_api.id(73139702456446210)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(73139905332446210)
,p_plug_template_id=>wwv_flow_api.id(73139702456446210)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(73140634710446211)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Region t-Region--carousel #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <h2 class="t-Region-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#COPY##EDIT#<span class="js-maximizeButtonContainer"></span></div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     #BODY#',
'   <div class="t-Region-carouselRegions">',
'     #SUB_REGIONS#',
'   </div>',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#CLOSE##HELP#</div>',
'    <div class="t-Region-buttons-right">#DELETE##CHANGE##CREATE#</div>',
'   </div>',
' </div>',
'</div>'))
,p_sub_plug_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div data-label="#SUB_REGION_TITLE#" id="SR_#SUB_REGION_ID#">',
'  #SUB_REGION#',
'</div>'))
,p_page_plug_template_name=>'Carousel Container'
,p_internal_name=>'CAROUSEL_CONTAINER'
,p_javascript_file_urls=>'#IMAGE_PREFIX#plugins/com.oracle.apex.carousel/1.1/com.oracle.apex.carousel#MIN#.js?v=#APEX_VERSION#'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>5
,p_default_template_options=>'t-Region--showCarouselControls'
,p_preset_template_options=>'t-Region--hiddenOverflow'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2865840475322558786
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(73140725259446211)
,p_plug_template_id=>wwv_flow_api.id(73140634710446211)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(73140898820446211)
,p_plug_template_id=>wwv_flow_api.id(73140634710446211)
,p_name=>'Slides'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(73144010682446218)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Region t-Region--hideShow #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems  t-Region-headerItems--controls">',
'    <button class="t-Button t-Button--icon t-Button--hideShow" type="button"></button>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <h2 class="t-Region-title">#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#EDIT#</div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#CLOSE#</div>',
'    <div class="t-Region-buttons-right">#CREATE#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     #COPY#',
'     #BODY#',
'     #SUB_REGIONS#',
'     #CHANGE#',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
' </div>',
'</div>'))
,p_page_plug_template_name=>'Collapsible'
,p_internal_name=>'COLLAPSIBLE'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>1
,p_preset_template_options=>'is-expanded:t-Region--scrollBody'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2662888092628347716
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(73144198702446218)
,p_plug_template_id=>wwv_flow_api.id(73144010682446218)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(73144225519446218)
,p_plug_template_id=>wwv_flow_api.id(73144010682446218)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(73146294066446220)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ContentBlock #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-ContentBlock-header"><h1 class="t-ContentBlock-title">#TITLE#</h1></div>',
'  <div class="t-ContentBlock-body">#BODY#</div>',
'  <div class="t-ContentBlock-buttons">#PREVIOUS##NEXT#</div>',
'</div>'))
,p_page_plug_template_name=>'Content Block'
,p_internal_name=>'CONTENT_BLOCK'
,p_theme_id=>42
,p_theme_class_id=>21
,p_preset_template_options=>'t-ContentBlock--h1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2320668864738842174
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(73147118449446220)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-HeroRegion #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-HeroRegion-wrap">',
'    <div class="t-HeroRegion-col t-HeroRegion-col--left"><span class="t-HeroRegion-icon t-Icon #ICON_CSS_CLASSES#"></span></div>',
'    <div class="t-HeroRegion-col t-HeroRegion-col--content">',
'      <h1 class="t-HeroRegion-title">#TITLE#</h1>',
'      #BODY#',
'    </div>',
'    <div class="t-HeroRegion-col t-HeroRegion-col--right"><div class="t-HeroRegion-form">#SUB_REGIONS#</div><div class="t-HeroRegion-buttons">#NEXT#</div></div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Hero'
,p_internal_name=>'HERO'
,p_theme_id=>42
,p_theme_class_id=>22
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2672571031438297268
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(73147263300446220)
,p_plug_template_id=>wwv_flow_api.id(73147118449446220)
,p_name=>'Region Body'
,p_placeholder=>'#BODY#'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(73147878720446221)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#_parent">',
'<div id="#REGION_STATIC_ID#"  class="t-DialogRegion #REGION_CSS_CLASSES# js-regionDialog" #REGION_ATTRIBUTES# style="display:none" title="#TITLE#">',
'  <div class="t-DialogRegion-wrap">',
'    <div class="t-DialogRegion-bodyWrapperOut"><div class="t-DialogRegion-bodyWrapperIn"><div class="t-DialogRegion-body">#BODY#</div></div></div>',
'    <div class="t-DialogRegion-buttons">',
'       <div class="t-ButtonRegion t-ButtonRegion--dialogRegion">',
'         <div class="t-ButtonRegion-wrap">',
'           <div class="t-ButtonRegion-col t-ButtonRegion-col--left"><div class="t-ButtonRegion-buttons">#PREVIOUS##DELETE##CLOSE#</div></div>',
'           <div class="t-ButtonRegion-col t-ButtonRegion-col--right"><div class="t-ButtonRegion-buttons">#EDIT##CREATE##NEXT#</div></div>',
'         </div>',
'       </div>',
'    </div>',
'  </div>',
'</div>',
'</div>'))
,p_page_plug_template_name=>'Inline Dialog'
,p_internal_name=>'INLINE_DIALOG'
,p_theme_id=>42
,p_theme_class_id=>24
,p_default_template_options=>'js-modal:js-draggable:js-resizable'
,p_preset_template_options=>'js-dialog-size600x400'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2671226943886536762
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(73147989743446221)
,p_plug_template_id=>wwv_flow_api.id(73147878720446221)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(73148822037446237)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="t-IRR-region #REGION_CSS_CLASSES#" role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
'  <h2 class="u-VisuallyHidden" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'#PREVIOUS##BODY##SUB_REGIONS##NEXT#',
'</div>'))
,p_page_plug_template_name=>'Interactive Report'
,p_internal_name=>'INTERACTIVE_REPORT'
,p_theme_id=>42
,p_theme_class_id=>9
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2099079838218790610
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(73149152090446237)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Login-region t-Form--stretchInputs t-Form--labelsAbove #REGION_CSS_CLASSES#" id="#REGION_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-Login-header">',
'    <span class="t-Login-logo #ICON_CSS_CLASSES#"></span>',
'    <h1 class="t-Login-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h1>',
'  </div>',
'  <div class="t-Login-body">',
'    #BODY#',
'  </div>',
'  <div class="t-Login-buttons">',
'    #NEXT#',
'  </div>',
'  <div class="t-Login-links">',
'    #EDIT##CREATE#',
'  </div>',
'  #SUB_REGIONS#',
'</div>'))
,p_page_plug_template_name=>'Login'
,p_internal_name=>'LOGIN'
,p_theme_id=>42
,p_theme_class_id=>23
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2672711194551076376
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(73149283998446237)
,p_plug_template_id=>wwv_flow_api.id(73149152090446237)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(73149310067446237)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Region #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <h2 class="t-Region-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#COPY##EDIT#<span class="js-maximizeButtonContainer"></span></div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     #BODY#',
'     #SUB_REGIONS#',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#CLOSE##HELP#</div>',
'    <div class="t-Region-buttons-right">#DELETE##CHANGE##CREATE#</div>',
'   </div>',
' </div>',
'</div>',
''))
,p_page_plug_template_name=>'Standard'
,p_internal_name=>'STANDARD'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>8
,p_preset_template_options=>'t-Region--scrollBody'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>4070912133526059312
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(73149451413446237)
,p_plug_template_id=>wwv_flow_api.id(73149310067446237)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(73149573640446237)
,p_plug_template_id=>wwv_flow_api.id(73149310067446237)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(73152569838446242)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-TabsRegion #REGION_CSS_CLASSES#" #REGION_ATTRIBUTES# id="#REGION_STATIC_ID#">',
'  #BODY#',
'  <div class="t-TabsRegion-items">',
'    #SUB_REGIONS#',
'  </div>',
'</div>'))
,p_sub_plug_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div data-label="#SUB_REGION_TITLE#" id="SR_#SUB_REGION_ID#">',
'  #SUB_REGION#',
'</div>'))
,p_page_plug_template_name=>'Tabs Container'
,p_internal_name=>'TABS_CONTAINER'
,p_theme_id=>42
,p_theme_class_id=>5
,p_preset_template_options=>'t-TabsRegion-mod--simple'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3221725015618492759
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(73152692441446242)
,p_plug_template_id=>wwv_flow_api.id(73152569838446242)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(73152749587446242)
,p_plug_template_id=>wwv_flow_api.id(73152569838446242)
,p_name=>'Tabs'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(73153743697446247)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="t-BreadcrumbRegion #REGION_CSS_CLASSES#"> ',
'  <div class="t-BreadcrumbRegion-body">',
'    <div class="t-BreadcrumbRegion-breadcrumb">',
'      #BODY#',
'    </div>',
'    <div class="t-BreadcrumbRegion-title">',
'      <h1 class="t-BreadcrumbRegion-titleText">#TITLE#</h1>',
'    </div>',
'  </div>',
'  <div class="t-BreadcrumbRegion-buttons">#PREVIOUS##CLOSE##DELETE##HELP##CHANGE##EDIT##COPY##CREATE##NEXT#</div>',
'</div>'))
,p_page_plug_template_name=>'Title Bar'
,p_internal_name=>'TITLE_BAR'
,p_theme_id=>42
,p_theme_class_id=>6
,p_default_template_options=>'t-BreadcrumbRegion--showBreadcrumb'
,p_preset_template_options=>'t-BreadcrumbRegion--useBreadcrumbTitle'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2530016523834132090
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(73154145090446247)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Wizard #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-Wizard-header">',
'    <h1 class="t-Wizard-title">#TITLE#</h1>',
'    <div class="u-Table t-Wizard-controls">',
'      <div class="u-Table-fit t-Wizard-buttons">#PREVIOUS##CLOSE#</div>',
'      <div class="u-Table-fill t-Wizard-steps">',
'        #BODY#',
'      </div>',
'      <div class="u-Table-fit t-Wizard-buttons">#NEXT#</div>',
'    </div>',
'  </div>',
'  <div class="t-Wizard-body">',
'    #SUB_REGIONS#',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Wizard Container'
,p_internal_name=>'WIZARD_CONTAINER'
,p_theme_id=>42
,p_theme_class_id=>8
,p_preset_template_options=>'t-Wizard--hideStepsXSmall'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2117602213152591491
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(73154242163446247)
,p_plug_template_id=>wwv_flow_api.id(73154145090446247)
,p_name=>'Wizard Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/list
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(73162718347446327)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item #A02#">',
'  <span class="t-BadgeList-label">#TEXT#</span>',
'  <span class="t-BadgeList-value"><a href="#LINK#" #A03#>#A01#</a></span>',
'</li>',
''))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item #A02#">',
'  <span class="t-BadgeList-label">#TEXT#</span>',
'  <span class="t-BadgeList-value"><a href="#LINK#" #A03#>#A01#</a></span>',
'</li>',
''))
,p_list_template_name=>'Badge List'
,p_internal_name=>'BADGE_LIST'
,p_theme_id=>42
,p_theme_class_id=>3
,p_list_template_before_rows=>'<ul class="t-BadgeList t-BadgeList--circular #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Value'
,p_a02_label=>'List item CSS Classes'
,p_a03_label=>'Link Attributes'
,p_reference_id=>2062482847268086664
,p_list_template_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'A01: Large Number',
'A02: List Item Classes',
'A03: Link Attributes'))
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(73164472439446333)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #A04#">',
'  <div class="t-Card">',
'    <a href="#LINK#" class="t-Card-wrap" #A05#>',
'      <div class="t-Card-icon u-color #A06#"><span class="t-Icon #ICON_CSS_CLASSES#"><span class="t-Card-initials" role="presentation">#A03#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#TEXT#</h3></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#A01#</div>',
'        <div class="t-Card-info">#A02#</div>',
'      </div>',
'      <span class="t-Card-colorFill u-color #A06#"></span>',
'    </a>',
'  </div>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #A04#">',
'  <div class="t-Card">',
'    <a href="#LINK#" class="t-Card-wrap" #A05#>',
'      <div class="t-Card-icon u-color #A06#"><span class="t-Icon #ICON_CSS_CLASSES#"><span class="t-Card-initials" role="presentation">#A03#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#TEXT#</h3></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#A01#</div>',
'        <div class="t-Card-info">#A02#</div>',
'      </div>',
'      <span class="t-Card-colorFill u-color #A06#"></span>',
'    </a>',
'  </div>',
'</li>'))
,p_list_template_name=>'Cards'
,p_internal_name=>'CARDS'
,p_theme_id=>42
,p_theme_class_id=>4
,p_preset_template_options=>'t-Cards--animColorFill:t-Cards--3cols:t-Cards--featured'
,p_list_template_before_rows=>'<ul class="t-Cards #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Description'
,p_a02_label=>'Secondary Information'
,p_a03_label=>'Initials'
,p_a04_label=>'List Item CSS Classes'
,p_a05_label=>'Link Attributes'
,p_a06_label=>'Card Color Class'
,p_reference_id=>2885322685880632508
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(73166877573446338)
,p_list_template_current=>'<li class="t-LinksList-item is-current #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-b'
||'adge">#A01#</span></a></li>'
,p_list_template_noncurrent=>'<li class="t-LinksList-item #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#'
||'</span></a></li>'
,p_list_template_name=>'Links List'
,p_internal_name=>'LINKS_LIST'
,p_theme_id=>42
,p_theme_class_id=>18
,p_list_template_before_rows=>'<ul class="t-LinksList #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'
,p_list_template_after_rows=>'</ul>'
,p_before_sub_list=>'<ul class="t-LinksList-list">'
,p_after_sub_list=>'</ul>'
,p_sub_list_item_current=>'<li class="t-LinksList-item is-current #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-b'
||'adge">#A01#</span></a></li>'
,p_sub_list_item_noncurrent=>'<li class="t-LinksList-item#A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#<'
||'/span></a></li>'
,p_item_templ_curr_w_child=>'<li class="t-LinksList-item is-current is-expanded #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t'
||'-LinksList-badge">#A01#</span></a>#SUB_LISTS#</li>'
,p_item_templ_noncurr_w_child=>'<li class="t-LinksList-item #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#'
||'</span></a></li>'
,p_a01_label=>'Badge Value'
,p_a02_label=>'Link Attributes'
,p_a03_label=>'List Item CSS Classes'
,p_reference_id=>4070914341144059318
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(73167631215446340)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MediaList-item is-active #A04#">',
'    <a href="#LINK#" class="t-MediaList-itemWrap #A05#" #A03#>',
'        <div class="t-MediaList-iconWrap">',
'            <span class="t-MediaList-icon u-color #A06#"><span class="t-Icon #ICON_CSS_CLASSES# u-color #A06#" #IMAGE_ATTR#></span></span>',
'        </div>',
'        <div class="t-MediaList-body">',
'            <h3 class="t-MediaList-title">#TEXT#</h3>',
'            <p class="t-MediaList-desc">#A01#</p>',
'        </div>',
'        <div class="t-MediaList-badgeWrap">',
'            <span class="t-MediaList-badge">#A02#</span>',
'        </div>',
'    </a>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MediaList-item  #A04#">',
'    <a href="#LINK#" class="t-MediaList-itemWrap #A05#" #A03#>',
'        <div class="t-MediaList-iconWrap">',
'            <span class="t-MediaList-icon u-color #A06#"><span class="t-Icon #ICON_CSS_CLASSES# u-color #A06#" #IMAGE_ATTR#></span></span>',
'        </div>',
'        <div class="t-MediaList-body">',
'            <h3 class="t-MediaList-title">#TEXT#</h3>',
'            <p class="t-MediaList-desc">#A01#</p>',
'        </div>',
'        <div class="t-MediaList-badgeWrap">',
'            <span class="t-MediaList-badge">#A02#</span>',
'        </div>',
'    </a>',
'</li>'))
,p_list_template_name=>'Media List'
,p_internal_name=>'MEDIA_LIST'
,p_theme_id=>42
,p_theme_class_id=>5
,p_default_template_options=>'t-MediaList--showIcons:t-MediaList--showDesc'
,p_list_template_before_rows=>'<ul class="t-MediaList #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Description'
,p_a02_label=>'Badge Value'
,p_a03_label=>'Link Attributes'
,p_a04_label=>'List Item CSS Classes'
,p_a05_label=>'Link Class'
,p_a06_label=>'Icon Color Class'
,p_reference_id=>2066548068783481421
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(73168855099446340)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Menu Bar'
,p_internal_name=>'MENU_BAR'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menubar", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  apex.actions.addFromMarkup( e );',
'}',
'e.menu({',
'  behaveLikeTabs: e.hasClass("js-tabLike"),',
'  menubarShowSubMenuIcon: e.hasClass("js-showSubMenuIcons") || null,',
'  iconType: ''fa'',',
'  slide: e.hasClass("js-slide"),',
'  menubar: true,',
'  menubarOverflow: true',
'});'))
,p_theme_id=>42
,p_theme_class_id=>20
,p_default_template_options=>'js-showSubMenuIcons'
,p_list_template_before_rows=>'<div class="t-MenuBar #COMPONENT_CSS_CLASSES#" id="#PARENT_STATIC_ID#_menubar"><ul style="display:none">'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_reference_id=>2008709236185638887
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(73169314858446342)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>',
''))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>',
''))
,p_list_template_name=>'Menu Popup'
,p_internal_name=>'MENU_POPUP'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menu", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  apex.actions.addFromMarkup( e );',
'}',
'e.menu({ slide: e.hasClass("js-slide")});'))
,p_theme_id=>42
,p_theme_class_id=>20
,p_list_template_before_rows=>'<div id="#PARENT_STATIC_ID#_menu" class="#COMPONENT_CSS_CLASSES#" style="display:none;"><ul>'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'Data ID'
,p_a02_label=>'Disabled (True/False)'
,p_a03_label=>'Hidden (True/False)'
,p_a04_label=>'Title Attribute'
,p_a05_label=>'Shortcut'
,p_reference_id=>3492264004432431646
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(73169428809446342)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item is-active #A02#">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#" role="button">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span>',
'  </a>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item #A02#">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#" role="button">',
'    <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span>',
'  </a>',
'</li>'))
,p_list_template_name=>'Navigation Bar'
,p_internal_name=>'NAVIGATION_BAR'
,p_theme_id=>42
,p_theme_class_id=>20
,p_list_template_before_rows=>'<ul class="t-NavigationBar #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'
,p_list_template_after_rows=>'</ul>'
,p_before_sub_list=>'<div class="t-NavigationBar-menu" style="display: none" id="menu_#PARENT_LIST_ITEM_ID#"><ul>'
,p_after_sub_list=>'</ul></div></li>'
,p_sub_list_item_current=>'<li data-current="true" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-current="false" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item is-active #A02#">',
'  <button class="t-Button t-Button--icon t-Button t-Button--header t-Button--navBar js-menuButton" type="button" id="#LIST_ITEM_ID#" data-menu="menu_#LIST_ITEM_ID#">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span><span class="a-Icon icon-down-arrow"></span>',
'  </button>'))
,p_item_templ_noncurr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item #A02#">',
'  <button class="t-Button t-Button--icon t-Button t-Button--header t-Button--navBar js-menuButton" type="button" id="#LIST_ITEM_ID#" data-menu="menu_#LIST_ITEM_ID#">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span><span class="a-Icon icon-down-arrow"></span>',
'  </button>'))
,p_sub_templ_curr_w_child=>'<li data-current="true" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_sub_templ_noncurr_w_child=>'<li data-current="false" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_a01_label=>'Badge Value'
,p_a02_label=>'List  Item CSS Classes'
,p_reference_id=>2846096252961119197
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(73169573274446342)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Side Navigation Menu'
,p_internal_name=>'SIDE_NAVIGATION_MENU'
,p_javascript_file_urls=>'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.treeView#MIN#.js?v=#APEX_VERSION#'
,p_javascript_code_onload=>'apex.jQuery(''body'').addClass(''t-PageBody--leftNav'');'
,p_theme_id=>42
,p_theme_class_id=>19
,p_list_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-nav" id="t_Body_nav" role="navigation" aria-label="&APP_TITLE!ATTR.">',
'<div class="t-TreeNav #COMPONENT_CSS_CLASSES#" id="t_TreeNav" data-id="#PARENT_STATIC_ID#_tree" aria-label="&APP_TITLE!ATTR."><ul style="display:none">'))
,p_list_template_after_rows=>'</ul></div></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'ID Attribute'
,p_a02_label=>'Disabled True/False'
,p_a04_label=>'Title'
,p_reference_id=>2466292414354694776
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(73169604659446342)
,p_list_template_current=>'<li class="t-Tabs-item is-active"><a href="#LINK#" class="t-Tabs-link"><span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Tabs-label">#TEXT#</span></a></li>'
,p_list_template_noncurrent=>'<li class="t-Tabs-item"><a href="#LINK#" class="t-Tabs-link"><span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Tabs-label">#TEXT#</span></a></li>'
,p_list_template_name=>'Tabs'
,p_internal_name=>'TABS'
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-Tabs--simple'
,p_list_template_before_rows=>'<ul class="t-Tabs #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_reference_id=>3288206686691809997
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(73170452103446343)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Top Navigation Menu'
,p_internal_name=>'TOP_NAVIGATION_MENU'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menubar", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  if ( apex.actions ) {',
'    apex.actions.addFromMarkup( e );',
'  } else {',
'    apex.debug.warn("Include actions.js to support menu shortcuts");',
'  }',
'}',
'e.menu({',
'  behaveLikeTabs: e.hasClass("js-tabLike"),',
'  menubarShowSubMenuIcon: e.hasClass("js-showSubMenuIcons") || null,',
'  slide: e.hasClass("js-slide"),',
'  menubar: true,',
'  menubarOverflow: true',
'});'))
,p_theme_id=>42
,p_theme_class_id=>20
,p_default_template_options=>'js-tabLike'
,p_list_template_before_rows=>'<div class="t-Header-nav-list #COMPONENT_CSS_CLASSES#" id="#PARENT_STATIC_ID#_menubar"><ul style="display:none">'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'ID Attribute'
,p_a02_label=>'Disabled True / False'
,p_a03_label=>'Hide'
,p_a04_label=>'Title Attribute'
,p_a05_label=>'Shortcut Key'
,p_reference_id=>2525307901300239072
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(73170925850446343)
,p_list_template_current=>'<li class="t-WizardSteps-step is-active" id="#LIST_ITEM_ID#"><div class="t-WizardSteps-wrap"><span class="t-WizardSteps-marker"></span><span class="t-WizardSteps-label">#TEXT# <span class="t-WizardSteps-labelState"></span></span></div></li>'
,p_list_template_noncurrent=>'<li class="t-WizardSteps-step" id="#LIST_ITEM_ID#"><div class="t-WizardSteps-wrap"><span class="t-WizardSteps-marker"><span class="t-Icon a-Icon icon-check"></span></span><span class="t-WizardSteps-label">#TEXT# <span class="t-WizardSteps-labelState"'
||'></span></span></div></li>'
,p_list_template_name=>'Wizard Progress'
,p_internal_name=>'WIZARD_PROGRESS'
,p_javascript_code_onload=>'apex.theme.initWizardProgressBar();'
,p_theme_id=>42
,p_theme_class_id=>17
,p_preset_template_options=>'t-WizardSteps--displayLabels'
,p_list_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<h2 class="u-VisuallyHidden">#CURRENT_PROGRESS#</h2>',
'<ul class="t-WizardSteps #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'))
,p_list_template_after_rows=>'</ul>'
,p_reference_id=>2008702338707394488
);
end;
/
prompt --application/shared_components/user_interface/templates/report
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(73154755901446259)
,p_row_template_name=>'Alerts'
,p_internal_name=>'ALERTS'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--horizontal t-Alert--colorBG t-Alert--defaultIcons t-Alert--#ALERT_TYPE#" role="alert">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-header">',
'        <h2 class="t-Alert-title">#ALERT_TITLE#</h2>',
'      </div>',
'      <div class="t-Alert-body">',
'        #ALERT_DESC#',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      #ALERT_ACTION#',
'    </div>',
'  </div>',
'</div>'))
,p_row_template_before_rows=>'<div class="t-Alerts">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</div>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>14
,p_reference_id=>2881456138952347027
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(73154833899446313)
,p_row_template_name=>'Badge List'
,p_internal_name=>'BADGE_LIST'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item">',
'  <span class="t-BadgeList-label">#COLUMN_HEADER#</span>',
'  <span class="t-BadgeList-value">#COLUMN_VALUE#</span>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-BadgeList t-BadgeList--circular #COMPONENT_CSS_CLASSES#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>6
,p_default_template_options=>'t-BadgeList--responsive'
,p_preset_template_options=>'t-BadgeList--large:t-BadgeList--fixed'
,p_reference_id=>2103197159775914759
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(73156578861446316)
,p_row_template_name=>'Cards'
,p_internal_name=>'CARDS'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #CARD_MODIFIERS#">',
'  <div class="t-Card">',
'    <a href="#CARD_LINK#" class="t-Card-wrap">',
'      <div class="t-Card-icon u-color #CARD_COLOR#"><span class="t-Icon fa #CARD_ICON#"><span class="t-Card-initials" role="presentation">#CARD_INITIALS#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#CARD_TITLE#</h3></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#CARD_TEXT#</div>',
'        <div class="t-Card-info">#CARD_SUBTEXT#</div>',
'      </div>',
'      <span class="t-Card-colorFill u-color #CARD_COLOR#"></span>',
'    </a>',
'  </div>',
'</li>'))
,p_row_template_condition1=>':CARD_LINK is not null'
,p_row_template2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #CARD_MODIFIERS#">',
'  <div class="t-Card">',
'    <div class="t-Card-wrap">',
'      <div class="t-Card-icon u-color #CARD_COLOR#"><span class="t-Icon fa #CARD_ICON#"><span class="t-Card-initials" role="presentation">#CARD_INITIALS#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#CARD_TITLE#</h3></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#CARD_TEXT#</div>',
'        <div class="t-Card-info">#CARD_SUBTEXT#</div>',
'      </div>',
'      <span class="t-Card-colorFill u-color #CARD_COLOR#"></span>',
'    </div>',
'  </div>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-Cards #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_cards">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-Cards--animColorFill:t-Cards--3cols:t-Cards--featured'
,p_reference_id=>2973535649510699732
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(73158856033446320)
,p_row_template_name=>'Comments'
,p_internal_name=>'COMMENTS'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Comments-item #COMMENT_MODIFIERS#">',
'    <div class="t-Comments-icon a-MediaBlock-graphic">',
'        <div class="t-Comments-userIcon #ICON_MODIFIER#" aria-hidden="true">#USER_ICON#</div>',
'    </div>',
'    <div class="t-Comments-body a-MediaBlock-content">',
'        <div class="t-Comments-info">',
'            #USER_NAME# &middot; <span class="t-Comments-date">#COMMENT_DATE#</span> <span class="t-Comments-actions">#ACTIONS#</span>',
'        </div>',
'        <div class="t-Comments-comment">',
'            #COMMENT_TEXT##ATTRIBUTE_1##ATTRIBUTE_2##ATTRIBUTE_3##ATTRIBUTE_4#',
'        </div>',
'    </div>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-Comments #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_report">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>',
''))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-Comments--chat'
,p_reference_id=>2611722012730764232
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(73159279395446320)
,p_row_template_name=>'Search Results'
,p_internal_name=>'SEARCH_RESULTS'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition1=>':LABEL_02 is null'
,p_row_template2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition2=>':LABEL_03 is null'
,p_row_template3=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'      <span class="t-SearchResults-misc">#LABEL_03#: #VALUE_03#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition3=>':LABEL_04 is null'
,p_row_template4=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'      <span class="t-SearchResults-misc">#LABEL_03#: #VALUE_03#</span>',
'      <span class="t-SearchResults-misc">#LABEL_04#: #VALUE_04#</span>',
'    </div>',
'  </li>'))
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-SearchResults #COMPONENT_CSS_CLASSES#">',
'<ul class="t-SearchResults-list">'))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>',
'</div>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'NOT_CONDITIONAL'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070913431524059316
,p_translate_this_template=>'N'
,p_row_template_comment=>' (SELECT link_text, link_target, detail1, detail2, last_modified)'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(73159323919446320)
,p_row_template_name=>'Standard'
,p_internal_name=>'STANDARD'
,p_row_template1=>'<td class="t-Report-cell" #ALIGNMENT# headers="#COLUMN_HEADER_NAME#">#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Report #COMPONENT_CSS_CLASSES#" id="report_#REGION_STATIC_ID#" #REPORT_ATTRIBUTES#>',
'  <div class="t-Report-wrap">',
'    <table class="t-Report-pagination" role="presentation">#TOP_PAGINATION#</table>',
'    <div class="t-Report-tableWrap">',
'    <table class="t-Report-report" summary="#REGION_TITLE#">'))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'      </tbody>',
'    </table>',
'    </div>',
'    <div class="t-Report-links">#EXTERNAL_LINK##CSV_LINK#</div>',
'    <table class="t-Report-pagination t-Report-pagination--bottom" role="presentation">#PAGINATION#</table>',
'  </div>',
'</div>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_before_column_heading=>'<thead>'
,p_column_heading_template=>'<th class="t-Report-colHead" #ALIGNMENT# id="#COLUMN_HEADER_NAME#" #COLUMN_WIDTH#>#COLUMN_HEADER#</th>'
,p_after_column_heading=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</thead>',
'<tbody>'))
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>4
,p_preset_template_options=>'t-Report--altRowsDefault:t-Report--rowHighlight'
,p_reference_id=>2537207537838287671
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(73159323919446320)
,p_row_template_before_first=>'<tr>'
,p_row_template_after_last=>'</tr>'
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(73160645814446321)
,p_row_template_name=>'Timeline'
,p_internal_name=>'TIMELINE'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Timeline-item #EVENT_MODIFIERS#" #EVENT_ATTRIBUTES#>',
'  <div class="t-Timeline-wrap">',
'    <div class="t-Timeline-user">',
'      <div class="t-Timeline-avatar #USER_COLOR#">',
'        #USER_AVATAR#',
'      </div>',
'      <div class="t-Timeline-userinfo">',
'        <span class="t-Timeline-username">#USER_NAME#</span>',
'        <span class="t-Timeline-date">#EVENT_DATE#</span>',
'      </div>',
'    </div>',
'    <div class="t-Timeline-content">',
'      <div class="t-Timeline-typeWrap">',
'        <div class="t-Timeline-type #EVENT_STATUS#">',
'          <span class="t-Icon #EVENT_ICON#"></span>',
'          <span class="t-Timeline-typename">#EVENT_TYPE#</span>',
'        </div>',
'      </div>',
'      <div class="t-Timeline-body">',
'        <h3 class="t-Timeline-title">#EVENT_TITLE#</h3>',
'        <p class="t-Timeline-desc">#EVENT_DESC#</p>',
'      </div>',
'    </div>',
'  </div>',
'</li>'))
,p_row_template_condition1=>':EVENT_LINK is null'
,p_row_template2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Timeline-item #EVENT_MODIFIERS#" #EVENT_ATTRIBUTES#>',
'  <a href="#EVENT_LINK#" class="t-Timeline-wrap">',
'    <div class="t-Timeline-user">',
'      <div class="t-Timeline-avatar #USER_COLOR#">',
'        #USER_AVATAR#',
'      </div>',
'      <div class="t-Timeline-userinfo">',
'        <span class="t-Timeline-username">#USER_NAME#</span>',
'        <span class="t-Timeline-date">#EVENT_DATE#</span>',
'      </div>',
'    </div>',
'    <div class="t-Timeline-content">',
'      <div class="t-Timeline-typeWrap">',
'        <div class="t-Timeline-type #EVENT_STATUS#">',
'          <span class="t-Icon #EVENT_ICON#"></span>',
'          <span class="t-Timeline-typename">#EVENT_TYPE#</span>',
'        </div>',
'      </div>',
'      <div class="t-Timeline-body">',
'        <h3 class="t-Timeline-title">#EVENT_TITLE#</h3>',
'        <p class="t-Timeline-desc">#EVENT_DESC#</p>',
'      </div>',
'    </div>',
'  </a>',
'</li>'))
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-Timeline #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_timeline">',
''))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_reference_id=>1513373588340069864
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(73160857940446321)
,p_row_template_name=>'Value Attribute Pairs - Column'
,p_internal_name=>'VALUE_ATTRIBUTE_PAIRS_COLUMN'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<dt class="t-AVPList-label">',
'  #COLUMN_HEADER#',
'</dt>',
'<dd class="t-AVPList-value">',
'  #COLUMN_VALUE#',
'</dd>'))
,p_row_template_before_rows=>'<dl class="t-AVPList #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES#>'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</dl>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>6
,p_preset_template_options=>'t-AVPList--leftAligned'
,p_reference_id=>2099068636272681754
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(73161894819446323)
,p_row_template_name=>'Value Attribute Pairs - Row'
,p_internal_name=>'VALUE_ATTRIBUTE_PAIRS_ROW'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<dt class="t-AVPList-label">',
'  #1#',
'</dt>',
'<dd class="t-AVPList-value">',
'  #2#',
'</dd>'))
,p_row_template_before_rows=>'<dl class="t-AVPList #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</dl>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-AVPList--leftAligned'
,p_reference_id=>2099068321678681753
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(73171597890446345)
,p_template_name=>'Hidden'
,p_internal_name=>'HIDDEN'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer t-Form-labelContainer--hiddenLabel col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label u-VisuallyHidden">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</label>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--hiddenLabel rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT##HELP_TEMPLATE#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>13
,p_reference_id=>2039339104148359505
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(73171600810446349)
,p_template_name=>'Optional'
,p_internal_name=>'OPTIONAL'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</label>',
'</div>',
''))
,p_before_item=>'<div class="t-Form-fieldContainer rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT##HELP_TEMPLATE#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>3
,p_reference_id=>2317154212072806530
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(73171750785446350)
,p_template_name=>'Optional - Above'
,p_internal_name=>'OPTIONAL_ABOVE'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</label>#HELP_TEMPLATE#',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--stacked #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>3
,p_reference_id=>3030114864004968404
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(73171861792446350)
,p_template_name=>'Required'
,p_internal_name=>'REQUIRED'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'  <label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
' <span class="u-VisuallyHidden">(#VALUE_REQUIRED#)</span></label>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer is-required rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT##HELP_TEMPLATE#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>4
,p_reference_id=>2525313812251712801
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(73171994322446350)
,p_template_name=>'Required - Above'
,p_internal_name=>'REQUIRED_ABOVE'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'  <label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
' <span class="u-VisuallyHidden">(#VALUE_REQUIRED#)</span></label><span class="t-Form-required"><span class="a-Icon icon-asterisk"></span></span> #HELP_TEMPLATE#',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--stacked #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>4
,p_reference_id=>3030115129444970113
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/breadcrumb
begin
wwv_flow_api.create_menu_template(
 p_id=>wwv_flow_api.id(73172627315446359)
,p_name=>'Breadcrumb'
,p_internal_name=>'BREADCRUMB'
,p_before_first=>'<ul class="t-Breadcrumb #COMPONENT_CSS_CLASSES#">'
,p_current_page_option=>'<li class="t-Breadcrumb-item is-active"><h1 class="t-Breadcrumb-label">#NAME#</h1></li>'
,p_non_current_page_option=>'<li class="t-Breadcrumb-item"><a href="#LINK#" class="t-Breadcrumb-label">#NAME#</a></li>'
,p_after_last=>'</ul>'
,p_max_levels=>6
,p_start_with_node=>'PARENT_TO_LEAF'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070916542570059325
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/popuplov
begin
wwv_flow_api.create_popup_lov_template(
 p_id=>wwv_flow_api.id(73172821127446374)
,p_page_name=>'winlov'
,p_page_title=>'Search Dialog'
,p_page_html_head=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html lang="&BROWSER_LANGUAGE.">',
'<head>',
'<title>#TITLE#</title>',
'#APEX_CSS#',
'#THEME_CSS#',
'#THEME_STYLE_CSS#',
'#FAVICONS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'<meta name="viewport" content="width=device-width,initial-scale=1.0" />',
'</head>'))
,p_page_body_attr=>'onload="first_field()" class="t-Page t-Page--popupLOV"'
,p_before_field_text=>'<div class="t-PopupLOV-actions t-Form--large">'
,p_filter_width=>'20'
,p_filter_max_width=>'100'
,p_filter_text_attr=>'class="t-Form-field t-Form-searchField"'
,p_find_button_text=>'Search'
,p_find_button_attr=>'class="t-Button t-Button--hot t-Button--padLeft"'
,p_close_button_text=>'Close'
,p_close_button_attr=>'class="t-Button u-pullRight"'
,p_next_button_text=>'Next &gt;'
,p_next_button_attr=>'class="t-Button t-PopupLOV-button"'
,p_prev_button_text=>'&lt; Previous'
,p_prev_button_attr=>'class="t-Button t-PopupLOV-button"'
,p_after_field_text=>'</div>'
,p_scrollbars=>'1'
,p_resizable=>'1'
,p_width=>'380'
,p_height=>'380'
,p_result_row_x_of_y=>'<div class="t-PopupLOV-pagination">Row(s) #FIRST_ROW# - #LAST_ROW#</div>'
,p_result_rows_per_pg=>100
,p_before_result_set=>'<div class="t-PopupLOV-links">'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>2885398517835871876
,p_translate_this_template=>'N'
,p_after_result_set=>'</div>'
);
end;
/
prompt --application/shared_components/user_interface/templates/calendar
begin
wwv_flow_api.create_calendar_template(
 p_id=>wwv_flow_api.id(73172710516446369)
,p_cal_template_name=>'Calendar'
,p_internal_name=>'CALENDAR'
,p_day_of_week_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<th id="#DY#" scope="col" class="t-ClassicCalendar-dayColumn">',
'  <span class="visible-md visible-lg">#IDAY#</span>',
'  <span class="hidden-md hidden-lg">#IDY#</span>',
'</th>'))
,p_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar">',
'<h1 class="t-ClassicCalendar-title">#IMONTH# #YYYY#</h1>'))
,p_month_open_format=>'<table class="t-ClassicCalendar-calendar" cellpadding="0" cellspacing="0" border="0" summary="#IMONTH# #YYYY#">'
,p_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>',
''))
,p_day_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_day_close_format=>'</td>'
,p_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_weekend_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_weekend_open_format=>'<td class="t-ClassicCalendar-day is-weekend" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_weekend_close_format=>'</td>'
,p_nonday_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_nonday_open_format=>'<td class="t-ClassicCalendar-day is-inactive" headers="#DY#">'
,p_nonday_close_format=>'</td>'
,p_week_open_format=>'<tr>'
,p_week_close_format=>'</tr> '
,p_daily_title_format=>'<table cellspacing="0" cellpadding="0" border="0" summary="" class="t1DayCalendarHolder"> <tr> <td class="t1MonthTitle">#IMONTH# #DD#, #YYYY#</td> </tr> <tr> <td>'
,p_daily_open_format=>'<tr>'
,p_daily_close_format=>'</tr>'
,p_weekly_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--weekly">',
'<h1 class="t-ClassicCalendar-title">#WTITLE#</h1>'))
,p_weekly_day_of_week_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<th scope="col" class="t-ClassicCalendar-dayColumn" id="#DY#">',
'  <span class="visible-md visible-lg">#DD# #IDAY#</span>',
'  <span class="hidden-md hidden-lg">#DD# #IDY#</span>',
'</th>'))
,p_weekly_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL# - #END_DL#" class="t-ClassicCalendar-calendar">'
,p_weekly_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_weekly_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_day_close_format=>'</div></td>'
,p_weekly_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_weekend_open_format=>'<td class="t-ClassicCalendar-day is-weekend" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_weekend_close_format=>'</div></td>'
,p_weekly_time_open_format=>'<th scope="row" class="t-ClassicCalendar-day t-ClassicCalendar-timeCol">'
,p_weekly_time_close_format=>'</th>'
,p_weekly_time_title_format=>'#TIME#'
,p_weekly_hour_open_format=>'<tr>'
,p_weekly_hour_close_format=>'</tr>'
,p_daily_day_of_week_format=>'<th scope="col" id="#DY#" class="t-ClassicCalendar-dayColumn">#IDAY#</th>'
,p_daily_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--daily">',
'<h1 class="t-ClassicCalendar-title">#IMONTH# #DD#, #YYYY#</h1>'))
,p_daily_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL#" class="t-ClassicCalendar-calendar">'
,p_daily_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_daily_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_daily_day_close_format=>'</div></td>'
,p_daily_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_daily_time_open_format=>'<th scope="row" class="t-ClassicCalendar-day t-ClassicCalendar-timeCol" id="#TIME#">'
,p_daily_time_close_format=>'</th>'
,p_daily_time_title_format=>'#TIME#'
,p_daily_hour_open_format=>'<tr>'
,p_daily_hour_close_format=>'</tr>'
,p_cust_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar">',
'<h1 class="t-ClassicCalendar-title">#IMONTH# #YYYY#</h1>'))
,p_cust_day_of_week_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<th id="#DY#" scope="col" class="t-ClassicCalendar-dayColumn">',
'  <span class="visible-md visible-lg">#IDAY#</span>',
'  <span class="hidden-md hidden-lg">#IDY#</span>',
'</th>'))
,p_cust_month_open_format=>'<table class="t-ClassicCalendar-calendar" cellpadding="0" cellspacing="0" border="0" summary="#IMONTH# #YYYY#">'
,p_cust_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_cust_week_open_format=>'<tr>'
,p_cust_week_close_format=>'</tr> '
,p_cust_day_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_cust_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#">'
,p_cust_day_close_format=>'</td>'
,p_cust_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#">'
,p_cust_nonday_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_cust_nonday_open_format=>'<td class="t-ClassicCalendar-day is-inactive" headers="#DY#">'
,p_cust_nonday_close_format=>'</td>'
,p_cust_weekend_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_cust_weekend_open_format=>'<td class="t-ClassicCalendar-day is-weekend" headers="#DY#">'
,p_cust_weekend_close_format=>'</td>'
,p_cust_hour_open_format=>'<tr>'
,p_cust_hour_close_format=>'</tr>'
,p_cust_time_title_format=>'#TIME#'
,p_cust_time_open_format=>'<th scope="row" class="t-ClassicCalendar-day t-ClassicCalendar-timeCol">'
,p_cust_time_close_format=>'</th>'
,p_cust_wk_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar">',
'<h1 class="t-ClassicCalendar-title">#WTITLE#</h1>'))
,p_cust_wk_day_of_week_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<th scope="col" class="t-ClassicCalendar-dayColumn" id="#DY#">',
'  <span class="visible-md visible-lg">#DD# #IDAY#</span>',
'  <span class="hidden-md hidden-lg">#DD# #IDY#</span>',
'</th>'))
,p_cust_wk_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL# - #END_DL#" class="t-ClassicCalendar-calendar">'
,p_cust_wk_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_cust_wk_week_open_format=>'<tr>'
,p_cust_wk_week_close_format=>'</tr> '
,p_cust_wk_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_cust_wk_day_close_format=>'</div></td>'
,p_cust_wk_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_cust_wk_weekend_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#">'
,p_cust_wk_weekend_close_format=>'</td>'
,p_agenda_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--list">',
'  <div class="t-ClassicCalendar-title">#IMONTH# #YYYY#</div>',
'  <ul class="t-ClassicCalendar-list">',
'    #DAYS#',
'  </ul>',
'</div>'))
,p_agenda_past_day_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-past">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_today_day_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-today">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_future_day_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-future">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_past_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-past">#DATA#</li>'
,p_agenda_today_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-today">#DATA#</li>'
,p_agenda_future_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-future">#DATA#</li>'
,p_month_data_format=>'#DAYS#'
,p_month_data_entry_format=>'<span class="t-ClassicCalendar-event">#DATA#</span>'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070916747979059326
);
end;
/
prompt --application/shared_components/user_interface/themes
begin
wwv_flow_api.create_theme(
 p_id=>wwv_flow_api.id(73173484135446386)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_ui_type_name=>'DESKTOP'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4070917134413059350
,p_is_locked=>false
,p_default_page_template=>wwv_flow_api.id(73136255376446170)
,p_default_dialog_template=>wwv_flow_api.id(73134871429446163)
,p_error_template=>wwv_flow_api.id(73132749338446161)
,p_printer_friendly_template=>wwv_flow_api.id(73136255376446170)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_api.id(73132749338446161)
,p_default_button_template=>wwv_flow_api.id(73172160222446356)
,p_default_region_template=>wwv_flow_api.id(73149310067446237)
,p_default_chart_template=>wwv_flow_api.id(73149310067446237)
,p_default_form_template=>wwv_flow_api.id(73149310067446237)
,p_default_reportr_template=>wwv_flow_api.id(73149310067446237)
,p_default_tabform_template=>wwv_flow_api.id(73149310067446237)
,p_default_wizard_template=>wwv_flow_api.id(73149310067446237)
,p_default_menur_template=>wwv_flow_api.id(73153743697446247)
,p_default_listr_template=>wwv_flow_api.id(73149310067446237)
,p_default_irr_template=>wwv_flow_api.id(73148822037446237)
,p_default_report_template=>wwv_flow_api.id(73159323919446320)
,p_default_label_template=>wwv_flow_api.id(73171600810446349)
,p_default_menu_template=>wwv_flow_api.id(73172627315446359)
,p_default_calendar_template=>wwv_flow_api.id(73172710516446369)
,p_default_list_template=>wwv_flow_api.id(73166877573446338)
,p_default_nav_list_template=>wwv_flow_api.id(73170452103446343)
,p_default_top_nav_list_temp=>wwv_flow_api.id(73170452103446343)
,p_default_side_nav_list_temp=>wwv_flow_api.id(73169573274446342)
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>wwv_flow_api.id(73139702456446210)
,p_default_dialogr_template=>wwv_flow_api.id(73139391964446210)
,p_default_option_label=>wwv_flow_api.id(73171600810446349)
,p_default_required_label=>wwv_flow_api.id(73171861792446350)
,p_default_page_transition=>'NONE'
,p_default_popup_transition=>'NONE'
,p_default_navbar_list_template=>wwv_flow_api.id(73169428809446342)
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#IMAGE_PREFIX#themes/theme_42/1.1/')
,p_files_version=>62
,p_icon_library=>'FONTAPEX'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#HAMMERJS_URL#',
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.apexTabs#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.stickyTableHeader#MIN#.js?v=#APEX_VERSION#',
'#THEME_IMAGES#js/modernizr-custom#MIN#.js?v=#APEX_VERSION#',
'#THEME_IMAGES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_IMAGES#css/Core#MIN#.css?v=#APEX_VERSION#'
);
end;
/
prompt --application/shared_components/user_interface/theme_style
begin
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(73172961153446377)
,p_theme_id=>42
,p_name=>'Vista'
,p_css_file_urls=>'#THEME_IMAGES#css/Vista#MIN#.css?v=#APEX_VERSION#'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_read_only=>true
,p_reference_id=>4007676303523989775
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(73173020278446379)
,p_theme_id=>42
,p_name=>'Vita'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>true
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita.less'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>2719875314571594493
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(73173132553446379)
,p_theme_id=>42
,p_name=>'Vita - Dark'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita-Dark.less'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita-Dark#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>3543348412015319650
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(73173283766446379)
,p_theme_id=>42
,p_name=>'Vita - Red'
,p_is_current=>true
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita-Red.less'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita-Red#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>1938457712423918173
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(73173333955446379)
,p_theme_id=>42
,p_name=>'Vita - Slate'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita-Slate.less'
,p_theme_roller_config=>'{"customCSS":"","vars":{"@g_Accent-BG":"#505f6d","@g_Accent-OG":"#ececec","@g_Body-Title-BG":"#dee1e4","@l_Link-Base":"#337ac0","@g_Body-BG":"#f5f5f5"}}'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita-Slate#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>3291983347983194966
);
end;
/
prompt --application/shared_components/user_interface/theme_files
begin
null;
end;
/
prompt --application/shared_components/user_interface/theme_display_points
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_opt_groups
begin
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(73137854091446201)
,p_theme_id=>42
,p_name=>'ALERT_TYPE'
,p_display_name=>'Alert Type'
,p_display_sequence=>3
,p_template_types=>'REGION'
,p_help_text=>'Sets the type of alert which can be used to determine the icon, icon color, and the background color.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(73138075631446208)
,p_theme_id=>42
,p_name=>'ALERT_TITLE'
,p_display_name=>'Alert Title'
,p_display_sequence=>40
,p_template_types=>'REGION'
,p_help_text=>'Determines how the title of the alert is displayed.'
,p_null_text=>'Visible - Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(73138351897446209)
,p_theme_id=>42
,p_name=>'ALERT_ICONS'
,p_display_name=>'Alert Icons'
,p_display_sequence=>2
,p_template_types=>'REGION'
,p_help_text=>'Sets how icons are handled for the Alert Region.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(73138521223446209)
,p_theme_id=>42
,p_name=>'ALERT_DISPLAY'
,p_display_name=>'Alert Display'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the layout of the Alert Region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(73140076217446211)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>40
,p_template_types=>'REGION'
,p_help_text=>'Determines how the region is styled. Use the "Remove Borders" template option to remove the region''s borders and shadows.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(73140227880446211)
,p_theme_id=>42
,p_name=>'BODY_PADDING'
,p_display_name=>'Body Padding'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the Region Body padding for the region.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(73140900856446211)
,p_theme_id=>42
,p_name=>'TIMER'
,p_display_name=>'Timer'
,p_display_sequence=>2
,p_template_types=>'REGION'
,p_help_text=>'Sets the timer for when to automatically navigate to the next region within the Carousel Region.'
,p_null_text=>'No Timer'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(73141339955446215)
,p_theme_id=>42
,p_name=>'BODY_HEIGHT'
,p_display_name=>'Body Height'
,p_display_sequence=>10
,p_template_types=>'REGION'
,p_help_text=>'Sets the Region Body height. You can also specify a custom height by modifying the Region''s CSS Classes and using the height helper classes "i-hXXX" where XXX is any increment of 10 from 100 to 800.'
,p_null_text=>'Auto - Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(73141911646446215)
,p_theme_id=>42
,p_name=>'ACCENT'
,p_display_name=>'Accent'
,p_display_sequence=>30
,p_template_types=>'REGION'
,p_help_text=>'Set the Region''s accent. This accent corresponds to a Theme-Rollable color and sets the background of the Region''s Header.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(73142562393446217)
,p_theme_id=>42
,p_name=>'HEADER'
,p_display_name=>'Header'
,p_display_sequence=>20
,p_template_types=>'REGION'
,p_help_text=>'Determines the display of the Region Header which also contains the Region Title.'
,p_null_text=>'Visible - Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(73142741851446217)
,p_theme_id=>42
,p_name=>'BODY_OVERFLOW'
,p_display_name=>'Body Overflow'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Determines the scroll behavior when the region contents are larger than their container.'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(73143632839446217)
,p_theme_id=>42
,p_name=>'ANIMATION'
,p_display_name=>'Animation'
,p_display_sequence=>10
,p_template_types=>'REGION'
,p_help_text=>'Sets the animation when navigating within the Carousel Region.'
,p_null_text=>'Fade'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(73145287884446219)
,p_theme_id=>42
,p_name=>'DEFAULT_STATE'
,p_display_name=>'Default State'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the default state of the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(73146407458446220)
,p_theme_id=>42
,p_name=>'REGION_TITLE'
,p_display_name=>'Region Title'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the source of the Title Bar region''s title.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(73146802589446220)
,p_theme_id=>42
,p_name=>'BODY_STYLE'
,p_display_name=>'Body Style'
,p_display_sequence=>20
,p_template_types=>'REGION'
,p_help_text=>'Controls the display of the region''s body container.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(73147385685446221)
,p_theme_id=>42
,p_name=>'DISPLAY_ICON'
,p_display_name=>'Display Icon'
,p_display_sequence=>50
,p_template_types=>'REGION'
,p_help_text=>'Display the Hero Region icon.'
,p_null_text=>'Yes (Default)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(73148256714446221)
,p_theme_id=>42
,p_name=>'DIALOG_SIZE'
,p_display_name=>'Dialog Size'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(73152831436446243)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(73153072772446243)
,p_theme_id=>42
,p_name=>'TAB_STYLE'
,p_display_name=>'Tab Style'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(73153434112446243)
,p_theme_id=>42
,p_name=>'TABS_SIZE'
,p_display_name=>'Tabs Size'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(73154376880446247)
,p_theme_id=>42
,p_name=>'HIDE_STEPS_FOR'
,p_display_name=>'Hide Steps For'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(73154933532446315)
,p_theme_id=>42
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(73155115700446315)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>30
,p_template_types=>'REPORT'
,p_help_text=>'Determines the layout of Cards in the report.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(73156745023446317)
,p_theme_id=>42
,p_name=>'BODY_TEXT'
,p_display_name=>'Body Text'
,p_display_sequence=>40
,p_template_types=>'REPORT'
,p_help_text=>'Determines the height of the card body.'
,p_null_text=>'Auto'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(73157460939446319)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Determines the overall style for the component.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(73157622107446319)
,p_theme_id=>42
,p_name=>'ANIMATION'
,p_display_name=>'Animation'
,p_display_sequence=>70
,p_template_types=>'REPORT'
,p_help_text=>'Sets the hover and focus animation.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(73158021851446320)
,p_theme_id=>42
,p_name=>'ICONS'
,p_display_name=>'Icons'
,p_display_sequence=>20
,p_template_types=>'REPORT'
,p_help_text=>'Controls how to handle icons in the report.'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(73158924292446320)
,p_theme_id=>42
,p_name=>'COMMENTS_STYLE'
,p_display_name=>'Comments Style'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Determines the style in which comments are displayed.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(73159497544446320)
,p_theme_id=>42
,p_name=>'ALTERNATING_ROWS'
,p_display_name=>'Alternating Rows'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Shades alternate rows in the report with slightly different background colors.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(73159736897446320)
,p_theme_id=>42
,p_name=>'ROW_HIGHLIGHTING'
,p_display_name=>'Row Highlighting'
,p_display_sequence=>20
,p_template_types=>'REPORT'
,p_help_text=>'Determines whether you want the row to be highlighted on hover.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(73159970683446320)
,p_theme_id=>42
,p_name=>'REPORT_BORDER'
,p_display_name=>'Report Border'
,p_display_sequence=>30
,p_template_types=>'REPORT'
,p_help_text=>'Controls the display of the Report''s borders.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(73160940873446322)
,p_theme_id=>42
,p_name=>'LABEL_WIDTH'
,p_display_name=>'Label Width'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(73162868095446333)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>30
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(73163609407446333)
,p_theme_id=>42
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>70
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(73164618564446333)
,p_theme_id=>42
,p_name=>'BODY_TEXT'
,p_display_name=>'Body Text'
,p_display_sequence=>40
,p_template_types=>'LIST'
,p_help_text=>'Determines the height of the card body.'
,p_null_text=>'Auto'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(73165381450446334)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>10
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(73165665327446334)
,p_theme_id=>42
,p_name=>'ANIMATION'
,p_display_name=>'Animation'
,p_display_sequence=>80
,p_template_types=>'LIST'
,p_help_text=>'Sets the hover and focus animation.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(73165986304446334)
,p_theme_id=>42
,p_name=>'ICONS'
,p_display_name=>'Icons'
,p_display_sequence=>20
,p_template_types=>'LIST'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(73167346148446340)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>30
,p_template_types=>'LIST'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(73168292169446340)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>1
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(73171053722446344)
,p_theme_id=>42
,p_name=>'LABEL_DISPLAY'
,p_display_name=>'Label Display'
,p_display_sequence=>50
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(73172304420446357)
,p_theme_id=>42
,p_name=>'ICON_POSITION'
,p_display_name=>'Icon Position'
,p_display_sequence=>50
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the position of the icon relative to the label.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(73173570012446402)
,p_theme_id=>42
,p_name=>'BOTTOM_MARGIN'
,p_display_name=>'Bottom Margin'
,p_display_sequence=>220
,p_template_types=>'FIELD'
,p_help_text=>'Set the bottom margin for this field.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(73173720138446403)
,p_theme_id=>42
,p_name=>'REGION_BOTTOM_MARGIN'
,p_display_name=>'Bottom Margin'
,p_display_sequence=>210
,p_template_types=>'REGION'
,p_help_text=>'Set the bottom margin for this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(73174567957446403)
,p_theme_id=>42
,p_name=>'LEFT_MARGIN'
,p_display_name=>'Left Margin'
,p_display_sequence=>220
,p_template_types=>'FIELD'
,p_help_text=>'Set the left margin for this field.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(73174709650446403)
,p_theme_id=>42
,p_name=>'REGION_LEFT_MARGIN'
,p_display_name=>'Left Margin'
,p_display_sequence=>220
,p_template_types=>'REGION'
,p_help_text=>'Set the left margin for this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(73175581464446403)
,p_theme_id=>42
,p_name=>'RIGHT_MARGIN'
,p_display_name=>'Right Margin'
,p_display_sequence=>230
,p_template_types=>'FIELD'
,p_help_text=>'Set the right margin for this field.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(73175794928446403)
,p_theme_id=>42
,p_name=>'REGION_RIGHT_MARGIN'
,p_display_name=>'Right Margin'
,p_display_sequence=>230
,p_template_types=>'REGION'
,p_help_text=>'Set the right margin for this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(73176588390446403)
,p_theme_id=>42
,p_name=>'TOP_MARGIN'
,p_display_name=>'Top Margin'
,p_display_sequence=>200
,p_template_types=>'FIELD'
,p_help_text=>'Set the top margin for this field.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(73176790605446403)
,p_theme_id=>42
,p_name=>'REGION_TOP_MARGIN'
,p_display_name=>'Top Margin'
,p_display_sequence=>200
,p_template_types=>'REGION'
,p_help_text=>'Set the top margin for this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(73177585771446404)
,p_theme_id=>42
,p_name=>'TYPE'
,p_display_name=>'Type'
,p_display_sequence=>20
,p_template_types=>'BUTTON'
,p_null_text=>'Normal'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(73177752532446404)
,p_theme_id=>42
,p_name=>'SPACING_BOTTOM'
,p_display_name=>'Spacing Bottom'
,p_display_sequence=>100
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the bottom of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(73177943204446404)
,p_theme_id=>42
,p_name=>'SPACING_LEFT'
,p_display_name=>'Spacing Left'
,p_display_sequence=>70
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the left of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(73178143859446404)
,p_theme_id=>42
,p_name=>'SPACING_RIGHT'
,p_display_name=>'Spacing Right'
,p_display_sequence=>80
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the right of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(73178344318446404)
,p_theme_id=>42
,p_name=>'SPACING_TOP'
,p_display_name=>'Spacing Top'
,p_display_sequence=>90
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the top of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(73178524579446404)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>10
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the size of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(73178780757446404)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>30
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the style of the button. Use the "Simple" option for secondary actions or sets of buttons. Use the "Remove UI Decoration" option to make the button appear as text.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(73179497479446404)
,p_theme_id=>42
,p_name=>'BUTTON_SET'
,p_display_name=>'Button Set'
,p_display_sequence=>40
,p_template_types=>'BUTTON'
,p_help_text=>'Enables you to group many buttons together into a pill. You can use this option to specify where the button is within this set. Set the option to Default if this button is not part of a button set.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(73180153632446404)
,p_theme_id=>42
,p_name=>'WIDTH'
,p_display_name=>'Width'
,p_display_sequence=>60
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the width of the button.'
,p_null_text=>'Auto - Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(73180645675446405)
,p_theme_id=>42
,p_name=>'LABEL_POSITION'
,p_display_name=>'Label Position'
,p_display_sequence=>140
,p_template_types=>'REGION'
,p_help_text=>'Sets the position of the label relative to the form item.'
,p_null_text=>'Inline - Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(73180803953446405)
,p_theme_id=>42
,p_name=>'ITEM_SIZE'
,p_display_name=>'Item Size'
,p_display_sequence=>110
,p_template_types=>'REGION'
,p_help_text=>'Sets the size of the form items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(73181073888446405)
,p_theme_id=>42
,p_name=>'LABEL_ALIGNMENT'
,p_display_name=>'Label Alignment'
,p_display_sequence=>130
,p_template_types=>'REGION'
,p_help_text=>'Set the label text alignment for items within this region.'
,p_null_text=>'Right'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(73181285499446405)
,p_theme_id=>42
,p_name=>'ITEM_PADDING'
,p_display_name=>'Item Padding'
,p_display_sequence=>100
,p_template_types=>'REGION'
,p_help_text=>'Sets the padding around items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(73181587433446406)
,p_theme_id=>42
,p_name=>'ITEM_WIDTH'
,p_display_name=>'Item Width'
,p_display_sequence=>120
,p_template_types=>'REGION'
,p_help_text=>'Sets the width of the form items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(73181888430446406)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>10
,p_template_types=>'FIELD'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(73182015466446406)
,p_theme_id=>42
,p_name=>'ITEM_POST_TEXT'
,p_display_name=>'Item Post Text'
,p_display_sequence=>30
,p_template_types=>'FIELD'
,p_help_text=>'Adjust the display of the Item Post Text'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(73182243780446406)
,p_theme_id=>42
,p_name=>'ITEM_PRE_TEXT'
,p_display_name=>'Item Pre Text'
,p_display_sequence=>20
,p_template_types=>'FIELD'
,p_help_text=>'Adjust the display of the Item Pre Text'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(73182407190446406)
,p_theme_id=>42
,p_name=>'RADIO_GROUP_DISPLAY'
,p_display_name=>'Radio Group Display'
,p_display_sequence=>300
,p_template_types=>'FIELD'
,p_help_text=>'Determines the display for radio group items.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
end;
/
prompt --application/shared_components/user_interface/template_options
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73135249147446164)
,p_theme_id=>42
,p_name=>'STRETCH_TO_FIT_WINDOW'
,p_display_name=>'Stretch to Fit Window'
,p_display_sequence=>1
,p_page_template_id=>wwv_flow_api.id(73134871429446163)
,p_css_classes=>'ui-dialog--stretch'
,p_template_types=>'PAGE'
,p_help_text=>'Stretch the dialog to fit the browser window.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73137434599446172)
,p_theme_id=>42
,p_name=>'STRETCH_TO_FIT_WINDOW'
,p_display_name=>'Stretch to Fit Window'
,p_display_sequence=>10
,p_page_template_id=>wwv_flow_api.id(73137048791446171)
,p_css_classes=>'ui-dialog--stretch'
,p_template_types=>'PAGE'
,p_help_text=>'Stretch the dialog to fit the browser window.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73137788349446192)
,p_theme_id=>42
,p_name=>'COLOREDBACKGROUND'
,p_display_name=>'Highlight Background'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(73137532787446178)
,p_css_classes=>'t-Alert--colorBG'
,p_template_types=>'REGION'
,p_help_text=>'Set alert background color to that of the alert type (warning, success, etc.)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73137933229446205)
,p_theme_id=>42
,p_name=>'DANGER'
,p_display_name=>'Danger'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(73137532787446178)
,p_css_classes=>'t-Alert--danger'
,p_group_id=>wwv_flow_api.id(73137854091446201)
,p_template_types=>'REGION'
,p_help_text=>'Show an error or danger alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73138142954446208)
,p_theme_id=>42
,p_name=>'HIDDENHEADER'
,p_display_name=>'Hidden but Accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(73137532787446178)
,p_css_classes=>'t-Alert--accessibleHeading'
,p_group_id=>wwv_flow_api.id(73138075631446208)
,p_template_types=>'REGION'
,p_help_text=>'Visually hides the alert title, but assistive technologies can still read it.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73138263325446208)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(73137532787446178)
,p_css_classes=>'t-Alert--removeHeading'
,p_group_id=>wwv_flow_api.id(73138075631446208)
,p_template_types=>'REGION'
,p_help_text=>'Hides the Alert Title from being displayed.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73138449714446209)
,p_theme_id=>42
,p_name=>'HIDE_ICONS'
,p_display_name=>'Hide Icons'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(73137532787446178)
,p_css_classes=>'t-Alert--noIcon'
,p_group_id=>wwv_flow_api.id(73138351897446209)
,p_template_types=>'REGION'
,p_help_text=>'Hides alert icons'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73138604067446209)
,p_theme_id=>42
,p_name=>'HORIZONTAL'
,p_display_name=>'Horizontal'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(73137532787446178)
,p_css_classes=>'t-Alert--horizontal'
,p_group_id=>wwv_flow_api.id(73138521223446209)
,p_template_types=>'REGION'
,p_help_text=>'Show horizontal alert with buttons to the right.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73138762891446210)
,p_theme_id=>42
,p_name=>'INFORMATION'
,p_display_name=>'Information'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(73137532787446178)
,p_css_classes=>'t-Alert--info'
,p_group_id=>wwv_flow_api.id(73137854091446201)
,p_template_types=>'REGION'
,p_help_text=>'Show informational alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73138815141446210)
,p_theme_id=>42
,p_name=>'SHOW_CUSTOM_ICONS'
,p_display_name=>'Show Custom Icons'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(73137532787446178)
,p_css_classes=>'t-Alert--customIcons'
,p_group_id=>wwv_flow_api.id(73138351897446209)
,p_template_types=>'REGION'
,p_help_text=>'Set custom icons by modifying the Alert Region''s Icon CSS Classes property.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73138948081446210)
,p_theme_id=>42
,p_name=>'SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(73137532787446178)
,p_css_classes=>'t-Alert--success'
,p_group_id=>wwv_flow_api.id(73137854091446201)
,p_template_types=>'REGION'
,p_help_text=>'Show success alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73139073465446210)
,p_theme_id=>42
,p_name=>'USEDEFAULTICONS'
,p_display_name=>'Show Default Icons'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(73137532787446178)
,p_css_classes=>'t-Alert--defaultIcons'
,p_group_id=>wwv_flow_api.id(73138351897446209)
,p_template_types=>'REGION'
,p_help_text=>'Uses default icons for alert types.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73139124113446210)
,p_theme_id=>42
,p_name=>'WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(73137532787446178)
,p_css_classes=>'t-Alert--warning'
,p_group_id=>wwv_flow_api.id(73137854091446201)
,p_template_types=>'REGION'
,p_help_text=>'Show a warning alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73139279700446210)
,p_theme_id=>42
,p_name=>'WIZARD'
,p_display_name=>'Wizard'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(73137532787446178)
,p_css_classes=>'t-Alert--wizard'
,p_group_id=>wwv_flow_api.id(73138521223446209)
,p_template_types=>'REGION'
,p_help_text=>'Show the alert in a wizard style region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73140103905446211)
,p_theme_id=>42
,p_name=>'BORDERLESS'
,p_display_name=>'Borderless'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(73139702456446210)
,p_css_classes=>'t-ButtonRegion--noBorder'
,p_group_id=>wwv_flow_api.id(73140076217446211)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73140326266446211)
,p_theme_id=>42
,p_name=>'NOPADDING'
,p_display_name=>'No Padding'
,p_display_sequence=>3
,p_region_template_id=>wwv_flow_api.id(73139702456446210)
,p_css_classes=>'t-ButtonRegion--noPadding'
,p_group_id=>wwv_flow_api.id(73140227880446211)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73140424653446211)
,p_theme_id=>42
,p_name=>'REMOVEUIDECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>4
,p_region_template_id=>wwv_flow_api.id(73139702456446210)
,p_css_classes=>'t-ButtonRegion--noUI'
,p_group_id=>wwv_flow_api.id(73140076217446211)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73140591678446211)
,p_theme_id=>42
,p_name=>'SLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>5
,p_region_template_id=>wwv_flow_api.id(73139702456446210)
,p_css_classes=>'t-ButtonRegion--slimPadding'
,p_group_id=>wwv_flow_api.id(73140227880446211)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73141032923446211)
,p_theme_id=>42
,p_name=>'10_SECONDS'
,p_display_name=>'10 Seconds'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(73140634710446211)
,p_css_classes=>'js-cycle10s'
,p_group_id=>wwv_flow_api.id(73140900856446211)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73141155143446211)
,p_theme_id=>42
,p_name=>'15_SECONDS'
,p_display_name=>'15 Seconds'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(73140634710446211)
,p_css_classes=>'js-cycle15s'
,p_group_id=>wwv_flow_api.id(73140900856446211)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73141271782446212)
,p_theme_id=>42
,p_name=>'20_SECONDS'
,p_display_name=>'20 Seconds'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(73140634710446211)
,p_css_classes=>'js-cycle20s'
,p_group_id=>wwv_flow_api.id(73140900856446211)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73141482339446215)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(73140634710446211)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(73141339955446215)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73141515167446215)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(73140634710446211)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(73141339955446215)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73141604425446215)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(73140634710446211)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(73141339955446215)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73141771624446215)
,p_theme_id=>42
,p_name=>'5_SECONDS'
,p_display_name=>'5 Seconds'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(73140634710446211)
,p_css_classes=>'js-cycle5s'
,p_group_id=>wwv_flow_api.id(73140900856446211)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73141891515446215)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(73140634710446211)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(73141339955446215)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73142099558446217)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(73140634710446211)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(73141911646446215)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73142102000446217)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(73140634710446211)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(73141911646446215)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73142252232446217)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(73140634710446211)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(73141911646446215)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73142375671446217)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(73140634710446211)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(73141911646446215)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73142483639446217)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(73140634710446211)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(73141911646446215)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73142677749446217)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(73140634710446211)
,p_css_classes=>'t-Region--removeHeader'
,p_group_id=>wwv_flow_api.id(73142562393446217)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73142866586446217)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(73140634710446211)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(73142741851446217)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73142903209446217)
,p_theme_id=>42
,p_name=>'HIDEREGIONHEADER'
,p_display_name=>'Hidden but accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(73140634710446211)
,p_css_classes=>'t-Region--hideHeader'
,p_group_id=>wwv_flow_api.id(73142562393446217)
,p_template_types=>'REGION'
,p_help_text=>'This option will hide the region header.  Note that the region title will still be audible for Screen Readers. Buttons placed in the region header will be hidden and inaccessible.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73143026053446217)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(73140634710446211)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73143194009446217)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(73140634710446211)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(73140076217446211)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73143214909446217)
,p_theme_id=>42
,p_name=>'REMEMBER_CAROUSEL_SLIDE'
,p_display_name=>'Remember Carousel Slide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(73140634710446211)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73143364139446217)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(73140634710446211)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(73142741851446217)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73143486762446217)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(73140634710446211)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Region Header to maximize the region. Clicking this button will toggle the maximize state and stretch the region to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73143569762446217)
,p_theme_id=>42
,p_name=>'SHOW_NEXT_AND_PREVIOUS_BUTTONS'
,p_display_name=>'Show Next and Previous Buttons'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(73140634710446211)
,p_css_classes=>'t-Region--showCarouselControls'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73143702013446217)
,p_theme_id=>42
,p_name=>'SLIDE'
,p_display_name=>'Slide'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(73140634710446211)
,p_css_classes=>'t-Region--carouselSlide'
,p_group_id=>wwv_flow_api.id(73143632839446217)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73143882898446217)
,p_theme_id=>42
,p_name=>'SPIN'
,p_display_name=>'Spin'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(73140634710446211)
,p_css_classes=>'t-Region--carouselSpin'
,p_group_id=>wwv_flow_api.id(73143632839446217)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73143952181446217)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(73140634710446211)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(73140076217446211)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73144356816446218)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(73144010682446218)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(73141339955446215)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73144460168446218)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(73144010682446218)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(73141339955446215)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73144568266446218)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(73144010682446218)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(73141339955446215)
,p_template_types=>'REGION'
,p_help_text=>'Sets body height to 480px.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73144653322446218)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(73144010682446218)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(73141339955446215)
,p_template_types=>'REGION'
,p_help_text=>'Sets body height to 640px.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73144734066446218)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(73144010682446218)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(73141911646446215)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73144804958446218)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(73144010682446218)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(73141911646446215)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73144906187446218)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(73144010682446218)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(73141911646446215)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73145086510446218)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(73144010682446218)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(73141911646446215)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73145143124446218)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(73144010682446218)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(73141911646446215)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73145329121446219)
,p_theme_id=>42
,p_name=>'COLLAPSED'
,p_display_name=>'Collapsed'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(73144010682446218)
,p_css_classes=>'is-collapsed'
,p_group_id=>wwv_flow_api.id(73145287884446219)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73145451214446219)
,p_theme_id=>42
,p_name=>'EXPANDED'
,p_display_name=>'Expanded'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(73144010682446218)
,p_css_classes=>'is-expanded'
,p_group_id=>wwv_flow_api.id(73145287884446219)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73145558782446219)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(73144010682446218)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(73142741851446217)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73145612451446219)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(73144010682446218)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73145744835446219)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(73144010682446218)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(73140076217446211)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73145840854446219)
,p_theme_id=>42
,p_name=>'REMEMBER_COLLAPSIBLE_STATE'
,p_display_name=>'Remember Collapsible State'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(73144010682446218)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
,p_help_text=>'This option saves the current state of the collapsible region for the duration of the session.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73145927555446219)
,p_theme_id=>42
,p_name=>'REMOVE_UI_DECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(73144010682446218)
,p_css_classes=>'t-Region--noUI'
,p_group_id=>wwv_flow_api.id(73140076217446211)
,p_template_types=>'REGION'
,p_help_text=>'Removes UI decoration (borders, backgrounds, shadows, etc) from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73146068244446220)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll - Default'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(73144010682446218)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(73142741851446217)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73146127518446220)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(73144010682446218)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(73140076217446211)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73146346697446220)
,p_theme_id=>42
,p_name=>'ADD_BODY_PADDING'
,p_display_name=>'Add Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(73146294066446220)
,p_css_classes=>'t-ContentBlock--padded'
,p_template_types=>'REGION'
,p_help_text=>'Adds padding to the region''s body container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73146548845446220)
,p_theme_id=>42
,p_name=>'CONTENT_TITLE_H1'
,p_display_name=>'Heading Level 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(73146294066446220)
,p_css_classes=>'t-ContentBlock--h1'
,p_group_id=>wwv_flow_api.id(73146407458446220)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73146635219446220)
,p_theme_id=>42
,p_name=>'CONTENT_TITLE_H2'
,p_display_name=>'Heading Level 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(73146294066446220)
,p_css_classes=>'t-ContentBlock--h2'
,p_group_id=>wwv_flow_api.id(73146407458446220)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73146763220446220)
,p_theme_id=>42
,p_name=>'CONTENT_TITLE_H3'
,p_display_name=>'Heading Level 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(73146294066446220)
,p_css_classes=>'t-ContentBlock--h3'
,p_group_id=>wwv_flow_api.id(73146407458446220)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73146964259446220)
,p_theme_id=>42
,p_name=>'LIGHT_BACKGROUND'
,p_display_name=>'Light Background'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(73146294066446220)
,p_css_classes=>'t-ContentBlock--lightBG'
,p_group_id=>wwv_flow_api.id(73146802589446220)
,p_template_types=>'REGION'
,p_help_text=>'Gives the region body a slightly lighter background.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73147084967446220)
,p_theme_id=>42
,p_name=>'SHADOW_BACKGROUND'
,p_display_name=>'Shadow Background'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(73146294066446220)
,p_css_classes=>'t-ContentBlock--shadowBG'
,p_group_id=>wwv_flow_api.id(73146802589446220)
,p_template_types=>'REGION'
,p_help_text=>'Gives the region body a slightly darker background.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73147445988446221)
,p_theme_id=>42
,p_name=>'DISPLAY_ICON_NO'
,p_display_name=>'No'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(73147118449446220)
,p_css_classes=>'t-HeroRegion--hideIcon'
,p_group_id=>wwv_flow_api.id(73147385685446221)
,p_template_types=>'REGION'
,p_help_text=>'Hide the Hero Region icon.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73147590092446221)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(73147118449446220)
,p_css_classes=>'t-HeroRegion--featured'
,p_group_id=>wwv_flow_api.id(73140076217446211)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73147615425446221)
,p_theme_id=>42
,p_name=>'REMOVE_BODY_PADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(73147118449446220)
,p_css_classes=>'t-HeroRegion--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes the padding around the hero region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73147778805446221)
,p_theme_id=>42
,p_name=>'STACKED_FEATURED'
,p_display_name=>'Stacked Featured'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(73147118449446220)
,p_css_classes=>'t-HeroRegion--featured t-HeroRegion--centered'
,p_group_id=>wwv_flow_api.id(73140076217446211)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73148080079446221)
,p_theme_id=>42
,p_name=>'AUTO_HEIGHT_INLINE_DIALOG'
,p_display_name=>'Auto Height'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(73147878720446221)
,p_css_classes=>'js-dialog-autoheight'
,p_template_types=>'REGION'
,p_help_text=>'This option will set the height of the dialog to fit its contents.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73148152836446221)
,p_theme_id=>42
,p_name=>'DRAGGABLE'
,p_display_name=>'Draggable'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(73147878720446221)
,p_css_classes=>'js-draggable'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73148376576446228)
,p_theme_id=>42
,p_name=>'LARGE_720X480'
,p_display_name=>'Large (720x480)'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(73147878720446221)
,p_css_classes=>'js-dialog-size720x480'
,p_group_id=>wwv_flow_api.id(73148256714446221)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73148480821446228)
,p_theme_id=>42
,p_name=>'MEDIUM_600X400'
,p_display_name=>'Medium (600x400)'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(73147878720446221)
,p_css_classes=>'js-dialog-size600x400'
,p_group_id=>wwv_flow_api.id(73148256714446221)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73148523471446228)
,p_theme_id=>42
,p_name=>'MODAL'
,p_display_name=>'Modal'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(73147878720446221)
,p_css_classes=>'js-modal'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73148660578446228)
,p_theme_id=>42
,p_name=>'RESIZABLE'
,p_display_name=>'Resizable'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(73147878720446221)
,p_css_classes=>'js-resizable'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73148707084446237)
,p_theme_id=>42
,p_name=>'SMALL_480X320'
,p_display_name=>'Small (480x320)'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(73147878720446221)
,p_css_classes=>'js-dialog-size480x320'
,p_group_id=>wwv_flow_api.id(73148256714446221)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73148930208446237)
,p_theme_id=>42
,p_name=>'REMOVEBORDERS'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(73148822037446237)
,p_css_classes=>'t-IRR-region--noBorders'
,p_template_types=>'REGION'
,p_help_text=>'Removes borders around the Interactive Report'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73149060939446237)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(73148822037446237)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Interactive Reports toolbar to maximize the report. Clicking this button will toggle the maximize state and stretch the report to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73149681316446237)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(73149310067446237)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(73141339955446215)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73149714042446238)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(73149310067446237)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(73141339955446215)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73149803471446238)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(73149310067446237)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(73141339955446215)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73149931475446238)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(73149310067446237)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(73141339955446215)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73150083011446238)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(73149310067446237)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(73141911646446215)
,p_template_types=>'REGION'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73150135644446238)
,p_theme_id=>42
,p_name=>'ACCENT_10'
,p_display_name=>'Accent 10'
,p_display_sequence=>100
,p_region_template_id=>wwv_flow_api.id(73149310067446237)
,p_css_classes=>'t-Region--accent10'
,p_group_id=>wwv_flow_api.id(73141911646446215)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73150242616446238)
,p_theme_id=>42
,p_name=>'ACCENT_11'
,p_display_name=>'Accent 11'
,p_display_sequence=>110
,p_region_template_id=>wwv_flow_api.id(73149310067446237)
,p_css_classes=>'t-Region--accent11'
,p_group_id=>wwv_flow_api.id(73141911646446215)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73150397864446238)
,p_theme_id=>42
,p_name=>'ACCENT_12'
,p_display_name=>'Accent 12'
,p_display_sequence=>120
,p_region_template_id=>wwv_flow_api.id(73149310067446237)
,p_css_classes=>'t-Region--accent12'
,p_group_id=>wwv_flow_api.id(73141911646446215)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73150416786446238)
,p_theme_id=>42
,p_name=>'ACCENT_13'
,p_display_name=>'Accent 13'
,p_display_sequence=>130
,p_region_template_id=>wwv_flow_api.id(73149310067446237)
,p_css_classes=>'t-Region--accent13'
,p_group_id=>wwv_flow_api.id(73141911646446215)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73150583671446238)
,p_theme_id=>42
,p_name=>'ACCENT_14'
,p_display_name=>'Accent 14'
,p_display_sequence=>140
,p_region_template_id=>wwv_flow_api.id(73149310067446237)
,p_css_classes=>'t-Region--accent14'
,p_group_id=>wwv_flow_api.id(73141911646446215)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73150649961446238)
,p_theme_id=>42
,p_name=>'ACCENT_15'
,p_display_name=>'Accent 15'
,p_display_sequence=>150
,p_region_template_id=>wwv_flow_api.id(73149310067446237)
,p_css_classes=>'t-Region--accent15'
,p_group_id=>wwv_flow_api.id(73141911646446215)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73150730706446238)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(73149310067446237)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(73141911646446215)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73150882359446238)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(73149310067446237)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(73141911646446215)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73150945211446238)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(73149310067446237)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(73141911646446215)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73151081024446238)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(73149310067446237)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(73141911646446215)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73151161637446238)
,p_theme_id=>42
,p_name=>'ACCENT_6'
,p_display_name=>'Accent 6'
,p_display_sequence=>60
,p_region_template_id=>wwv_flow_api.id(73149310067446237)
,p_css_classes=>'t-Region--accent6'
,p_group_id=>wwv_flow_api.id(73141911646446215)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73151252791446238)
,p_theme_id=>42
,p_name=>'ACCENT_7'
,p_display_name=>'Accent 7'
,p_display_sequence=>70
,p_region_template_id=>wwv_flow_api.id(73149310067446237)
,p_css_classes=>'t-Region--accent7'
,p_group_id=>wwv_flow_api.id(73141911646446215)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73151345214446238)
,p_theme_id=>42
,p_name=>'ACCENT_8'
,p_display_name=>'Accent 8'
,p_display_sequence=>80
,p_region_template_id=>wwv_flow_api.id(73149310067446237)
,p_css_classes=>'t-Region--accent8'
,p_group_id=>wwv_flow_api.id(73141911646446215)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73151487825446238)
,p_theme_id=>42
,p_name=>'ACCENT_9'
,p_display_name=>'Accent 9'
,p_display_sequence=>90
,p_region_template_id=>wwv_flow_api.id(73149310067446237)
,p_css_classes=>'t-Region--accent9'
,p_group_id=>wwv_flow_api.id(73141911646446215)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73151554466446242)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(73149310067446237)
,p_css_classes=>'t-Region--removeHeader'
,p_group_id=>wwv_flow_api.id(73142562393446217)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73151684507446242)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(73149310067446237)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(73142741851446217)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73151740503446242)
,p_theme_id=>42
,p_name=>'HIDEREGIONHEADER'
,p_display_name=>'Hidden but accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(73149310067446237)
,p_css_classes=>'t-Region--hideHeader'
,p_group_id=>wwv_flow_api.id(73142562393446217)
,p_template_types=>'REGION'
,p_help_text=>'This option will hide the region header.  Note that the region title will still be audible for Screen Readers. Buttons placed in the region header will be hidden and inaccessible.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73151869047446242)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(73149310067446237)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73151949944446242)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(73149310067446237)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(73140076217446211)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73152080307446242)
,p_theme_id=>42
,p_name=>'REMOVE_UI_DECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(73149310067446237)
,p_css_classes=>'t-Region--noUI'
,p_group_id=>wwv_flow_api.id(73140076217446211)
,p_template_types=>'REGION'
,p_help_text=>'Removes UI decoration (borders, backgrounds, shadows, etc) from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73152118484446242)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll - Default'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(73149310067446237)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(73142741851446217)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73152290602446242)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(73149310067446237)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Region Header to maximize the region. Clicking this button will toggle the maximize state and stretch the region to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73152338103446242)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(73149310067446237)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(73140076217446211)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73152475397446242)
,p_theme_id=>42
,p_name=>'TEXT_CONTENT'
,p_display_name=>'Text Content'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(73149310067446237)
,p_css_classes=>'t-Region--textContent'
,p_group_id=>wwv_flow_api.id(73140076217446211)
,p_template_types=>'REGION'
,p_help_text=>'Useful for displaying primarily text-based content, such as FAQs and more.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73152909476446243)
,p_theme_id=>42
,p_name=>'FILL_TAB_LABELS'
,p_display_name=>'Fill Tab Labels'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(73152569838446242)
,p_css_classes=>'t-TabsRegion-mod--fillLabels'
,p_group_id=>wwv_flow_api.id(73152831436446243)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73153116931446243)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Pill'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(73152569838446242)
,p_css_classes=>'t-TabsRegion-mod--pill'
,p_group_id=>wwv_flow_api.id(73153072772446243)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73153227218446243)
,p_theme_id=>42
,p_name=>'REMEMBER_ACTIVE_TAB'
,p_display_name=>'Remember Active Tab'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(73152569838446242)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73153314528446243)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(73152569838446242)
,p_css_classes=>'t-TabsRegion-mod--simple'
,p_group_id=>wwv_flow_api.id(73153072772446243)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73153544843446243)
,p_theme_id=>42
,p_name=>'TABSLARGE'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(73152569838446242)
,p_css_classes=>'t-TabsRegion-mod--large'
,p_group_id=>wwv_flow_api.id(73153434112446243)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73153652916446247)
,p_theme_id=>42
,p_name=>'TABS_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(73152569838446242)
,p_css_classes=>'t-TabsRegion-mod--small'
,p_group_id=>wwv_flow_api.id(73153434112446243)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73153846912446247)
,p_theme_id=>42
,p_name=>'GET_TITLE_FROM_BREADCRUMB'
,p_display_name=>'Use Current Breadcrumb Entry'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(73153743697446247)
,p_css_classes=>'t-BreadcrumbRegion--useBreadcrumbTitle'
,p_group_id=>wwv_flow_api.id(73146407458446220)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73153949243446247)
,p_theme_id=>42
,p_name=>'HIDE_BREADCRUMB'
,p_display_name=>'Show Breadcrumbs'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(73153743697446247)
,p_css_classes=>'t-BreadcrumbRegion--showBreadcrumb'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73154080545446247)
,p_theme_id=>42
,p_name=>'REGION_HEADER_VISIBLE'
,p_display_name=>'Use Region Title'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(73153743697446247)
,p_css_classes=>'t-BreadcrumbRegion--useRegionTitle'
,p_group_id=>wwv_flow_api.id(73146407458446220)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73154460432446247)
,p_theme_id=>42
,p_name=>'HIDESMALLSCREENS'
,p_display_name=>'Small Screens (Tablet)'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(73154145090446247)
,p_css_classes=>'t-Wizard--hideStepsSmall'
,p_group_id=>wwv_flow_api.id(73154376880446247)
,p_template_types=>'REGION'
,p_help_text=>'Hides the wizard progress steps for screens that are smaller than 768px wide.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73154533223446247)
,p_theme_id=>42
,p_name=>'HIDEXSMALLSCREENS'
,p_display_name=>'X Small Screens (Mobile)'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(73154145090446247)
,p_css_classes=>'t-Wizard--hideStepsXSmall'
,p_group_id=>wwv_flow_api.id(73154376880446247)
,p_template_types=>'REGION'
,p_help_text=>'Hides the wizard progress steps for screens that are smaller than 768px wide.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73154616626446247)
,p_theme_id=>42
,p_name=>'SHOW_TITLE'
,p_display_name=>'Show Title'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(73154145090446247)
,p_css_classes=>'t-Wizard--showTitle'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73155034641446315)
,p_theme_id=>42
,p_name=>'128PX'
,p_display_name=>'128px'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(73154833899446313)
,p_css_classes=>'t-BadgeList--xxlarge'
,p_group_id=>wwv_flow_api.id(73154933532446315)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73155268351446315)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(73154833899446313)
,p_css_classes=>'t-BadgeList--cols'
,p_group_id=>wwv_flow_api.id(73155115700446315)
,p_template_types=>'REPORT'
,p_help_text=>'Arrange badges in a two column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73155360277446315)
,p_theme_id=>42
,p_name=>'32PX'
,p_display_name=>'32px'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(73154833899446313)
,p_css_classes=>'t-BadgeList--small'
,p_group_id=>wwv_flow_api.id(73154933532446315)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73155455924446315)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(73154833899446313)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--3cols'
,p_group_id=>wwv_flow_api.id(73155115700446315)
,p_template_types=>'REPORT'
,p_help_text=>'Arrange badges in a 3 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73155511712446315)
,p_theme_id=>42
,p_name=>'48PX'
,p_display_name=>'48px'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(73154833899446313)
,p_css_classes=>'t-BadgeList--medium'
,p_group_id=>wwv_flow_api.id(73154933532446315)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73155624354446315)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(73154833899446313)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--4cols'
,p_group_id=>wwv_flow_api.id(73155115700446315)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73155710765446315)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(73154833899446313)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--5cols'
,p_group_id=>wwv_flow_api.id(73155115700446315)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73155830748446316)
,p_theme_id=>42
,p_name=>'64PX'
,p_display_name=>'64px'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(73154833899446313)
,p_css_classes=>'t-BadgeList--large'
,p_group_id=>wwv_flow_api.id(73154933532446315)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73155918086446316)
,p_theme_id=>42
,p_name=>'96PX'
,p_display_name=>'96px'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(73154833899446313)
,p_css_classes=>'t-BadgeList--xlarge'
,p_group_id=>wwv_flow_api.id(73154933532446315)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73156023274446316)
,p_theme_id=>42
,p_name=>'FIXED'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(73154833899446313)
,p_css_classes=>'t-BadgeList--fixed'
,p_group_id=>wwv_flow_api.id(73155115700446315)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73156163695446316)
,p_theme_id=>42
,p_name=>'FLEXIBLEBOX'
,p_display_name=>'Flexible Box'
,p_display_sequence=>80
,p_report_template_id=>wwv_flow_api.id(73154833899446313)
,p_css_classes=>'t-BadgeList--flex'
,p_group_id=>wwv_flow_api.id(73155115700446315)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73156266566446316)
,p_theme_id=>42
,p_name=>'FLOATITEMS'
,p_display_name=>'Float Items'
,p_display_sequence=>70
,p_report_template_id=>wwv_flow_api.id(73154833899446313)
,p_css_classes=>'t-BadgeList--float'
,p_group_id=>wwv_flow_api.id(73155115700446315)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73156338163446316)
,p_theme_id=>42
,p_name=>'RESPONSIVE'
,p_display_name=>'Responsive'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(73154833899446313)
,p_css_classes=>'t-BadgeList--responsive'
,p_template_types=>'REPORT'
,p_help_text=>'Automatically resize badges to smaller sizes as screen becomes smaller.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73156497673446316)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(73154833899446313)
,p_css_classes=>'t-BadgeList--stacked'
,p_group_id=>wwv_flow_api.id(73155115700446315)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73156636288446317)
,p_theme_id=>42
,p_name=>'2_COLUMNS'
,p_display_name=>'2 Columns'
,p_display_sequence=>15
,p_report_template_id=>wwv_flow_api.id(73156578861446316)
,p_css_classes=>'t-Cards--cols'
,p_group_id=>wwv_flow_api.id(73155115700446315)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73156885843446317)
,p_theme_id=>42
,p_name=>'2_LINES'
,p_display_name=>'2 Lines'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(73156578861446316)
,p_css_classes=>'t-Cards--desc-2ln'
,p_group_id=>wwv_flow_api.id(73156745023446317)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73156994384446317)
,p_theme_id=>42
,p_name=>'3_COLUMNS'
,p_display_name=>'3 Columns'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(73156578861446316)
,p_css_classes=>'t-Cards--3cols'
,p_group_id=>wwv_flow_api.id(73155115700446315)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73157011482446319)
,p_theme_id=>42
,p_name=>'3_LINES'
,p_display_name=>'3 Lines'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(73156578861446316)
,p_css_classes=>'t-Cards--desc-3ln'
,p_group_id=>wwv_flow_api.id(73156745023446317)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73157160601446319)
,p_theme_id=>42
,p_name=>'4_COLUMNS'
,p_display_name=>'4 Columns'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(73156578861446316)
,p_css_classes=>'t-Cards--4cols'
,p_group_id=>wwv_flow_api.id(73155115700446315)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73157206484446319)
,p_theme_id=>42
,p_name=>'4_LINES'
,p_display_name=>'4 Lines'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(73156578861446316)
,p_css_classes=>'t-Cards--desc-4ln'
,p_group_id=>wwv_flow_api.id(73156745023446317)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73157319320446319)
,p_theme_id=>42
,p_name=>'5_COLUMNS'
,p_display_name=>'5 Columns'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(73156578861446316)
,p_css_classes=>'t-Cards--5cols'
,p_group_id=>wwv_flow_api.id(73155115700446315)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73157594979446319)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(73156578861446316)
,p_css_classes=>'t-Cards--basic'
,p_group_id=>wwv_flow_api.id(73157460939446319)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73157762210446319)
,p_theme_id=>42
,p_name=>'CARDS_COLOR_FILL'
,p_display_name=>'Color Fill'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(73156578861446316)
,p_css_classes=>'t-Cards--animColorFill'
,p_group_id=>wwv_flow_api.id(73157622107446319)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73157834675446319)
,p_theme_id=>42
,p_name=>'CARD_RAISE_CARD'
,p_display_name=>'Raise Card'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(73156578861446316)
,p_css_classes=>'t-Cards--animRaiseCard'
,p_group_id=>wwv_flow_api.id(73157622107446319)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73157987746446320)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(73156578861446316)
,p_css_classes=>'t-Cards--compact'
,p_group_id=>wwv_flow_api.id(73157460939446319)
,p_template_types=>'REPORT'
,p_help_text=>'Use this option when you want to show smaller cards.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73158146500446320)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(73156578861446316)
,p_css_classes=>'t-Cards--displayIcons'
,p_group_id=>wwv_flow_api.id(73158021851446320)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73158242947446320)
,p_theme_id=>42
,p_name=>'DISPLAY_INITIALS'
,p_display_name=>'Display Initials'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(73156578861446316)
,p_css_classes=>'t-Cards--displayInitials'
,p_group_id=>wwv_flow_api.id(73158021851446320)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73158361709446320)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(73156578861446316)
,p_css_classes=>'t-Cards--featured'
,p_group_id=>wwv_flow_api.id(73157460939446319)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73158461207446320)
,p_theme_id=>42
,p_name=>'FLOAT'
,p_display_name=>'Float'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(73156578861446316)
,p_css_classes=>'t-Cards--float'
,p_group_id=>wwv_flow_api.id(73155115700446315)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73158523160446320)
,p_theme_id=>42
,p_name=>'HIDDEN_BODY_TEXT'
,p_display_name=>'Hidden'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(73156578861446316)
,p_css_classes=>'t-Cards--hideBody'
,p_group_id=>wwv_flow_api.id(73156745023446317)
,p_template_types=>'REPORT'
,p_help_text=>'This option hides the card body which contains description and subtext.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73158610528446320)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTALLY'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>70
,p_report_template_id=>wwv_flow_api.id(73156578861446316)
,p_css_classes=>'t-Cards--spanHorizontally'
,p_group_id=>wwv_flow_api.id(73155115700446315)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73158750101446320)
,p_theme_id=>42
,p_name=>'USE_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(73156578861446316)
,p_css_classes=>'u-colors'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73159039626446320)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(73158856033446320)
,p_css_classes=>'t-Comments--basic'
,p_group_id=>wwv_flow_api.id(73158924292446320)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73159121747446320)
,p_theme_id=>42
,p_name=>'SPEECH_BUBBLES'
,p_display_name=>'Speech Bubbles'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(73158856033446320)
,p_css_classes=>'t-Comments--chat'
,p_group_id=>wwv_flow_api.id(73158924292446320)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73159571852446320)
,p_theme_id=>42
,p_name=>'ALTROWCOLORSDISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(73159323919446320)
,p_css_classes=>'t-Report--staticRowColors'
,p_group_id=>wwv_flow_api.id(73159497544446320)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73159691769446320)
,p_theme_id=>42
,p_name=>'ALTROWCOLORSENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(73159323919446320)
,p_css_classes=>'t-Report--altRowsDefault'
,p_group_id=>wwv_flow_api.id(73159497544446320)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73159862619446320)
,p_theme_id=>42
,p_name=>'ENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(73159323919446320)
,p_css_classes=>'t-Report--rowHighlight'
,p_group_id=>wwv_flow_api.id(73159736897446320)
,p_template_types=>'REPORT'
,p_help_text=>'Enable row highlighting on mouse over'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73160015278446321)
,p_theme_id=>42
,p_name=>'HORIZONTALBORDERS'
,p_display_name=>'Horizontal Only'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(73159323919446320)
,p_css_classes=>'t-Report--horizontalBorders'
,p_group_id=>wwv_flow_api.id(73159970683446320)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73160162146446321)
,p_theme_id=>42
,p_name=>'REMOVEALLBORDERS'
,p_display_name=>'No Borders'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(73159323919446320)
,p_css_classes=>'t-Report--noBorders'
,p_group_id=>wwv_flow_api.id(73159970683446320)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73160278896446321)
,p_theme_id=>42
,p_name=>'REMOVEOUTERBORDERS'
,p_display_name=>'No Outer Borders'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(73159323919446320)
,p_css_classes=>'t-Report--inline'
,p_group_id=>wwv_flow_api.id(73159970683446320)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73160358244446321)
,p_theme_id=>42
,p_name=>'ROWHIGHLIGHTDISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(73159323919446320)
,p_css_classes=>'t-Report--rowHighlightOff'
,p_group_id=>wwv_flow_api.id(73159736897446320)
,p_template_types=>'REPORT'
,p_help_text=>'Disable row highlighting on mouse over'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73160494744446321)
,p_theme_id=>42
,p_name=>'STRETCHREPORT'
,p_display_name=>'Stretch Report'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(73159323919446320)
,p_css_classes=>'t-Report--stretch'
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73160520919446321)
,p_theme_id=>42
,p_name=>'VERTICALBORDERS'
,p_display_name=>'Vertical Only'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(73159323919446320)
,p_css_classes=>'t-Report--verticalBorders'
,p_group_id=>wwv_flow_api.id(73159970683446320)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73160739527446321)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_api.id(73160645814446321)
,p_css_classes=>'t-Timeline--compact'
,p_group_id=>wwv_flow_api.id(73157460939446319)
,p_template_types=>'REPORT'
,p_help_text=>'Displays a compact version of timeline with smaller text and fewer columns.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73161019586446322)
,p_theme_id=>42
,p_name=>'FIXED_LARGE'
,p_display_name=>'Fixed - Large'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(73160857940446321)
,p_css_classes=>'t-AVPList--fixedLabelLarge'
,p_group_id=>wwv_flow_api.id(73160940873446322)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73161161204446323)
,p_theme_id=>42
,p_name=>'FIXED_MEDIUM'
,p_display_name=>'Fixed - Medium'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(73160857940446321)
,p_css_classes=>'t-AVPList--fixedLabelMedium'
,p_group_id=>wwv_flow_api.id(73160940873446322)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73161240575446323)
,p_theme_id=>42
,p_name=>'FIXED_SMALL'
,p_display_name=>'Fixed - Small'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(73160857940446321)
,p_css_classes=>'t-AVPList--fixedLabelSmall'
,p_group_id=>wwv_flow_api.id(73160940873446322)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73161365853446323)
,p_theme_id=>42
,p_name=>'LEFT_ALIGNED_DETAILS'
,p_display_name=>'Left Aligned Details'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(73160857940446321)
,p_css_classes=>'t-AVPList--leftAligned'
,p_group_id=>wwv_flow_api.id(73155115700446315)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73161418073446323)
,p_theme_id=>42
,p_name=>'RIGHT_ALIGNED_DETAILS'
,p_display_name=>'Right Aligned Details'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(73160857940446321)
,p_css_classes=>'t-AVPList--rightAligned'
,p_group_id=>wwv_flow_api.id(73155115700446315)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73161515957446323)
,p_theme_id=>42
,p_name=>'VARIABLE_LARGE'
,p_display_name=>'Variable - Large'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(73160857940446321)
,p_css_classes=>'t-AVPList--variableLabelLarge'
,p_group_id=>wwv_flow_api.id(73160940873446322)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73161641707446323)
,p_theme_id=>42
,p_name=>'VARIABLE_MEDIUM'
,p_display_name=>'Variable - Medium'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(73160857940446321)
,p_css_classes=>'t-AVPList--variableLabelMedium'
,p_group_id=>wwv_flow_api.id(73160940873446322)
,p_template_types=>'REPORT'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73161766596446323)
,p_theme_id=>42
,p_name=>'VARIABLE_SMALL'
,p_display_name=>'Variable - Small'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(73160857940446321)
,p_css_classes=>'t-AVPList--variableLabelSmall'
,p_group_id=>wwv_flow_api.id(73160940873446322)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73161924009446323)
,p_theme_id=>42
,p_name=>'FIXED_LARGE'
,p_display_name=>'Fixed - Large'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(73161894819446323)
,p_css_classes=>'t-AVPList--fixedLabelLarge'
,p_group_id=>wwv_flow_api.id(73160940873446322)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73162095439446323)
,p_theme_id=>42
,p_name=>'FIXED_MEDIUM'
,p_display_name=>'Fixed - Medium'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(73161894819446323)
,p_css_classes=>'t-AVPList--fixedLabelMedium'
,p_group_id=>wwv_flow_api.id(73160940873446322)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73162145435446323)
,p_theme_id=>42
,p_name=>'FIXED_SMALL'
,p_display_name=>'Fixed - Small'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(73161894819446323)
,p_css_classes=>'t-AVPList--fixedLabelSmall'
,p_group_id=>wwv_flow_api.id(73160940873446322)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73162294238446323)
,p_theme_id=>42
,p_name=>'LEFT_ALIGNED_DETAILS'
,p_display_name=>'Left Aligned Details'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(73161894819446323)
,p_css_classes=>'t-AVPList--leftAligned'
,p_group_id=>wwv_flow_api.id(73155115700446315)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73162362843446323)
,p_theme_id=>42
,p_name=>'RIGHT_ALIGNED_DETAILS'
,p_display_name=>'Right Aligned Details'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(73161894819446323)
,p_css_classes=>'t-AVPList--rightAligned'
,p_group_id=>wwv_flow_api.id(73155115700446315)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73162421746446323)
,p_theme_id=>42
,p_name=>'VARIABLE_LARGE'
,p_display_name=>'Variable - Large'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(73161894819446323)
,p_css_classes=>'t-AVPList--variableLabelLarge'
,p_group_id=>wwv_flow_api.id(73160940873446322)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73162587816446323)
,p_theme_id=>42
,p_name=>'VARIABLE_MEDIUM'
,p_display_name=>'Variable - Medium'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(73161894819446323)
,p_css_classes=>'t-AVPList--variableLabelMedium'
,p_group_id=>wwv_flow_api.id(73160940873446322)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73162634324446323)
,p_theme_id=>42
,p_name=>'VARIABLE_SMALL'
,p_display_name=>'Variable - Small'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(73161894819446323)
,p_css_classes=>'t-AVPList--variableLabelSmall'
,p_group_id=>wwv_flow_api.id(73160940873446322)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73162943461446333)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(73162718347446327)
,p_css_classes=>'t-BadgeList--cols'
,p_group_id=>wwv_flow_api.id(73162868095446333)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a two column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73163029147446333)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(73162718347446327)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--3cols'
,p_group_id=>wwv_flow_api.id(73162868095446333)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a 3 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73163121997446333)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(73162718347446327)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--4cols'
,p_group_id=>wwv_flow_api.id(73162868095446333)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in 4 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73163250664446333)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(73162718347446327)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--5cols'
,p_group_id=>wwv_flow_api.id(73162868095446333)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a 5 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73163300103446333)
,p_theme_id=>42
,p_name=>'FIXED'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>60
,p_list_template_id=>wwv_flow_api.id(73162718347446327)
,p_css_classes=>'t-BadgeList--fixed'
,p_group_id=>wwv_flow_api.id(73162868095446333)
,p_template_types=>'LIST'
,p_help_text=>'Span badges horizontally'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73163460012446333)
,p_theme_id=>42
,p_name=>'FLEXIBLEBOX'
,p_display_name=>'Flexible Box'
,p_display_sequence=>80
,p_list_template_id=>wwv_flow_api.id(73162718347446327)
,p_css_classes=>'t-BadgeList--flex'
,p_group_id=>wwv_flow_api.id(73162868095446333)
,p_template_types=>'LIST'
,p_help_text=>'Use flexbox to arrange items'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73163551060446333)
,p_theme_id=>42
,p_name=>'FLOATITEMS'
,p_display_name=>'Float Items'
,p_display_sequence=>70
,p_list_template_id=>wwv_flow_api.id(73162718347446327)
,p_css_classes=>'t-BadgeList--float'
,p_group_id=>wwv_flow_api.id(73162868095446333)
,p_template_types=>'LIST'
,p_help_text=>'Float badges to left'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73163742706446333)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'64px'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(73162718347446327)
,p_css_classes=>'t-BadgeList--large'
,p_group_id=>wwv_flow_api.id(73163609407446333)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73163804286446333)
,p_theme_id=>42
,p_name=>'MEDIUM'
,p_display_name=>'48px'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(73162718347446327)
,p_css_classes=>'t-BadgeList--medium'
,p_group_id=>wwv_flow_api.id(73163609407446333)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73163926647446333)
,p_theme_id=>42
,p_name=>'RESPONSIVE'
,p_display_name=>'Responsive'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(73162718347446327)
,p_css_classes=>'t-BadgeList--responsive'
,p_template_types=>'LIST'
,p_help_text=>'Automatically resize badges to smaller sizes as screen becomes smaller.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73164030556446333)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'32px'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(73162718347446327)
,p_css_classes=>'t-BadgeList--small'
,p_group_id=>wwv_flow_api.id(73163609407446333)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73164115555446333)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(73162718347446327)
,p_css_classes=>'t-BadgeList--stacked'
,p_group_id=>wwv_flow_api.id(73162868095446333)
,p_template_types=>'LIST'
,p_help_text=>'Stack badges on top of each other'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73164213449446333)
,p_theme_id=>42
,p_name=>'XLARGE'
,p_display_name=>'96px'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(73162718347446327)
,p_css_classes=>'t-BadgeList--xlarge'
,p_group_id=>wwv_flow_api.id(73163609407446333)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73164377899446333)
,p_theme_id=>42
,p_name=>'XXLARGE'
,p_display_name=>'128px'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(73162718347446327)
,p_css_classes=>'t-BadgeList--xxlarge'
,p_group_id=>wwv_flow_api.id(73163609407446333)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73164592075446333)
,p_theme_id=>42
,p_name=>'2_COLUMNS'
,p_display_name=>'2 Columns'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(73164472439446333)
,p_css_classes=>'t-Cards--cols'
,p_group_id=>wwv_flow_api.id(73162868095446333)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73164790812446333)
,p_theme_id=>42
,p_name=>'2_LINES'
,p_display_name=>'2 Lines'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(73164472439446333)
,p_css_classes=>'t-Cards--desc-2ln'
,p_group_id=>wwv_flow_api.id(73164618564446333)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73164802939446333)
,p_theme_id=>42
,p_name=>'3_COLUMNS'
,p_display_name=>'3 Columns'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(73164472439446333)
,p_css_classes=>'t-Cards--3cols'
,p_group_id=>wwv_flow_api.id(73162868095446333)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73164911361446333)
,p_theme_id=>42
,p_name=>'3_LINES'
,p_display_name=>'3 Lines'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(73164472439446333)
,p_css_classes=>'t-Cards--desc-3ln'
,p_group_id=>wwv_flow_api.id(73164618564446333)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73165029666446334)
,p_theme_id=>42
,p_name=>'4_COLUMNS'
,p_display_name=>'4 Columns'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(73164472439446333)
,p_css_classes=>'t-Cards--4cols'
,p_group_id=>wwv_flow_api.id(73162868095446333)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73165157860446334)
,p_theme_id=>42
,p_name=>'4_LINES'
,p_display_name=>'4 Lines'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(73164472439446333)
,p_css_classes=>'t-Cards--desc-4ln'
,p_group_id=>wwv_flow_api.id(73164618564446333)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73165296245446334)
,p_theme_id=>42
,p_name=>'5_COLUMNS'
,p_display_name=>'5 Columns'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(73164472439446333)
,p_css_classes=>'t-Cards--5cols'
,p_group_id=>wwv_flow_api.id(73162868095446333)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73165446066446334)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(73164472439446333)
,p_css_classes=>'t-Cards--basic'
,p_group_id=>wwv_flow_api.id(73165381450446334)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73165554266446334)
,p_theme_id=>42
,p_name=>'CARDS_STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>5
,p_list_template_id=>wwv_flow_api.id(73164472439446333)
,p_css_classes=>'t-Cards--stacked'
,p_group_id=>wwv_flow_api.id(73162868095446333)
,p_template_types=>'LIST'
,p_help_text=>'Stacks the cards on top of each other.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73165779865446334)
,p_theme_id=>42
,p_name=>'COLOR_FILL'
,p_display_name=>'Color Fill'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(73164472439446333)
,p_css_classes=>'t-Cards--animColorFill'
,p_group_id=>wwv_flow_api.id(73165665327446334)
,p_template_types=>'LIST'
,p_help_text=>'Fills the card background with the color of the icon or default link style.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73165880233446334)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(73164472439446333)
,p_css_classes=>'t-Cards--compact'
,p_group_id=>wwv_flow_api.id(73165381450446334)
,p_template_types=>'LIST'
,p_help_text=>'Use this option when you want to show smaller cards.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73166066544446334)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(73164472439446333)
,p_css_classes=>'t-Cards--displayIcons'
,p_group_id=>wwv_flow_api.id(73165986304446334)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73166133652446334)
,p_theme_id=>42
,p_name=>'DISPLAY_INITIALS'
,p_display_name=>'Display Initials'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(73164472439446333)
,p_css_classes=>'t-Cards--displayInitials'
,p_group_id=>wwv_flow_api.id(73165986304446334)
,p_template_types=>'LIST'
,p_help_text=>'Initials come from List Attribute 3'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73166227479446334)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(73164472439446333)
,p_css_classes=>'t-Cards--featured'
,p_group_id=>wwv_flow_api.id(73165381450446334)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73166353279446334)
,p_theme_id=>42
,p_name=>'FLOAT'
,p_display_name=>'Float'
,p_display_sequence=>60
,p_list_template_id=>wwv_flow_api.id(73164472439446333)
,p_css_classes=>'t-Cards--float'
,p_group_id=>wwv_flow_api.id(73162868095446333)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73166479640446334)
,p_theme_id=>42
,p_name=>'HIDDEN_BODY_TEXT'
,p_display_name=>'Hidden'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(73164472439446333)
,p_css_classes=>'t-Cards--hideBody'
,p_group_id=>wwv_flow_api.id(73164618564446333)
,p_template_types=>'LIST'
,p_help_text=>'This option hides the card body which contains description and subtext.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73166527772446336)
,p_theme_id=>42
,p_name=>'RAISE_CARD'
,p_display_name=>'Raise Card'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(73164472439446333)
,p_css_classes=>'t-Cards--animRaiseCard'
,p_group_id=>wwv_flow_api.id(73165665327446334)
,p_template_types=>'LIST'
,p_help_text=>'Raises the card so it pops up.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73166644202446336)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTALLY'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>70
,p_list_template_id=>wwv_flow_api.id(73164472439446333)
,p_css_classes=>'t-Cards--spanHorizontally'
,p_group_id=>wwv_flow_api.id(73162868095446333)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73166736544446336)
,p_theme_id=>42
,p_name=>'USE_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(73164472439446333)
,p_css_classes=>'u-colors'
,p_template_types=>'LIST'
,p_help_text=>'Applies the colors from the theme''s color palette to the icons or initials within cards.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73166940525446340)
,p_theme_id=>42
,p_name=>'ACTIONS'
,p_display_name=>'Actions'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(73166877573446338)
,p_css_classes=>'t-LinksList--actions'
,p_group_id=>wwv_flow_api.id(73165381450446334)
,p_template_types=>'LIST'
,p_help_text=>'Render as actions to be placed on the right side column.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73167002955446340)
,p_theme_id=>42
,p_name=>'DISABLETEXTWRAPPING'
,p_display_name=>'Disable Text Wrapping'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(73166877573446338)
,p_css_classes=>'t-LinksList--nowrap'
,p_template_types=>'LIST'
,p_help_text=>'Do not allow link text to wrap to new lines. Truncate with ellipsis.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73167100084446340)
,p_theme_id=>42
,p_name=>'SHOWBADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(73166877573446338)
,p_css_classes=>'t-LinksList--showBadge'
,p_template_types=>'LIST'
,p_help_text=>'Show badge to right of link (requires Attribute 1 to be populated)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73167205213446340)
,p_theme_id=>42
,p_name=>'SHOWGOTOARROW'
,p_display_name=>'Show Right Arrow'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(73166877573446338)
,p_css_classes=>'t-LinksList--showArrow'
,p_template_types=>'LIST'
,p_help_text=>'Show arrow to the right of link'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73167445386446340)
,p_theme_id=>42
,p_name=>'SHOWICONS'
,p_display_name=>'For All Items'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(73166877573446338)
,p_css_classes=>'t-LinksList--showIcons'
,p_group_id=>wwv_flow_api.id(73167346148446340)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73167569866446340)
,p_theme_id=>42
,p_name=>'SHOWTOPICONS'
,p_display_name=>'For Top Level Items Only'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(73166877573446338)
,p_css_classes=>'t-LinksList--showTopIcons'
,p_group_id=>wwv_flow_api.id(73167346148446340)
,p_template_types=>'LIST'
,p_help_text=>'This will show icons for top level items of the list only. It will not show icons for sub lists.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73167715411446340)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(73167631215446340)
,p_css_classes=>'t-MediaList--cols t-MediaList--2cols'
,p_group_id=>wwv_flow_api.id(73162868095446333)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73167837528446340)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(73167631215446340)
,p_css_classes=>'t-MediaList--cols t-MediaList--3cols'
,p_group_id=>wwv_flow_api.id(73162868095446333)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73167994501446340)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(73167631215446340)
,p_css_classes=>'t-MediaList--cols t-MediaList--4cols'
,p_group_id=>wwv_flow_api.id(73162868095446333)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73168084398446340)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(73167631215446340)
,p_css_classes=>'t-MediaList--cols t-MediaList--5cols'
,p_group_id=>wwv_flow_api.id(73162868095446333)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73168147386446340)
,p_theme_id=>42
,p_name=>'APPLY_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(73167631215446340)
,p_css_classes=>'u-colors'
,p_template_types=>'LIST'
,p_help_text=>'Applies colors from the Theme''s color palette to icons in the list.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73168367241446340)
,p_theme_id=>42
,p_name=>'LIST_SIZE_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(73167631215446340)
,p_css_classes=>'t-MediaList--large'
,p_group_id=>wwv_flow_api.id(73168292169446340)
,p_template_types=>'LIST'
,p_help_text=>'Increases the size of the text and icons in the list.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73168425640446340)
,p_theme_id=>42
,p_name=>'SHOW_BADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(73167631215446340)
,p_css_classes=>'t-MediaList--showBadges'
,p_template_types=>'LIST'
,p_help_text=>'Show a badge (Attribute 2) to the right of the list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73168593753446340)
,p_theme_id=>42
,p_name=>'SHOW_DESCRIPTION'
,p_display_name=>'Show Description'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(73167631215446340)
,p_css_classes=>'t-MediaList--showDesc'
,p_template_types=>'LIST'
,p_help_text=>'Shows the description (Attribute 1) for each list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73168694108446340)
,p_theme_id=>42
,p_name=>'SHOW_ICONS'
,p_display_name=>'Show Icons'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(73167631215446340)
,p_css_classes=>'t-MediaList--showIcons'
,p_template_types=>'LIST'
,p_help_text=>'Display an icon next to the list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73168702668446340)
,p_theme_id=>42
,p_name=>'SPANHORIZONTAL'
,p_display_name=>'Span Horizontal'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(73167631215446340)
,p_css_classes=>'t-MediaList--horizontal'
,p_group_id=>wwv_flow_api.id(73162868095446333)
,p_template_types=>'LIST'
,p_help_text=>'Show all list items in one horizontal row.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73168917607446342)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(73168855099446340)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add shortcuts for menu items. Note that actions.js must be included on your page to support this functionality.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73169098068446342)
,p_theme_id=>42
,p_name=>'BEHAVE_LIKE_TABS'
,p_display_name=>'Behave Like Tabs'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(73168855099446340)
,p_css_classes=>'js-tabLike'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73169118941446342)
,p_theme_id=>42
,p_name=>'ENABLE_SLIDE_ANIMATION'
,p_display_name=>'Enable Slide Animation'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(73168855099446340)
,p_css_classes=>'js-slide'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73169298038446342)
,p_theme_id=>42
,p_name=>'SHOW_SUB_MENU_ICONS'
,p_display_name=>'Show Sub Menu Icons'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(73168855099446340)
,p_css_classes=>'js-showSubMenuIcons'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73169797423446342)
,p_theme_id=>42
,p_name=>'ABOVE_LABEL'
,p_display_name=>'Above Label'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(73169604659446342)
,p_css_classes=>'t-Tabs--iconsAbove'
,p_group_id=>wwv_flow_api.id(73165986304446334)
,p_template_types=>'LIST'
,p_help_text=>'Places icons above tab label.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73169802499446342)
,p_theme_id=>42
,p_name=>'FILL_LABELS'
,p_display_name=>'Fill Labels'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(73169604659446342)
,p_css_classes=>'t-Tabs--fillLabels'
,p_group_id=>wwv_flow_api.id(73162868095446333)
,p_template_types=>'LIST'
,p_help_text=>'Stretch tabs to fill to the width of the tabs container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73169915072446342)
,p_theme_id=>42
,p_name=>'INLINE_WITH_LABEL'
,p_display_name=>'Inline with Label'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(73169604659446342)
,p_css_classes=>'t-Tabs--inlineIcons'
,p_group_id=>wwv_flow_api.id(73165986304446334)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73170080166446342)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(73169604659446342)
,p_css_classes=>'t-Tabs--large'
,p_group_id=>wwv_flow_api.id(73168292169446340)
,p_template_types=>'LIST'
,p_help_text=>'Increases font size and white space around tab items.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73170140409446342)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Pill'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(73169604659446342)
,p_css_classes=>'t-Tabs--pill'
,p_group_id=>wwv_flow_api.id(73165381450446334)
,p_template_types=>'LIST'
,p_help_text=>'Displays tabs in a pill container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73170289383446342)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(73169604659446342)
,p_css_classes=>'t-Tabs--simple'
,p_group_id=>wwv_flow_api.id(73165381450446334)
,p_template_types=>'LIST'
,p_help_text=>'A very simplistic tab UI.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73170371895446342)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>5
,p_list_template_id=>wwv_flow_api.id(73169604659446342)
,p_css_classes=>'t-Tabs--small'
,p_group_id=>wwv_flow_api.id(73168292169446340)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73170549784446343)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(73170452103446343)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add shortcuts for menu items. Note that actions.js must be included on your page to support this functionality.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73170610711446343)
,p_theme_id=>42
,p_name=>'BEHAVE_LIKE_TABS'
,p_display_name=>'Behave Like Tabs'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(73170452103446343)
,p_css_classes=>'js-tabLike'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73170744238446343)
,p_theme_id=>42
,p_name=>'ENABLE_SLIDE_ANIMATION'
,p_display_name=>'Enable Slide Animation'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(73170452103446343)
,p_css_classes=>'js-slide'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73170849168446343)
,p_theme_id=>42
,p_name=>'SHOW_SUB_MENU_ICONS'
,p_display_name=>'Show Sub Menu Icons'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(73170452103446343)
,p_css_classes=>'js-showSubMenuIcons'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73171175074446344)
,p_theme_id=>42
,p_name=>'ALLSTEPS'
,p_display_name=>'All Steps'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(73170925850446343)
,p_css_classes=>'t-WizardSteps--displayLabels'
,p_group_id=>wwv_flow_api.id(73171053722446344)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73171245001446344)
,p_theme_id=>42
,p_name=>'CURRENTSTEPONLY'
,p_display_name=>'Current Step Only'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(73170925850446343)
,p_css_classes=>'t-WizardSteps--displayCurrentLabelOnly'
,p_group_id=>wwv_flow_api.id(73171053722446344)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73171334424446344)
,p_theme_id=>42
,p_name=>'HIDELABELS'
,p_display_name=>'Hide Labels'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(73170925850446343)
,p_css_classes=>'t-WizardSteps--hideLabels'
,p_group_id=>wwv_flow_api.id(73171053722446344)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73171464968446344)
,p_theme_id=>42
,p_name=>'VERTICAL_LIST'
,p_display_name=>'Vertical Orientation'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(73170925850446343)
,p_css_classes=>'t-WizardSteps--vertical'
,p_template_types=>'LIST'
,p_help_text=>'Displays the wizard progress list in a vertical orientation and is suitable for displaying within a side column of a page.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73172434238446357)
,p_theme_id=>42
,p_name=>'LEFTICON'
,p_display_name=>'Left'
,p_display_sequence=>10
,p_button_template_id=>wwv_flow_api.id(73172232404446357)
,p_css_classes=>'t-Button--iconLeft'
,p_group_id=>wwv_flow_api.id(73172304420446357)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73172584186446357)
,p_theme_id=>42
,p_name=>'RIGHTICON'
,p_display_name=>'Right'
,p_display_sequence=>20
,p_button_template_id=>wwv_flow_api.id(73172232404446357)
,p_css_classes=>'t-Button--iconRight'
,p_group_id=>wwv_flow_api.id(73172304420446357)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73173658473446402)
,p_theme_id=>42
,p_name=>'FBM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-bottom-lg'
,p_group_id=>wwv_flow_api.id(73173570012446402)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a large bottom margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73173858942446403)
,p_theme_id=>42
,p_name=>'RBM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-bottom-lg'
,p_group_id=>wwv_flow_api.id(73173720138446403)
,p_template_types=>'REGION'
,p_help_text=>'Adds a large bottom margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73173901574446403)
,p_theme_id=>42
,p_name=>'FBM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-bottom-md'
,p_group_id=>wwv_flow_api.id(73173570012446402)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a medium bottom margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73174069261446403)
,p_theme_id=>42
,p_name=>'RBM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-bottom-md'
,p_group_id=>wwv_flow_api.id(73173720138446403)
,p_template_types=>'REGION'
,p_help_text=>'Adds a medium bottom margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73174160615446403)
,p_theme_id=>42
,p_name=>'FBM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-bottom-none'
,p_group_id=>wwv_flow_api.id(73173570012446402)
,p_template_types=>'FIELD'
,p_help_text=>'Removes the bottom margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73174243064446403)
,p_theme_id=>42
,p_name=>'RBM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-bottom-none'
,p_group_id=>wwv_flow_api.id(73173720138446403)
,p_template_types=>'REGION'
,p_help_text=>'Removes the bottom margin for this region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73174322308446403)
,p_theme_id=>42
,p_name=>'FBM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-bottom-sm'
,p_group_id=>wwv_flow_api.id(73173570012446402)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a small bottom margin for this field.'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73174498072446403)
,p_theme_id=>42
,p_name=>'RBM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-bottom-sm'
,p_group_id=>wwv_flow_api.id(73173720138446403)
,p_template_types=>'REGION'
,p_help_text=>'Adds a small bottom margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73174631839446403)
,p_theme_id=>42
,p_name=>'FLM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-left-lg'
,p_group_id=>wwv_flow_api.id(73174567957446403)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a large left margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73174877236446403)
,p_theme_id=>42
,p_name=>'RLM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-left-lg'
,p_group_id=>wwv_flow_api.id(73174709650446403)
,p_template_types=>'REGION'
,p_help_text=>'Adds a large right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73174925178446403)
,p_theme_id=>42
,p_name=>'FLM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-left-md'
,p_group_id=>wwv_flow_api.id(73174567957446403)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a medium left margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73175068933446403)
,p_theme_id=>42
,p_name=>'RLM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-left-md'
,p_group_id=>wwv_flow_api.id(73174709650446403)
,p_template_types=>'REGION'
,p_help_text=>'Adds a medium right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73175177189446403)
,p_theme_id=>42
,p_name=>'FLM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-left-none'
,p_group_id=>wwv_flow_api.id(73174567957446403)
,p_template_types=>'FIELD'
,p_help_text=>'Removes the left margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73175267058446403)
,p_theme_id=>42
,p_name=>'RLM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-left-none'
,p_group_id=>wwv_flow_api.id(73174709650446403)
,p_template_types=>'REGION'
,p_help_text=>'Removes the left margin from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73175383800446403)
,p_theme_id=>42
,p_name=>'FLM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-left-sm'
,p_group_id=>wwv_flow_api.id(73174567957446403)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a small left margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73175479272446403)
,p_theme_id=>42
,p_name=>'RLM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-left-sm'
,p_group_id=>wwv_flow_api.id(73174709650446403)
,p_template_types=>'REGION'
,p_help_text=>'Adds a small left margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73175654036446403)
,p_theme_id=>42
,p_name=>'FRM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-right-lg'
,p_group_id=>wwv_flow_api.id(73175581464446403)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a large right margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73175825675446403)
,p_theme_id=>42
,p_name=>'RRM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-right-lg'
,p_group_id=>wwv_flow_api.id(73175794928446403)
,p_template_types=>'REGION'
,p_help_text=>'Adds a large right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73175988239446403)
,p_theme_id=>42
,p_name=>'FRM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-right-md'
,p_group_id=>wwv_flow_api.id(73175581464446403)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a medium right margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73176001403446403)
,p_theme_id=>42
,p_name=>'RRM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-right-md'
,p_group_id=>wwv_flow_api.id(73175794928446403)
,p_template_types=>'REGION'
,p_help_text=>'Adds a medium right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73176139896446403)
,p_theme_id=>42
,p_name=>'FRM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-right-none'
,p_group_id=>wwv_flow_api.id(73175581464446403)
,p_template_types=>'FIELD'
,p_help_text=>'Removes the right margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73176220156446403)
,p_theme_id=>42
,p_name=>'RRM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-right-none'
,p_group_id=>wwv_flow_api.id(73175794928446403)
,p_template_types=>'REGION'
,p_help_text=>'Removes the right margin from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73176321533446403)
,p_theme_id=>42
,p_name=>'FRM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-right-sm'
,p_group_id=>wwv_flow_api.id(73175581464446403)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a small right margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73176493935446403)
,p_theme_id=>42
,p_name=>'RRM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-right-sm'
,p_group_id=>wwv_flow_api.id(73175794928446403)
,p_template_types=>'REGION'
,p_help_text=>'Adds a small right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73176651370446403)
,p_theme_id=>42
,p_name=>'FTM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-top-lg'
,p_group_id=>wwv_flow_api.id(73176588390446403)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a large top margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73176802354446403)
,p_theme_id=>42
,p_name=>'RTM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-top-lg'
,p_group_id=>wwv_flow_api.id(73176790605446403)
,p_template_types=>'REGION'
,p_help_text=>'Adds a large top margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73176934809446403)
,p_theme_id=>42
,p_name=>'FTM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-top-md'
,p_group_id=>wwv_flow_api.id(73176588390446403)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a medium top margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73177099064446403)
,p_theme_id=>42
,p_name=>'RTM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-top-md'
,p_group_id=>wwv_flow_api.id(73176790605446403)
,p_template_types=>'REGION'
,p_help_text=>'Adds a medium top margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73177199802446404)
,p_theme_id=>42
,p_name=>'FTM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-top-none'
,p_group_id=>wwv_flow_api.id(73176588390446403)
,p_template_types=>'FIELD'
,p_help_text=>'Removes the top margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73177225079446404)
,p_theme_id=>42
,p_name=>'RTM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-top-none'
,p_group_id=>wwv_flow_api.id(73176790605446403)
,p_template_types=>'REGION'
,p_help_text=>'Removes the top margin for this region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73177383696446404)
,p_theme_id=>42
,p_name=>'FTM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-top-sm'
,p_group_id=>wwv_flow_api.id(73176588390446403)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a small top margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73177432212446404)
,p_theme_id=>42
,p_name=>'RTM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-top-sm'
,p_group_id=>wwv_flow_api.id(73176790605446403)
,p_template_types=>'REGION'
,p_help_text=>'Adds a small top margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73177644942446404)
,p_theme_id=>42
,p_name=>'DANGER'
,p_display_name=>'Danger'
,p_display_sequence=>30
,p_css_classes=>'t-Button--danger'
,p_group_id=>wwv_flow_api.id(73177585771446404)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73177814902446404)
,p_theme_id=>42
,p_name=>'LARGEBOTTOMMARGIN'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapBottom'
,p_group_id=>wwv_flow_api.id(73177752532446404)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73178050721446404)
,p_theme_id=>42
,p_name=>'LARGELEFTMARGIN'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapLeft'
,p_group_id=>wwv_flow_api.id(73177943204446404)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73178215924446404)
,p_theme_id=>42
,p_name=>'LARGERIGHTMARGIN'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapRight'
,p_group_id=>wwv_flow_api.id(73178143859446404)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73178447647446404)
,p_theme_id=>42
,p_name=>'LARGETOPMARGIN'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapTop'
,p_group_id=>wwv_flow_api.id(73178344318446404)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73178630466446404)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>30
,p_css_classes=>'t-Button--large'
,p_group_id=>wwv_flow_api.id(73178524579446404)
,p_template_types=>'BUTTON'
,p_help_text=>'A large button.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73178837966446404)
,p_theme_id=>42
,p_name=>'DISPLAY_AS_LINK'
,p_display_name=>'Display as Link'
,p_display_sequence=>30
,p_css_classes=>'t-Button--link'
,p_group_id=>wwv_flow_api.id(73178780757446404)
,p_template_types=>'BUTTON'
,p_help_text=>'This option makes the button appear as a text link.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73178919779446404)
,p_theme_id=>42
,p_name=>'NOUI'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>20
,p_css_classes=>'t-Button--noUI'
,p_group_id=>wwv_flow_api.id(73178780757446404)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73179026278446404)
,p_theme_id=>42
,p_name=>'SMALLBOTTOMMARGIN'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padBottom'
,p_group_id=>wwv_flow_api.id(73177752532446404)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73179112223446404)
,p_theme_id=>42
,p_name=>'SMALLLEFTMARGIN'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padLeft'
,p_group_id=>wwv_flow_api.id(73177943204446404)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73179296050446404)
,p_theme_id=>42
,p_name=>'SMALLRIGHTMARGIN'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padRight'
,p_group_id=>wwv_flow_api.id(73178143859446404)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73179394160446404)
,p_theme_id=>42
,p_name=>'SMALLTOPMARGIN'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padTop'
,p_group_id=>wwv_flow_api.id(73178344318446404)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73179530227446404)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Inner Button'
,p_display_sequence=>20
,p_css_classes=>'t-Button--pill'
,p_group_id=>wwv_flow_api.id(73179497479446404)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73179668268446404)
,p_theme_id=>42
,p_name=>'PILLEND'
,p_display_name=>'Last Button'
,p_display_sequence=>30
,p_css_classes=>'t-Button--pillEnd'
,p_group_id=>wwv_flow_api.id(73179497479446404)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73179719506446404)
,p_theme_id=>42
,p_name=>'PILLSTART'
,p_display_name=>'First Button'
,p_display_sequence=>10
,p_css_classes=>'t-Button--pillStart'
,p_group_id=>wwv_flow_api.id(73179497479446404)
,p_template_types=>'BUTTON'
,p_help_text=>'Use this for the start of a pill button.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73179882267446404)
,p_theme_id=>42
,p_name=>'PRIMARY'
,p_display_name=>'Primary'
,p_display_sequence=>10
,p_css_classes=>'t-Button--primary'
,p_group_id=>wwv_flow_api.id(73177585771446404)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73179900515446404)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_css_classes=>'t-Button--simple'
,p_group_id=>wwv_flow_api.id(73178780757446404)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73180045784446404)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'t-Button--small'
,p_group_id=>wwv_flow_api.id(73178524579446404)
,p_template_types=>'BUTTON'
,p_help_text=>'A small button.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73180202931446404)
,p_theme_id=>42
,p_name=>'STRETCH'
,p_display_name=>'Stretch'
,p_display_sequence=>10
,p_css_classes=>'t-Button--stretch'
,p_group_id=>wwv_flow_api.id(73180153632446404)
,p_template_types=>'BUTTON'
,p_help_text=>'Stretches button to fill container'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73180326195446404)
,p_theme_id=>42
,p_name=>'SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>40
,p_css_classes=>'t-Button--success'
,p_group_id=>wwv_flow_api.id(73177585771446404)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73180416165446404)
,p_theme_id=>42
,p_name=>'TINY'
,p_display_name=>'Tiny'
,p_display_sequence=>10
,p_css_classes=>'t-Button--tiny'
,p_group_id=>wwv_flow_api.id(73178524579446404)
,p_template_types=>'BUTTON'
,p_help_text=>'A very small button.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73180569499446405)
,p_theme_id=>42
,p_name=>'WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>20
,p_css_classes=>'t-Button--warning'
,p_group_id=>wwv_flow_api.id(73177585771446404)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73180746540446405)
,p_theme_id=>42
,p_name=>'SHOWFORMLABELSABOVE'
,p_display_name=>'Show Form Labels Above'
,p_display_sequence=>10
,p_css_classes=>'t-Form--labelsAbove'
,p_group_id=>wwv_flow_api.id(73180645675446405)
,p_template_types=>'REGION'
,p_help_text=>'Show form labels above input fields.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73180937888446405)
,p_theme_id=>42
,p_name=>'FORMSIZELARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_css_classes=>'t-Form--large'
,p_group_id=>wwv_flow_api.id(73180803953446405)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73181167862446405)
,p_theme_id=>42
,p_name=>'FORMLEFTLABELS'
,p_display_name=>'Left'
,p_display_sequence=>20
,p_css_classes=>'t-Form--leftLabels'
,p_group_id=>wwv_flow_api.id(73181073888446405)
,p_template_types=>'REGION'
,p_help_text=>'Align form labels to left.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73181327331446406)
,p_theme_id=>42
,p_name=>'FORMREMOVEPADDING'
,p_display_name=>'Remove Padding'
,p_display_sequence=>20
,p_css_classes=>'t-Form--noPadding'
,p_group_id=>wwv_flow_api.id(73181285499446405)
,p_template_types=>'REGION'
,p_help_text=>'Removes padding between items.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73181425984446406)
,p_theme_id=>42
,p_name=>'FORMSLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>10
,p_css_classes=>'t-Form--slimPadding'
,p_group_id=>wwv_flow_api.id(73181285499446405)
,p_template_types=>'REGION'
,p_help_text=>'Reduces form item padding to 4px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73181656937446406)
,p_theme_id=>42
,p_name=>'STRETCH_FORM_FIELDS'
,p_display_name=>'Stretch Form Fields'
,p_display_sequence=>10
,p_css_classes=>'t-Form--stretchInputs'
,p_group_id=>wwv_flow_api.id(73181587433446406)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73181742238446406)
,p_theme_id=>42
,p_name=>'FORMSIZEXLARGE'
,p_display_name=>'X Large'
,p_display_sequence=>20
,p_css_classes=>'t-Form--xlarge'
,p_group_id=>wwv_flow_api.id(73180803953446405)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73181962351446406)
,p_theme_id=>42
,p_name=>'LARGE_FIELD'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--large'
,p_group_id=>wwv_flow_api.id(73181888430446406)
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73182138964446406)
,p_theme_id=>42
,p_name=>'POST_TEXT_BLOCK'
,p_display_name=>'Display as Block'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--postTextBlock'
,p_group_id=>wwv_flow_api.id(73182015466446406)
,p_template_types=>'FIELD'
,p_help_text=>'Displays the Item Post Text in a block style immediately after the item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73182398269446406)
,p_theme_id=>42
,p_name=>'PRE_TEXT_BLOCK'
,p_display_name=>'Display as Block'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--preTextBlock'
,p_group_id=>wwv_flow_api.id(73182243780446406)
,p_template_types=>'FIELD'
,p_help_text=>'Displays the Item Pre Text in a block style immediately before the item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73182589756446407)
,p_theme_id=>42
,p_name=>'DISPLAY_AS_PILL_BUTTON'
,p_display_name=>'Display as Pill Button'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--radioButtonGroup'
,p_group_id=>wwv_flow_api.id(73182407190446406)
,p_template_types=>'FIELD'
,p_help_text=>'Displays the radio buttons to look like a button set / pill button.  Note that the the radio buttons must all be in the same row for this option to work.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73182618985446407)
,p_theme_id=>42
,p_name=>'STRETCH_FORM_ITEM'
,p_display_name=>'Stretch Form Item'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--stretchInputs'
,p_template_types=>'FIELD'
,p_help_text=>'Stretches the form item to fill its container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(73182774085446407)
,p_theme_id=>42
,p_name=>'X_LARGE_SIZE'
,p_display_name=>'X Large'
,p_display_sequence=>20
,p_css_classes=>'t-Form-fieldContainer--xlarge'
,p_group_id=>wwv_flow_api.id(73181888430446406)
,p_template_types=>'FIELD'
);
end;
/
prompt --application/shared_components/logic/build_options
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
prompt --application/shared_components/user_interface/shortcuts
begin
null;
end;
/
prompt --application/shared_components/reports/report_queries/schedule_print
begin
wwv_flow_api.create_shared_query(
 p_id=>wwv_flow_api.id(114552930767543005)
,p_name=>'Schedule Print'
,p_query_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select MONTH_NAME',
'        ,FULLNAME',
'        ,S1',
'        ,S2',
'        ,S3',
'        ,S4',
'        ,S5',
'        ,S6',
'        ,S7',
'        ,S8',
'        ,S9',
'        ,S10',
'        ,S11',
'        ,S12',
'        ,S13',
'        ,S14',
'        ,S15',
'        ,S16',
'        ,S17',
'        ,S18',
'        ,S19',
'        ,S20',
'        ,S21',
'        ,S22',
'        ,S23',
'        ,S24',
'        ,S25',
'        ,S26',
'        ,S27',
'        ,S28',
'        ,S29',
'        ,S30',
'        ,S31',
'from shc_schedule_print_v',
'where cal_year = :P6_YEAR',
'   and cal_month = :P6_MONTH'))
,p_report_layout_id=>wwv_flow_api.id(114566068868759743)
,p_format=>'HTM'
,p_output_file_name=>'Schedule Print'
,p_content_disposition=>'INLINE'
,p_xml_items=>'P6_YEAR:P6_MONTH'
);
wwv_flow_api.create_shared_query_stmnt(
 p_id=>wwv_flow_api.id(114572185866818536)
,p_shared_query_id=>wwv_flow_api.id(114552930767543005)
,p_sql_statement=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select CAL_YEAR',
'        ,MONTH_NAME',
'        ,FULLNAME',
'        ,S1',
'        ,S2',
'        ,S3',
'        ,S4',
'        ,S5',
'        ,S6',
'        ,S7',
'        ,S8',
'        ,S9',
'        ,S10',
'        ,S11',
'        ,S12',
'        ,S13',
'        ,S14',
'        ,S15',
'        ,S16',
'        ,S17',
'        ,S18',
'        ,S19',
'        ,S20',
'        ,S21',
'        ,S22',
'        ,S23',
'        ,S24',
'        ,S25',
'        ,S26',
'        ,S27',
'        ,S28',
'        ,S29',
'        ,S30',
'        ,S31',
'from shc_schedule_print_v',
'where cal_year = :P6_YEAR',
'   and cal_month = :P6_MONTH'))
);
end;
/
prompt --application/shared_components/reports/report_queries/test
begin
wwv_flow_api.create_shared_query(
 p_id=>wwv_flow_api.id(114570121709797477)
,p_name=>'test'
,p_query_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select MONTH_NAME',
'        ,FULLNAME',
'        ,S1',
'        ,S2',
'        ,S3',
'        ,S4',
'        ,S5',
'        ,S6',
'        ,S7',
'        ,S8',
'        ,S9',
'        ,S10',
'        ,S11',
'        ,S12',
'        ,S13',
'        ,S14',
'        ,S15',
'        ,S16',
'        ,S17',
'        ,S18',
'        ,S19',
'        ,S20',
'        ,S21',
'        ,S22',
'        ,S23',
'        ,S24',
'        ,S25',
'        ,S26',
'        ,S27',
'        ,S28',
'        ,S29',
'        ,S30',
'        ,S31',
'from shc_schedule_print_v',
'where cal_year = :P6_YEAR',
'   and cal_month = :P6_MONTH'))
,p_format=>'PDF'
,p_output_file_name=>'test'
,p_content_disposition=>'ATTACHMENT'
,p_xml_items=>'P6_YEAR:P6_MONTH'
);
wwv_flow_api.create_shared_query_stmnt(
 p_id=>wwv_flow_api.id(114571176408803848)
,p_shared_query_id=>wwv_flow_api.id(114570121709797477)
,p_sql_statement=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select CAL_YEAR',
'        ,MONTH_NAME',
'        ,FULLNAME',
'        ,S1',
'        ,S2',
'from shc_schedule_print_v',
'where cal_year = :P6_YEAR',
'   and cal_month = :P6_MONTH'))
);
end;
/
prompt --application/shared_components/reports/report_layouts/schedule_print_layout
begin
    wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
    wwv_flow_api.g_varchar2_table(1) := '<?xml version = ''1.0'' encoding = ''utf-8''?>'||wwv_flow.LF||
'<!--Generated by Oracle BI Publisher 11.1.1.6.0-->'||wwv_flow.LF||
'<!--';
    wwv_flow_api.g_varchar2_table(2) := 'xslt1.0-compatibility-->'||wwv_flow.LF||
'<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transf';
    wwv_flow_api.g_varchar2_table(3) := 'orm" xmlns:fo="http://www.w3.org/1999/XSL/Format" xmlns:ora="http://www.oracle.com/XSL/Transform/jav';
    wwv_flow_api.g_varchar2_table(4) := 'a/" xmlns:xdofo="http://xmlns.oracle.com/oxp/fo/extensions" xmlns:xdoxslt="http://www.oracle.com/XSL';
    wwv_flow_api.g_varchar2_table(5) := '/Transform/java/oracle.xdo.template.rtf.XSLTFunctions" xmlns:xdoxliff="urn:oasis:names:tc:xliff:docu';
    wwv_flow_api.g_varchar2_table(6) := 'ment:1.1" xmlns:xlink="http://www.w3.org/1999/xlink">'||wwv_flow.LF||
'   <xsl:param name="_XDOCALENDAR">GREGORIAN</';
    wwv_flow_api.g_varchar2_table(7) := 'xsl:param>'||wwv_flow.LF||
'   <xsl:param name="_XDOLOCALE">en-us</xsl:param>'||wwv_flow.LF||
'   <xsl:param name="_XDOTIMEZONE">GMT';
    wwv_flow_api.g_varchar2_table(8) := '</xsl:param>'||wwv_flow.LF||
'   <xsl:param name="_XDODFOVERRIDE">;</xsl:param>'||wwv_flow.LF||
'   <xsl:param name="_XDOCURMASKS">;';
    wwv_flow_api.g_varchar2_table(9) := '</xsl:param>'||wwv_flow.LF||
'   <xsl:param name="_XDONFSEPARATORS"></xsl:param>'||wwv_flow.LF||
'   <xsl:param name="_XDOCHARTTYPE"';
    wwv_flow_api.g_varchar2_table(10) := '>image/svg+xml</xsl:param>'||wwv_flow.LF||
'   <xsl:param name="_XDOOUTPUTFORMAT">application/pdf</xsl:param>'||wwv_flow.LF||
'   <x';
    wwv_flow_api.g_varchar2_table(11) := 'sl:param name="_XDOSVGFONTEMBED">true</xsl:param>'||wwv_flow.LF||
'   <xsl:param name="_XDODEFDATE"/>'||wwv_flow.LF||
'   <xsl:param';
    wwv_flow_api.g_varchar2_table(12) := ' name="_XDODEFTIME"/>'||wwv_flow.LF||
'   <xsl:param name="_XDODEFNUM"/>'||wwv_flow.LF||
'   <xsl:param name="_XDODEFCC"/>'||wwv_flow.LF||
'   <xsl:';
    wwv_flow_api.g_varchar2_table(13) := 'param name="_XDOCTX">#</xsl:param>'||wwv_flow.LF||
'   <xsl:variable name="_XDOXSLTCTX" select="xdoxslt:set_xslt_loc';
    wwv_flow_api.g_varchar2_table(14) := 'ale($_XDOCTX, $_XDOLOCALE, $_XDOTIMEZONE, $_XDOCALENDAR, $_XDODFOVERRIDE, $_XDOCURMASKS, $_XDONFSEPA';
    wwv_flow_api.g_varchar2_table(15) := 'RATORS)"/>'||wwv_flow.LF||
'   <xsl:variable name="titlevar" select="''RTF Template''" xdofo:tobetranslated="true"/>'||wwv_flow.LF||
'';
    wwv_flow_api.g_varchar2_table(16) := '   <xsl:variable name="_XDOFOPOS" select="''''"/>'||wwv_flow.LF||
'   <xsl:variable name="_XDOFOPOS2" select="number(1';
    wwv_flow_api.g_varchar2_table(17) := ')"/>'||wwv_flow.LF||
'   <xsl:variable name="_XDOFOTOTAL" select="number(1)"/>'||wwv_flow.LF||
'   <xsl:variable name="_XDOFOOSTOTAL';
    wwv_flow_api.g_varchar2_table(18) := '" select="number(0)"/>'||wwv_flow.LF||
'   <xsl:template match="/">'||wwv_flow.LF||
'      <fo:root xdofo:nf-separator="{$_XDONFSEPA';
    wwv_flow_api.g_varchar2_table(19) := 'RATORS}">'||wwv_flow.LF||
'         <fo:layout-master-set>'||wwv_flow.LF||
'            <fo:simple-page-master master-name="master0"';
    wwv_flow_api.g_varchar2_table(20) := ' margin-left="30.6pt" margin-right="30.6pt" page-height="595.3pt" page-width="841.9pt" margin-top="3';
    wwv_flow_api.g_varchar2_table(21) := '5.4pt" margin-bottom="35.4pt">'||wwv_flow.LF||
'               <fo:region-before region-name="region-header" extent=';
    wwv_flow_api.g_varchar2_table(22) := '"0.6pt"/>'||wwv_flow.LF||
'               <fo:region-body region-name="region-body" margin-top="0.6pt" margin-bottom';
    wwv_flow_api.g_varchar2_table(23) := '="0.6pt"/>'||wwv_flow.LF||
'               <fo:region-after region-name="region-footer" extent="0.6pt" display-align';
    wwv_flow_api.g_varchar2_table(24) := '="after"/>'||wwv_flow.LF||
'            </fo:simple-page-master>'||wwv_flow.LF||
'         </fo:layout-master-set>'||wwv_flow.LF||
'         <fo:pag';
    wwv_flow_api.g_varchar2_table(25) := 'e-sequence master-reference="master0">'||wwv_flow.LF||
'            <fo:title>'||wwv_flow.LF||
'               <xsl:value-of select=';
    wwv_flow_api.g_varchar2_table(26) := '"xdoxslt:one($titlevar)" xdofo:field-name="$titlevar"/>'||wwv_flow.LF||
'            </fo:title>'||wwv_flow.LF||
'            <xsl:v';
    wwv_flow_api.g_varchar2_table(27) := 'ariable name="_PW" select="number(841.9)" xdofo:alt="internal"/>'||wwv_flow.LF||
'            <xsl:variable name="_P';
    wwv_flow_api.g_varchar2_table(28) := 'H" select="number(595.3)" xdofo:alt="internal"/>'||wwv_flow.LF||
'            <xsl:variable name="_ML" select="numbe';
    wwv_flow_api.g_varchar2_table(29) := 'r(36.0)" xdofo:alt="internal"/>'||wwv_flow.LF||
'            <xsl:variable name="_MR" select="number(36.0)" xdofo:al';
    wwv_flow_api.g_varchar2_table(30) := 't="internal"/>'||wwv_flow.LF||
'            <xsl:variable name="_MT" select="number(36.0)" xdofo:alt="internal"/>'||wwv_flow.LF||
' ';
    wwv_flow_api.g_varchar2_table(31) := '           <xsl:variable name="_MB" select="number(36.0)" xdofo:alt="internal"/>'||wwv_flow.LF||
'            <xsl:v';
    wwv_flow_api.g_varchar2_table(32) := 'ariable name="_HY" select="number(35.4)" xdofo:alt="internal"/>'||wwv_flow.LF||
'            <xsl:variable name="_FY';
    wwv_flow_api.g_varchar2_table(33) := '" select="number(35.4)" xdofo:alt="internal"/>'||wwv_flow.LF||
'            <xsl:variable name="_SECTION_NAME" selec';
    wwv_flow_api.g_varchar2_table(34) := 't="string(''master0'')" xdofo:alt="internal"/>'||wwv_flow.LF||
'            <fo:static-content flow-name="region-heade';
    wwv_flow_api.g_varchar2_table(35) := 'r"/>'||wwv_flow.LF||
'            <fo:static-content flow-name="region-footer"/>'||wwv_flow.LF||
'            <fo:flow flow-name="re';
    wwv_flow_api.g_varchar2_table(36) := 'gion-body">'||wwv_flow.LF||
'               <fo:block orphans="2" widows="2" linefeed-treatment="preserve" start-ind';
    wwv_flow_api.g_varchar2_table(37) := 'ent="5.4pt" text-align="center" padding-bottom="0.0pt" end-indent="5.4pt" padding-top="0.0pt" height';
    wwv_flow_api.g_varchar2_table(38) := '="0.0pt">'||wwv_flow.LF||
'                  <fo:inline font-family="Calibri Light" height="28.560001pt" font-weight';
    wwv_flow_api.g_varchar2_table(39) := '="bold" font-family-generic="swiss" white-space-collapse="false" style-name="Title" font-size="24.0p';
    wwv_flow_api.g_varchar2_table(40) := 't" style-id="s0" letter-spacing="-0.5pt">ΠΡΟΓΡΑΜΜΑ ΜΙΚΡΟΒΙΟΛΟΓΙΚΟΥ ΕΡΓΑΣΤΗΡΙΟΥ</fo:inline>'||wwv_flow.LF||
'        ';
    wwv_flow_api.g_varchar2_table(41) := '       </fo:block>'||wwv_flow.LF||
'               <fo:block xdofo:line-spacing="multiple:12.95pt" xdofo:xliff-note=';
    wwv_flow_api.g_varchar2_table(42) := '"MONTH_NAME, CAL_YEAR" orphans="2" widows="2" linefeed-treatment="preserve" start-indent="5.4pt" tex';
    wwv_flow_api.g_varchar2_table(43) := 't-align="center" padding-bottom="8.0pt" end-indent="5.4pt" padding-top="0.0pt" height="0.0pt">'||wwv_flow.LF||
'    ';
    wwv_flow_api.g_varchar2_table(44) := '              <fo:inline xml:space="preserve" font-family="Calibri Light" height="0.0pt" font-weight';
    wwv_flow_api.g_varchar2_table(45) := '="bold" font-family-generic="swiss" white-space-collapse="false" style-name="Normal" font-size="24.0';
    wwv_flow_api.g_varchar2_table(46) := 'pt" style-id="s0"><xsl:value-of select="(.//MONTH_NAME)[1]" xdofo:field-name="MONTH_NAME"/> <xsl:val';
    wwv_flow_api.g_varchar2_table(47) := 'ue-of select="(.//CAL_YEAR)[1]" xdofo:field-name="CAL_YEAR"/></fo:inline>'||wwv_flow.LF||
'               </fo:block';
    wwv_flow_api.g_varchar2_table(48) := '>'||wwv_flow.LF||
'               <fo:block xdofo:line-spacing="multiple:12.95pt" orphans="2" widows="2" linefeed-tr';
    wwv_flow_api.g_varchar2_table(49) := 'eatment="preserve" start-indent="5.4pt" text-align="center" padding-bottom="8.0pt" end-indent="5.4pt';
    wwv_flow_api.g_varchar2_table(50) := '" padding-top="0.0pt" height="0.0pt" font-size="24.0pt" font-family="Calibri Light"/>'||wwv_flow.LF||
'             ';
    wwv_flow_api.g_varchar2_table(51) := '  <fo:block xdofo:line-spacing="multiple:12.95pt" orphans="2" widows="2" linefeed-treatment="preserv';
    wwv_flow_api.g_varchar2_table(52) := 'e" start-indent="5.4pt" text-align="start" padding-bottom="8.0pt" end-indent="5.4pt" padding-top="0.';
    wwv_flow_api.g_varchar2_table(53) := '0pt" height="0.0pt" font-size="10.0pt" font-family="Calibri Light"/>'||wwv_flow.LF||
'               <fo:block xdofo';
    wwv_flow_api.g_varchar2_table(54) := ':line-spacing="multiple:12.95pt" orphans="2" widows="2" linefeed-treatment="preserve" text-align="st';
    wwv_flow_api.g_varchar2_table(55) := 'art" padding-bottom="0.25pt" end-indent="5.4pt" padding-top="0.25pt">'||wwv_flow.LF||
'                  <fo:table s';
    wwv_flow_api.g_varchar2_table(56) := 'tart-indent="0.0pt" style-id="ts17" style-name="Table Grid" xdofo:align="start" xdofo:table-summary=';
    wwv_flow_api.g_varchar2_table(57) := '"Template Table 1" xdofo:row-header-count="0">'||wwv_flow.LF||
'                     <xsl:variable name="_XDOFOPOS2"';
    wwv_flow_api.g_varchar2_table(58) := ' select="number(1)"/>'||wwv_flow.LF||
'                     <xsl:variable name="_XDOFOTOTAL" select="number(1)"/>'||wwv_flow.LF||
' ';
    wwv_flow_api.g_varchar2_table(59) := '                    <fo:table-column column-width="53.55pt"/>'||wwv_flow.LF||
'                     <fo:table-column';
    wwv_flow_api.g_varchar2_table(60) := ' column-width="20.05pt"/>'||wwv_flow.LF||
'                     <fo:table-column column-width="20.05pt"/>'||wwv_flow.LF||
'         ';
    wwv_flow_api.g_varchar2_table(61) := '            <fo:table-column column-width="20.05pt"/>'||wwv_flow.LF||
'                     <fo:table-column column-';
    wwv_flow_api.g_varchar2_table(62) := 'width="20.05pt"/>'||wwv_flow.LF||
'                     <fo:table-column column-width="20.05pt"/>'||wwv_flow.LF||
'                 ';
    wwv_flow_api.g_varchar2_table(63) := '    <fo:table-column column-width="20.05pt"/>'||wwv_flow.LF||
'                     <fo:table-column column-width="2';
    wwv_flow_api.g_varchar2_table(64) := '0.05pt"/>'||wwv_flow.LF||
'                     <fo:table-column column-width="20.05pt"/>'||wwv_flow.LF||
'                     <fo:';
    wwv_flow_api.g_varchar2_table(65) := 'table-column column-width="20.05pt"/>'||wwv_flow.LF||
'                     <fo:table-column column-width="24.85pt"/';
    wwv_flow_api.g_varchar2_table(66) := '>'||wwv_flow.LF||
'                     <fo:table-column column-width="24.85pt"/>'||wwv_flow.LF||
'                     <fo:table-co';
    wwv_flow_api.g_varchar2_table(67) := 'lumn column-width="24.85pt"/>'||wwv_flow.LF||
'                     <fo:table-column column-width="24.85pt"/>'||wwv_flow.LF||
'     ';
    wwv_flow_api.g_varchar2_table(68) := '                <fo:table-column column-width="24.85pt"/>'||wwv_flow.LF||
'                     <fo:table-column col';
    wwv_flow_api.g_varchar2_table(69) := 'umn-width="24.85pt"/>'||wwv_flow.LF||
'                     <fo:table-column column-width="24.85pt"/>'||wwv_flow.LF||
'             ';
    wwv_flow_api.g_varchar2_table(70) := '        <fo:table-column column-width="24.85pt"/>'||wwv_flow.LF||
'                     <fo:table-column column-widt';
    wwv_flow_api.g_varchar2_table(71) := 'h="24.85pt"/>'||wwv_flow.LF||
'                     <fo:table-column column-width="24.85pt"/>'||wwv_flow.LF||
'                     ';
    wwv_flow_api.g_varchar2_table(72) := '<fo:table-column column-width="24.85pt"/>'||wwv_flow.LF||
'                     <fo:table-column column-width="24.85';
    wwv_flow_api.g_varchar2_table(73) := 'pt"/>'||wwv_flow.LF||
'                     <fo:table-column column-width="24.85pt"/>'||wwv_flow.LF||
'                     <fo:tabl';
    wwv_flow_api.g_varchar2_table(74) := 'e-column column-width="24.85pt"/>'||wwv_flow.LF||
'                     <fo:table-column column-width="24.85pt"/>'||wwv_flow.LF||
' ';
    wwv_flow_api.g_varchar2_table(75) := '                    <fo:table-column column-width="24.85pt"/>'||wwv_flow.LF||
'                     <fo:table-column';
    wwv_flow_api.g_varchar2_table(76) := ' column-width="24.85pt"/>'||wwv_flow.LF||
'                     <fo:table-column column-width="24.85pt"/>'||wwv_flow.LF||
'         ';
    wwv_flow_api.g_varchar2_table(77) := '            <fo:table-column column-width="24.85pt"/>'||wwv_flow.LF||
'                     <fo:table-column column-';
    wwv_flow_api.g_varchar2_table(78) := 'width="24.85pt"/>'||wwv_flow.LF||
'                     <fo:table-column column-width="24.85pt"/>'||wwv_flow.LF||
'                 ';
    wwv_flow_api.g_varchar2_table(79) := '    <fo:table-column column-width="24.85pt"/>'||wwv_flow.LF||
'                     <fo:table-header>'||wwv_flow.LF||
'             ';
    wwv_flow_api.g_varchar2_table(80) := '           <fo:table-row keep-with-next="always">'||wwv_flow.LF||
'                           <fo:table-cell padding';
    wwv_flow_api.g_varchar2_table(81) := '-start="5.15pt" vertical-align="top" border-bottom="0.5pt solid #000000" border-end-color="#000000" ';
    wwv_flow_api.g_varchar2_table(82) := 'padding-top="0.0pt" border-end-style="solid" border-start-color="#000000" padding-end="5.15pt" numbe';
    wwv_flow_api.g_varchar2_table(83) := 'r-columns-spanned="1" border-top="0.5pt solid #000000" border-start-style="solid" height="0.0pt" bor';
    wwv_flow_api.g_varchar2_table(84) := 'der-end-width="0.5pt" padding-bottom="0.0pt" border-start-width="0.5pt">'||wwv_flow.LF||
'                          ';
    wwv_flow_api.g_varchar2_table(85) := '    <fo:block orphans="2" widows="2" linefeed-treatment="preserve" start-indent="0.0pt" text-align="';
    wwv_flow_api.g_varchar2_table(86) := 'start" padding-bottom="0.0pt" end-indent="0.0pt" padding-top="0.0pt">'||wwv_flow.LF||
'                             ';
    wwv_flow_api.g_varchar2_table(87) := '    <fo:inline xml:space="preserve" font-family="Calibri Light" height="10.0pt" font-weight="bold" f';
    wwv_flow_api.g_varchar2_table(88) := 'ont-family-generic="swiss" white-space-collapse="false" style-name="Normal" font-size="10.0pt"> Όνομ';
    wwv_flow_api.g_varchar2_table(89) := 'α</fo:inline>'||wwv_flow.LF||
'                              </fo:block>'||wwv_flow.LF||
'                           </fo:table-cell';
    wwv_flow_api.g_varchar2_table(90) := '>'||wwv_flow.LF||
'                           <fo:table-cell padding-start="5.15pt" vertical-align="top" border-bott';
    wwv_flow_api.g_varchar2_table(91) := 'om="0.5pt solid #000000" border-end-color="#000000" padding-top="0.0pt" border-end-style="solid" bor';
    wwv_flow_api.g_varchar2_table(92) := 'der-start-color="#000000" padding-end="5.15pt" number-columns-spanned="1" border-top="0.5pt solid #0';
    wwv_flow_api.g_varchar2_table(93) := '00000" border-start-style="solid" height="0.0pt" border-end-width="0.5pt" padding-bottom="0.0pt" bor';
    wwv_flow_api.g_varchar2_table(94) := 'der-start-width="0.5pt">'||wwv_flow.LF||
'                              <fo:block orphans="2" widows="2" linefeed-tr';
    wwv_flow_api.g_varchar2_table(95) := 'eatment="preserve" start-indent="0.0pt" text-align="start" padding-bottom="0.0pt" end-indent="0.0pt"';
    wwv_flow_api.g_varchar2_table(96) := ' padding-top="0.0pt">'||wwv_flow.LF||
'                                 <fo:inline font-family="Calibri Light" heigh';
    wwv_flow_api.g_varchar2_table(97) := 't="10.0pt" font-weight="bold" font-family-generic="swiss" white-space-collapse="false" style-name="N';
    wwv_flow_api.g_varchar2_table(98) := 'ormal" font-size="10.0pt">1</fo:inline>'||wwv_flow.LF||
'                              </fo:block>'||wwv_flow.LF||
'                ';
    wwv_flow_api.g_varchar2_table(99) := '           </fo:table-cell>'||wwv_flow.LF||
'                           <fo:table-cell padding-start="5.15pt" vertic';
    wwv_flow_api.g_varchar2_table(100) := 'al-align="top" border-bottom="0.5pt solid #000000" border-end-color="#000000" padding-top="0.0pt" bo';
    wwv_flow_api.g_varchar2_table(101) := 'rder-end-style="solid" border-start-color="#000000" padding-end="5.15pt" number-columns-spanned="1" ';
    wwv_flow_api.g_varchar2_table(102) := 'border-top="0.5pt solid #000000" border-start-style="solid" height="0.0pt" border-end-width="0.5pt" ';
    wwv_flow_api.g_varchar2_table(103) := 'padding-bottom="0.0pt" border-start-width="0.5pt">'||wwv_flow.LF||
'                              <fo:block orphans=';
    wwv_flow_api.g_varchar2_table(104) := '"2" widows="2" linefeed-treatment="preserve" start-indent="0.0pt" text-align="start" padding-bottom=';
    wwv_flow_api.g_varchar2_table(105) := '"0.0pt" end-indent="0.0pt" padding-top="0.0pt">'||wwv_flow.LF||
'                                 <fo:inline font-fa';
    wwv_flow_api.g_varchar2_table(106) := 'mily="Calibri Light" height="10.0pt" font-weight="bold" font-family-generic="swiss" white-space-coll';
    wwv_flow_api.g_varchar2_table(107) := 'apse="false" style-name="Normal" font-size="10.0pt">2</fo:inline>'||wwv_flow.LF||
'                              </f';
    wwv_flow_api.g_varchar2_table(108) := 'o:block>'||wwv_flow.LF||
'                           </fo:table-cell>'||wwv_flow.LF||
'                           <fo:table-cell pad';
    wwv_flow_api.g_varchar2_table(109) := 'ding-start="5.15pt" vertical-align="top" border-bottom="0.5pt solid #000000" border-end-color="#0000';
    wwv_flow_api.g_varchar2_table(110) := '00" padding-top="0.0pt" border-end-style="solid" border-start-color="#000000" padding-end="5.15pt" n';
    wwv_flow_api.g_varchar2_table(111) := 'umber-columns-spanned="1" border-top="0.5pt solid #000000" border-start-style="solid" height="0.0pt"';
    wwv_flow_api.g_varchar2_table(112) := ' border-end-width="0.5pt" padding-bottom="0.0pt" border-start-width="0.5pt">'||wwv_flow.LF||
'                      ';
    wwv_flow_api.g_varchar2_table(113) := '        <fo:block orphans="2" widows="2" linefeed-treatment="preserve" start-indent="0.0pt" text-ali';
    wwv_flow_api.g_varchar2_table(114) := 'gn="start" padding-bottom="0.0pt" end-indent="0.0pt" padding-top="0.0pt">'||wwv_flow.LF||
'                         ';
    wwv_flow_api.g_varchar2_table(115) := '        <fo:inline font-family="Calibri Light" height="10.0pt" font-weight="bold" font-family-generi';
    wwv_flow_api.g_varchar2_table(116) := 'c="swiss" white-space-collapse="false" style-name="Normal" font-size="10.0pt">3</fo:inline>'||wwv_flow.LF||
'       ';
    wwv_flow_api.g_varchar2_table(117) := '                       </fo:block>'||wwv_flow.LF||
'                           </fo:table-cell>'||wwv_flow.LF||
'                   ';
    wwv_flow_api.g_varchar2_table(118) := '        <fo:table-cell padding-start="5.15pt" vertical-align="top" border-bottom="0.5pt solid #00000';
    wwv_flow_api.g_varchar2_table(119) := '0" border-end-color="#000000" padding-top="0.0pt" border-end-style="solid" border-start-color="#0000';
    wwv_flow_api.g_varchar2_table(120) := '00" padding-end="5.15pt" number-columns-spanned="1" border-top="0.5pt solid #000000" border-start-st';
    wwv_flow_api.g_varchar2_table(121) := 'yle="solid" height="0.0pt" border-end-width="0.5pt" padding-bottom="0.0pt" border-start-width="0.5pt';
    wwv_flow_api.g_varchar2_table(122) := '">'||wwv_flow.LF||
'                              <fo:block orphans="2" widows="2" linefeed-treatment="preserve" sta';
    wwv_flow_api.g_varchar2_table(123) := 'rt-indent="0.0pt" text-align="start" padding-bottom="0.0pt" end-indent="0.0pt" padding-top="0.0pt">';
    wwv_flow_api.g_varchar2_table(124) := ''||wwv_flow.LF||
'                                 <fo:inline font-family="Calibri Light" height="10.0pt" font-weight';
    wwv_flow_api.g_varchar2_table(125) := '="bold" font-family-generic="swiss" white-space-collapse="false" style-name="Normal" font-size="10.0';
    wwv_flow_api.g_varchar2_table(126) := 'pt">4</fo:inline>'||wwv_flow.LF||
'                              </fo:block>'||wwv_flow.LF||
'                           </fo:table-';
    wwv_flow_api.g_varchar2_table(127) := 'cell>'||wwv_flow.LF||
'                           <fo:table-cell padding-start="5.15pt" vertical-align="top" border-';
    wwv_flow_api.g_varchar2_table(128) := 'bottom="0.5pt solid #000000" border-end-color="#000000" padding-top="0.0pt" border-end-style="solid"';
    wwv_flow_api.g_varchar2_table(129) := ' border-start-color="#000000" padding-end="5.15pt" number-columns-spanned="1" border-top="0.5pt soli';
    wwv_flow_api.g_varchar2_table(130) := 'd #000000" border-start-style="solid" height="0.0pt" border-end-width="0.5pt" padding-bottom="0.0pt"';
    wwv_flow_api.g_varchar2_table(131) := ' border-start-width="0.5pt">'||wwv_flow.LF||
'                              <fo:block orphans="2" widows="2" linefee';
    wwv_flow_api.g_varchar2_table(132) := 'd-treatment="preserve" start-indent="0.0pt" text-align="start" padding-bottom="0.0pt" end-indent="0.';
    wwv_flow_api.g_varchar2_table(133) := '0pt" padding-top="0.0pt">'||wwv_flow.LF||
'                                 <fo:inline font-family="Calibri Light" h';
    wwv_flow_api.g_varchar2_table(134) := 'eight="10.0pt" font-weight="bold" font-family-generic="swiss" white-space-collapse="false" style-nam';
    wwv_flow_api.g_varchar2_table(135) := 'e="Normal" font-size="10.0pt">5</fo:inline>'||wwv_flow.LF||
'                              </fo:block>'||wwv_flow.LF||
'            ';
    wwv_flow_api.g_varchar2_table(136) := '               </fo:table-cell>'||wwv_flow.LF||
'                           <fo:table-cell padding-start="5.15pt" ve';
    wwv_flow_api.g_varchar2_table(137) := 'rtical-align="top" border-bottom="0.5pt solid #000000" border-end-color="#000000" padding-top="0.0pt';
    wwv_flow_api.g_varchar2_table(138) := '" border-end-style="solid" border-start-color="#000000" padding-end="5.15pt" number-columns-spanned=';
    wwv_flow_api.g_varchar2_table(139) := '"1" border-top="0.5pt solid #000000" border-start-style="solid" height="0.0pt" border-end-width="0.5';
    wwv_flow_api.g_varchar2_table(140) := 'pt" padding-bottom="0.0pt" border-start-width="0.5pt">'||wwv_flow.LF||
'                              <fo:block orph';
    wwv_flow_api.g_varchar2_table(141) := 'ans="2" widows="2" linefeed-treatment="preserve" start-indent="0.0pt" text-align="start" padding-bot';
    wwv_flow_api.g_varchar2_table(142) := 'tom="0.0pt" end-indent="0.0pt" padding-top="0.0pt">'||wwv_flow.LF||
'                                 <fo:inline fon';
    wwv_flow_api.g_varchar2_table(143) := 't-family="Calibri Light" height="10.0pt" font-weight="bold" font-family-generic="swiss" white-space-';
    wwv_flow_api.g_varchar2_table(144) := 'collapse="false" style-name="Normal" font-size="10.0pt">6</fo:inline>'||wwv_flow.LF||
'                             ';
    wwv_flow_api.g_varchar2_table(145) := ' </fo:block>'||wwv_flow.LF||
'                           </fo:table-cell>'||wwv_flow.LF||
'                           <fo:table-cell';
    wwv_flow_api.g_varchar2_table(146) := ' padding-start="5.15pt" vertical-align="top" border-bottom="0.5pt solid #000000" border-end-color="#';
    wwv_flow_api.g_varchar2_table(147) := '000000" padding-top="0.0pt" border-end-style="solid" border-start-color="#000000" padding-end="5.15p';
    wwv_flow_api.g_varchar2_table(148) := 't" number-columns-spanned="1" border-top="0.5pt solid #000000" border-start-style="solid" height="0.';
    wwv_flow_api.g_varchar2_table(149) := '0pt" border-end-width="0.5pt" padding-bottom="0.0pt" border-start-width="0.5pt">'||wwv_flow.LF||
'                  ';
    wwv_flow_api.g_varchar2_table(150) := '            <fo:block orphans="2" widows="2" linefeed-treatment="preserve" start-indent="0.0pt" text';
    wwv_flow_api.g_varchar2_table(151) := '-align="start" padding-bottom="0.0pt" end-indent="0.0pt" padding-top="0.0pt">'||wwv_flow.LF||
'                     ';
    wwv_flow_api.g_varchar2_table(152) := '            <fo:inline font-family="Calibri Light" height="10.0pt" font-weight="bold" font-family-ge';
    wwv_flow_api.g_varchar2_table(153) := 'neric="swiss" white-space-collapse="false" style-name="Normal" font-size="10.0pt">7</fo:inline>'||wwv_flow.LF||
'   ';
    wwv_flow_api.g_varchar2_table(154) := '                           </fo:block>'||wwv_flow.LF||
'                           </fo:table-cell>'||wwv_flow.LF||
'               ';
    wwv_flow_api.g_varchar2_table(155) := '            <fo:table-cell padding-start="5.15pt" vertical-align="top" border-bottom="0.5pt solid #0';
    wwv_flow_api.g_varchar2_table(156) := '00000" border-end-color="#000000" padding-top="0.0pt" border-end-style="solid" border-start-color="#';
    wwv_flow_api.g_varchar2_table(157) := '000000" padding-end="5.15pt" number-columns-spanned="1" border-top="0.5pt solid #000000" border-star';
    wwv_flow_api.g_varchar2_table(158) := 't-style="solid" height="0.0pt" border-end-width="0.5pt" padding-bottom="0.0pt" border-start-width="0';
    wwv_flow_api.g_varchar2_table(159) := '.5pt">'||wwv_flow.LF||
'                              <fo:block orphans="2" widows="2" linefeed-treatment="preserve"';
    wwv_flow_api.g_varchar2_table(160) := ' start-indent="0.0pt" text-align="start" padding-bottom="0.0pt" end-indent="0.0pt" padding-top="0.0p';
    wwv_flow_api.g_varchar2_table(161) := 't">'||wwv_flow.LF||
'                                 <fo:inline font-family="Calibri Light" height="10.0pt" font-we';
    wwv_flow_api.g_varchar2_table(162) := 'ight="bold" font-family-generic="swiss" white-space-collapse="false" style-name="Normal" font-size="';
    wwv_flow_api.g_varchar2_table(163) := '10.0pt">8</fo:inline>'||wwv_flow.LF||
'                              </fo:block>'||wwv_flow.LF||
'                           </fo:ta';
    wwv_flow_api.g_varchar2_table(164) := 'ble-cell>'||wwv_flow.LF||
'                           <fo:table-cell padding-start="5.15pt" vertical-align="top" bor';
    wwv_flow_api.g_varchar2_table(165) := 'der-bottom="0.5pt solid #000000" border-end-color="#000000" padding-top="0.0pt" border-end-style="so';
    wwv_flow_api.g_varchar2_table(166) := 'lid" border-start-color="#000000" padding-end="5.15pt" number-columns-spanned="1" border-top="0.5pt ';
    wwv_flow_api.g_varchar2_table(167) := 'solid #000000" border-start-style="solid" height="0.0pt" border-end-width="0.5pt" padding-bottom="0.';
    wwv_flow_api.g_varchar2_table(168) := '0pt" border-start-width="0.5pt">'||wwv_flow.LF||
'                              <fo:block orphans="2" widows="2" lin';
    wwv_flow_api.g_varchar2_table(169) := 'efeed-treatment="preserve" start-indent="0.0pt" text-align="start" padding-bottom="0.0pt" end-indent';
    wwv_flow_api.g_varchar2_table(170) := '="0.0pt" padding-top="0.0pt">'||wwv_flow.LF||
'                                 <fo:inline font-family="Calibri Ligh';
    wwv_flow_api.g_varchar2_table(171) := 't" height="10.0pt" font-weight="bold" font-family-generic="swiss" white-space-collapse="false" style';
    wwv_flow_api.g_varchar2_table(172) := '-name="Normal" font-size="10.0pt">9</fo:inline>'||wwv_flow.LF||
'                              </fo:block>'||wwv_flow.LF||
'        ';
    wwv_flow_api.g_varchar2_table(173) := '                   </fo:table-cell>'||wwv_flow.LF||
'                           <fo:table-cell padding-start="5.15pt';
    wwv_flow_api.g_varchar2_table(174) := '" vertical-align="top" border-bottom="0.5pt solid #000000" border-end-color="#000000" padding-top="0';
    wwv_flow_api.g_varchar2_table(175) := '.0pt" border-end-style="solid" border-start-color="#000000" padding-end="5.15pt" number-columns-span';
    wwv_flow_api.g_varchar2_table(176) := 'ned="1" border-top="0.5pt solid #000000" border-start-style="solid" height="0.0pt" border-end-width=';
    wwv_flow_api.g_varchar2_table(177) := '"0.5pt" padding-bottom="0.0pt" border-start-width="0.5pt">'||wwv_flow.LF||
'                              <fo:block ';
    wwv_flow_api.g_varchar2_table(178) := 'orphans="2" widows="2" linefeed-treatment="preserve" start-indent="0.0pt" text-align="start" padding';
    wwv_flow_api.g_varchar2_table(179) := '-bottom="0.0pt" end-indent="0.0pt" padding-top="0.0pt">'||wwv_flow.LF||
'                                 <fo:inline';
    wwv_flow_api.g_varchar2_table(180) := ' font-family="Calibri Light" height="10.0pt" font-weight="bold" font-family-generic="swiss" white-sp';
    wwv_flow_api.g_varchar2_table(181) := 'ace-collapse="false" style-name="Normal" font-size="10.0pt">10</fo:inline>'||wwv_flow.LF||
'                        ';
    wwv_flow_api.g_varchar2_table(182) := '      </fo:block>'||wwv_flow.LF||
'                           </fo:table-cell>'||wwv_flow.LF||
'                           <fo:table';
    wwv_flow_api.g_varchar2_table(183) := '-cell padding-start="5.15pt" vertical-align="top" border-bottom="0.5pt solid #000000" border-end-col';
    wwv_flow_api.g_varchar2_table(184) := 'or="#000000" padding-top="0.0pt" border-end-style="solid" border-start-color="#000000" padding-end="';
    wwv_flow_api.g_varchar2_table(185) := '5.15pt" number-columns-spanned="1" border-top="0.5pt solid #000000" border-start-style="solid" heigh';
    wwv_flow_api.g_varchar2_table(186) := 't="0.0pt" border-end-width="0.5pt" padding-bottom="0.0pt" border-start-width="0.5pt">'||wwv_flow.LF||
'             ';
    wwv_flow_api.g_varchar2_table(187) := '                 <fo:block orphans="2" widows="2" linefeed-treatment="preserve" start-indent="0.0pt"';
    wwv_flow_api.g_varchar2_table(188) := ' text-align="start" padding-bottom="0.0pt" end-indent="0.0pt" padding-top="0.0pt">'||wwv_flow.LF||
'                ';
    wwv_flow_api.g_varchar2_table(189) := '                 <fo:inline font-family="Calibri Light" height="10.0pt" font-weight="bold" font-fami';
    wwv_flow_api.g_varchar2_table(190) := 'ly-generic="swiss" white-space-collapse="false" style-name="Normal" font-size="10.0pt">11</fo:inline';
    wwv_flow_api.g_varchar2_table(191) := '>'||wwv_flow.LF||
'                              </fo:block>'||wwv_flow.LF||
'                           </fo:table-cell>'||wwv_flow.LF||
'         ';
    wwv_flow_api.g_varchar2_table(192) := '                  <fo:table-cell padding-start="5.15pt" vertical-align="top" border-bottom="0.5pt so';
    wwv_flow_api.g_varchar2_table(193) := 'lid #000000" border-end-color="#000000" padding-top="0.0pt" border-end-style="solid" border-start-co';
    wwv_flow_api.g_varchar2_table(194) := 'lor="#000000" padding-end="5.15pt" number-columns-spanned="1" border-top="0.5pt solid #000000" borde';
    wwv_flow_api.g_varchar2_table(195) := 'r-start-style="solid" height="0.0pt" border-end-width="0.5pt" padding-bottom="0.0pt" border-start-wi';
    wwv_flow_api.g_varchar2_table(196) := 'dth="0.5pt">'||wwv_flow.LF||
'                              <fo:block orphans="2" widows="2" linefeed-treatment="pre';
    wwv_flow_api.g_varchar2_table(197) := 'serve" start-indent="0.0pt" text-align="start" padding-bottom="0.0pt" end-indent="0.0pt" padding-top';
    wwv_flow_api.g_varchar2_table(198) := '="0.0pt">'||wwv_flow.LF||
'                                 <fo:inline font-family="Calibri Light" height="10.0pt" f';
    wwv_flow_api.g_varchar2_table(199) := 'ont-weight="bold" font-family-generic="swiss" white-space-collapse="false" style-name="Normal" font-';
    wwv_flow_api.g_varchar2_table(200) := 'size="10.0pt">12</fo:inline>'||wwv_flow.LF||
'                              </fo:block>'||wwv_flow.LF||
'                           ';
    wwv_flow_api.g_varchar2_table(201) := '</fo:table-cell>'||wwv_flow.LF||
'                           <fo:table-cell padding-start="5.15pt" vertical-align="t';
    wwv_flow_api.g_varchar2_table(202) := 'op" border-bottom="0.5pt solid #000000" border-end-color="#000000" padding-top="0.0pt" border-end-st';
    wwv_flow_api.g_varchar2_table(203) := 'yle="solid" border-start-color="#000000" padding-end="5.15pt" number-columns-spanned="1" border-top=';
    wwv_flow_api.g_varchar2_table(204) := '"0.5pt solid #000000" border-start-style="solid" height="0.0pt" border-end-width="0.5pt" padding-bot';
    wwv_flow_api.g_varchar2_table(205) := 'tom="0.0pt" border-start-width="0.5pt">'||wwv_flow.LF||
'                              <fo:block orphans="2" widows=';
    wwv_flow_api.g_varchar2_table(206) := '"2" linefeed-treatment="preserve" start-indent="0.0pt" text-align="start" padding-bottom="0.0pt" end';
    wwv_flow_api.g_varchar2_table(207) := '-indent="0.0pt" padding-top="0.0pt">'||wwv_flow.LF||
'                                 <fo:inline font-family="Calib';
    wwv_flow_api.g_varchar2_table(208) := 'ri Light" height="10.0pt" font-weight="bold" font-family-generic="swiss" white-space-collapse="false';
    wwv_flow_api.g_varchar2_table(209) := '" style-name="Normal" font-size="10.0pt">13</fo:inline>'||wwv_flow.LF||
'                              </fo:block>'||wwv_flow.LF||
'';
    wwv_flow_api.g_varchar2_table(210) := '                           </fo:table-cell>'||wwv_flow.LF||
'                           <fo:table-cell padding-start';
    wwv_flow_api.g_varchar2_table(211) := '="5.15pt" vertical-align="top" border-bottom="0.5pt solid #000000" border-end-color="#000000" paddin';
    wwv_flow_api.g_varchar2_table(212) := 'g-top="0.0pt" border-end-style="solid" border-start-color="#000000" padding-end="5.15pt" number-colu';
    wwv_flow_api.g_varchar2_table(213) := 'mns-spanned="1" border-top="0.5pt solid #000000" border-start-style="solid" height="0.0pt" border-en';
    wwv_flow_api.g_varchar2_table(214) := 'd-width="0.5pt" padding-bottom="0.0pt" border-start-width="0.5pt">'||wwv_flow.LF||
'                              <f';
    wwv_flow_api.g_varchar2_table(215) := 'o:block orphans="2" widows="2" linefeed-treatment="preserve" start-indent="0.0pt" text-align="start"';
    wwv_flow_api.g_varchar2_table(216) := ' padding-bottom="0.0pt" end-indent="0.0pt" padding-top="0.0pt">'||wwv_flow.LF||
'                                 <f';
    wwv_flow_api.g_varchar2_table(217) := 'o:inline font-family="Calibri Light" height="10.0pt" font-weight="bold" font-family-generic="swiss" ';
    wwv_flow_api.g_varchar2_table(218) := 'white-space-collapse="false" style-name="Normal" font-size="10.0pt">14</fo:inline>'||wwv_flow.LF||
'                ';
    wwv_flow_api.g_varchar2_table(219) := '              </fo:block>'||wwv_flow.LF||
'                           </fo:table-cell>'||wwv_flow.LF||
'                           <';
    wwv_flow_api.g_varchar2_table(220) := 'fo:table-cell padding-start="5.15pt" vertical-align="top" border-bottom="0.5pt solid #000000" border';
    wwv_flow_api.g_varchar2_table(221) := '-end-color="#000000" padding-top="0.0pt" border-end-style="solid" border-start-color="#000000" paddi';
    wwv_flow_api.g_varchar2_table(222) := 'ng-end="5.15pt" number-columns-spanned="1" border-top="0.5pt solid #000000" border-start-style="soli';
    wwv_flow_api.g_varchar2_table(223) := 'd" height="0.0pt" border-end-width="0.5pt" padding-bottom="0.0pt" border-start-width="0.5pt">'||wwv_flow.LF||
'     ';
    wwv_flow_api.g_varchar2_table(224) := '                         <fo:block orphans="2" widows="2" linefeed-treatment="preserve" start-indent';
    wwv_flow_api.g_varchar2_table(225) := '="0.0pt" text-align="start" padding-bottom="0.0pt" end-indent="0.0pt" padding-top="0.0pt">'||wwv_flow.LF||
'        ';
    wwv_flow_api.g_varchar2_table(226) := '                         <fo:inline font-family="Calibri Light" height="10.0pt" font-weight="bold" f';
    wwv_flow_api.g_varchar2_table(227) := 'ont-family-generic="swiss" white-space-collapse="false" style-name="Normal" font-size="10.0pt">15</f';
    wwv_flow_api.g_varchar2_table(228) := 'o:inline>'||wwv_flow.LF||
'                              </fo:block>'||wwv_flow.LF||
'                           </fo:table-cell>'||wwv_flow.LF||
' ';
    wwv_flow_api.g_varchar2_table(229) := '                          <fo:table-cell padding-start="5.15pt" vertical-align="top" border-bottom="';
    wwv_flow_api.g_varchar2_table(230) := '0.5pt solid #000000" border-end-color="#000000" padding-top="0.0pt" border-end-style="solid" border-';
    wwv_flow_api.g_varchar2_table(231) := 'start-color="#000000" padding-end="5.15pt" number-columns-spanned="1" border-top="0.5pt solid #00000';
    wwv_flow_api.g_varchar2_table(232) := '0" border-start-style="solid" height="0.0pt" border-end-width="0.5pt" padding-bottom="0.0pt" border-';
    wwv_flow_api.g_varchar2_table(233) := 'start-width="0.5pt">'||wwv_flow.LF||
'                              <fo:block orphans="2" widows="2" linefeed-treatm';
    wwv_flow_api.g_varchar2_table(234) := 'ent="preserve" start-indent="0.0pt" text-align="start" padding-bottom="0.0pt" end-indent="0.0pt" pad';
    wwv_flow_api.g_varchar2_table(235) := 'ding-top="0.0pt">'||wwv_flow.LF||
'                                 <fo:inline font-family="Calibri Light" height="1';
    wwv_flow_api.g_varchar2_table(236) := '0.0pt" font-weight="bold" font-family-generic="swiss" white-space-collapse="false" style-name="Norma';
    wwv_flow_api.g_varchar2_table(237) := 'l" font-size="10.0pt">16</fo:inline>'||wwv_flow.LF||
'                              </fo:block>'||wwv_flow.LF||
'                   ';
    wwv_flow_api.g_varchar2_table(238) := '        </fo:table-cell>'||wwv_flow.LF||
'                           <fo:table-cell padding-start="5.15pt" vertical-';
    wwv_flow_api.g_varchar2_table(239) := 'align="top" border-bottom="0.5pt solid #000000" border-end-color="#000000" padding-top="0.0pt" borde';
    wwv_flow_api.g_varchar2_table(240) := 'r-end-style="solid" border-start-color="#000000" padding-end="5.15pt" number-columns-spanned="1" bor';
    wwv_flow_api.g_varchar2_table(241) := 'der-top="0.5pt solid #000000" border-start-style="solid" height="0.0pt" border-end-width="0.5pt" pad';
    wwv_flow_api.g_varchar2_table(242) := 'ding-bottom="0.0pt" border-start-width="0.5pt">'||wwv_flow.LF||
'                              <fo:block orphans="2"';
    wwv_flow_api.g_varchar2_table(243) := ' widows="2" linefeed-treatment="preserve" start-indent="0.0pt" text-align="start" padding-bottom="0.';
    wwv_flow_api.g_varchar2_table(244) := '0pt" end-indent="0.0pt" padding-top="0.0pt">'||wwv_flow.LF||
'                                 <fo:inline font-famil';
    wwv_flow_api.g_varchar2_table(245) := 'y="Calibri Light" height="10.0pt" font-weight="bold" font-family-generic="swiss" white-space-collaps';
    wwv_flow_api.g_varchar2_table(246) := 'e="false" style-name="Normal" font-size="10.0pt">17</fo:inline>'||wwv_flow.LF||
'                              </fo:';
    wwv_flow_api.g_varchar2_table(247) := 'block>'||wwv_flow.LF||
'                           </fo:table-cell>'||wwv_flow.LF||
'                           <fo:table-cell paddi';
    wwv_flow_api.g_varchar2_table(248) := 'ng-start="5.15pt" vertical-align="top" border-bottom="0.5pt solid #000000" border-end-color="#000000';
    wwv_flow_api.g_varchar2_table(249) := '" padding-top="0.0pt" border-end-style="solid" border-start-color="#000000" padding-end="5.15pt" num';
    wwv_flow_api.g_varchar2_table(250) := 'ber-columns-spanned="1" border-top="0.5pt solid #000000" border-start-style="solid" height="0.0pt" b';
    wwv_flow_api.g_varchar2_table(251) := 'order-end-width="0.5pt" padding-bottom="0.0pt" border-start-width="0.5pt">'||wwv_flow.LF||
'                        ';
    wwv_flow_api.g_varchar2_table(252) := '      <fo:block orphans="2" widows="2" linefeed-treatment="preserve" start-indent="0.0pt" text-align';
    wwv_flow_api.g_varchar2_table(253) := '="start" padding-bottom="0.0pt" end-indent="0.0pt" padding-top="0.0pt">'||wwv_flow.LF||
'                           ';
    wwv_flow_api.g_varchar2_table(254) := '      <fo:inline font-family="Calibri Light" height="10.0pt" font-weight="bold" font-family-generic=';
    wwv_flow_api.g_varchar2_table(255) := '"swiss" white-space-collapse="false" style-name="Normal" font-size="10.0pt">18</fo:inline>'||wwv_flow.LF||
'        ';
    wwv_flow_api.g_varchar2_table(256) := '                      </fo:block>'||wwv_flow.LF||
'                           </fo:table-cell>'||wwv_flow.LF||
'                    ';
    wwv_flow_api.g_varchar2_table(257) := '       <fo:table-cell padding-start="5.15pt" vertical-align="top" border-bottom="0.5pt solid #000000';
    wwv_flow_api.g_varchar2_table(258) := '" border-end-color="#000000" padding-top="0.0pt" border-end-style="solid" border-start-color="#00000';
    wwv_flow_api.g_varchar2_table(259) := '0" padding-end="5.15pt" number-columns-spanned="1" border-top="0.5pt solid #000000" border-start-sty';
    wwv_flow_api.g_varchar2_table(260) := 'le="solid" height="0.0pt" border-end-width="0.5pt" padding-bottom="0.0pt" border-start-width="0.5pt"';
    wwv_flow_api.g_varchar2_table(261) := '>'||wwv_flow.LF||
'                              <fo:block orphans="2" widows="2" linefeed-treatment="preserve" star';
    wwv_flow_api.g_varchar2_table(262) := 't-indent="0.0pt" text-align="start" padding-bottom="0.0pt" end-indent="0.0pt" padding-top="0.0pt">'||wwv_flow.LF||
'';
    wwv_flow_api.g_varchar2_table(263) := '                                 <fo:inline font-family="Calibri Light" height="10.0pt" font-weight=';
    wwv_flow_api.g_varchar2_table(264) := '"bold" font-family-generic="swiss" white-space-collapse="false" style-name="Normal" font-size="10.0p';
    wwv_flow_api.g_varchar2_table(265) := 't">19</fo:inline>'||wwv_flow.LF||
'                              </fo:block>'||wwv_flow.LF||
'                           </fo:table-';
    wwv_flow_api.g_varchar2_table(266) := 'cell>'||wwv_flow.LF||
'                           <fo:table-cell padding-start="5.15pt" vertical-align="top" border-';
    wwv_flow_api.g_varchar2_table(267) := 'bottom="0.5pt solid #000000" border-end-color="#000000" padding-top="0.0pt" border-end-style="solid"';
    wwv_flow_api.g_varchar2_table(268) := ' border-start-color="#000000" padding-end="5.15pt" number-columns-spanned="1" border-top="0.5pt soli';
    wwv_flow_api.g_varchar2_table(269) := 'd #000000" border-start-style="solid" height="0.0pt" border-end-width="0.5pt" padding-bottom="0.0pt"';
    wwv_flow_api.g_varchar2_table(270) := ' border-start-width="0.5pt">'||wwv_flow.LF||
'                              <fo:block orphans="2" widows="2" linefee';
    wwv_flow_api.g_varchar2_table(271) := 'd-treatment="preserve" start-indent="0.0pt" text-align="start" padding-bottom="0.0pt" end-indent="0.';
    wwv_flow_api.g_varchar2_table(272) := '0pt" padding-top="0.0pt">'||wwv_flow.LF||
'                                 <fo:inline font-family="Calibri Light" h';
    wwv_flow_api.g_varchar2_table(273) := 'eight="10.0pt" font-weight="bold" font-family-generic="swiss" white-space-collapse="false" style-nam';
    wwv_flow_api.g_varchar2_table(274) := 'e="Normal" font-size="10.0pt">20</fo:inline>'||wwv_flow.LF||
'                              </fo:block>'||wwv_flow.LF||
'           ';
    wwv_flow_api.g_varchar2_table(275) := '                </fo:table-cell>'||wwv_flow.LF||
'                           <fo:table-cell padding-start="5.15pt" v';
    wwv_flow_api.g_varchar2_table(276) := 'ertical-align="top" border-bottom="0.5pt solid #000000" border-end-color="#000000" padding-top="0.0p';
    wwv_flow_api.g_varchar2_table(277) := 't" border-end-style="solid" border-start-color="#000000" padding-end="5.15pt" number-columns-spanned';
    wwv_flow_api.g_varchar2_table(278) := '="1" border-top="0.5pt solid #000000" border-start-style="solid" height="0.0pt" border-end-width="0.';
    wwv_flow_api.g_varchar2_table(279) := '5pt" padding-bottom="0.0pt" border-start-width="0.5pt">'||wwv_flow.LF||
'                              <fo:block orp';
    wwv_flow_api.g_varchar2_table(280) := 'hans="2" widows="2" linefeed-treatment="preserve" start-indent="0.0pt" text-align="start" padding-bo';
    wwv_flow_api.g_varchar2_table(281) := 'ttom="0.0pt" end-indent="0.0pt" padding-top="0.0pt">'||wwv_flow.LF||
'                                 <fo:inline fo';
    wwv_flow_api.g_varchar2_table(282) := 'nt-family="Calibri Light" height="10.0pt" font-weight="bold" font-family-generic="swiss" white-space';
    wwv_flow_api.g_varchar2_table(283) := '-collapse="false" style-name="Normal" font-size="10.0pt">21</fo:inline>'||wwv_flow.LF||
'                           ';
    wwv_flow_api.g_varchar2_table(284) := '   </fo:block>'||wwv_flow.LF||
'                           </fo:table-cell>'||wwv_flow.LF||
'                           <fo:table-ce';
    wwv_flow_api.g_varchar2_table(285) := 'll padding-start="5.15pt" vertical-align="top" border-bottom="0.5pt solid #000000" border-end-color=';
    wwv_flow_api.g_varchar2_table(286) := '"#000000" padding-top="0.0pt" border-end-style="solid" border-start-color="#000000" padding-end="5.1';
    wwv_flow_api.g_varchar2_table(287) := '5pt" number-columns-spanned="1" border-top="0.5pt solid #000000" border-start-style="solid" height="';
    wwv_flow_api.g_varchar2_table(288) := '0.0pt" border-end-width="0.5pt" padding-bottom="0.0pt" border-start-width="0.5pt">'||wwv_flow.LF||
'                ';
    wwv_flow_api.g_varchar2_table(289) := '              <fo:block orphans="2" widows="2" linefeed-treatment="preserve" start-indent="0.0pt" te';
    wwv_flow_api.g_varchar2_table(290) := 'xt-align="start" padding-bottom="0.0pt" end-indent="0.0pt" padding-top="0.0pt">'||wwv_flow.LF||
'                   ';
    wwv_flow_api.g_varchar2_table(291) := '              <fo:inline font-family="Calibri Light" height="10.0pt" font-weight="bold" font-family-';
    wwv_flow_api.g_varchar2_table(292) := 'generic="swiss" white-space-collapse="false" style-name="Normal" font-size="10.0pt">22</fo:inline>'||wwv_flow.LF||
'';
    wwv_flow_api.g_varchar2_table(293) := '                              </fo:block>'||wwv_flow.LF||
'                           </fo:table-cell>'||wwv_flow.LF||
'            ';
    wwv_flow_api.g_varchar2_table(294) := '               <fo:table-cell padding-start="5.15pt" vertical-align="top" border-bottom="0.5pt solid';
    wwv_flow_api.g_varchar2_table(295) := ' #000000" border-end-color="#000000" padding-top="0.0pt" border-end-style="solid" border-start-color';
    wwv_flow_api.g_varchar2_table(296) := '="#000000" padding-end="5.15pt" number-columns-spanned="1" border-top="0.5pt solid #000000" border-s';
    wwv_flow_api.g_varchar2_table(297) := 'tart-style="solid" height="0.0pt" border-end-width="0.5pt" padding-bottom="0.0pt" border-start-width';
    wwv_flow_api.g_varchar2_table(298) := '="0.5pt">'||wwv_flow.LF||
'                              <fo:block orphans="2" widows="2" linefeed-treatment="preser';
    wwv_flow_api.g_varchar2_table(299) := 've" start-indent="0.0pt" text-align="start" padding-bottom="0.0pt" end-indent="0.0pt" padding-top="0';
    wwv_flow_api.g_varchar2_table(300) := '.0pt">'||wwv_flow.LF||
'                                 <fo:inline font-family="Calibri Light" height="10.0pt" font';
    wwv_flow_api.g_varchar2_table(301) := '-weight="bold" font-family-generic="swiss" white-space-collapse="false" style-name="Normal" font-siz';
    wwv_flow_api.g_varchar2_table(302) := 'e="10.0pt">23</fo:inline>'||wwv_flow.LF||
'                              </fo:block>'||wwv_flow.LF||
'                           </f';
    wwv_flow_api.g_varchar2_table(303) := 'o:table-cell>'||wwv_flow.LF||
'                           <fo:table-cell padding-start="5.15pt" vertical-align="top"';
    wwv_flow_api.g_varchar2_table(304) := ' border-bottom="0.5pt solid #000000" border-end-color="#000000" padding-top="0.0pt" border-end-style';
    wwv_flow_api.g_varchar2_table(305) := '="solid" border-start-color="#000000" padding-end="5.15pt" number-columns-spanned="1" border-top="0.';
    wwv_flow_api.g_varchar2_table(306) := '5pt solid #000000" border-start-style="solid" height="0.0pt" border-end-width="0.5pt" padding-bottom';
    wwv_flow_api.g_varchar2_table(307) := '="0.0pt" border-start-width="0.5pt">'||wwv_flow.LF||
'                              <fo:block orphans="2" widows="2"';
    wwv_flow_api.g_varchar2_table(308) := ' linefeed-treatment="preserve" start-indent="0.0pt" text-align="start" padding-bottom="0.0pt" end-in';
    wwv_flow_api.g_varchar2_table(309) := 'dent="0.0pt" padding-top="0.0pt">'||wwv_flow.LF||
'                                 <fo:inline font-family="Calibri ';
    wwv_flow_api.g_varchar2_table(310) := 'Light" height="10.0pt" font-weight="bold" font-family-generic="swiss" white-space-collapse="false" s';
    wwv_flow_api.g_varchar2_table(311) := 'tyle-name="Normal" font-size="10.0pt">24</fo:inline>'||wwv_flow.LF||
'                              </fo:block>'||wwv_flow.LF||
'   ';
    wwv_flow_api.g_varchar2_table(312) := '                        </fo:table-cell>'||wwv_flow.LF||
'                           <fo:table-cell padding-start="5';
    wwv_flow_api.g_varchar2_table(313) := '.15pt" vertical-align="top" border-bottom="0.5pt solid #000000" border-end-color="#000000" padding-t';
    wwv_flow_api.g_varchar2_table(314) := 'op="0.0pt" border-end-style="solid" border-start-color="#000000" padding-end="5.15pt" number-columns';
    wwv_flow_api.g_varchar2_table(315) := '-spanned="1" border-top="0.5pt solid #000000" border-start-style="solid" height="0.0pt" border-end-w';
    wwv_flow_api.g_varchar2_table(316) := 'idth="0.5pt" padding-bottom="0.0pt" border-start-width="0.5pt">'||wwv_flow.LF||
'                              <fo:b';
    wwv_flow_api.g_varchar2_table(317) := 'lock orphans="2" widows="2" linefeed-treatment="preserve" start-indent="0.0pt" text-align="start" pa';
    wwv_flow_api.g_varchar2_table(318) := 'dding-bottom="0.0pt" end-indent="0.0pt" padding-top="0.0pt">'||wwv_flow.LF||
'                                 <fo:i';
    wwv_flow_api.g_varchar2_table(319) := 'nline font-family="Calibri Light" height="10.0pt" font-weight="bold" font-family-generic="swiss" whi';
    wwv_flow_api.g_varchar2_table(320) := 'te-space-collapse="false" style-name="Normal" font-size="10.0pt">25</fo:inline>'||wwv_flow.LF||
'                   ';
    wwv_flow_api.g_varchar2_table(321) := '           </fo:block>'||wwv_flow.LF||
'                           </fo:table-cell>'||wwv_flow.LF||
'                           <fo:';
    wwv_flow_api.g_varchar2_table(322) := 'table-cell padding-start="5.15pt" vertical-align="top" border-bottom="0.5pt solid #000000" border-en';
    wwv_flow_api.g_varchar2_table(323) := 'd-color="#000000" padding-top="0.0pt" border-end-style="solid" border-start-color="#000000" padding-';
    wwv_flow_api.g_varchar2_table(324) := 'end="5.15pt" number-columns-spanned="1" border-top="0.5pt solid #000000" border-start-style="solid" ';
    wwv_flow_api.g_varchar2_table(325) := 'height="0.0pt" border-end-width="0.5pt" padding-bottom="0.0pt" border-start-width="0.5pt">'||wwv_flow.LF||
'        ';
    wwv_flow_api.g_varchar2_table(326) := '                      <fo:block orphans="2" widows="2" linefeed-treatment="preserve" start-indent="0';
    wwv_flow_api.g_varchar2_table(327) := '.0pt" text-align="start" padding-bottom="0.0pt" end-indent="0.0pt" padding-top="0.0pt">'||wwv_flow.LF||
'           ';
    wwv_flow_api.g_varchar2_table(328) := '                      <fo:inline font-family="Calibri Light" height="10.0pt" font-weight="bold" font';
    wwv_flow_api.g_varchar2_table(329) := '-family-generic="swiss" white-space-collapse="false" style-name="Normal" font-size="10.0pt">26</fo:i';
    wwv_flow_api.g_varchar2_table(330) := 'nline>'||wwv_flow.LF||
'                              </fo:block>'||wwv_flow.LF||
'                           </fo:table-cell>'||wwv_flow.LF||
'    ';
    wwv_flow_api.g_varchar2_table(331) := '                       <fo:table-cell padding-start="5.15pt" vertical-align="top" border-bottom="0.5';
    wwv_flow_api.g_varchar2_table(332) := 'pt solid #000000" border-end-color="#000000" padding-top="0.0pt" border-end-style="solid" border-sta';
    wwv_flow_api.g_varchar2_table(333) := 'rt-color="#000000" padding-end="5.15pt" number-columns-spanned="1" border-top="0.5pt solid #000000" ';
    wwv_flow_api.g_varchar2_table(334) := 'border-start-style="solid" height="0.0pt" border-end-width="0.5pt" padding-bottom="0.0pt" border-sta';
    wwv_flow_api.g_varchar2_table(335) := 'rt-width="0.5pt">'||wwv_flow.LF||
'                              <fo:block orphans="2" widows="2" linefeed-treatment';
    wwv_flow_api.g_varchar2_table(336) := '="preserve" start-indent="0.0pt" text-align="start" padding-bottom="0.0pt" end-indent="0.0pt" paddin';
    wwv_flow_api.g_varchar2_table(337) := 'g-top="0.0pt">'||wwv_flow.LF||
'                                 <fo:inline font-family="Calibri Light" height="10.0';
    wwv_flow_api.g_varchar2_table(338) := 'pt" font-weight="bold" font-family-generic="swiss" white-space-collapse="false" style-name="Normal" ';
    wwv_flow_api.g_varchar2_table(339) := 'font-size="10.0pt">27</fo:inline>'||wwv_flow.LF||
'                              </fo:block>'||wwv_flow.LF||
'                      ';
    wwv_flow_api.g_varchar2_table(340) := '     </fo:table-cell>'||wwv_flow.LF||
'                           <fo:table-cell padding-start="5.15pt" vertical-ali';
    wwv_flow_api.g_varchar2_table(341) := 'gn="top" border-bottom="0.5pt solid #000000" border-end-color="#000000" padding-top="0.0pt" border-e';
    wwv_flow_api.g_varchar2_table(342) := 'nd-style="solid" border-start-color="#000000" padding-end="5.15pt" number-columns-spanned="1" border';
    wwv_flow_api.g_varchar2_table(343) := '-top="0.5pt solid #000000" border-start-style="solid" height="0.0pt" border-end-width="0.5pt" paddin';
    wwv_flow_api.g_varchar2_table(344) := 'g-bottom="0.0pt" border-start-width="0.5pt">'||wwv_flow.LF||
'                              <fo:block orphans="2" wi';
    wwv_flow_api.g_varchar2_table(345) := 'dows="2" linefeed-treatment="preserve" start-indent="0.0pt" text-align="start" padding-bottom="0.0pt';
    wwv_flow_api.g_varchar2_table(346) := '" end-indent="0.0pt" padding-top="0.0pt">'||wwv_flow.LF||
'                                 <fo:inline font-family="';
    wwv_flow_api.g_varchar2_table(347) := 'Calibri Light" height="10.0pt" font-weight="bold" font-family-generic="swiss" white-space-collapse="';
    wwv_flow_api.g_varchar2_table(348) := 'false" style-name="Normal" font-size="10.0pt">28</fo:inline>'||wwv_flow.LF||
'                              </fo:blo';
    wwv_flow_api.g_varchar2_table(349) := 'ck>'||wwv_flow.LF||
'                           </fo:table-cell>'||wwv_flow.LF||
'                           <fo:table-cell padding-';
    wwv_flow_api.g_varchar2_table(350) := 'start="5.15pt" vertical-align="top" border-bottom="0.5pt solid #000000" border-end-color="#000000" p';
    wwv_flow_api.g_varchar2_table(351) := 'adding-top="0.0pt" border-end-style="solid" border-start-color="#000000" padding-end="5.15pt" number';
    wwv_flow_api.g_varchar2_table(352) := '-columns-spanned="1" border-top="0.5pt solid #000000" border-start-style="solid" height="0.0pt" bord';
    wwv_flow_api.g_varchar2_table(353) := 'er-end-width="0.5pt" padding-bottom="0.0pt" border-start-width="0.5pt">'||wwv_flow.LF||
'                           ';
    wwv_flow_api.g_varchar2_table(354) := '   <fo:block orphans="2" widows="2" linefeed-treatment="preserve" start-indent="0.0pt" text-align="s';
    wwv_flow_api.g_varchar2_table(355) := 'tart" padding-bottom="0.0pt" end-indent="0.0pt" padding-top="0.0pt">'||wwv_flow.LF||
'                              ';
    wwv_flow_api.g_varchar2_table(356) := '   <fo:inline font-family="Calibri Light" height="10.0pt" font-weight="bold" font-family-generic="sw';
    wwv_flow_api.g_varchar2_table(357) := 'iss" white-space-collapse="false" style-name="Normal" font-size="10.0pt">29</fo:inline>'||wwv_flow.LF||
'           ';
    wwv_flow_api.g_varchar2_table(358) := '                   </fo:block>'||wwv_flow.LF||
'                           </fo:table-cell>'||wwv_flow.LF||
'                       ';
    wwv_flow_api.g_varchar2_table(359) := '    <fo:table-cell padding-start="5.15pt" vertical-align="top" border-bottom="0.5pt solid #000000" b';
    wwv_flow_api.g_varchar2_table(360) := 'order-end-color="#000000" padding-top="0.0pt" border-end-style="solid" border-start-color="#000000" ';
    wwv_flow_api.g_varchar2_table(361) := 'padding-end="5.15pt" number-columns-spanned="1" border-top="0.5pt solid #000000" border-start-style=';
    wwv_flow_api.g_varchar2_table(362) := '"solid" height="0.0pt" border-end-width="0.5pt" padding-bottom="0.0pt" border-start-width="0.5pt">'||wwv_flow.LF||
'';
    wwv_flow_api.g_varchar2_table(363) := '                              <fo:block orphans="2" widows="2" linefeed-treatment="preserve" start-i';
    wwv_flow_api.g_varchar2_table(364) := 'ndent="0.0pt" text-align="start" padding-bottom="0.0pt" end-indent="0.0pt" padding-top="0.0pt">'||wwv_flow.LF||
'   ';
    wwv_flow_api.g_varchar2_table(365) := '                              <fo:inline font-family="Calibri Light" height="10.0pt" font-weight="bo';
    wwv_flow_api.g_varchar2_table(366) := 'ld" font-family-generic="swiss" white-space-collapse="false" style-name="Normal" font-size="10.0pt">';
    wwv_flow_api.g_varchar2_table(367) := '30</fo:inline>'||wwv_flow.LF||
'                              </fo:block>'||wwv_flow.LF||
'                           </fo:table-cel';
    wwv_flow_api.g_varchar2_table(368) := 'l>'||wwv_flow.LF||
'                           <fo:table-cell padding-start="5.15pt" vertical-align="top" border-bot';
    wwv_flow_api.g_varchar2_table(369) := 'tom="0.5pt solid #000000" border-end-color="#000000" padding-top="0.0pt" border-end-style="solid" bo';
    wwv_flow_api.g_varchar2_table(370) := 'rder-start-color="#000000" padding-end="5.15pt" number-columns-spanned="1" border-top="0.5pt solid #';
    wwv_flow_api.g_varchar2_table(371) := '000000" border-start-style="solid" height="0.0pt" border-end-width="0.5pt" padding-bottom="0.0pt" bo';
    wwv_flow_api.g_varchar2_table(372) := 'rder-start-width="0.5pt">'||wwv_flow.LF||
'                              <fo:block orphans="2" widows="2" linefeed-t';
    wwv_flow_api.g_varchar2_table(373) := 'reatment="preserve" start-indent="0.0pt" text-align="start" padding-bottom="0.0pt" end-indent="0.0pt';
    wwv_flow_api.g_varchar2_table(374) := '" padding-top="0.0pt">'||wwv_flow.LF||
'                                 <fo:inline font-family="Calibri Light" heig';
    wwv_flow_api.g_varchar2_table(375) := 'ht="10.0pt" font-weight="bold" font-family-generic="swiss" white-space-collapse="false" style-name="';
    wwv_flow_api.g_varchar2_table(376) := 'Normal" font-size="10.0pt">31</fo:inline>'||wwv_flow.LF||
'                              </fo:block>'||wwv_flow.LF||
'              ';
    wwv_flow_api.g_varchar2_table(377) := '             </fo:table-cell>'||wwv_flow.LF||
'                        </fo:table-row>'||wwv_flow.LF||
'                     </fo:ta';
    wwv_flow_api.g_varchar2_table(378) := 'ble-header>'||wwv_flow.LF||
'                     <fo:table-body>'||wwv_flow.LF||
'                        <xsl:variable name="_XDOF';
    wwv_flow_api.g_varchar2_table(379) := 'OOSTOTAL" select="(number(concat(''0'', $_XDOFOPOS2)) - 1) * number(concat(''0'', $_XDOFOTOTAL))"/>'||wwv_flow.LF||
'   ';
    wwv_flow_api.g_varchar2_table(380) := '                     <xsl:variable name="_XDOFOTOTAL" select="count(.//ROW)"/>'||wwv_flow.LF||
'                    ';
    wwv_flow_api.g_varchar2_table(381) := '    <xsl:for-each select=".//ROW" xdofo:ctx="3">'||wwv_flow.LF||
'                           <xsl:variable name="_XD';
    wwv_flow_api.g_varchar2_table(382) := 'OFOPOS" select="concat($_XDOFOPOS, ''_'', position())"/>'||wwv_flow.LF||
'                           <xsl:variable nam';
    wwv_flow_api.g_varchar2_table(383) := 'e="_XDOFOPOS2" select="number(concat(''0'', $_XDOFOOSTOTAL)) + position()"/>'||wwv_flow.LF||
'                        ';
    wwv_flow_api.g_varchar2_table(384) := '   <fo:table-row xdofo:repeat="R">'||wwv_flow.LF||
'                              <fo:table-cell padding-start="5.15';
    wwv_flow_api.g_varchar2_table(385) := 'pt" vertical-align="top" border-bottom="0.5pt solid #000000" border-end-color="#000000" padding-top=';
    wwv_flow_api.g_varchar2_table(386) := '"0.0pt" border-end-style="solid" border-start-color="#000000" padding-end="5.15pt" number-columns-sp';
    wwv_flow_api.g_varchar2_table(387) := 'anned="1" border-top="0.5pt solid #000000" border-start-style="solid" height="0.0pt" border-end-widt';
    wwv_flow_api.g_varchar2_table(388) := 'h="0.5pt" padding-bottom="0.0pt" border-start-width="0.5pt">'||wwv_flow.LF||
'                                 <fo:b';
    wwv_flow_api.g_varchar2_table(389) := 'lock xdofo:xliff-note="F , FULLNAME" orphans="2" widows="2" linefeed-treatment="preserve" start-inde';
    wwv_flow_api.g_varchar2_table(390) := 'nt="0.0pt" text-align="start" padding-bottom="0.0pt" end-indent="0.0pt" padding-top="0.0pt" height="';
    wwv_flow_api.g_varchar2_table(391) := '0pt">'||wwv_flow.LF||
'                                    <fo:inline font-family="Calibri Light" height="10.0pt" fo';
    wwv_flow_api.g_varchar2_table(392) := 'nt-weight="bold" font-family-generic="swiss" white-space-collapse="false" style-name="Normal" font-s';
    wwv_flow_api.g_varchar2_table(393) := 'ize="10.0pt">'||wwv_flow.LF||
'                                       <xsl:value-of select="(.//FULLNAME)[1]" xdofo:';
    wwv_flow_api.g_varchar2_table(394) := 'field-name="FULLNAME"/>'||wwv_flow.LF||
'                                    </fo:inline>'||wwv_flow.LF||
'                         ';
    wwv_flow_api.g_varchar2_table(395) := '        </fo:block>'||wwv_flow.LF||
'                              </fo:table-cell>'||wwv_flow.LF||
'                              <';
    wwv_flow_api.g_varchar2_table(396) := 'fo:table-cell padding-start="5.15pt" vertical-align="top" border-bottom="0.5pt solid #000000" border';
    wwv_flow_api.g_varchar2_table(397) := '-end-color="#000000" padding-top="0.0pt" border-end-style="solid" border-start-color="#000000" paddi';
    wwv_flow_api.g_varchar2_table(398) := 'ng-end="5.15pt" number-columns-spanned="1" border-top="0.5pt solid #000000" border-start-style="soli';
    wwv_flow_api.g_varchar2_table(399) := 'd" height="0.0pt" border-end-width="0.5pt" padding-bottom="0.0pt" border-start-width="0.5pt">'||wwv_flow.LF||
'     ';
    wwv_flow_api.g_varchar2_table(400) := '                            <fo:block xdofo:xliff-note="S1" orphans="2" widows="2" linefeed-treatmen';
    wwv_flow_api.g_varchar2_table(401) := 't="preserve" start-indent="0.0pt" text-align="start" padding-bottom="0.0pt" end-indent="0.0pt" paddi';
    wwv_flow_api.g_varchar2_table(402) := 'ng-top="0.0pt" height="0.0pt">'||wwv_flow.LF||
'                                    <fo:inline font-family="Calibri ';
    wwv_flow_api.g_varchar2_table(403) := 'Light" height="10.0pt" font-weight="bold" font-family-generic="swiss" white-space-collapse="false" s';
    wwv_flow_api.g_varchar2_table(404) := 'tyle-name="Normal" font-size="10.0pt">'||wwv_flow.LF||
'                                       <xsl:value-of select=';
    wwv_flow_api.g_varchar2_table(405) := '"(.//S1)[1]" xdofo:field-name="S1"/>'||wwv_flow.LF||
'                                    </fo:inline>'||wwv_flow.LF||
'            ';
    wwv_flow_api.g_varchar2_table(406) := '                     </fo:block>'||wwv_flow.LF||
'                              </fo:table-cell>'||wwv_flow.LF||
'                  ';
    wwv_flow_api.g_varchar2_table(407) := '            <fo:table-cell padding-start="5.15pt" vertical-align="top" border-bottom="0.5pt solid #0';
    wwv_flow_api.g_varchar2_table(408) := '00000" border-end-color="#000000" padding-top="0.0pt" border-end-style="solid" border-start-color="#';
    wwv_flow_api.g_varchar2_table(409) := '000000" padding-end="5.15pt" number-columns-spanned="1" border-top="0.5pt solid #000000" border-star';
    wwv_flow_api.g_varchar2_table(410) := 't-style="solid" height="0.0pt" border-end-width="0.5pt" padding-bottom="0.0pt" border-start-width="0';
    wwv_flow_api.g_varchar2_table(411) := '.5pt">'||wwv_flow.LF||
'                                 <fo:block xdofo:xliff-note="S2" orphans="2" widows="2" line';
    wwv_flow_api.g_varchar2_table(412) := 'feed-treatment="preserve" start-indent="0.0pt" text-align="start" padding-bottom="0.0pt" end-indent=';
    wwv_flow_api.g_varchar2_table(413) := '"0.0pt" padding-top="0.0pt" height="0.0pt">'||wwv_flow.LF||
'                                    <fo:inline font-fam';
    wwv_flow_api.g_varchar2_table(414) := 'ily="Calibri Light" height="10.0pt" font-weight="bold" font-family-generic="swiss" white-space-colla';
    wwv_flow_api.g_varchar2_table(415) := 'pse="false" style-name="Normal" font-size="10.0pt">'||wwv_flow.LF||
'                                       <xsl:val';
    wwv_flow_api.g_varchar2_table(416) := 'ue-of select="(.//S2)[1]" xdofo:field-name="S2"/>'||wwv_flow.LF||
'                                    </fo:inline>';
    wwv_flow_api.g_varchar2_table(417) := ''||wwv_flow.LF||
'                                 </fo:block>'||wwv_flow.LF||
'                              </fo:table-cell>'||wwv_flow.LF||
'     ';
    wwv_flow_api.g_varchar2_table(418) := '                         <fo:table-cell padding-start="5.15pt" vertical-align="top" border-bottom="0';
    wwv_flow_api.g_varchar2_table(419) := '.5pt solid #000000" border-end-color="#000000" padding-top="0.0pt" border-end-style="solid" border-s';
    wwv_flow_api.g_varchar2_table(420) := 'tart-color="#000000" padding-end="5.15pt" number-columns-spanned="1" border-top="0.5pt solid #000000';
    wwv_flow_api.g_varchar2_table(421) := '" border-start-style="solid" height="0.0pt" border-end-width="0.5pt" padding-bottom="0.0pt" border-s';
    wwv_flow_api.g_varchar2_table(422) := 'tart-width="0.5pt">'||wwv_flow.LF||
'                                 <fo:block xdofo:xliff-note="S3" orphans="2" wi';
    wwv_flow_api.g_varchar2_table(423) := 'dows="2" linefeed-treatment="preserve" start-indent="0.0pt" text-align="start" padding-bottom="0.0pt';
    wwv_flow_api.g_varchar2_table(424) := '" end-indent="0.0pt" padding-top="0.0pt" height="0.0pt">'||wwv_flow.LF||
'                                    <fo:in';
    wwv_flow_api.g_varchar2_table(425) := 'line font-family="Calibri Light" height="10.0pt" font-weight="bold" font-family-generic="swiss" whit';
    wwv_flow_api.g_varchar2_table(426) := 'e-space-collapse="false" style-name="Normal" font-size="10.0pt">'||wwv_flow.LF||
'                                  ';
    wwv_flow_api.g_varchar2_table(427) := '     <xsl:value-of select="(.//S3)[1]" xdofo:field-name="S3"/>'||wwv_flow.LF||
'                                    ';
    wwv_flow_api.g_varchar2_table(428) := '</fo:inline>'||wwv_flow.LF||
'                                 </fo:block>'||wwv_flow.LF||
'                              </fo:table';
    wwv_flow_api.g_varchar2_table(429) := '-cell>'||wwv_flow.LF||
'                              <fo:table-cell padding-start="5.15pt" vertical-align="top" bor';
    wwv_flow_api.g_varchar2_table(430) := 'der-bottom="0.5pt solid #000000" border-end-color="#000000" padding-top="0.0pt" border-end-style="so';
    wwv_flow_api.g_varchar2_table(431) := 'lid" border-start-color="#000000" padding-end="5.15pt" number-columns-spanned="1" border-top="0.5pt ';
    wwv_flow_api.g_varchar2_table(432) := 'solid #000000" border-start-style="solid" height="0.0pt" border-end-width="0.5pt" padding-bottom="0.';
    wwv_flow_api.g_varchar2_table(433) := '0pt" border-start-width="0.5pt">'||wwv_flow.LF||
'                                 <fo:block xdofo:xliff-note="S4" o';
    wwv_flow_api.g_varchar2_table(434) := 'rphans="2" widows="2" linefeed-treatment="preserve" start-indent="0.0pt" text-align="start" padding-';
    wwv_flow_api.g_varchar2_table(435) := 'bottom="0.0pt" end-indent="0.0pt" padding-top="0.0pt" height="0.0pt">'||wwv_flow.LF||
'                             ';
    wwv_flow_api.g_varchar2_table(436) := '       <fo:inline font-family="Calibri Light" height="10.0pt" font-weight="bold" font-family-generic';
    wwv_flow_api.g_varchar2_table(437) := '="swiss" white-space-collapse="false" style-name="Normal" font-size="10.0pt">'||wwv_flow.LF||
'                     ';
    wwv_flow_api.g_varchar2_table(438) := '                  <xsl:value-of select="(.//S4)[1]" xdofo:field-name="S4"/>'||wwv_flow.LF||
'                       ';
    wwv_flow_api.g_varchar2_table(439) := '             </fo:inline>'||wwv_flow.LF||
'                                 </fo:block>'||wwv_flow.LF||
'                           ';
    wwv_flow_api.g_varchar2_table(440) := '   </fo:table-cell>'||wwv_flow.LF||
'                              <fo:table-cell padding-start="5.15pt" vertical-al';
    wwv_flow_api.g_varchar2_table(441) := 'ign="top" border-bottom="0.5pt solid #000000" border-end-color="#000000" padding-top="0.0pt" border-';
    wwv_flow_api.g_varchar2_table(442) := 'end-style="solid" border-start-color="#000000" padding-end="5.15pt" number-columns-spanned="1" borde';
    wwv_flow_api.g_varchar2_table(443) := 'r-top="0.5pt solid #000000" border-start-style="solid" height="0.0pt" border-end-width="0.5pt" paddi';
    wwv_flow_api.g_varchar2_table(444) := 'ng-bottom="0.0pt" border-start-width="0.5pt">'||wwv_flow.LF||
'                                 <fo:block xdofo:xlif';
    wwv_flow_api.g_varchar2_table(445) := 'f-note="S5" orphans="2" widows="2" linefeed-treatment="preserve" start-indent="0.0pt" text-align="st';
    wwv_flow_api.g_varchar2_table(446) := 'art" padding-bottom="0.0pt" end-indent="0.0pt" padding-top="0.0pt" height="0.0pt">'||wwv_flow.LF||
'                ';
    wwv_flow_api.g_varchar2_table(447) := '                    <fo:inline font-family="Calibri Light" height="10.0pt" font-weight="bold" font-f';
    wwv_flow_api.g_varchar2_table(448) := 'amily-generic="swiss" white-space-collapse="false" style-name="Normal" font-size="10.0pt">'||wwv_flow.LF||
'        ';
    wwv_flow_api.g_varchar2_table(449) := '                               <xsl:value-of select="(.//S5)[1]" xdofo:field-name="S5"/>'||wwv_flow.LF||
'          ';
    wwv_flow_api.g_varchar2_table(450) := '                          </fo:inline>'||wwv_flow.LF||
'                                 </fo:block>'||wwv_flow.LF||
'              ';
    wwv_flow_api.g_varchar2_table(451) := '                </fo:table-cell>'||wwv_flow.LF||
'                              <fo:table-cell padding-start="5.15pt';
    wwv_flow_api.g_varchar2_table(452) := '" vertical-align="top" border-bottom="0.5pt solid #000000" border-end-color="#000000" padding-top="0';
    wwv_flow_api.g_varchar2_table(453) := '.0pt" border-end-style="solid" border-start-color="#000000" padding-end="5.15pt" number-columns-span';
    wwv_flow_api.g_varchar2_table(454) := 'ned="1" border-top="0.5pt solid #000000" border-start-style="solid" height="0.0pt" border-end-width=';
    wwv_flow_api.g_varchar2_table(455) := '"0.5pt" padding-bottom="0.0pt" border-start-width="0.5pt">'||wwv_flow.LF||
'                                 <fo:blo';
    wwv_flow_api.g_varchar2_table(456) := 'ck xdofo:xliff-note="S6" orphans="2" widows="2" linefeed-treatment="preserve" start-indent="0.0pt" t';
    wwv_flow_api.g_varchar2_table(457) := 'ext-align="start" padding-bottom="0.0pt" end-indent="0.0pt" padding-top="0.0pt" height="0.0pt">'||wwv_flow.LF||
'   ';
    wwv_flow_api.g_varchar2_table(458) := '                                 <fo:inline font-family="Calibri Light" height="10.0pt" font-weight=';
    wwv_flow_api.g_varchar2_table(459) := '"bold" font-family-generic="swiss" white-space-collapse="false" style-name="Normal" font-size="10.0p';
    wwv_flow_api.g_varchar2_table(460) := 't">'||wwv_flow.LF||
'                                       <xsl:value-of select="(.//S6)[1]" xdofo:field-name="S6"/';
    wwv_flow_api.g_varchar2_table(461) := '>'||wwv_flow.LF||
'                                    </fo:inline>'||wwv_flow.LF||
'                                 </fo:block>'||wwv_flow.LF||
' ';
    wwv_flow_api.g_varchar2_table(462) := '                             </fo:table-cell>'||wwv_flow.LF||
'                              <fo:table-cell padding-';
    wwv_flow_api.g_varchar2_table(463) := 'start="5.15pt" vertical-align="top" border-bottom="0.5pt solid #000000" border-end-color="#000000" p';
    wwv_flow_api.g_varchar2_table(464) := 'adding-top="0.0pt" border-end-style="solid" border-start-color="#000000" padding-end="5.15pt" number';
    wwv_flow_api.g_varchar2_table(465) := '-columns-spanned="1" border-top="0.5pt solid #000000" border-start-style="solid" height="0.0pt" bord';
    wwv_flow_api.g_varchar2_table(466) := 'er-end-width="0.5pt" padding-bottom="0.0pt" border-start-width="0.5pt">'||wwv_flow.LF||
'                           ';
    wwv_flow_api.g_varchar2_table(467) := '      <fo:block xdofo:xliff-note="S7" orphans="2" widows="2" linefeed-treatment="preserve" start-ind';
    wwv_flow_api.g_varchar2_table(468) := 'ent="0.0pt" text-align="start" padding-bottom="0.0pt" end-indent="0.0pt" padding-top="0.0pt" height=';
    wwv_flow_api.g_varchar2_table(469) := '"0.0pt">'||wwv_flow.LF||
'                                    <fo:inline font-family="Calibri Light" height="10.0pt"';
    wwv_flow_api.g_varchar2_table(470) := ' font-weight="bold" font-family-generic="swiss" white-space-collapse="false" style-name="Normal" fon';
    wwv_flow_api.g_varchar2_table(471) := 't-size="10.0pt">'||wwv_flow.LF||
'                                       <xsl:value-of select="(.//S7)[1]" xdofo:fie';
    wwv_flow_api.g_varchar2_table(472) := 'ld-name="S7"/>'||wwv_flow.LF||
'                                    </fo:inline>'||wwv_flow.LF||
'                                 <';
    wwv_flow_api.g_varchar2_table(473) := '/fo:block>'||wwv_flow.LF||
'                              </fo:table-cell>'||wwv_flow.LF||
'                              <fo:table-';
    wwv_flow_api.g_varchar2_table(474) := 'cell padding-start="5.15pt" vertical-align="top" border-bottom="0.5pt solid #000000" border-end-colo';
    wwv_flow_api.g_varchar2_table(475) := 'r="#000000" padding-top="0.0pt" border-end-style="solid" border-start-color="#000000" padding-end="5';
    wwv_flow_api.g_varchar2_table(476) := '.15pt" number-columns-spanned="1" border-top="0.5pt solid #000000" border-start-style="solid" height';
    wwv_flow_api.g_varchar2_table(477) := '="0.0pt" border-end-width="0.5pt" padding-bottom="0.0pt" border-start-width="0.5pt">'||wwv_flow.LF||
'              ';
    wwv_flow_api.g_varchar2_table(478) := '                   <fo:block xdofo:xliff-note="S8" orphans="2" widows="2" linefeed-treatment="preser';
    wwv_flow_api.g_varchar2_table(479) := 've" start-indent="0.0pt" text-align="start" padding-bottom="0.0pt" end-indent="0.0pt" padding-top="0';
    wwv_flow_api.g_varchar2_table(480) := '.0pt" height="0.0pt">'||wwv_flow.LF||
'                                    <fo:inline font-family="Calibri Light" he';
    wwv_flow_api.g_varchar2_table(481) := 'ight="10.0pt" font-weight="bold" font-family-generic="swiss" white-space-collapse="false" style-name';
    wwv_flow_api.g_varchar2_table(482) := '="Normal" font-size="10.0pt">'||wwv_flow.LF||
'                                       <xsl:value-of select="(.//S8)[';
    wwv_flow_api.g_varchar2_table(483) := '1]" xdofo:field-name="S8"/>'||wwv_flow.LF||
'                                    </fo:inline>'||wwv_flow.LF||
'                     ';
    wwv_flow_api.g_varchar2_table(484) := '            </fo:block>'||wwv_flow.LF||
'                              </fo:table-cell>'||wwv_flow.LF||
'                           ';
    wwv_flow_api.g_varchar2_table(485) := '   <fo:table-cell padding-start="5.15pt" vertical-align="top" border-bottom="0.5pt solid #000000" bo';
    wwv_flow_api.g_varchar2_table(486) := 'rder-end-color="#000000" padding-top="0.0pt" border-end-style="solid" border-start-color="#000000" p';
    wwv_flow_api.g_varchar2_table(487) := 'adding-end="5.15pt" number-columns-spanned="1" border-top="0.5pt solid #000000" border-start-style="';
    wwv_flow_api.g_varchar2_table(488) := 'solid" height="0.0pt" border-end-width="0.5pt" padding-bottom="0.0pt" border-start-width="0.5pt">'||wwv_flow.LF||
' ';
    wwv_flow_api.g_varchar2_table(489) := '                                <fo:block xdofo:xliff-note="S9" orphans="2" widows="2" linefeed-trea';
    wwv_flow_api.g_varchar2_table(490) := 'tment="preserve" start-indent="0.0pt" text-align="start" padding-bottom="0.0pt" end-indent="0.0pt" p';
    wwv_flow_api.g_varchar2_table(491) := 'adding-top="0.0pt" height="0.0pt">'||wwv_flow.LF||
'                                    <fo:inline font-family="Cali';
    wwv_flow_api.g_varchar2_table(492) := 'bri Light" height="10.0pt" font-weight="bold" font-family-generic="swiss" white-space-collapse="fals';
    wwv_flow_api.g_varchar2_table(493) := 'e" style-name="Normal" font-size="10.0pt">'||wwv_flow.LF||
'                                       <xsl:value-of sel';
    wwv_flow_api.g_varchar2_table(494) := 'ect="(.//S9)[1]" xdofo:field-name="S9"/>'||wwv_flow.LF||
'                                    </fo:inline>'||wwv_flow.LF||
'        ';
    wwv_flow_api.g_varchar2_table(495) := '                         </fo:block>'||wwv_flow.LF||
'                              </fo:table-cell>'||wwv_flow.LF||
'              ';
    wwv_flow_api.g_varchar2_table(496) := '                <fo:table-cell padding-start="5.15pt" vertical-align="top" border-bottom="0.5pt soli';
    wwv_flow_api.g_varchar2_table(497) := 'd #000000" border-end-color="#000000" padding-top="0.0pt" border-end-style="solid" border-start-colo';
    wwv_flow_api.g_varchar2_table(498) := 'r="#000000" padding-end="5.15pt" number-columns-spanned="1" border-top="0.5pt solid #000000" border-';
    wwv_flow_api.g_varchar2_table(499) := 'start-style="solid" height="0.0pt" border-end-width="0.5pt" padding-bottom="0.0pt" border-start-widt';
    wwv_flow_api.g_varchar2_table(500) := 'h="0.5pt">'||wwv_flow.LF||
'                                 <fo:block xdofo:xliff-note="S10" orphans="2" widows="2"';
end;
/
begin
    wwv_flow_api.g_varchar2_table(501) := ' linefeed-treatment="preserve" start-indent="0.0pt" text-align="start" padding-bottom="0.0pt" end-in';
    wwv_flow_api.g_varchar2_table(502) := 'dent="0.0pt" padding-top="0.0pt" height="0.0pt">'||wwv_flow.LF||
'                                    <fo:inline fon';
    wwv_flow_api.g_varchar2_table(503) := 't-family="Calibri Light" height="10.0pt" font-weight="bold" font-family-generic="swiss" white-space-';
    wwv_flow_api.g_varchar2_table(504) := 'collapse="false" style-name="Normal" font-size="10.0pt">'||wwv_flow.LF||
'                                       <xs';
    wwv_flow_api.g_varchar2_table(505) := 'l:value-of select="(.//S10)[1]" xdofo:field-name="S10"/>'||wwv_flow.LF||
'                                    </fo:i';
    wwv_flow_api.g_varchar2_table(506) := 'nline>'||wwv_flow.LF||
'                                 </fo:block>'||wwv_flow.LF||
'                              </fo:table-cell>';
    wwv_flow_api.g_varchar2_table(507) := ''||wwv_flow.LF||
'                              <fo:table-cell padding-start="5.15pt" vertical-align="top" border-bo';
    wwv_flow_api.g_varchar2_table(508) := 'ttom="0.5pt solid #000000" border-end-color="#000000" padding-top="0.0pt" border-end-style="solid" b';
    wwv_flow_api.g_varchar2_table(509) := 'order-start-color="#000000" padding-end="5.15pt" number-columns-spanned="1" border-top="0.5pt solid ';
    wwv_flow_api.g_varchar2_table(510) := '#000000" border-start-style="solid" height="0.0pt" border-end-width="0.5pt" padding-bottom="0.0pt" b';
    wwv_flow_api.g_varchar2_table(511) := 'order-start-width="0.5pt">'||wwv_flow.LF||
'                                 <fo:block xdofo:xliff-note="S11" orphan';
    wwv_flow_api.g_varchar2_table(512) := 's="2" widows="2" linefeed-treatment="preserve" start-indent="0.0pt" text-align="start" padding-botto';
    wwv_flow_api.g_varchar2_table(513) := 'm="0.0pt" end-indent="0.0pt" padding-top="0.0pt" height="0.0pt">'||wwv_flow.LF||
'                                  ';
    wwv_flow_api.g_varchar2_table(514) := '  <fo:inline font-family="Calibri Light" height="10.0pt" font-weight="bold" font-family-generic="swi';
    wwv_flow_api.g_varchar2_table(515) := 'ss" white-space-collapse="false" style-name="Normal" font-size="10.0pt">'||wwv_flow.LF||
'                          ';
    wwv_flow_api.g_varchar2_table(516) := '             <xsl:value-of select="(.//S11)[1]" xdofo:field-name="S11"/>'||wwv_flow.LF||
'                          ';
    wwv_flow_api.g_varchar2_table(517) := '          </fo:inline>'||wwv_flow.LF||
'                                 </fo:block>'||wwv_flow.LF||
'                              ';
    wwv_flow_api.g_varchar2_table(518) := '</fo:table-cell>'||wwv_flow.LF||
'                              <fo:table-cell padding-start="5.15pt" vertical-align';
    wwv_flow_api.g_varchar2_table(519) := '="top" border-bottom="0.5pt solid #000000" border-end-color="#000000" padding-top="0.0pt" border-end';
    wwv_flow_api.g_varchar2_table(520) := '-style="solid" border-start-color="#000000" padding-end="5.15pt" number-columns-spanned="1" border-t';
    wwv_flow_api.g_varchar2_table(521) := 'op="0.5pt solid #000000" border-start-style="solid" height="0.0pt" border-end-width="0.5pt" padding-';
    wwv_flow_api.g_varchar2_table(522) := 'bottom="0.0pt" border-start-width="0.5pt">'||wwv_flow.LF||
'                                 <fo:block xdofo:xliff-n';
    wwv_flow_api.g_varchar2_table(523) := 'ote="S12" orphans="2" widows="2" linefeed-treatment="preserve" start-indent="0.0pt" text-align="star';
    wwv_flow_api.g_varchar2_table(524) := 't" padding-bottom="0.0pt" end-indent="0.0pt" padding-top="0.0pt" height="0.0pt">'||wwv_flow.LF||
'                  ';
    wwv_flow_api.g_varchar2_table(525) := '                  <fo:inline font-family="Calibri Light" height="10.0pt" font-weight="bold" font-fam';
    wwv_flow_api.g_varchar2_table(526) := 'ily-generic="swiss" white-space-collapse="false" style-name="Normal" font-size="10.0pt">'||wwv_flow.LF||
'          ';
    wwv_flow_api.g_varchar2_table(527) := '                             <xsl:value-of select="(.//S12)[1]" xdofo:field-name="S12"/>'||wwv_flow.LF||
'          ';
    wwv_flow_api.g_varchar2_table(528) := '                          </fo:inline>'||wwv_flow.LF||
'                                 </fo:block>'||wwv_flow.LF||
'              ';
    wwv_flow_api.g_varchar2_table(529) := '                </fo:table-cell>'||wwv_flow.LF||
'                              <fo:table-cell padding-start="5.15pt';
    wwv_flow_api.g_varchar2_table(530) := '" vertical-align="top" border-bottom="0.5pt solid #000000" border-end-color="#000000" padding-top="0';
    wwv_flow_api.g_varchar2_table(531) := '.0pt" border-end-style="solid" border-start-color="#000000" padding-end="5.15pt" number-columns-span';
    wwv_flow_api.g_varchar2_table(532) := 'ned="1" border-top="0.5pt solid #000000" border-start-style="solid" height="0.0pt" border-end-width=';
    wwv_flow_api.g_varchar2_table(533) := '"0.5pt" padding-bottom="0.0pt" border-start-width="0.5pt">'||wwv_flow.LF||
'                                 <fo:blo';
    wwv_flow_api.g_varchar2_table(534) := 'ck xdofo:xliff-note="S13" orphans="2" widows="2" linefeed-treatment="preserve" start-indent="0.0pt" ';
    wwv_flow_api.g_varchar2_table(535) := 'text-align="start" padding-bottom="0.0pt" end-indent="0.0pt" padding-top="0.0pt" height="0.0pt">'||wwv_flow.LF||
'  ';
    wwv_flow_api.g_varchar2_table(536) := '                                  <fo:inline font-family="Calibri Light" height="10.0pt" font-weight';
    wwv_flow_api.g_varchar2_table(537) := '="bold" font-family-generic="swiss" white-space-collapse="false" style-name="Normal" font-size="10.0';
    wwv_flow_api.g_varchar2_table(538) := 'pt">'||wwv_flow.LF||
'                                       <xsl:value-of select="(.//S13)[1]" xdofo:field-name="S1';
    wwv_flow_api.g_varchar2_table(539) := '3"/>'||wwv_flow.LF||
'                                    </fo:inline>'||wwv_flow.LF||
'                                 </fo:block>';
    wwv_flow_api.g_varchar2_table(540) := ''||wwv_flow.LF||
'                              </fo:table-cell>'||wwv_flow.LF||
'                              <fo:table-cell paddi';
    wwv_flow_api.g_varchar2_table(541) := 'ng-start="5.15pt" vertical-align="top" border-bottom="0.5pt solid #000000" border-end-color="#000000';
    wwv_flow_api.g_varchar2_table(542) := '" padding-top="0.0pt" border-end-style="solid" border-start-color="#000000" padding-end="5.15pt" num';
    wwv_flow_api.g_varchar2_table(543) := 'ber-columns-spanned="1" border-top="0.5pt solid #000000" border-start-style="solid" height="0.0pt" b';
    wwv_flow_api.g_varchar2_table(544) := 'order-end-width="0.5pt" padding-bottom="0.0pt" border-start-width="0.5pt">'||wwv_flow.LF||
'                        ';
    wwv_flow_api.g_varchar2_table(545) := '         <fo:block xdofo:xliff-note="S14" orphans="2" widows="2" linefeed-treatment="preserve" start';
    wwv_flow_api.g_varchar2_table(546) := '-indent="0.0pt" text-align="start" padding-bottom="0.0pt" end-indent="0.0pt" padding-top="0.0pt" hei';
    wwv_flow_api.g_varchar2_table(547) := 'ght="0.0pt">'||wwv_flow.LF||
'                                    <fo:inline font-family="Calibri Light" height="10.';
    wwv_flow_api.g_varchar2_table(548) := '0pt" font-weight="bold" font-family-generic="swiss" white-space-collapse="false" style-name="Normal"';
    wwv_flow_api.g_varchar2_table(549) := ' font-size="10.0pt">'||wwv_flow.LF||
'                                       <xsl:value-of select="(.//S14)[1]" xdof';
    wwv_flow_api.g_varchar2_table(550) := 'o:field-name="S14"/>'||wwv_flow.LF||
'                                    </fo:inline>'||wwv_flow.LF||
'                            ';
    wwv_flow_api.g_varchar2_table(551) := '     </fo:block>'||wwv_flow.LF||
'                              </fo:table-cell>'||wwv_flow.LF||
'                              <fo:';
    wwv_flow_api.g_varchar2_table(552) := 'table-cell padding-start="5.15pt" vertical-align="top" border-bottom="0.5pt solid #000000" border-en';
    wwv_flow_api.g_varchar2_table(553) := 'd-color="#000000" padding-top="0.0pt" border-end-style="solid" border-start-color="#000000" padding-';
    wwv_flow_api.g_varchar2_table(554) := 'end="5.15pt" number-columns-spanned="1" border-top="0.5pt solid #000000" border-start-style="solid" ';
    wwv_flow_api.g_varchar2_table(555) := 'height="0.0pt" border-end-width="0.5pt" padding-bottom="0.0pt" border-start-width="0.5pt">'||wwv_flow.LF||
'        ';
    wwv_flow_api.g_varchar2_table(556) := '                         <fo:block xdofo:xliff-note="S15" orphans="2" widows="2" linefeed-treatment=';
    wwv_flow_api.g_varchar2_table(557) := '"preserve" start-indent="0.0pt" text-align="start" padding-bottom="0.0pt" end-indent="0.0pt" padding';
    wwv_flow_api.g_varchar2_table(558) := '-top="0.0pt" height="0.0pt">'||wwv_flow.LF||
'                                    <fo:inline font-family="Calibri Li';
    wwv_flow_api.g_varchar2_table(559) := 'ght" height="10.0pt" font-weight="bold" font-family-generic="swiss" white-space-collapse="false" sty';
    wwv_flow_api.g_varchar2_table(560) := 'le-name="Normal" font-size="10.0pt">'||wwv_flow.LF||
'                                       <xsl:value-of select="(';
    wwv_flow_api.g_varchar2_table(561) := './/S15)[1]" xdofo:field-name="S15"/>'||wwv_flow.LF||
'                                    </fo:inline>'||wwv_flow.LF||
'            ';
    wwv_flow_api.g_varchar2_table(562) := '                     </fo:block>'||wwv_flow.LF||
'                              </fo:table-cell>'||wwv_flow.LF||
'                  ';
    wwv_flow_api.g_varchar2_table(563) := '            <fo:table-cell padding-start="5.15pt" vertical-align="top" border-bottom="0.5pt solid #0';
    wwv_flow_api.g_varchar2_table(564) := '00000" border-end-color="#000000" padding-top="0.0pt" border-end-style="solid" border-start-color="#';
    wwv_flow_api.g_varchar2_table(565) := '000000" padding-end="5.15pt" number-columns-spanned="1" border-top="0.5pt solid #000000" border-star';
    wwv_flow_api.g_varchar2_table(566) := 't-style="solid" height="0.0pt" border-end-width="0.5pt" padding-bottom="0.0pt" border-start-width="0';
    wwv_flow_api.g_varchar2_table(567) := '.5pt">'||wwv_flow.LF||
'                                 <fo:block xdofo:xliff-note="S16" orphans="2" widows="2" lin';
    wwv_flow_api.g_varchar2_table(568) := 'efeed-treatment="preserve" start-indent="0.0pt" text-align="start" padding-bottom="0.0pt" end-indent';
    wwv_flow_api.g_varchar2_table(569) := '="0.0pt" padding-top="0.0pt" height="0.0pt">'||wwv_flow.LF||
'                                    <fo:inline font-fa';
    wwv_flow_api.g_varchar2_table(570) := 'mily="Calibri Light" height="10.0pt" font-weight="bold" font-family-generic="swiss" white-space-coll';
    wwv_flow_api.g_varchar2_table(571) := 'apse="false" style-name="Normal" font-size="10.0pt">'||wwv_flow.LF||
'                                       <xsl:va';
    wwv_flow_api.g_varchar2_table(572) := 'lue-of select="(.//S16)[1]" xdofo:field-name="S16"/>'||wwv_flow.LF||
'                                    </fo:inlin';
    wwv_flow_api.g_varchar2_table(573) := 'e>'||wwv_flow.LF||
'                                 </fo:block>'||wwv_flow.LF||
'                              </fo:table-cell>'||wwv_flow.LF||
'  ';
    wwv_flow_api.g_varchar2_table(574) := '                            <fo:table-cell padding-start="5.15pt" vertical-align="top" border-bottom';
    wwv_flow_api.g_varchar2_table(575) := '="0.5pt solid #000000" border-end-color="#000000" padding-top="0.0pt" border-end-style="solid" borde';
    wwv_flow_api.g_varchar2_table(576) := 'r-start-color="#000000" padding-end="5.15pt" number-columns-spanned="1" border-top="0.5pt solid #000';
    wwv_flow_api.g_varchar2_table(577) := '000" border-start-style="solid" height="0.0pt" border-end-width="0.5pt" padding-bottom="0.0pt" borde';
    wwv_flow_api.g_varchar2_table(578) := 'r-start-width="0.5pt">'||wwv_flow.LF||
'                                 <fo:block xdofo:xliff-note="S17" orphans="2';
    wwv_flow_api.g_varchar2_table(579) := '" widows="2" linefeed-treatment="preserve" start-indent="0.0pt" text-align="start" padding-bottom="0';
    wwv_flow_api.g_varchar2_table(580) := '.0pt" end-indent="0.0pt" padding-top="0.0pt" height="0.0pt">'||wwv_flow.LF||
'                                    <f';
    wwv_flow_api.g_varchar2_table(581) := 'o:inline font-family="Calibri Light" height="10.0pt" font-weight="bold" font-family-generic="swiss" ';
    wwv_flow_api.g_varchar2_table(582) := 'white-space-collapse="false" style-name="Normal" font-size="10.0pt">'||wwv_flow.LF||
'                              ';
    wwv_flow_api.g_varchar2_table(583) := '         <xsl:value-of select="(.//S17)[1]" xdofo:field-name="S17"/>'||wwv_flow.LF||
'                              ';
    wwv_flow_api.g_varchar2_table(584) := '      </fo:inline>'||wwv_flow.LF||
'                                 </fo:block>'||wwv_flow.LF||
'                              </fo';
    wwv_flow_api.g_varchar2_table(585) := ':table-cell>'||wwv_flow.LF||
'                              <fo:table-cell padding-start="5.15pt" vertical-align="to';
    wwv_flow_api.g_varchar2_table(586) := 'p" border-bottom="0.5pt solid #000000" border-end-color="#000000" padding-top="0.0pt" border-end-sty';
    wwv_flow_api.g_varchar2_table(587) := 'le="solid" border-start-color="#000000" padding-end="5.15pt" number-columns-spanned="1" border-top="';
    wwv_flow_api.g_varchar2_table(588) := '0.5pt solid #000000" border-start-style="solid" height="0.0pt" border-end-width="0.5pt" padding-bott';
    wwv_flow_api.g_varchar2_table(589) := 'om="0.0pt" border-start-width="0.5pt">'||wwv_flow.LF||
'                                 <fo:block xdofo:xliff-note=';
    wwv_flow_api.g_varchar2_table(590) := '"S18" orphans="2" widows="2" linefeed-treatment="preserve" start-indent="0.0pt" text-align="start" p';
    wwv_flow_api.g_varchar2_table(591) := 'adding-bottom="0.0pt" end-indent="0.0pt" padding-top="0.0pt" height="0.0pt">'||wwv_flow.LF||
'                      ';
    wwv_flow_api.g_varchar2_table(592) := '              <fo:inline font-family="Calibri Light" height="10.0pt" font-weight="bold" font-family-';
    wwv_flow_api.g_varchar2_table(593) := 'generic="swiss" white-space-collapse="false" style-name="Normal" font-size="10.0pt">'||wwv_flow.LF||
'              ';
    wwv_flow_api.g_varchar2_table(594) := '                         <xsl:value-of select="(.//S18)[1]" xdofo:field-name="S18"/>'||wwv_flow.LF||
'              ';
    wwv_flow_api.g_varchar2_table(595) := '                      </fo:inline>'||wwv_flow.LF||
'                                 </fo:block>'||wwv_flow.LF||
'                  ';
    wwv_flow_api.g_varchar2_table(596) := '            </fo:table-cell>'||wwv_flow.LF||
'                              <fo:table-cell padding-start="5.15pt" ve';
    wwv_flow_api.g_varchar2_table(597) := 'rtical-align="top" border-bottom="0.5pt solid #000000" border-end-color="#000000" padding-top="0.0pt';
    wwv_flow_api.g_varchar2_table(598) := '" border-end-style="solid" border-start-color="#000000" padding-end="5.15pt" number-columns-spanned=';
    wwv_flow_api.g_varchar2_table(599) := '"1" border-top="0.5pt solid #000000" border-start-style="solid" height="0.0pt" border-end-width="0.5';
    wwv_flow_api.g_varchar2_table(600) := 'pt" padding-bottom="0.0pt" border-start-width="0.5pt">'||wwv_flow.LF||
'                                 <fo:block x';
    wwv_flow_api.g_varchar2_table(601) := 'dofo:xliff-note="S19" orphans="2" widows="2" linefeed-treatment="preserve" start-indent="0.0pt" text';
    wwv_flow_api.g_varchar2_table(602) := '-align="start" padding-bottom="0.0pt" end-indent="0.0pt" padding-top="0.0pt" height="0.0pt">'||wwv_flow.LF||
'      ';
    wwv_flow_api.g_varchar2_table(603) := '                              <fo:inline font-family="Calibri Light" height="10.0pt" font-weight="bo';
    wwv_flow_api.g_varchar2_table(604) := 'ld" font-family-generic="swiss" white-space-collapse="false" style-name="Normal" font-size="10.0pt">';
    wwv_flow_api.g_varchar2_table(605) := ''||wwv_flow.LF||
'                                       <xsl:value-of select="(.//S19)[1]" xdofo:field-name="S19"/>';
    wwv_flow_api.g_varchar2_table(606) := ''||wwv_flow.LF||
'                                    </fo:inline>'||wwv_flow.LF||
'                                 </fo:block>'||wwv_flow.LF||
'  ';
    wwv_flow_api.g_varchar2_table(607) := '                            </fo:table-cell>'||wwv_flow.LF||
'                              <fo:table-cell padding-s';
    wwv_flow_api.g_varchar2_table(608) := 'tart="5.15pt" vertical-align="top" border-bottom="0.5pt solid #000000" border-end-color="#000000" pa';
    wwv_flow_api.g_varchar2_table(609) := 'dding-top="0.0pt" border-end-style="solid" border-start-color="#000000" padding-end="5.15pt" number-';
    wwv_flow_api.g_varchar2_table(610) := 'columns-spanned="1" border-top="0.5pt solid #000000" border-start-style="solid" height="0.0pt" borde';
    wwv_flow_api.g_varchar2_table(611) := 'r-end-width="0.5pt" padding-bottom="0.0pt" border-start-width="0.5pt">'||wwv_flow.LF||
'                            ';
    wwv_flow_api.g_varchar2_table(612) := '     <fo:block xdofo:xliff-note="S20" orphans="2" widows="2" linefeed-treatment="preserve" start-ind';
    wwv_flow_api.g_varchar2_table(613) := 'ent="0.0pt" text-align="start" padding-bottom="0.0pt" end-indent="0.0pt" padding-top="0.0pt" height=';
    wwv_flow_api.g_varchar2_table(614) := '"0.0pt">'||wwv_flow.LF||
'                                    <fo:inline font-family="Calibri Light" height="10.0pt"';
    wwv_flow_api.g_varchar2_table(615) := ' font-weight="bold" font-family-generic="swiss" white-space-collapse="false" style-name="Normal" fon';
    wwv_flow_api.g_varchar2_table(616) := 't-size="10.0pt">'||wwv_flow.LF||
'                                       <xsl:value-of select="(.//S20)[1]" xdofo:fi';
    wwv_flow_api.g_varchar2_table(617) := 'eld-name="S20"/>'||wwv_flow.LF||
'                                    </fo:inline>'||wwv_flow.LF||
'                                ';
    wwv_flow_api.g_varchar2_table(618) := ' </fo:block>'||wwv_flow.LF||
'                              </fo:table-cell>'||wwv_flow.LF||
'                              <fo:tabl';
    wwv_flow_api.g_varchar2_table(619) := 'e-cell padding-start="5.15pt" vertical-align="top" border-bottom="0.5pt solid #000000" border-end-co';
    wwv_flow_api.g_varchar2_table(620) := 'lor="#000000" padding-top="0.0pt" border-end-style="solid" border-start-color="#000000" padding-end=';
    wwv_flow_api.g_varchar2_table(621) := '"5.15pt" number-columns-spanned="1" border-top="0.5pt solid #000000" border-start-style="solid" heig';
    wwv_flow_api.g_varchar2_table(622) := 'ht="0.0pt" border-end-width="0.5pt" padding-bottom="0.0pt" border-start-width="0.5pt">'||wwv_flow.LF||
'            ';
    wwv_flow_api.g_varchar2_table(623) := '                     <fo:block xdofo:xliff-note="S21" orphans="2" widows="2" linefeed-treatment="pre';
    wwv_flow_api.g_varchar2_table(624) := 'serve" start-indent="0.0pt" text-align="start" padding-bottom="0.0pt" end-indent="0.0pt" padding-top';
    wwv_flow_api.g_varchar2_table(625) := '="0.0pt" height="0.0pt">'||wwv_flow.LF||
'                                    <fo:inline font-family="Calibri Light"';
    wwv_flow_api.g_varchar2_table(626) := ' height="10.0pt" font-weight="bold" font-family-generic="swiss" white-space-collapse="false" style-n';
    wwv_flow_api.g_varchar2_table(627) := 'ame="Normal" font-size="10.0pt">'||wwv_flow.LF||
'                                       <xsl:value-of select="(.//S';
    wwv_flow_api.g_varchar2_table(628) := '21)[1]" xdofo:field-name="S21"/>'||wwv_flow.LF||
'                                    </fo:inline>'||wwv_flow.LF||
'                ';
    wwv_flow_api.g_varchar2_table(629) := '                 </fo:block>'||wwv_flow.LF||
'                              </fo:table-cell>'||wwv_flow.LF||
'                      ';
    wwv_flow_api.g_varchar2_table(630) := '        <fo:table-cell padding-start="5.15pt" vertical-align="top" border-bottom="0.5pt solid #00000';
    wwv_flow_api.g_varchar2_table(631) := '0" border-end-color="#000000" padding-top="0.0pt" border-end-style="solid" border-start-color="#0000';
    wwv_flow_api.g_varchar2_table(632) := '00" padding-end="5.15pt" number-columns-spanned="1" border-top="0.5pt solid #000000" border-start-st';
    wwv_flow_api.g_varchar2_table(633) := 'yle="solid" height="0.0pt" border-end-width="0.5pt" padding-bottom="0.0pt" border-start-width="0.5pt';
    wwv_flow_api.g_varchar2_table(634) := '">'||wwv_flow.LF||
'                                 <fo:block xdofo:xliff-note="S22" orphans="2" widows="2" linefee';
    wwv_flow_api.g_varchar2_table(635) := 'd-treatment="preserve" start-indent="0.0pt" text-align="start" padding-bottom="0.0pt" end-indent="0.';
    wwv_flow_api.g_varchar2_table(636) := '0pt" padding-top="0.0pt" height="0.0pt">'||wwv_flow.LF||
'                                    <fo:inline font-family';
    wwv_flow_api.g_varchar2_table(637) := '="Calibri Light" height="10.0pt" font-weight="bold" font-family-generic="swiss" white-space-collapse';
    wwv_flow_api.g_varchar2_table(638) := '="false" style-name="Normal" font-size="10.0pt">'||wwv_flow.LF||
'                                       <xsl:value-';
    wwv_flow_api.g_varchar2_table(639) := 'of select="(.//S22)[1]" xdofo:field-name="S22"/>'||wwv_flow.LF||
'                                    </fo:inline>'||wwv_flow.LF||
'';
    wwv_flow_api.g_varchar2_table(640) := '                                 </fo:block>'||wwv_flow.LF||
'                              </fo:table-cell>'||wwv_flow.LF||
'      ';
    wwv_flow_api.g_varchar2_table(641) := '                        <fo:table-cell padding-start="5.15pt" vertical-align="top" border-bottom="0.';
    wwv_flow_api.g_varchar2_table(642) := '5pt solid #000000" border-end-color="#000000" padding-top="0.0pt" border-end-style="solid" border-st';
    wwv_flow_api.g_varchar2_table(643) := 'art-color="#000000" padding-end="5.15pt" number-columns-spanned="1" border-top="0.5pt solid #000000"';
    wwv_flow_api.g_varchar2_table(644) := ' border-start-style="solid" height="0.0pt" border-end-width="0.5pt" padding-bottom="0.0pt" border-st';
    wwv_flow_api.g_varchar2_table(645) := 'art-width="0.5pt">'||wwv_flow.LF||
'                                 <fo:block xdofo:xliff-note="S23" orphans="2" wi';
    wwv_flow_api.g_varchar2_table(646) := 'dows="2" linefeed-treatment="preserve" start-indent="0.0pt" text-align="start" padding-bottom="0.0pt';
    wwv_flow_api.g_varchar2_table(647) := '" end-indent="0.0pt" padding-top="0.0pt" height="0.0pt">'||wwv_flow.LF||
'                                    <fo:in';
    wwv_flow_api.g_varchar2_table(648) := 'line font-family="Calibri Light" height="10.0pt" font-weight="bold" font-family-generic="swiss" whit';
    wwv_flow_api.g_varchar2_table(649) := 'e-space-collapse="false" style-name="Normal" font-size="10.0pt">'||wwv_flow.LF||
'                                  ';
    wwv_flow_api.g_varchar2_table(650) := '     <xsl:value-of select="(.//S23)[1]" xdofo:field-name="S23"/>'||wwv_flow.LF||
'                                  ';
    wwv_flow_api.g_varchar2_table(651) := '  </fo:inline>'||wwv_flow.LF||
'                                 </fo:block>'||wwv_flow.LF||
'                              </fo:tab';
    wwv_flow_api.g_varchar2_table(652) := 'le-cell>'||wwv_flow.LF||
'                              <fo:table-cell padding-start="5.15pt" vertical-align="top" b';
    wwv_flow_api.g_varchar2_table(653) := 'order-bottom="0.5pt solid #000000" border-end-color="#000000" padding-top="0.0pt" border-end-style="';
    wwv_flow_api.g_varchar2_table(654) := 'solid" border-start-color="#000000" padding-end="5.15pt" number-columns-spanned="1" border-top="0.5p';
    wwv_flow_api.g_varchar2_table(655) := 't solid #000000" border-start-style="solid" height="0.0pt" border-end-width="0.5pt" padding-bottom="';
    wwv_flow_api.g_varchar2_table(656) := '0.0pt" border-start-width="0.5pt">'||wwv_flow.LF||
'                                 <fo:block xdofo:xliff-note="S24';
    wwv_flow_api.g_varchar2_table(657) := '" orphans="2" widows="2" linefeed-treatment="preserve" start-indent="0.0pt" text-align="start" paddi';
    wwv_flow_api.g_varchar2_table(658) := 'ng-bottom="0.0pt" end-indent="0.0pt" padding-top="0.0pt" height="0.0pt">'||wwv_flow.LF||
'                          ';
    wwv_flow_api.g_varchar2_table(659) := '          <fo:inline font-family="Calibri Light" height="10.0pt" font-weight="bold" font-family-gene';
    wwv_flow_api.g_varchar2_table(660) := 'ric="swiss" white-space-collapse="false" style-name="Normal" font-size="10.0pt">'||wwv_flow.LF||
'                  ';
    wwv_flow_api.g_varchar2_table(661) := '                     <xsl:value-of select="(.//S24)[1]" xdofo:field-name="S24"/>'||wwv_flow.LF||
'                  ';
    wwv_flow_api.g_varchar2_table(662) := '                  </fo:inline>'||wwv_flow.LF||
'                                 </fo:block>'||wwv_flow.LF||
'                      ';
    wwv_flow_api.g_varchar2_table(663) := '        </fo:table-cell>'||wwv_flow.LF||
'                              <fo:table-cell padding-start="5.15pt" vertic';
    wwv_flow_api.g_varchar2_table(664) := 'al-align="top" border-bottom="0.5pt solid #000000" border-end-color="#000000" padding-top="0.0pt" bo';
    wwv_flow_api.g_varchar2_table(665) := 'rder-end-style="solid" border-start-color="#000000" padding-end="5.15pt" number-columns-spanned="1" ';
    wwv_flow_api.g_varchar2_table(666) := 'border-top="0.5pt solid #000000" border-start-style="solid" height="0.0pt" border-end-width="0.5pt" ';
    wwv_flow_api.g_varchar2_table(667) := 'padding-bottom="0.0pt" border-start-width="0.5pt">'||wwv_flow.LF||
'                                 <fo:block xdofo';
    wwv_flow_api.g_varchar2_table(668) := ':xliff-note="S25" orphans="2" widows="2" linefeed-treatment="preserve" start-indent="0.0pt" text-ali';
    wwv_flow_api.g_varchar2_table(669) := 'gn="start" padding-bottom="0.0pt" end-indent="0.0pt" padding-top="0.0pt" height="0.0pt">'||wwv_flow.LF||
'          ';
    wwv_flow_api.g_varchar2_table(670) := '                          <fo:inline font-family="Calibri Light" height="10.0pt" font-weight="bold" ';
    wwv_flow_api.g_varchar2_table(671) := 'font-family-generic="swiss" white-space-collapse="false" style-name="Normal" font-size="10.0pt">'||wwv_flow.LF||
'  ';
    wwv_flow_api.g_varchar2_table(672) := '                                     <xsl:value-of select="(.//S25)[1]" xdofo:field-name="S25"/>'||wwv_flow.LF||
'  ';
    wwv_flow_api.g_varchar2_table(673) := '                                  </fo:inline>'||wwv_flow.LF||
'                                 </fo:block>'||wwv_flow.LF||
'      ';
    wwv_flow_api.g_varchar2_table(674) := '                        </fo:table-cell>'||wwv_flow.LF||
'                              <fo:table-cell padding-start';
    wwv_flow_api.g_varchar2_table(675) := '="5.15pt" vertical-align="top" border-bottom="0.5pt solid #000000" border-end-color="#000000" paddin';
    wwv_flow_api.g_varchar2_table(676) := 'g-top="0.0pt" border-end-style="solid" border-start-color="#000000" padding-end="5.15pt" number-colu';
    wwv_flow_api.g_varchar2_table(677) := 'mns-spanned="1" border-top="0.5pt solid #000000" border-start-style="solid" height="0.0pt" border-en';
    wwv_flow_api.g_varchar2_table(678) := 'd-width="0.5pt" padding-bottom="0.0pt" border-start-width="0.5pt">'||wwv_flow.LF||
'                                ';
    wwv_flow_api.g_varchar2_table(679) := ' <fo:block xdofo:xliff-note="S26" orphans="2" widows="2" linefeed-treatment="preserve" start-indent=';
    wwv_flow_api.g_varchar2_table(680) := '"0.0pt" text-align="start" padding-bottom="0.0pt" end-indent="0.0pt" padding-top="0.0pt" height="0.0';
    wwv_flow_api.g_varchar2_table(681) := 'pt">'||wwv_flow.LF||
'                                    <fo:inline font-family="Calibri Light" height="10.0pt" fon';
    wwv_flow_api.g_varchar2_table(682) := 't-weight="bold" font-family-generic="swiss" white-space-collapse="false" style-name="Normal" font-si';
    wwv_flow_api.g_varchar2_table(683) := 'ze="10.0pt">'||wwv_flow.LF||
'                                       <xsl:value-of select="(.//S26)[1]" xdofo:field-';
    wwv_flow_api.g_varchar2_table(684) := 'name="S26"/>'||wwv_flow.LF||
'                                    </fo:inline>'||wwv_flow.LF||
'                                 </f';
    wwv_flow_api.g_varchar2_table(685) := 'o:block>'||wwv_flow.LF||
'                              </fo:table-cell>'||wwv_flow.LF||
'                              <fo:table-ce';
    wwv_flow_api.g_varchar2_table(686) := 'll padding-start="5.15pt" vertical-align="top" border-bottom="0.5pt solid #000000" border-end-color=';
    wwv_flow_api.g_varchar2_table(687) := '"#000000" padding-top="0.0pt" border-end-style="solid" border-start-color="#000000" padding-end="5.1';
    wwv_flow_api.g_varchar2_table(688) := '5pt" number-columns-spanned="1" border-top="0.5pt solid #000000" border-start-style="solid" height="';
    wwv_flow_api.g_varchar2_table(689) := '0.0pt" border-end-width="0.5pt" padding-bottom="0.0pt" border-start-width="0.5pt">'||wwv_flow.LF||
'                ';
    wwv_flow_api.g_varchar2_table(690) := '                 <fo:block xdofo:xliff-note="S27" orphans="2" widows="2" linefeed-treatment="preserv';
    wwv_flow_api.g_varchar2_table(691) := 'e" start-indent="0.0pt" text-align="start" padding-bottom="0.0pt" end-indent="0.0pt" padding-top="0.';
    wwv_flow_api.g_varchar2_table(692) := '0pt" height="0.0pt">'||wwv_flow.LF||
'                                    <fo:inline font-family="Calibri Light" hei';
    wwv_flow_api.g_varchar2_table(693) := 'ght="10.0pt" font-weight="bold" font-family-generic="swiss" white-space-collapse="false" style-name=';
    wwv_flow_api.g_varchar2_table(694) := '"Normal" font-size="10.0pt">'||wwv_flow.LF||
'                                       <xsl:value-of select="(.//S27)[';
    wwv_flow_api.g_varchar2_table(695) := '1]" xdofo:field-name="S27"/>'||wwv_flow.LF||
'                                    </fo:inline>'||wwv_flow.LF||
'                    ';
    wwv_flow_api.g_varchar2_table(696) := '             </fo:block>'||wwv_flow.LF||
'                              </fo:table-cell>'||wwv_flow.LF||
'                          ';
    wwv_flow_api.g_varchar2_table(697) := '    <fo:table-cell padding-start="5.15pt" vertical-align="top" border-bottom="0.5pt solid #000000" b';
    wwv_flow_api.g_varchar2_table(698) := 'order-end-color="#000000" padding-top="0.0pt" border-end-style="solid" border-start-color="#000000" ';
    wwv_flow_api.g_varchar2_table(699) := 'padding-end="5.15pt" number-columns-spanned="1" border-top="0.5pt solid #000000" border-start-style=';
    wwv_flow_api.g_varchar2_table(700) := '"solid" height="0.0pt" border-end-width="0.5pt" padding-bottom="0.0pt" border-start-width="0.5pt">'||wwv_flow.LF||
'';
    wwv_flow_api.g_varchar2_table(701) := '                                 <fo:block xdofo:xliff-note="S28" orphans="2" widows="2" linefeed-tr';
    wwv_flow_api.g_varchar2_table(702) := 'eatment="preserve" start-indent="0.0pt" text-align="start" padding-bottom="0.0pt" end-indent="0.0pt"';
    wwv_flow_api.g_varchar2_table(703) := ' padding-top="0.0pt" height="0.0pt">'||wwv_flow.LF||
'                                    <fo:inline font-family="Ca';
    wwv_flow_api.g_varchar2_table(704) := 'libri Light" height="10.0pt" font-weight="bold" font-family-generic="swiss" white-space-collapse="fa';
    wwv_flow_api.g_varchar2_table(705) := 'lse" style-name="Normal" font-size="10.0pt">'||wwv_flow.LF||
'                                       <xsl:value-of s';
    wwv_flow_api.g_varchar2_table(706) := 'elect="(.//S28)[1]" xdofo:field-name="S28"/>'||wwv_flow.LF||
'                                    </fo:inline>'||wwv_flow.LF||
'    ';
    wwv_flow_api.g_varchar2_table(707) := '                             </fo:block>'||wwv_flow.LF||
'                              </fo:table-cell>'||wwv_flow.LF||
'          ';
    wwv_flow_api.g_varchar2_table(708) := '                    <fo:table-cell padding-start="5.15pt" vertical-align="top" border-bottom="0.5pt ';
    wwv_flow_api.g_varchar2_table(709) := 'solid #000000" border-end-color="#000000" padding-top="0.0pt" border-end-style="solid" border-start-';
    wwv_flow_api.g_varchar2_table(710) := 'color="#000000" padding-end="5.15pt" number-columns-spanned="1" border-top="0.5pt solid #000000" bor';
    wwv_flow_api.g_varchar2_table(711) := 'der-start-style="solid" height="0.0pt" border-end-width="0.5pt" padding-bottom="0.0pt" border-start-';
    wwv_flow_api.g_varchar2_table(712) := 'width="0.5pt">'||wwv_flow.LF||
'                                 <fo:block xdofo:xliff-note="S29" orphans="2" widows';
    wwv_flow_api.g_varchar2_table(713) := '="2" linefeed-treatment="preserve" start-indent="0.0pt" text-align="start" padding-bottom="0.0pt" en';
    wwv_flow_api.g_varchar2_table(714) := 'd-indent="0.0pt" padding-top="0.0pt" height="0.0pt">'||wwv_flow.LF||
'                                    <fo:inline';
    wwv_flow_api.g_varchar2_table(715) := ' font-family="Calibri Light" height="10.0pt" font-weight="bold" font-family-generic="swiss" white-sp';
    wwv_flow_api.g_varchar2_table(716) := 'ace-collapse="false" style-name="Normal" font-size="10.0pt">'||wwv_flow.LF||
'                                      ';
    wwv_flow_api.g_varchar2_table(717) := ' <xsl:value-of select="(.//S29)[1]" xdofo:field-name="S29"/>'||wwv_flow.LF||
'                                    </';
    wwv_flow_api.g_varchar2_table(718) := 'fo:inline>'||wwv_flow.LF||
'                                 </fo:block>'||wwv_flow.LF||
'                              </fo:table-c';
    wwv_flow_api.g_varchar2_table(719) := 'ell>'||wwv_flow.LF||
'                              <fo:table-cell padding-start="5.15pt" vertical-align="top" borde';
    wwv_flow_api.g_varchar2_table(720) := 'r-bottom="0.5pt solid #000000" border-end-color="#000000" padding-top="0.0pt" border-end-style="soli';
    wwv_flow_api.g_varchar2_table(721) := 'd" border-start-color="#000000" padding-end="5.15pt" number-columns-spanned="1" border-top="0.5pt so';
    wwv_flow_api.g_varchar2_table(722) := 'lid #000000" border-start-style="solid" height="0.0pt" border-end-width="0.5pt" padding-bottom="0.0p';
    wwv_flow_api.g_varchar2_table(723) := 't" border-start-width="0.5pt">'||wwv_flow.LF||
'                                 <fo:block xdofo:xliff-note="S30" or';
    wwv_flow_api.g_varchar2_table(724) := 'phans="2" widows="2" linefeed-treatment="preserve" start-indent="0.0pt" text-align="start" padding-b';
    wwv_flow_api.g_varchar2_table(725) := 'ottom="0.0pt" end-indent="0.0pt" padding-top="0.0pt" height="0.0pt">'||wwv_flow.LF||
'                              ';
    wwv_flow_api.g_varchar2_table(726) := '      <fo:inline font-family="Calibri Light" height="10.0pt" font-weight="bold" font-family-generic=';
    wwv_flow_api.g_varchar2_table(727) := '"swiss" white-space-collapse="false" style-name="Normal" font-size="10.0pt">'||wwv_flow.LF||
'                      ';
    wwv_flow_api.g_varchar2_table(728) := '                 <xsl:value-of select="(.//S30)[1]" xdofo:field-name="S30"/>'||wwv_flow.LF||
'                      ';
    wwv_flow_api.g_varchar2_table(729) := '              </fo:inline>'||wwv_flow.LF||
'                                 </fo:block>'||wwv_flow.LF||
'                          ';
    wwv_flow_api.g_varchar2_table(730) := '    </fo:table-cell>'||wwv_flow.LF||
'                              <fo:table-cell padding-start="5.15pt" vertical-a';
    wwv_flow_api.g_varchar2_table(731) := 'lign="top" border-bottom="0.5pt solid #000000" border-end-color="#000000" padding-top="0.0pt" border';
    wwv_flow_api.g_varchar2_table(732) := '-end-style="solid" border-start-color="#000000" padding-end="5.15pt" number-columns-spanned="1" bord';
    wwv_flow_api.g_varchar2_table(733) := 'er-top="0.5pt solid #000000" border-start-style="solid" height="0.0pt" border-end-width="0.5pt" padd';
    wwv_flow_api.g_varchar2_table(734) := 'ing-bottom="0.0pt" border-start-width="0.5pt">'||wwv_flow.LF||
'                                 <fo:block xdofo:xli';
    wwv_flow_api.g_varchar2_table(735) := 'ff-note="S31,  E" orphans="2" widows="2" linefeed-treatment="preserve" start-indent="0.0pt" text-ali';
    wwv_flow_api.g_varchar2_table(736) := 'gn="start" padding-bottom="0.0pt" end-indent="0.0pt" padding-top="0.0pt" height="0pt">'||wwv_flow.LF||
'            ';
    wwv_flow_api.g_varchar2_table(737) := '                        <fo:inline font-family="Calibri Light" height="10.0pt" font-weight="bold" fo';
    wwv_flow_api.g_varchar2_table(738) := 'nt-family-generic="swiss" white-space-collapse="false" style-name="Normal" font-size="10.0pt">'||wwv_flow.LF||
'    ';
    wwv_flow_api.g_varchar2_table(739) := '                                   <xsl:value-of select="(.//S31)[1]" xdofo:field-name="S31"/>'||wwv_flow.LF||
'    ';
    wwv_flow_api.g_varchar2_table(740) := '                                </fo:inline>'||wwv_flow.LF||
'                                 </fo:block>'||wwv_flow.LF||
'        ';
    wwv_flow_api.g_varchar2_table(741) := '                      </fo:table-cell>'||wwv_flow.LF||
'                           </fo:table-row>'||wwv_flow.LF||
'                ';
    wwv_flow_api.g_varchar2_table(742) := '        </xsl:for-each>'||wwv_flow.LF||
'                     </fo:table-body>'||wwv_flow.LF||
'                  </fo:table>'||wwv_flow.LF||
'     ';
    wwv_flow_api.g_varchar2_table(743) := '          </fo:block>'||wwv_flow.LF||
'               <fo:block xdofo:line-spacing="multiple:12.95pt" orphans="2" wi';
    wwv_flow_api.g_varchar2_table(744) := 'dows="2" linefeed-treatment="preserve" start-indent="5.4pt" text-align="start" padding-bottom="8.0pt';
    wwv_flow_api.g_varchar2_table(745) := '" end-indent="5.4pt" padding-top="0.0pt" height="0.0pt" font-size="10.0pt" font-family="Calibri Ligh';
    wwv_flow_api.g_varchar2_table(746) := 't"/>'||wwv_flow.LF||
'               <fo:block xdofo:line-spacing="multiple:12.95pt" orphans="2" widows="2" linefeed';
    wwv_flow_api.g_varchar2_table(747) := '-treatment="preserve" start-indent="5.4pt" text-align="start" padding-bottom="8.0pt" end-indent="5.4';
    wwv_flow_api.g_varchar2_table(748) := 'pt" padding-top="0.0pt" height="0.0pt" font-size="10.0pt" font-family="Calibri Light">'||wwv_flow.LF||
'            ';
    wwv_flow_api.g_varchar2_table(749) := '      <fo:inline id="{concat(''page-total-'', $_SECTION_NAME, $_XDOFOPOS)}"/>'||wwv_flow.LF||
'                  <fo:i';
    wwv_flow_api.g_varchar2_table(750) := 'nline id="{concat(''page-total'', $_XDOFOPOS)}"/>'||wwv_flow.LF||
'               </fo:block>'||wwv_flow.LF||
'            </fo:flow>';
    wwv_flow_api.g_varchar2_table(751) := ''||wwv_flow.LF||
'         </fo:page-sequence>'||wwv_flow.LF||
'      </fo:root>'||wwv_flow.LF||
'   </xsl:template>'||wwv_flow.LF||
'</xsl:stylesheet>'||wwv_flow.LF||
'';
null;
end;
/
begin
wwv_flow_api.create_report_layout(
 p_id=>wwv_flow_api.id(114566068868759743)
,p_report_layout_name=>'Schedule Print Layout'
,p_report_layout_type=>'XSL_FILE'
,p_varchar2_table=>wwv_flow_api.g_varchar2_table
);
null;
end;
/
prompt --application/shared_components/reports/report_layouts/test
begin
    wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
    wwv_flow_api.g_varchar2_table(1) := '<?xml version = ''1.0'' encoding = ''utf-8''?>'||wwv_flow.LF||
'<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.o';
    wwv_flow_api.g_varchar2_table(2) := 'rg/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" xmlns:xlink="http://www.w3.org/1';
    wwv_flow_api.g_varchar2_table(3) := '999/xlink">'||wwv_flow.LF||
'   <xsl:variable name="_XDOFOPOS" select="''''"/>'||wwv_flow.LF||
'   <xsl:variable name="_XDOFOPOS2" sel';
    wwv_flow_api.g_varchar2_table(4) := 'ect="number(1)"/>'||wwv_flow.LF||
'   <xsl:variable name="_XDOFOTOTAL" select="number(1)"/>'||wwv_flow.LF||
'   <xsl:variable name="';
    wwv_flow_api.g_varchar2_table(5) := '_XDOFOOSTOTAL" select="number(0)"/>'||wwv_flow.LF||
'   <xsl:attribute-set name="padding">'||wwv_flow.LF||
'      <xsl:attribute nam';
    wwv_flow_api.g_varchar2_table(6) := 'e="padding-bottom">0.25pt</xsl:attribute>'||wwv_flow.LF||
'      <xsl:attribute name="padding-top">0.25pt</xsl:attri';
    wwv_flow_api.g_varchar2_table(7) := 'bute>'||wwv_flow.LF||
'   </xsl:attribute-set>'||wwv_flow.LF||
'   <xsl:attribute-set name="text">'||wwv_flow.LF||
'      <xsl:attribute name="text-';
    wwv_flow_api.g_varchar2_table(8) := 'align">start</xsl:attribute>'||wwv_flow.LF||
'      <xsl:attribute name="orphans">2</xsl:attribute>'||wwv_flow.LF||
'      <xsl:attr';
    wwv_flow_api.g_varchar2_table(9) := 'ibute name="start-indent">0.0pt</xsl:attribute>'||wwv_flow.LF||
'      <xsl:attribute name="linefeed-treatment">pres';
    wwv_flow_api.g_varchar2_table(10) := 'erve</xsl:attribute>'||wwv_flow.LF||
'      <xsl:attribute name="padding-top">0.0pt</xsl:attribute>'||wwv_flow.LF||
'      <xsl:attr';
    wwv_flow_api.g_varchar2_table(11) := 'ibute name="end-indent">0.0pt</xsl:attribute>'||wwv_flow.LF||
'      <xsl:attribute name="padding-bottom">0.0pt</xsl';
    wwv_flow_api.g_varchar2_table(12) := ':attribute>'||wwv_flow.LF||
'      <xsl:attribute name="height">0.0pt</xsl:attribute>'||wwv_flow.LF||
'      <xsl:attribute name="wi';
    wwv_flow_api.g_varchar2_table(13) := 'dows">2</xsl:attribute>'||wwv_flow.LF||
'   </xsl:attribute-set>'||wwv_flow.LF||
'   <xsl:attribute-set name="align-left">'||wwv_flow.LF||
'      <x';
    wwv_flow_api.g_varchar2_table(14) := 'sl:attribute name="text-align">left</xsl:attribute>'||wwv_flow.LF||
'   </xsl:attribute-set>'||wwv_flow.LF||
'   <xsl:attribute-set ';
    wwv_flow_api.g_varchar2_table(15) := 'name="align-center">'||wwv_flow.LF||
'      <xsl:attribute name="text-align">center</xsl:attribute>'||wwv_flow.LF||
'   </xsl:attrib';
    wwv_flow_api.g_varchar2_table(16) := 'ute-set>'||wwv_flow.LF||
'   <xsl:attribute-set name="align-right">'||wwv_flow.LF||
'      <xsl:attribute name="text-align">right</x';
    wwv_flow_api.g_varchar2_table(17) := 'sl:attribute>'||wwv_flow.LF||
'   </xsl:attribute-set>'||wwv_flow.LF||
'   <xsl:attribute-set name="footer">'||wwv_flow.LF||
'      <xsl:attribute n';
    wwv_flow_api.g_varchar2_table(18) := 'ame="text-align">right</xsl:attribute>'||wwv_flow.LF||
'      <xsl:attribute name="start-indent">5.4pt</xsl:attribut';
    wwv_flow_api.g_varchar2_table(19) := 'e>'||wwv_flow.LF||
'      <xsl:attribute name="end-indent">5.4pt</xsl:attribute>'||wwv_flow.LF||
'   </xsl:attribute-set>'||wwv_flow.LF||
'   <xsl:a';
    wwv_flow_api.g_varchar2_table(20) := 'ttribute-set name="text_2">'||wwv_flow.LF||
'      <xsl:attribute name="start-indent">5.4pt</xsl:attribute>'||wwv_flow.LF||
'      <';
    wwv_flow_api.g_varchar2_table(21) := 'xsl:attribute name="end-indent">23.4pt</xsl:attribute>'||wwv_flow.LF||
'   </xsl:attribute-set>'||wwv_flow.LF||
'   <xsl:attribute-s';
    wwv_flow_api.g_varchar2_table(22) := 'et name="text_20">'||wwv_flow.LF||
'      <xsl:attribute name="height">13.872pt</xsl:attribute>'||wwv_flow.LF||
'      <xsl:attribut';
    wwv_flow_api.g_varchar2_table(23) := 'e name="end-indent">5.4pt</xsl:attribute>'||wwv_flow.LF||
'   </xsl:attribute-set>'||wwv_flow.LF||
'   <xsl:attribute-set name="text';
    wwv_flow_api.g_varchar2_table(24) := '_0">'||wwv_flow.LF||
'      <xsl:attribute name="end-indent">5.4pt</xsl:attribute>'||wwv_flow.LF||
'   </xsl:attribute-set>'||wwv_flow.LF||
'   <xsl';
    wwv_flow_api.g_varchar2_table(25) := ':attribute-set name="page-header">'||wwv_flow.LF||
'      <xsl:attribute name="color">#PAGE_HEADER_FONT_COLOR#</xsl:';
    wwv_flow_api.g_varchar2_table(26) := 'attribute>'||wwv_flow.LF||
'      <xsl:attribute name="font-family">#PAGE_HEADER_FONT_FAMILY#</xsl:attribute>'||wwv_flow.LF||
'     ';
    wwv_flow_api.g_varchar2_table(27) := ' <xsl:attribute name="white-space-collapse">false</xsl:attribute>'||wwv_flow.LF||
'      <xsl:attribute name="font-s';
    wwv_flow_api.g_varchar2_table(28) := 'ize">#PAGE_HEADER_FONT_SIZE#pt</xsl:attribute>'||wwv_flow.LF||
'      <xsl:attribute name="font-weight">#PAGE_HEADER';
    wwv_flow_api.g_varchar2_table(29) := '_FONT_WEIGHT#</xsl:attribute>'||wwv_flow.LF||
'   </xsl:attribute-set>'||wwv_flow.LF||
'   <xsl:attribute-set name="page-footer">'||wwv_flow.LF||
' ';
    wwv_flow_api.g_varchar2_table(30) := '     <xsl:attribute name="color">#PAGE_FOOTER_FONT_COLOR#</xsl:attribute>'||wwv_flow.LF||
'      <xsl:attribute name';
    wwv_flow_api.g_varchar2_table(31) := '="font-family">#PAGE_FOOTER_FONT_FAMILY#</xsl:attribute>'||wwv_flow.LF||
'      <xsl:attribute name="white-space-col';
    wwv_flow_api.g_varchar2_table(32) := 'lapse">false</xsl:attribute>'||wwv_flow.LF||
'      <xsl:attribute name="font-size">#PAGE_FOOTER_FONT_SIZE#pt</xsl:a';
    wwv_flow_api.g_varchar2_table(33) := 'ttribute>'||wwv_flow.LF||
'      <xsl:attribute name="font-weight">#PAGE_FOOTER_FONT_WEIGHT#</xsl:attribute>'||wwv_flow.LF||
'   </x';
    wwv_flow_api.g_varchar2_table(34) := 'sl:attribute-set>'||wwv_flow.LF||
'   <xsl:attribute-set name="body-font">'||wwv_flow.LF||
'      <xsl:attribute name="height">12.0p';
    wwv_flow_api.g_varchar2_table(35) := 't</xsl:attribute>'||wwv_flow.LF||
'      <xsl:attribute name="font-family">#BODY_FONT_FAMILY#</xsl:attribute>'||wwv_flow.LF||
'     ';
    wwv_flow_api.g_varchar2_table(36) := ' <xsl:attribute name="white-space-collapse">false</xsl:attribute>'||wwv_flow.LF||
'      <xsl:attribute name="font-s';
    wwv_flow_api.g_varchar2_table(37) := 'ize">#BODY_FONT_SIZE#pt</xsl:attribute>'||wwv_flow.LF||
'      <xsl:attribute name="font-weight">#BODY_FONT_WEIGHT#<';
    wwv_flow_api.g_varchar2_table(38) := '/xsl:attribute>'||wwv_flow.LF||
'   </xsl:attribute-set>'||wwv_flow.LF||
'   <xsl:attribute-set name="page-number">'||wwv_flow.LF||
'      <xsl:attr';
    wwv_flow_api.g_varchar2_table(39) := 'ibute name="height">13.872pt</xsl:attribute>'||wwv_flow.LF||
'   </xsl:attribute-set>'||wwv_flow.LF||
'   <xsl:attribute-set name="h';
    wwv_flow_api.g_varchar2_table(40) := 'eader-font">'||wwv_flow.LF||
'      <xsl:attribute name="height">#HEADER_FONT_SIZE#pt</xsl:attribute>'||wwv_flow.LF||
'      <xsl:at';
    wwv_flow_api.g_varchar2_table(41) := 'tribute name="font-family">#HEADER_FONT_FAMILY#</xsl:attribute>'||wwv_flow.LF||
'      <xsl:attribute name="white-sp';
    wwv_flow_api.g_varchar2_table(42) := 'ace-collapse">false</xsl:attribute>'||wwv_flow.LF||
'      <xsl:attribute name="font-size">#HEADER_FONT_SIZE#pt</xsl';
    wwv_flow_api.g_varchar2_table(43) := ':attribute>'||wwv_flow.LF||
'      <xsl:attribute name="font-weight">#HEADER_FONT_WEIGHT#</xsl:attribute>'||wwv_flow.LF||
'   </xsl:';
    wwv_flow_api.g_varchar2_table(44) := 'attribute-set>'||wwv_flow.LF||
'   <xsl:attribute-set name="border">'||wwv_flow.LF||
'      <xsl:attribute name="border-top">#BORDER';
    wwv_flow_api.g_varchar2_table(45) := '_WIDTH#pt solid #BORDER_COLOR#</xsl:attribute>'||wwv_flow.LF||
'      <xsl:attribute name="border-bottom">#BORDER_WI';
    wwv_flow_api.g_varchar2_table(46) := 'DTH#pt solid #BORDER_COLOR#</xsl:attribute>'||wwv_flow.LF||
'      <xsl:attribute name="border-start-width">#BORDER_';
    wwv_flow_api.g_varchar2_table(47) := 'WIDTH#pt</xsl:attribute>'||wwv_flow.LF||
'      <xsl:attribute name="border-start-color">#BORDER_COLOR#</xsl:attribu';
    wwv_flow_api.g_varchar2_table(48) := 'te>'||wwv_flow.LF||
'      <xsl:attribute name="border-start-style">solid</xsl:attribute>'||wwv_flow.LF||
'      <xsl:attribute name';
    wwv_flow_api.g_varchar2_table(49) := '="border-end-width">#BORDER_WIDTH#pt</xsl:attribute>'||wwv_flow.LF||
'      <xsl:attribute name="border-end-color">#';
    wwv_flow_api.g_varchar2_table(50) := 'BORDER_COLOR#</xsl:attribute>'||wwv_flow.LF||
'      <xsl:attribute name="border-end-style">solid</xsl:attribute>'||wwv_flow.LF||
' ';
    wwv_flow_api.g_varchar2_table(51) := '  </xsl:attribute-set>'||wwv_flow.LF||
'   <xsl:attribute-set name="cell">'||wwv_flow.LF||
'      <xsl:attribute name="background-co';
    wwv_flow_api.g_varchar2_table(52) := 'lor">#BODY_BG_COLOR#</xsl:attribute>'||wwv_flow.LF||
'      <xsl:attribute name="color">#BODY_FONT_COLOR#</xsl:attri';
    wwv_flow_api.g_varchar2_table(53) := 'bute>'||wwv_flow.LF||
'      <xsl:attribute name="padding-start">5.15pt</xsl:attribute>'||wwv_flow.LF||
'      <xsl:attribute name="';
    wwv_flow_api.g_varchar2_table(54) := 'vertical-align">top</xsl:attribute>'||wwv_flow.LF||
'      <xsl:attribute name="padding-top">0.0pt</xsl:attribute>'||wwv_flow.LF||
'';
    wwv_flow_api.g_varchar2_table(55) := '      <xsl:attribute name="padding-end">5.15pt</xsl:attribute>'||wwv_flow.LF||
'      <xsl:attribute name="number-co';
    wwv_flow_api.g_varchar2_table(56) := 'lumns-spanned">1</xsl:attribute>'||wwv_flow.LF||
'      <xsl:attribute name="height">0.0pt</xsl:attribute>'||wwv_flow.LF||
'      <x';
    wwv_flow_api.g_varchar2_table(57) := 'sl:attribute name="padding-bottom">0.0pt</xsl:attribute>'||wwv_flow.LF||
'   </xsl:attribute-set>'||wwv_flow.LF||
'   <xsl:attribute';
    wwv_flow_api.g_varchar2_table(58) := '-set name="header-color">'||wwv_flow.LF||
'      <xsl:attribute name="background-color">#HEADER_BG_COLOR#</xsl:attri';
    wwv_flow_api.g_varchar2_table(59) := 'bute>'||wwv_flow.LF||
'      <xsl:attribute name="color">#HEADER_FONT_COLOR#</xsl:attribute>'||wwv_flow.LF||
'   </xsl:attribute-set';
    wwv_flow_api.g_varchar2_table(60) := '>'||wwv_flow.LF||
'   <xsl:template match="/">'||wwv_flow.LF||
'      <fo:root>'||wwv_flow.LF||
'         <fo:layout-master-set>'||wwv_flow.LF||
'            <fo:si';
    wwv_flow_api.g_varchar2_table(61) := 'mple-page-master master-name="master0" margin-left="66.6pt" margin-right="66.6pt" page-height="#PAGE';
    wwv_flow_api.g_varchar2_table(62) := '_HEIGHT#pt" page-width="#PAGE_WIDTH#pt" margin-top="36.0pt" margin-bottom="36.0pt">'||wwv_flow.LF||
'               ';
    wwv_flow_api.g_varchar2_table(63) := '<fo:region-body region-name="region-body" margin-top="54.0pt" margin-bottom="54.0pt"/>'||wwv_flow.LF||
'            ';
    wwv_flow_api.g_varchar2_table(64) := '   <fo:region-before region-name="region-header" extent="54.0pt"/>'||wwv_flow.LF||
'               <fo:region-after ';
    wwv_flow_api.g_varchar2_table(65) := 'region-name="region-footer" extent="54.0pt" display-align="after"/>'||wwv_flow.LF||
'            </fo:simple-page-ma';
    wwv_flow_api.g_varchar2_table(66) := 'ster>'||wwv_flow.LF||
'         </fo:layout-master-set>'||wwv_flow.LF||
'         <fo:page-sequence master-reference="master0">'||wwv_flow.LF||
'   ';
    wwv_flow_api.g_varchar2_table(67) := '         <xsl:variable name="_PW" select="number(#PAGE_HEIGHT#)"/>'||wwv_flow.LF||
'            <xsl:variable name="';
    wwv_flow_api.g_varchar2_table(68) := '_PH" select="number(#PAGE_WIDTH#)"/>'||wwv_flow.LF||
'            <xsl:variable name="_ML" select="number(72.0)"/>'||wwv_flow.LF||
'';
    wwv_flow_api.g_varchar2_table(69) := '            <xsl:variable name="_MR" select="number(72.0)"/>'||wwv_flow.LF||
'            <xsl:variable name="_MT" s';
    wwv_flow_api.g_varchar2_table(70) := 'elect="number(90.0)"/>'||wwv_flow.LF||
'            <xsl:variable name="_MB" select="number(90.0)"/>'||wwv_flow.LF||
'            <x';
    wwv_flow_api.g_varchar2_table(71) := 'sl:variable name="_HY" select="number(36.0)"/>'||wwv_flow.LF||
'            <xsl:variable name="_FY" select="number(';
    wwv_flow_api.g_varchar2_table(72) := '36.0)"/>'||wwv_flow.LF||
'            <xsl:variable name="_SECTION_NAME" select="string(''master0'')"/>'||wwv_flow.LF||
'            <';
    wwv_flow_api.g_varchar2_table(73) := 'fo:static-content flow-name="region-header">'||wwv_flow.LF||
'               <fo:block xsl:use-attribute-sets="text ';
    wwv_flow_api.g_varchar2_table(74) := 'text_2 text_0 #PAGE_HEADER_ALIGNMENT#">'||wwv_flow.LF||
'                  <fo:inline xsl:use-attribute-sets="page-h';
    wwv_flow_api.g_varchar2_table(75) := 'eader">#PAGE_HEADER#</fo:inline>'||wwv_flow.LF||
'               </fo:block>'||wwv_flow.LF||
'            </fo:static-content>'||wwv_flow.LF||
'    ';
    wwv_flow_api.g_varchar2_table(76) := '        <fo:static-content flow-name="region-footer">'||wwv_flow.LF||
'               <fo:block xsl:use-attribute-se';
    wwv_flow_api.g_varchar2_table(77) := 'ts="text footer">'||wwv_flow.LF||
'                  <fo:inline xsl:use-attribute-sets="body-font page-number">'||wwv_flow.LF||
'   ';
    wwv_flow_api.g_varchar2_table(78) := '                  <fo:page-number/>'||wwv_flow.LF||
'                  </fo:inline>'||wwv_flow.LF||
'               </fo:block>'||wwv_flow.LF||
'   ';
    wwv_flow_api.g_varchar2_table(79) := '            <fo:block xsl:use-attribute-sets="text text_2 #PAGE_FOOTER_ALIGNMENT#">'||wwv_flow.LF||
'               ';
    wwv_flow_api.g_varchar2_table(80) := '   <fo:inline xsl:use-attribute-sets="page-footer">#PAGE_FOOTER#</fo:inline>'||wwv_flow.LF||
'               </fo:bl';
    wwv_flow_api.g_varchar2_table(81) := 'ock>'||wwv_flow.LF||
'            </fo:static-content>'||wwv_flow.LF||
'            <fo:flow flow-name="region-body">'||wwv_flow.LF||
'             ';
    wwv_flow_api.g_varchar2_table(82) := '  <fo:block xsl:use-attribute-sets="padding">'||wwv_flow.LF||
'                  <fo:table start-indent="0.0pt">'||wwv_flow.LF||
'  ';
    wwv_flow_api.g_varchar2_table(83) := '                   <xsl:variable name="_XDOFOPOS2" select="number(1)"/>'||wwv_flow.LF||
'                     <xsl:v';
    wwv_flow_api.g_varchar2_table(84) := 'ariable name="_XDOFOTOTAL" select="number(1)"/>'||wwv_flow.LF||
'#PRN_TABLE_CELLS#                     <fo:table-hea';
    wwv_flow_api.g_varchar2_table(85) := 'der>'||wwv_flow.LF||
'                        <fo:table-row>'||wwv_flow.LF||
'#PRN_TEMPLATE_HEADER_ROW#                        </fo:';
    wwv_flow_api.g_varchar2_table(86) := 'table-row>'||wwv_flow.LF||
'                     </fo:table-header>'||wwv_flow.LF||
'                     <fo:table-body>'||wwv_flow.LF||
'         ';
    wwv_flow_api.g_varchar2_table(87) := '               <xsl:for-each select=".//ROW">'||wwv_flow.LF||
'                           <fo:table-row>'||wwv_flow.LF||
'#PRN_TEMPL';
    wwv_flow_api.g_varchar2_table(88) := 'ATE_BODY_ROW#                           </fo:table-row>'||wwv_flow.LF||
'                        </xsl:for-each>'||wwv_flow.LF||
'  ';
    wwv_flow_api.g_varchar2_table(89) := '                   </fo:table-body>'||wwv_flow.LF||
'                  </fo:table>'||wwv_flow.LF||
'               </fo:block>'||wwv_flow.LF||
'    ';
    wwv_flow_api.g_varchar2_table(90) := '           <fo:block xsl:use-attribute-sets="text text_2 text_20">'||wwv_flow.LF||
'                  <fo:inline id=';
    wwv_flow_api.g_varchar2_table(91) := '"{concat(''page-total-'', $_SECTION_NAME, $_XDOFOPOS)}"/>'||wwv_flow.LF||
'                  <fo:inline id="{concat(''p';
    wwv_flow_api.g_varchar2_table(92) := 'age-total'', $_XDOFOPOS)}"/>'||wwv_flow.LF||
'               </fo:block>'||wwv_flow.LF||
'            </fo:flow>'||wwv_flow.LF||
'         </fo:page-';
    wwv_flow_api.g_varchar2_table(93) := 'sequence>'||wwv_flow.LF||
'      </fo:root>'||wwv_flow.LF||
'   </xsl:template>'||wwv_flow.LF||
'</xsl:stylesheet>'||wwv_flow.LF||
'';
wwv_flow_api.create_report_layout(
 p_id=>wwv_flow_api.id(114567630278779533)
,p_report_layout_name=>'test'
,p_report_layout_type=>'XSL_GENERIC'
,p_varchar2_table=>wwv_flow_api.g_varchar2_table
,p_xslfo_column_heading=>wwv_flow_string.join(wwv_flow_t_varchar2(
'                           <fo:table-cell xsl:use-attribute-sets="cell header-color border">',
'                               <fo:block xsl:use-attribute-sets="text #TEXT_ALIGN#">',
'                                   <fo:inline xsl:use-attribute-sets="header-font">#COLUMN_HEADING#</fo:inline>',
'                               </fo:block>',
'                           </fo:table-cell>',
''))
,p_xslfo_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'                              <fo:table-cell xsl:use-attribute-sets="cell border">',
'                                  <fo:block xsl:use-attribute-sets="text #TEXT_ALIGN#">',
'                                      <fo:inline xsl:use-attribute-sets="body-font">',
'                                          <xsl:value-of select=".//#COLUMN_HEADER_NAME#"/>',
'                                      </fo:inline>',
'                                  </fo:block>',
'                              </fo:table-cell>',
''))
,p_xslfo_column_template_width=>wwv_flow_string.join(wwv_flow_t_varchar2(
'                     <fo:table-column column-width="#COLUMN_WIDTH#pt"/>',
''))
);
end;
/
prompt --application/shared_components/security/authentications
begin
wwv_flow_api.create_authentication(
 p_id=>wwv_flow_api.id(73183183969446476)
,p_name=>'Application Express Authentication'
,p_scheme_type=>'NATIVE_APEX_ACCOUNTS'
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
);
wwv_flow_api.create_authentication(
 p_id=>wwv_flow_api.id(118306245512623480)
,p_name=>'gen_user'
,p_scheme_type=>'NATIVE_CUSTOM'
,p_attribute_03=>'gen_auth.gen_authentication'
,p_attribute_05=>'N'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
);
end;
/
prompt --application/ui_types
begin
null;
end;
/
prompt --application/user_interfaces
begin
wwv_flow_api.create_user_interface(
 p_id=>wwv_flow_api.id(73182974805446411)
,p_ui_type_name=>'DESKTOP'
,p_display_name=>'Desktop'
,p_display_seq=>10
,p_use_auto_detect=>false
,p_is_default=>true
,p_theme_id=>42
,p_home_url=>'f?p=&APP_ID.:1:&SESSION.'
,p_login_url=>'f?p=&APP_ID.:LOGIN_DESKTOP:&SESSION.'
,p_theme_style_by_user_pref=>false
,p_navigation_list_id=>wwv_flow_api.id(73130780689446115)
,p_navigation_list_position=>'SIDE'
,p_navigation_list_template_id=>wwv_flow_api.id(73169573274446342)
,p_nav_list_template_options=>'#DEFAULT#'
,p_nav_bar_type=>'LIST'
,p_nav_bar_list_id=>wwv_flow_api.id(73182864946446408)
,p_nav_bar_list_template_id=>wwv_flow_api.id(73169428809446342)
,p_nav_bar_template_options=>'#DEFAULT#'
);
end;
/
prompt --application/user_interfaces/combined_files
begin
null;
end;
/
prompt --application/pages/page_00001
begin
wwv_flow_api.create_page(
 p_id=>1
,p_user_interface_id=>wwv_flow_api.id(73182974805446411)
,p_name=>'Αρχική'
,p_page_mode=>'NORMAL'
,p_step_title=>'Αρχική'
,p_step_sub_title=>'Home'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'MARINOSY@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20170719124023'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(73264012279070503)
,p_plug_name=>'Επιλογές'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:u-colors:t-Cards--compact:t-Cards--displayIcons:t-Cards--cols:t-Cards--animColorFill'
,p_plug_template=>wwv_flow_api.id(73139391964446210)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(73130780689446115)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(73164472439446333)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
end;
/
prompt --application/pages/page_00002
begin
wwv_flow_api.create_page(
 p_id=>2
,p_user_interface_id=>wwv_flow_api.id(73182974805446411)
,p_name=>'Έλεγχος βαρδιών'
,p_page_mode=>'MODAL'
,p_step_title=>'Έλεγχος βαρδιών'
,p_step_sub_title=>'Έλεγχος βαρδιών'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'600'
,p_dialog_width=>'2000'
,p_dialog_max_width=>'2000'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'MARINOSY@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20170807213457'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(114416740119301047)
,p_plug_name=>'Έλεγχος βαρδιών'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(73148822037446237)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select shift_id,',
'      shift_code,',
'      shift_description,',
'      SHC_SCHEDULE_PKG.count_shift_for_day(:P2_YEAR, :P2_MONTH, 1, shift_id) shift_counter1,',
'      SHC_SCHEDULE_PKG.count_shift_for_day(:P2_YEAR, :P2_MONTH, 2, shift_id) shift_counter2,',
'      SHC_SCHEDULE_PKG.count_shift_for_day(:P2_YEAR, :P2_MONTH, 3, shift_id) shift_counter3,',
'      SHC_SCHEDULE_PKG.count_shift_for_day(:P2_YEAR, :P2_MONTH, 4, shift_id) shift_counter4,',
'      SHC_SCHEDULE_PKG.count_shift_for_day(:P2_YEAR, :P2_MONTH, 5, shift_id) shift_counter5,',
'      SHC_SCHEDULE_PKG.count_shift_for_day(:P2_YEAR, :P2_MONTH, 6, shift_id) shift_counter6,',
'      SHC_SCHEDULE_PKG.count_shift_for_day(:P2_YEAR, :P2_MONTH, 7, shift_id) shift_counter7,',
'      SHC_SCHEDULE_PKG.count_shift_for_day(:P2_YEAR, :P2_MONTH, 8, shift_id) shift_counter8,',
'      SHC_SCHEDULE_PKG.count_shift_for_day(:P2_YEAR, :P2_MONTH, 9, shift_id) shift_counter9,',
'      SHC_SCHEDULE_PKG.count_shift_for_day(:P2_YEAR, :P2_MONTH, 10, shift_id) shift_counter10,',
'      SHC_SCHEDULE_PKG.count_shift_for_day(:P2_YEAR, :P2_MONTH, 11, shift_id) shift_counter11,',
'      SHC_SCHEDULE_PKG.count_shift_for_day(:P2_YEAR, :P2_MONTH, 12, shift_id) shift_counter12,',
'      SHC_SCHEDULE_PKG.count_shift_for_day(:P2_YEAR, :P2_MONTH, 13, shift_id) shift_counter13,',
'      SHC_SCHEDULE_PKG.count_shift_for_day(:P2_YEAR, :P2_MONTH, 14, shift_id) shift_counter14,',
'      SHC_SCHEDULE_PKG.count_shift_for_day(:P2_YEAR, :P2_MONTH, 15, shift_id) shift_counter15,',
'      SHC_SCHEDULE_PKG.count_shift_for_day(:P2_YEAR, :P2_MONTH, 16, shift_id) shift_counter16,',
'      SHC_SCHEDULE_PKG.count_shift_for_day(:P2_YEAR, :P2_MONTH, 17, shift_id) shift_counter17,',
'      SHC_SCHEDULE_PKG.count_shift_for_day(:P2_YEAR, :P2_MONTH, 18, shift_id) shift_counter18,',
'      SHC_SCHEDULE_PKG.count_shift_for_day(:P2_YEAR, :P2_MONTH, 19, shift_id) shift_counter19,',
'      SHC_SCHEDULE_PKG.count_shift_for_day(:P2_YEAR, :P2_MONTH, 20, shift_id) shift_counter20,',
'      SHC_SCHEDULE_PKG.count_shift_for_day(:P2_YEAR, :P2_MONTH, 21, shift_id) shift_counter21,',
'      SHC_SCHEDULE_PKG.count_shift_for_day(:P2_YEAR, :P2_MONTH, 22, shift_id) shift_counter22,',
'      SHC_SCHEDULE_PKG.count_shift_for_day(:P2_YEAR, :P2_MONTH, 23, shift_id) shift_counter23,',
'      SHC_SCHEDULE_PKG.count_shift_for_day(:P2_YEAR, :P2_MONTH, 24, shift_id) shift_counter24,',
'      SHC_SCHEDULE_PKG.count_shift_for_day(:P2_YEAR, :P2_MONTH, 25, shift_id) shift_counter25,',
'      SHC_SCHEDULE_PKG.count_shift_for_day(:P2_YEAR, :P2_MONTH, 26, shift_id) shift_counter26,',
'      SHC_SCHEDULE_PKG.count_shift_for_day(:P2_YEAR, :P2_MONTH, 27, shift_id) shift_counter27,',
'      SHC_SCHEDULE_PKG.count_shift_for_day(:P2_YEAR, :P2_MONTH, 28, shift_id) shift_counter28,',
'      SHC_SCHEDULE_PKG.count_shift_for_day(:P2_YEAR, :P2_MONTH, 29, shift_id) shift_counter29,',
'      SHC_SCHEDULE_PKG.count_shift_for_day(:P2_YEAR, :P2_MONTH, 30, shift_id) shift_counter30,',
'      SHC_SCHEDULE_PKG.count_shift_for_day(:P2_YEAR, :P2_MONTH, 31, shift_id) shift_counter31',
'from SHC_SHIFT'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>8.5
,p_prn_height=>11
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(118387535676927706)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'MARINOSY@GMAIL.COM'
,p_internal_uid=>118387535676927706
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(118387638913927707)
,p_db_column_name=>'SHIFT_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Shift id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(118387787869927708)
,p_db_column_name=>'SHIFT_CODE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Βάρδια'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(118387861431927709)
,p_db_column_name=>'SHIFT_DESCRIPTION'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Περιγραφή'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(118615854130553805)
,p_db_column_name=>'SHIFT_COUNTER1'
,p_display_order=>40
,p_column_identifier=>'CT'
,p_column_label=>'1'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(118615959102553806)
,p_db_column_name=>'SHIFT_COUNTER2'
,p_display_order=>50
,p_column_identifier=>'CU'
,p_column_label=>'2'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(118616026846553807)
,p_db_column_name=>'SHIFT_COUNTER3'
,p_display_order=>60
,p_column_identifier=>'CV'
,p_column_label=>'3'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(118616115670553808)
,p_db_column_name=>'SHIFT_COUNTER4'
,p_display_order=>70
,p_column_identifier=>'CW'
,p_column_label=>'4'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(118616214676553809)
,p_db_column_name=>'SHIFT_COUNTER5'
,p_display_order=>80
,p_column_identifier=>'CX'
,p_column_label=>'5'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(118616313122553810)
,p_db_column_name=>'SHIFT_COUNTER6'
,p_display_order=>90
,p_column_identifier=>'CY'
,p_column_label=>'6'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(118616472754553811)
,p_db_column_name=>'SHIFT_COUNTER7'
,p_display_order=>100
,p_column_identifier=>'CZ'
,p_column_label=>'7'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(118616575921553812)
,p_db_column_name=>'SHIFT_COUNTER8'
,p_display_order=>110
,p_column_identifier=>'DA'
,p_column_label=>'8'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(118616647752553813)
,p_db_column_name=>'SHIFT_COUNTER9'
,p_display_order=>120
,p_column_identifier=>'DB'
,p_column_label=>'9'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(118616776080553814)
,p_db_column_name=>'SHIFT_COUNTER10'
,p_display_order=>130
,p_column_identifier=>'DC'
,p_column_label=>'10'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(118616801458553815)
,p_db_column_name=>'SHIFT_COUNTER11'
,p_display_order=>140
,p_column_identifier=>'DD'
,p_column_label=>'11'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(118616943372553816)
,p_db_column_name=>'SHIFT_COUNTER12'
,p_display_order=>150
,p_column_identifier=>'DE'
,p_column_label=>'12'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(118617009457553817)
,p_db_column_name=>'SHIFT_COUNTER13'
,p_display_order=>160
,p_column_identifier=>'DF'
,p_column_label=>'13'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(118617121880553818)
,p_db_column_name=>'SHIFT_COUNTER14'
,p_display_order=>170
,p_column_identifier=>'DG'
,p_column_label=>'14'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(118617268792553819)
,p_db_column_name=>'SHIFT_COUNTER15'
,p_display_order=>180
,p_column_identifier=>'DH'
,p_column_label=>'15'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(118617352408553820)
,p_db_column_name=>'SHIFT_COUNTER16'
,p_display_order=>190
,p_column_identifier=>'DI'
,p_column_label=>'16'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(118617425057553821)
,p_db_column_name=>'SHIFT_COUNTER17'
,p_display_order=>200
,p_column_identifier=>'DJ'
,p_column_label=>'17'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(118617521883553822)
,p_db_column_name=>'SHIFT_COUNTER18'
,p_display_order=>210
,p_column_identifier=>'DK'
,p_column_label=>'18'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(118617613345553823)
,p_db_column_name=>'SHIFT_COUNTER19'
,p_display_order=>220
,p_column_identifier=>'DL'
,p_column_label=>'19'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(118617733279553824)
,p_db_column_name=>'SHIFT_COUNTER20'
,p_display_order=>230
,p_column_identifier=>'DM'
,p_column_label=>'20'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(118617823494553825)
,p_db_column_name=>'SHIFT_COUNTER21'
,p_display_order=>240
,p_column_identifier=>'DN'
,p_column_label=>'21'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(118617990562553826)
,p_db_column_name=>'SHIFT_COUNTER22'
,p_display_order=>250
,p_column_identifier=>'DO'
,p_column_label=>'22'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(118618056833553827)
,p_db_column_name=>'SHIFT_COUNTER23'
,p_display_order=>260
,p_column_identifier=>'DP'
,p_column_label=>'23'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(118618156819553828)
,p_db_column_name=>'SHIFT_COUNTER24'
,p_display_order=>270
,p_column_identifier=>'DQ'
,p_column_label=>'24'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(118618225734553829)
,p_db_column_name=>'SHIFT_COUNTER25'
,p_display_order=>280
,p_column_identifier=>'DR'
,p_column_label=>'25'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(118618372547553830)
,p_db_column_name=>'SHIFT_COUNTER26'
,p_display_order=>290
,p_column_identifier=>'DS'
,p_column_label=>'26'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(118618485566553831)
,p_db_column_name=>'SHIFT_COUNTER27'
,p_display_order=>300
,p_column_identifier=>'DT'
,p_column_label=>'27'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(118618578801553832)
,p_db_column_name=>'SHIFT_COUNTER28'
,p_display_order=>310
,p_column_identifier=>'DU'
,p_column_label=>'28'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(118618672664553833)
,p_db_column_name=>'SHIFT_COUNTER29'
,p_display_order=>320
,p_column_identifier=>'DV'
,p_column_label=>'29'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(118618701636553834)
,p_db_column_name=>'SHIFT_COUNTER30'
,p_display_order=>330
,p_column_identifier=>'DW'
,p_column_label=>'30'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(118618821031553835)
,p_db_column_name=>'SHIFT_COUNTER31'
,p_display_order=>340
,p_column_identifier=>'DX'
,p_column_label=>'31'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(118531381570243097)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1185314'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'SHIFT_CODE:SHIFT_COUNTER1:SHIFT_COUNTER2:SHIFT_COUNTER3:SHIFT_COUNTER4:SHIFT_COUNTER5:SHIFT_COUNTER6:SHIFT_COUNTER7:SHIFT_COUNTER8:SHIFT_COUNTER9:SHIFT_COUNTER10:SHIFT_COUNTER11:SHIFT_COUNTER12:SHIFT_COUNTER13:SHIFT_COUNTER14:SHIFT_COUNTER15:SHIFT_CO'
||'UNTER16:SHIFT_COUNTER17:SHIFT_COUNTER18:SHIFT_COUNTER19:SHIFT_COUNTER20:SHIFT_COUNTER21:SHIFT_COUNTER22:SHIFT_COUNTER23:SHIFT_COUNTER24:SHIFT_COUNTER25:SHIFT_COUNTER26:SHIFT_COUNTER27:SHIFT_COUNTER28:SHIFT_COUNTER29:SHIFT_COUNTER30:SHIFT_COUNTER31:'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(118729237272696478)
,p_report_id=>wwv_flow_api.id(118531381570243097)
,p_name=>'1'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'SHIFT_COUNTER1'
,p_operator=>'contains'
,p_expr=>'!'
,p_condition_sql=>' (case when (upper("SHIFT_COUNTER1") like ''%''||upper(#APXWS_EXPR#)||''%'') then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME# ''!''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_column_bg_color=>'#FFDD44'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(118729620594696478)
,p_report_id=>wwv_flow_api.id(118531381570243097)
,p_name=>'10'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'SHIFT_COUNTER10'
,p_operator=>'contains'
,p_expr=>'!'
,p_condition_sql=>' (case when (upper("SHIFT_COUNTER10") like ''%''||upper(#APXWS_EXPR#)||''%'') then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME# ''!''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_column_bg_color=>'#FFDD44'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(118730045559696479)
,p_report_id=>wwv_flow_api.id(118531381570243097)
,p_name=>'11'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'SHIFT_COUNTER11'
,p_operator=>'contains'
,p_expr=>'!'
,p_condition_sql=>' (case when (upper("SHIFT_COUNTER11") like ''%''||upper(#APXWS_EXPR#)||''%'') then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME# ''!''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_column_bg_color=>'#FFDD44'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(118730428388696479)
,p_report_id=>wwv_flow_api.id(118531381570243097)
,p_name=>'12'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'SHIFT_COUNTER12'
,p_operator=>'contains'
,p_expr=>'!'
,p_condition_sql=>' (case when (upper("SHIFT_COUNTER12") like ''%''||upper(#APXWS_EXPR#)||''%'') then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME# ''!''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_column_bg_color=>'#FFDD44'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(118730887385696479)
,p_report_id=>wwv_flow_api.id(118531381570243097)
,p_name=>'13'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'SHIFT_COUNTER13'
,p_operator=>'contains'
,p_expr=>'!'
,p_condition_sql=>' (case when (upper("SHIFT_COUNTER13") like ''%''||upper(#APXWS_EXPR#)||''%'') then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME# ''!''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_column_bg_color=>'#FFDD44'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(118731277761696479)
,p_report_id=>wwv_flow_api.id(118531381570243097)
,p_name=>'14'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'SHIFT_COUNTER14'
,p_operator=>'contains'
,p_expr=>'!'
,p_condition_sql=>' (case when (upper("SHIFT_COUNTER14") like ''%''||upper(#APXWS_EXPR#)||''%'') then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME# ''!''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_column_bg_color=>'#FFDD44'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(118731655306696480)
,p_report_id=>wwv_flow_api.id(118531381570243097)
,p_name=>'15'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'SHIFT_COUNTER15'
,p_operator=>'contains'
,p_expr=>'!'
,p_condition_sql=>' (case when (upper("SHIFT_COUNTER15") like ''%''||upper(#APXWS_EXPR#)||''%'') then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME# ''!''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_column_bg_color=>'#FFDD44'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(118732074880696480)
,p_report_id=>wwv_flow_api.id(118531381570243097)
,p_name=>'16'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'SHIFT_COUNTER16'
,p_operator=>'contains'
,p_expr=>'!'
,p_condition_sql=>' (case when (upper("SHIFT_COUNTER16") like ''%''||upper(#APXWS_EXPR#)||''%'') then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME# ''!''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_column_bg_color=>'#FFDD44'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(118732435867696482)
,p_report_id=>wwv_flow_api.id(118531381570243097)
,p_name=>'17'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'SHIFT_COUNTER17'
,p_operator=>'contains'
,p_expr=>'!'
,p_condition_sql=>' (case when (upper("SHIFT_COUNTER17") like ''%''||upper(#APXWS_EXPR#)||''%'') then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME# ''!''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_column_bg_color=>'#FFDD44'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(118732868935696482)
,p_report_id=>wwv_flow_api.id(118531381570243097)
,p_name=>'18'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'SHIFT_COUNTER18'
,p_operator=>'contains'
,p_expr=>'!'
,p_condition_sql=>' (case when (upper("SHIFT_COUNTER18") like ''%''||upper(#APXWS_EXPR#)||''%'') then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME# ''!''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_column_bg_color=>'#FFDD44'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(118733252619696482)
,p_report_id=>wwv_flow_api.id(118531381570243097)
,p_name=>'19'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'SHIFT_COUNTER19'
,p_operator=>'contains'
,p_expr=>'!'
,p_condition_sql=>' (case when (upper("SHIFT_COUNTER19") like ''%''||upper(#APXWS_EXPR#)||''%'') then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME# ''!''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_column_bg_color=>'#FFDD44'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(118733686300696482)
,p_report_id=>wwv_flow_api.id(118531381570243097)
,p_name=>'2'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'SHIFT_COUNTER2'
,p_operator=>'contains'
,p_expr=>'!'
,p_condition_sql=>' (case when (upper("SHIFT_COUNTER2") like ''%''||upper(#APXWS_EXPR#)||''%'') then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME# ''!''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_column_bg_color=>'#FFDD44'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(118734025708696483)
,p_report_id=>wwv_flow_api.id(118531381570243097)
,p_name=>'20'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'SHIFT_COUNTER20'
,p_operator=>'contains'
,p_expr=>'!'
,p_condition_sql=>' (case when (upper("SHIFT_COUNTER20") like ''%''||upper(#APXWS_EXPR#)||''%'') then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME# ''!''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_column_bg_color=>'#FFDD44'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(118734490610696483)
,p_report_id=>wwv_flow_api.id(118531381570243097)
,p_name=>'21'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'SHIFT_COUNTER21'
,p_operator=>'contains'
,p_expr=>'!'
,p_condition_sql=>' (case when (upper("SHIFT_COUNTER21") like ''%''||upper(#APXWS_EXPR#)||''%'') then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME# ''!''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_column_bg_color=>'#FFDD44'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(118734889967696483)
,p_report_id=>wwv_flow_api.id(118531381570243097)
,p_name=>'22'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'SHIFT_COUNTER22'
,p_operator=>'contains'
,p_expr=>'!'
,p_condition_sql=>' (case when (upper("SHIFT_COUNTER22") like ''%''||upper(#APXWS_EXPR#)||''%'') then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME# ''!''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_column_bg_color=>'#FFDD44'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(118735273938696484)
,p_report_id=>wwv_flow_api.id(118531381570243097)
,p_name=>'23'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'SHIFT_COUNTER23'
,p_operator=>'contains'
,p_expr=>'!'
,p_condition_sql=>' (case when (upper("SHIFT_COUNTER23") like ''%''||upper(#APXWS_EXPR#)||''%'') then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME# ''!''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_column_bg_color=>'#FFDD44'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(118735643716696484)
,p_report_id=>wwv_flow_api.id(118531381570243097)
,p_name=>'24'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'SHIFT_COUNTER24'
,p_operator=>'contains'
,p_expr=>'!'
,p_condition_sql=>' (case when (upper("SHIFT_COUNTER24") like ''%''||upper(#APXWS_EXPR#)||''%'') then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME# ''!''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_column_bg_color=>'#FFDD44'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(118736010390696484)
,p_report_id=>wwv_flow_api.id(118531381570243097)
,p_name=>'25'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'SHIFT_COUNTER25'
,p_operator=>'contains'
,p_expr=>'!'
,p_condition_sql=>' (case when (upper("SHIFT_COUNTER25") like ''%''||upper(#APXWS_EXPR#)||''%'') then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME# ''!''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_column_bg_color=>'#FFDD44'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(118736411495696484)
,p_report_id=>wwv_flow_api.id(118531381570243097)
,p_name=>'26'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'SHIFT_COUNTER26'
,p_operator=>'contains'
,p_expr=>'!'
,p_condition_sql=>' (case when (upper("SHIFT_COUNTER26") like ''%''||upper(#APXWS_EXPR#)||''%'') then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME# ''!''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_column_bg_color=>'#FFDD44'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(118736822621696485)
,p_report_id=>wwv_flow_api.id(118531381570243097)
,p_name=>'27'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'SHIFT_COUNTER27'
,p_operator=>'contains'
,p_expr=>'!'
,p_condition_sql=>' (case when (upper("SHIFT_COUNTER27") like ''%''||upper(#APXWS_EXPR#)||''%'') then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME# ''!''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_column_bg_color=>'#FFDD44'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(118737257595696485)
,p_report_id=>wwv_flow_api.id(118531381570243097)
,p_name=>'28'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'SHIFT_COUNTER28'
,p_operator=>'contains'
,p_expr=>'!'
,p_condition_sql=>' (case when (upper("SHIFT_COUNTER28") like ''%''||upper(#APXWS_EXPR#)||''%'') then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME# ''!''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_column_bg_color=>'#FFDD44'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(118737615844696485)
,p_report_id=>wwv_flow_api.id(118531381570243097)
,p_name=>'29'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'SHIFT_COUNTER29'
,p_operator=>'contains'
,p_expr=>'!'
,p_condition_sql=>' (case when (upper("SHIFT_COUNTER29") like ''%''||upper(#APXWS_EXPR#)||''%'') then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME# ''!''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_column_bg_color=>'#FFDD44'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(118738052761696485)
,p_report_id=>wwv_flow_api.id(118531381570243097)
,p_name=>'3'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'SHIFT_COUNTER3'
,p_operator=>'contains'
,p_expr=>'!'
,p_condition_sql=>' (case when (upper("SHIFT_COUNTER3") like ''%''||upper(#APXWS_EXPR#)||''%'') then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME# ''!''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_column_bg_color=>'#FFDD44'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(118738466475696486)
,p_report_id=>wwv_flow_api.id(118531381570243097)
,p_name=>'30'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'SHIFT_COUNTER30'
,p_operator=>'contains'
,p_expr=>'!'
,p_condition_sql=>' (case when (upper("SHIFT_COUNTER30") like ''%''||upper(#APXWS_EXPR#)||''%'') then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME# ''!''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_column_bg_color=>'#FFDD44'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(118738820821696486)
,p_report_id=>wwv_flow_api.id(118531381570243097)
,p_name=>'31'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'SHIFT_COUNTER31'
,p_operator=>'contains'
,p_expr=>'!'
,p_condition_sql=>' (case when (upper("SHIFT_COUNTER31") like ''%''||upper(#APXWS_EXPR#)||''%'') then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME# ''!''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_column_bg_color=>'#FFDD44'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(118739225210696486)
,p_report_id=>wwv_flow_api.id(118531381570243097)
,p_name=>'4'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'SHIFT_COUNTER4'
,p_operator=>'contains'
,p_expr=>'!'
,p_condition_sql=>' (case when (upper("SHIFT_COUNTER4") like ''%''||upper(#APXWS_EXPR#)||''%'') then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME# ''!''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_column_bg_color=>'#FFDD44'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(118739611510696487)
,p_report_id=>wwv_flow_api.id(118531381570243097)
,p_name=>'5'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'SHIFT_COUNTER5'
,p_operator=>'contains'
,p_expr=>'!'
,p_condition_sql=>' (case when (upper("SHIFT_COUNTER5") like ''%''||upper(#APXWS_EXPR#)||''%'') then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME# ''!''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_column_bg_color=>'#FFDD44'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(118740062390696487)
,p_report_id=>wwv_flow_api.id(118531381570243097)
,p_name=>'6'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'SHIFT_COUNTER6'
,p_operator=>'contains'
,p_expr=>'!'
,p_condition_sql=>' (case when (upper("SHIFT_COUNTER6") like ''%''||upper(#APXWS_EXPR#)||''%'') then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME# ''!''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_column_bg_color=>'#FFDD44'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(118740497432696487)
,p_report_id=>wwv_flow_api.id(118531381570243097)
,p_name=>'7'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'SHIFT_COUNTER7'
,p_operator=>'contains'
,p_expr=>'!'
,p_condition_sql=>' (case when (upper("SHIFT_COUNTER7") like ''%''||upper(#APXWS_EXPR#)||''%'') then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME# ''!''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_column_bg_color=>'#FFDD44'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(118740830296696487)
,p_report_id=>wwv_flow_api.id(118531381570243097)
,p_name=>'8'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'SHIFT_COUNTER8'
,p_operator=>'contains'
,p_expr=>'!'
,p_condition_sql=>' (case when (upper("SHIFT_COUNTER8") like ''%''||upper(#APXWS_EXPR#)||''%'') then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME# ''!''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_column_bg_color=>'#FFDD44'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(118741262035696488)
,p_report_id=>wwv_flow_api.id(118531381570243097)
,p_name=>'9'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'SHIFT_COUNTER9'
,p_operator=>'contains'
,p_expr=>'!'
,p_condition_sql=>' (case when (upper("SHIFT_COUNTER9") like ''%''||upper(#APXWS_EXPR#)||''%'') then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME# ''!''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_column_bg_color=>'#FFDD44'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(114377429352883936)
,p_name=>'P2_MONTH'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(114416740119301047)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(114377555391883937)
,p_name=>'P2_YEAR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(114416740119301047)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
end;
/
prompt --application/pages/page_00003
begin
wwv_flow_api.create_page(
 p_id=>3
,p_user_interface_id=>wwv_flow_api.id(73182974805446411)
,p_name=>'Προσωπικό'
,p_page_mode=>'NORMAL'
,p_step_title=>'Προσωπικό'
,p_step_sub_title=>'Προσωπικό'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'MARINOSY@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20170729212432'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(73187851462833714)
,p_plug_name=>'Προσωπικό'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(73149310067446237)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select EMPLOYEE_ID,',
'       FULLNAME,',
'       JOB_DESCRIPTION,',
'       schedule_order',
'  from SHC_EMPLOYEE'))
,p_plug_source_type=>'NATIVE_IG'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(73189044830833721)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_is_primary_key=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(73189593247833726)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_label=>'Actions'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
,p_value_alignment=>'CENTER'
,p_is_primary_key=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(73190173066833727)
,p_name=>'EMPLOYEE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMPLOYEE_ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_is_primary_key=>true
,p_default_type=>'SEQUENCE'
,p_default_expression=>'shc_employee_seq'
,p_duplicate_value=>false
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(73190768059833729)
,p_name=>'FULLNAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FULLNAME'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Ονοματεπώνυμο'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>100
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(73191396998833729)
,p_name=>'JOB_DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'JOB_DESCRIPTION'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Τίτλος εργασίας'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>100
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(114373971803883901)
,p_name=>'SCHEDULE_ORDER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SCHEDULE_ORDER'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Σειρά εμφάνισης'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>60
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_interactive_grid(
 p_id=>wwv_flow_api.id(73188303595833717)
,p_internal_uid=>73188303595833717
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_show_nulls_as=>'-'
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_download=>true
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_api.create_ig_report(
 p_id=>wwv_flow_api.id(73188716519833720)
,p_interactive_grid_id=>wwv_flow_api.id(73188303595833717)
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_api.create_ig_report_view(
 p_id=>wwv_flow_api.id(73188829285833720)
,p_report_id=>wwv_flow_api.id(73188716519833720)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(73189931790833726)
,p_view_id=>wwv_flow_api.id(73188829285833720)
,p_display_seq=>0
,p_column_id=>wwv_flow_api.id(73189593247833726)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(73190516107833728)
,p_view_id=>wwv_flow_api.id(73188829285833720)
,p_display_seq=>1
,p_column_id=>wwv_flow_api.id(73190173066833727)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(73191178418833729)
,p_view_id=>wwv_flow_api.id(73188829285833720)
,p_display_seq=>2
,p_column_id=>wwv_flow_api.id(73190768059833729)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(73191763853833729)
,p_view_id=>wwv_flow_api.id(73188829285833720)
,p_display_seq=>3
,p_column_id=>wwv_flow_api.id(73191396998833729)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(114379980912885865)
,p_view_id=>wwv_flow_api.id(73188829285833720)
,p_display_seq=>4
,p_column_id=>wwv_flow_api.id(114373971803883901)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(73191989892833730)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(73187851462833714)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>' - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00004
begin
wwv_flow_api.create_page(
 p_id=>4
,p_user_interface_id=>wwv_flow_api.id(73182974805446411)
,p_name=>'Βάρδιες'
,p_page_mode=>'NORMAL'
,p_step_title=>'Βάρδιες'
,p_step_sub_title=>'Βάρδιες'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'MARINOSY@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20170807204115'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(73194266676848769)
,p_plug_name=>'Βάρδιες'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(73149310067446237)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select SHIFT_ID,',
'       SHIFT_CODE,',
'       SHIFT_DESCRIPTION,',
'       DAY_LIMIT',
'  from SHC_SHIFT'))
,p_plug_source_type=>'NATIVE_IG'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(73195406964848769)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_is_primary_key=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(73195982822848770)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_label=>'Actions'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
,p_value_alignment=>'CENTER'
,p_is_primary_key=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(73196523670848770)
,p_name=>'SHIFT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SHIFT_ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_is_primary_key=>true
,p_default_type=>'SEQUENCE'
,p_default_expression=>'shc_shift_seq'
,p_duplicate_value=>false
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(73197111787848772)
,p_name=>'SHIFT_CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SHIFT_CODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Βάρδια'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>10
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(73197755841848772)
,p_name=>'SHIFT_DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SHIFT_DESCRIPTION'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Περιγραφή'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>50
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(118391045778927741)
,p_name=>'DAY_LIMIT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DAY_LIMIT'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Όριο ημέρας'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>60
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_interactive_grid(
 p_id=>wwv_flow_api.id(73194771362848769)
,p_internal_uid=>73194771362848769
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_show_nulls_as=>'-'
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_download=>true
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_api.create_ig_report(
 p_id=>wwv_flow_api.id(73195148285848769)
,p_interactive_grid_id=>wwv_flow_api.id(73194771362848769)
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_api.create_ig_report_view(
 p_id=>wwv_flow_api.id(73195255358848769)
,p_report_id=>wwv_flow_api.id(73195148285848769)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(73196302289848770)
,p_view_id=>wwv_flow_api.id(73195255358848769)
,p_display_seq=>0
,p_column_id=>wwv_flow_api.id(73195982822848770)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(73196955061848770)
,p_view_id=>wwv_flow_api.id(73195255358848769)
,p_display_seq=>1
,p_column_id=>wwv_flow_api.id(73196523670848770)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(73197567540848772)
,p_view_id=>wwv_flow_api.id(73195255358848769)
,p_display_seq=>2
,p_column_id=>wwv_flow_api.id(73197111787848772)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>80
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(73198179695848772)
,p_view_id=>wwv_flow_api.id(73195255358848769)
,p_display_seq=>3
,p_column_id=>wwv_flow_api.id(73197755841848772)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>140
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(118545345684374345)
,p_view_id=>wwv_flow_api.id(73195255358848769)
,p_display_seq=>4
,p_column_id=>wwv_flow_api.id(118391045778927741)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>80
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(73198349218848772)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(73194266676848769)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>' - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00005
begin
wwv_flow_api.create_page(
 p_id=>5
,p_user_interface_id=>wwv_flow_api.id(73182974805446411)
,p_name=>'Αργίες'
,p_page_mode=>'NORMAL'
,p_step_title=>'Αργίες'
,p_step_sub_title=>'Αργίες'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'MARINOSY@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20170717231325'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(73200466308859610)
,p_plug_name=>'Αργίες'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(73149310067446237)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select CALENDAR_DATE,',
'       DAY_KEY,',
'       CAL_MONTH,',
'       CAL_YEAR,',
'       HOLIDAY',
'  from GEN_TIME'))
,p_plug_source_type=>'NATIVE_IG'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(73201682339859611)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_is_primary_key=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(73202128723859613)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_label=>'Actions'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
,p_value_alignment=>'CENTER'
,p_is_primary_key=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(73202724751859613)
,p_name=>'CALENDAR_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CALENDAR_DATE'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Ημερομηνία'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>30
,p_value_alignment=>'CENTER'
,p_attribute_02=>'VALUE'
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(73203367281859615)
,p_name=>'DAY_KEY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DAY_KEY'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attribute_01=>'Y'
,p_enable_filter=>false
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(73204524132859616)
,p_name=>'CAL_MONTH'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CAL_MONTH'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Μήνας'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>60
,p_value_alignment=>'RIGHT'
,p_attribute_02=>'VALUE'
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(73206318411859619)
,p_name=>'CAL_YEAR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CAL_YEAR'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Έτος'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>90
,p_value_alignment=>'RIGHT'
,p_attribute_02=>'VALUE'
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(73220157953859631)
,p_name=>'HOLIDAY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'HOLIDAY'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Αργία'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>320
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_interactive_grid(
 p_id=>wwv_flow_api.id(73200970816859611)
,p_internal_uid=>73200970816859611
,p_is_editable=>true
,p_edit_operations=>'u'
,p_lost_update_check_type=>'VALUES'
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_show_nulls_as=>'-'
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_download=>true
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_api.create_ig_report(
 p_id=>wwv_flow_api.id(73201373612859611)
,p_interactive_grid_id=>wwv_flow_api.id(73200970816859611)
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_api.create_ig_report_view(
 p_id=>wwv_flow_api.id(73201422790859611)
,p_report_id=>wwv_flow_api.id(73201373612859611)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(73202503252859613)
,p_view_id=>wwv_flow_api.id(73201422790859611)
,p_display_seq=>0
,p_column_id=>wwv_flow_api.id(73202128723859613)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(73203151076859615)
,p_view_id=>wwv_flow_api.id(73201422790859611)
,p_display_seq=>1
,p_column_id=>wwv_flow_api.id(73202724751859613)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(73203795692859616)
,p_view_id=>wwv_flow_api.id(73201422790859611)
,p_display_seq=>2
,p_column_id=>wwv_flow_api.id(73203367281859615)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(73204960107859616)
,p_view_id=>wwv_flow_api.id(73201422790859611)
,p_display_seq=>4
,p_column_id=>wwv_flow_api.id(73204524132859616)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(73206777051859622)
,p_view_id=>wwv_flow_api.id(73201422790859611)
,p_display_seq=>7
,p_column_id=>wwv_flow_api.id(73206318411859619)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(73220589670859631)
,p_view_id=>wwv_flow_api.id(73201422790859611)
,p_display_seq=>30
,p_column_id=>wwv_flow_api.id(73220157953859631)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(73232147367859643)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(73200466308859610)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>' - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00006
begin
wwv_flow_api.create_page(
 p_id=>6
,p_user_interface_id=>wwv_flow_api.id(73182974805446411)
,p_name=>'Πρόγραμμα'
,p_page_mode=>'NORMAL'
,p_step_title=>'Πρόγραμμα'
,p_step_sub_title=>'Πρόγραμμα'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'MARINOSY@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20170808233852'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(73255461987029958)
,p_plug_name=>'ΠΡΟΓΡΑΜΜΑ ΜΙΚΡΟΒΙΟΛΟΓΙΚΟΥ ΕΡΓΑΣΤΗΡΙΟΥ &P6_MONTH_NAME. &P6_MONTH.ος &P6_YEAR.'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(73149310067446237)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select SCHEDULE_ID,',
'       --(select calendar_date from gen_time where day_key = time_id) TIME_ID,',
'       --trim((select to_char(calendar_date, ''DAY'') from gen_time where day_key = time_id)) DAY_NAME,',
'       (select fullname from shc_employee e where e.employee_id = s.employee_id) EMPLOYEE_ID',
'       ,SHIFT1',
'        ,SHIFT2',
'        ,SHIFT3',
'        ,SHIFT4',
'        ,SHIFT5',
'        ,SHIFT6',
'        ,SHIFT7',
'        ,SHIFT8',
'        ,SHIFT9',
'        ,SHIFT10',
'        ,SHIFT11',
'        ,SHIFT12',
'        ,SHIFT13',
'        ,SHIFT14',
'        ,SHIFT15',
'        ,SHIFT16',
'        ,SHIFT17',
'        ,SHIFT18',
'        ,SHIFT19',
'        ,SHIFT20',
'        ,SHIFT21',
'        ,SHIFT22',
'        ,SHIFT23',
'        ,SHIFT24',
'        ,SHIFT25',
'        ,SHIFT26',
'        ,SHIFT27',
'        ,SHIFT28',
'        ,SHIFT29',
'        ,SHIFT30',
'        ,SHIFT31',
'       --/*(select count(*) from SHC_SCHEDULE s2 where s2.time_id = s.time_id and s2.shift_id = s.shift_id)*/ shift_counter,',
'       --/*(select ''Αργία'' from gen_time where day_key = time_id and holiday = 1)*/ holiday',
'       ,(select schedule_order from shc_employee emp where emp.employee_id = s.employee_id) schedule_order',
'       ,case when shc_schedule_pkg.is_sk(:P6_YEAR, :P6_MONTH, 1) = ''Y'' or shc_schedule_pkg.is_holiday(:P6_YEAR, :P6_MONTH, 1) = ''Y'' then 1 else 0 end sh1_holiday',
'       ,case when shc_schedule_pkg.is_sk(:P6_YEAR, :P6_MONTH, 2) = ''Y'' or shc_schedule_pkg.is_holiday(:P6_YEAR, :P6_MONTH, 2) = ''Y'' then 1 else 0 end sh2_holiday',
'       ,case when shc_schedule_pkg.is_sk(:P6_YEAR, :P6_MONTH, 3) = ''Y'' or shc_schedule_pkg.is_holiday(:P6_YEAR, :P6_MONTH, 3) = ''Y'' then 1 else 0 end sh3_holiday',
'       ,case when shc_schedule_pkg.is_sk(:P6_YEAR, :P6_MONTH, 4) = ''Y'' or shc_schedule_pkg.is_holiday(:P6_YEAR, :P6_MONTH, 4) = ''Y'' then 1 else 0 end sh4_holiday',
'       ,case when shc_schedule_pkg.is_sk(:P6_YEAR, :P6_MONTH, 5) = ''Y'' or shc_schedule_pkg.is_holiday(:P6_YEAR, :P6_MONTH, 5) = ''Y'' then 1 else 0 end sh5_holiday',
'       ,case when shc_schedule_pkg.is_sk(:P6_YEAR, :P6_MONTH, 6) = ''Y'' or shc_schedule_pkg.is_holiday(:P6_YEAR, :P6_MONTH, 6) = ''Y'' then 1 else 0 end sh6_holiday',
'       ,case when shc_schedule_pkg.is_sk(:P6_YEAR, :P6_MONTH, 7) = ''Y'' or shc_schedule_pkg.is_holiday(:P6_YEAR, :P6_MONTH, 7) = ''Y'' then 1 else 0 end sh7_holiday',
'       ,case when shc_schedule_pkg.is_sk(:P6_YEAR, :P6_MONTH, 8) = ''Y'' or shc_schedule_pkg.is_holiday(:P6_YEAR, :P6_MONTH, 8) = ''Y'' then 1 else 0 end sh8_holiday',
'       ,case when shc_schedule_pkg.is_sk(:P6_YEAR, :P6_MONTH, 9) = ''Y'' or shc_schedule_pkg.is_holiday(:P6_YEAR, :P6_MONTH, 9) = ''Y'' then 1 else 0 end sh9_holiday',
'       ,case when shc_schedule_pkg.is_sk(:P6_YEAR, :P6_MONTH, 10) = ''Y'' or shc_schedule_pkg.is_holiday(:P6_YEAR, :P6_MONTH, 10) = ''Y'' then 1 else 0 end sh10_holiday',
'       ,case when shc_schedule_pkg.is_sk(:P6_YEAR, :P6_MONTH, 11) = ''Y'' or shc_schedule_pkg.is_holiday(:P6_YEAR, :P6_MONTH, 11) = ''Y'' then 1 else 0 end sh11_holiday',
'       ,case when shc_schedule_pkg.is_sk(:P6_YEAR, :P6_MONTH, 12) = ''Y'' or shc_schedule_pkg.is_holiday(:P6_YEAR, :P6_MONTH, 12) = ''Y'' then 1 else 0 end sh12_holiday',
'       ,case when shc_schedule_pkg.is_sk(:P6_YEAR, :P6_MONTH, 13) = ''Y'' or shc_schedule_pkg.is_holiday(:P6_YEAR, :P6_MONTH, 13) = ''Y'' then 1 else 0 end sh13_holiday',
'       ,case when shc_schedule_pkg.is_sk(:P6_YEAR, :P6_MONTH, 14) = ''Y'' or shc_schedule_pkg.is_holiday(:P6_YEAR, :P6_MONTH, 14) = ''Y'' then 1 else 0 end sh14_holiday',
'       ,case when shc_schedule_pkg.is_sk(:P6_YEAR, :P6_MONTH, 15) = ''Y'' or shc_schedule_pkg.is_holiday(:P6_YEAR, :P6_MONTH, 15) = ''Y'' then 1 else 0 end sh15_holiday',
'       ,case when shc_schedule_pkg.is_sk(:P6_YEAR, :P6_MONTH, 16) = ''Y'' or shc_schedule_pkg.is_holiday(:P6_YEAR, :P6_MONTH, 16) = ''Y'' then 1 else 0 end sh16_holiday',
'       ,case when shc_schedule_pkg.is_sk(:P6_YEAR, :P6_MONTH, 17) = ''Y'' or shc_schedule_pkg.is_holiday(:P6_YEAR, :P6_MONTH, 17) = ''Y'' then 1 else 0 end sh17_holiday',
'       ,case when shc_schedule_pkg.is_sk(:P6_YEAR, :P6_MONTH, 18) = ''Y'' or shc_schedule_pkg.is_holiday(:P6_YEAR, :P6_MONTH, 18) = ''Y'' then 1 else 0 end sh18_holiday',
'       ,case when shc_schedule_pkg.is_sk(:P6_YEAR, :P6_MONTH, 19) = ''Y'' or shc_schedule_pkg.is_holiday(:P6_YEAR, :P6_MONTH, 19) = ''Y'' then 1 else 0 end sh19_holiday',
'       ,case when shc_schedule_pkg.is_sk(:P6_YEAR, :P6_MONTH, 20) = ''Y'' or shc_schedule_pkg.is_holiday(:P6_YEAR, :P6_MONTH, 20) = ''Y'' then 1 else 0 end sh20_holiday',
'       ,case when shc_schedule_pkg.is_sk(:P6_YEAR, :P6_MONTH, 21) = ''Y'' or shc_schedule_pkg.is_holiday(:P6_YEAR, :P6_MONTH, 21) = ''Y'' then 1 else 0 end sh21_holiday',
'       ,case when shc_schedule_pkg.is_sk(:P6_YEAR, :P6_MONTH, 22) = ''Y'' or shc_schedule_pkg.is_holiday(:P6_YEAR, :P6_MONTH, 22) = ''Y'' then 1 else 0 end sh22_holiday',
'       ,case when shc_schedule_pkg.is_sk(:P6_YEAR, :P6_MONTH, 23) = ''Y'' or shc_schedule_pkg.is_holiday(:P6_YEAR, :P6_MONTH, 23) = ''Y'' then 1 else 0 end sh23_holiday',
'       ,case when shc_schedule_pkg.is_sk(:P6_YEAR, :P6_MONTH, 24) = ''Y'' or shc_schedule_pkg.is_holiday(:P6_YEAR, :P6_MONTH, 24) = ''Y'' then 1 else 0 end sh24_holiday',
'       ,case when shc_schedule_pkg.is_sk(:P6_YEAR, :P6_MONTH, 25) = ''Y'' or shc_schedule_pkg.is_holiday(:P6_YEAR, :P6_MONTH, 25) = ''Y'' then 1 else 0 end sh25_holiday',
'       ,case when shc_schedule_pkg.is_sk(:P6_YEAR, :P6_MONTH, 26) = ''Y'' or shc_schedule_pkg.is_holiday(:P6_YEAR, :P6_MONTH, 26) = ''Y'' then 1 else 0 end sh26_holiday',
'       ,case when shc_schedule_pkg.is_sk(:P6_YEAR, :P6_MONTH, 27) = ''Y'' or shc_schedule_pkg.is_holiday(:P6_YEAR, :P6_MONTH, 27) = ''Y'' then 1 else 0 end sh27_holiday',
'       ,case when shc_schedule_pkg.is_sk(:P6_YEAR, :P6_MONTH, 28) = ''Y'' or shc_schedule_pkg.is_holiday(:P6_YEAR, :P6_MONTH, 28) = ''Y'' then 1 else 0 end sh28_holiday',
'       ,case when shc_schedule_pkg.is_sk(:P6_YEAR, :P6_MONTH, 29) = ''Y'' or shc_schedule_pkg.is_holiday(:P6_YEAR, :P6_MONTH, 29) = ''Y'' then 1 else 0 end sh29_holiday',
'       ,case when shc_schedule_pkg.is_sk(:P6_YEAR, :P6_MONTH, 30) = ''Y'' or shc_schedule_pkg.is_holiday(:P6_YEAR, :P6_MONTH, 30) = ''Y'' then 1 else 0 end sh30_holiday',
'       ,case when shc_schedule_pkg.is_sk(:P6_YEAR, :P6_MONTH, 31) = ''Y'' or shc_schedule_pkg.is_holiday(:P6_YEAR, :P6_MONTH, 31) = ''Y'' then 1 else 0 end sh31_holiday',
'  from SHC_SCHEDULE s',
'  where cal_year = :P6_YEAR',
'   and cal_month = :P6_MONTH'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P6_MONTH,P6_YEAR'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_footer=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<style>',
'    div.a-Toolbar-group.a-Toolbar-group--together {',
'    display: none!important;',
'    visibility: hidden;!important;',
'}',
'</style>'))
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(73256649910029969)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attribute_01=>'N'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(73257187728029969)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_display_condition_type=>'NEVER'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(73257777133029971)
,p_name=>'SCHEDULE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SCHEDULE_ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_is_primary_key=>true
,p_default_type=>'SEQUENCE'
,p_default_expression=>'shc_schedule_seq'
,p_duplicate_value=>false
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(73258945465029972)
,p_name=>'EMPLOYEE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMPLOYEE_ID'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
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
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(114374002356883902)
,p_name=>'SHIFT1'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SHIFT1'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'1&P6_S1.'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>70
,p_value_alignment=>'RIGHT'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_api.id(114402829337107110)
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(114374144392883903)
,p_name=>'SHIFT2'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SHIFT2'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'2&P6_S2.'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>80
,p_value_alignment=>'RIGHT'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_api.id(114402829337107110)
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(114374258348883904)
,p_name=>'SHIFT3'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SHIFT3'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'3&P6_S3.'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>90
,p_value_alignment=>'RIGHT'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_api.id(114402829337107110)
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(114374332704883905)
,p_name=>'SHIFT4'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SHIFT4'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'4&P6_S4.'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>100
,p_value_alignment=>'RIGHT'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_api.id(114402829337107110)
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(114374418028883906)
,p_name=>'SHIFT5'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SHIFT5'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'5&P6_S5.'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>110
,p_value_alignment=>'RIGHT'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_api.id(114402829337107110)
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(114374514647883907)
,p_name=>'SHIFT6'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SHIFT6'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'6&P6_S6.'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>120
,p_value_alignment=>'RIGHT'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_api.id(114402829337107110)
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(114374687680883908)
,p_name=>'SHIFT7'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SHIFT7'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'7&P6_S7.'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>130
,p_value_alignment=>'RIGHT'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_api.id(114402829337107110)
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(114374705724883909)
,p_name=>'SHIFT8'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SHIFT8'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'8&P6_S8.'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>140
,p_value_alignment=>'RIGHT'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_api.id(114402829337107110)
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(114374857710883910)
,p_name=>'SHIFT9'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SHIFT9'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'9&P6_S9.'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>150
,p_value_alignment=>'RIGHT'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_api.id(114402829337107110)
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(114374989293883911)
,p_name=>'SHIFT10'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SHIFT10'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'10&P6_S10.'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>160
,p_value_alignment=>'RIGHT'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_api.id(114402829337107110)
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(114375076328883912)
,p_name=>'SHIFT11'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SHIFT11'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'11&P6_S11.'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>170
,p_value_alignment=>'RIGHT'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_api.id(114402829337107110)
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(114375102268883913)
,p_name=>'SHIFT12'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SHIFT12'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'12&P6_S12.'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>180
,p_value_alignment=>'RIGHT'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_api.id(114402829337107110)
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(114375218140883914)
,p_name=>'SHIFT13'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SHIFT13'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'13&P6_S13.'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>190
,p_value_alignment=>'RIGHT'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_api.id(114402829337107110)
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(114375311765883915)
,p_name=>'SHIFT14'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SHIFT14'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'14&P6_S14.'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>200
,p_value_alignment=>'RIGHT'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_api.id(114402829337107110)
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(114375419903883916)
,p_name=>'SHIFT15'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SHIFT15'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'15&P6_S15.'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>210
,p_value_alignment=>'RIGHT'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_api.id(114402829337107110)
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(114375541678883917)
,p_name=>'SHIFT16'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SHIFT16'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'16&P6_S16.'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>220
,p_value_alignment=>'RIGHT'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_api.id(114402829337107110)
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(114375652832883918)
,p_name=>'SHIFT17'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SHIFT17'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'17&P6_S17.'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>230
,p_value_alignment=>'RIGHT'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_api.id(114402829337107110)
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(114375766052883919)
,p_name=>'SHIFT18'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SHIFT18'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'18&P6_S18.'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>240
,p_value_alignment=>'RIGHT'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_api.id(114402829337107110)
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(114375800290883920)
,p_name=>'SHIFT19'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SHIFT19'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'19&P6_S19.'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>250
,p_value_alignment=>'RIGHT'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_api.id(114402829337107110)
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(114375992023883921)
,p_name=>'SHIFT20'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SHIFT20'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'20&P6_S20.'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>260
,p_value_alignment=>'RIGHT'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_api.id(114402829337107110)
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(114376096220883922)
,p_name=>'SHIFT21'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SHIFT21'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'21&P6_S21.'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>270
,p_value_alignment=>'RIGHT'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_api.id(114402829337107110)
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(114376199583883923)
,p_name=>'SHIFT22'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SHIFT22'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'22&P6_S22.'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>280
,p_value_alignment=>'RIGHT'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_api.id(114402829337107110)
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(114376205029883924)
,p_name=>'SHIFT23'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SHIFT23'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'23&P6_S23.'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>290
,p_value_alignment=>'RIGHT'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_api.id(114402829337107110)
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(114376338919883925)
,p_name=>'SHIFT24'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SHIFT24'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'24&P6_S24.'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>300
,p_value_alignment=>'RIGHT'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_api.id(114402829337107110)
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(114376474678883926)
,p_name=>'SHIFT25'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SHIFT25'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'25&P6_S25.'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>310
,p_value_alignment=>'RIGHT'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_api.id(114402829337107110)
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(114376549770883927)
,p_name=>'SHIFT26'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SHIFT26'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'26&P6_S26.'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>320
,p_value_alignment=>'RIGHT'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_api.id(114402829337107110)
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(114376610646883928)
,p_name=>'SHIFT27'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SHIFT27'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'27&P6_S27.'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>330
,p_value_alignment=>'RIGHT'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_api.id(114402829337107110)
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(114376740047883929)
,p_name=>'SHIFT28'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SHIFT28'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'28&P6_S28.'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>340
,p_value_alignment=>'RIGHT'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_api.id(114402829337107110)
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
end;
/
begin
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(114376848326883930)
,p_name=>'SHIFT29'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SHIFT29'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'29&P6_S29.'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>350
,p_value_alignment=>'RIGHT'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_api.id(114402829337107110)
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_display_condition=>'P6_MONTH'
,p_display_condition2=>'2'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(114376920543883931)
,p_name=>'SHIFT30'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SHIFT30'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'30&P6_S30.'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>360
,p_value_alignment=>'RIGHT'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_api.id(114402829337107110)
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_display_condition=>'P6_MONTH'
,p_display_condition2=>'2'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(114377097338883932)
,p_name=>'SHIFT31'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SHIFT31'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'31&P6_S31.'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>370
,p_value_alignment=>'RIGHT'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_api.id(114402829337107110)
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 ',
'from dual',
'where :P6_MONTH not in (2,4,6,9,11)'))
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(114377329171883935)
,p_name=>'SCHEDULE_ORDER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SCHEDULE_ORDER'
,p_data_type=>'NUMBER'
,p_is_query_only=>true
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Schedule order'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>380
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_is_primary_key=>false
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(117050032645717309)
,p_name=>'SH1_HOLIDAY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SH1_HOLIDAY'
,p_data_type=>'NUMBER'
,p_is_query_only=>true
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>390
,p_value_alignment=>'LEFT'
,p_attribute_03=>'right'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_is_primary_key=>false
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(117050104546717310)
,p_name=>'SH2_HOLIDAY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SH2_HOLIDAY'
,p_data_type=>'NUMBER'
,p_is_query_only=>true
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>400
,p_value_alignment=>'LEFT'
,p_attribute_03=>'right'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_is_primary_key=>false
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(117050260135717311)
,p_name=>'SH3_HOLIDAY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SH3_HOLIDAY'
,p_data_type=>'NUMBER'
,p_is_query_only=>true
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Sh3 holiday'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>410
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_is_primary_key=>false
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(117050387270717312)
,p_name=>'SH4_HOLIDAY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SH4_HOLIDAY'
,p_data_type=>'NUMBER'
,p_is_query_only=>true
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Sh4 holiday'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>420
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_is_primary_key=>false
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(117050443955717313)
,p_name=>'SH5_HOLIDAY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SH5_HOLIDAY'
,p_data_type=>'NUMBER'
,p_is_query_only=>true
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Sh5 holiday'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>430
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_is_primary_key=>false
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(117050532051717314)
,p_name=>'SH6_HOLIDAY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SH6_HOLIDAY'
,p_data_type=>'NUMBER'
,p_is_query_only=>true
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Sh6 holiday'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>440
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_is_primary_key=>false
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(117050681428717315)
,p_name=>'SH7_HOLIDAY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SH7_HOLIDAY'
,p_data_type=>'NUMBER'
,p_is_query_only=>true
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Sh7 holiday'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>450
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_is_primary_key=>false
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(117050701257717316)
,p_name=>'SH8_HOLIDAY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SH8_HOLIDAY'
,p_data_type=>'NUMBER'
,p_is_query_only=>true
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Sh8 holiday'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>460
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_is_primary_key=>false
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(117050875884717317)
,p_name=>'SH9_HOLIDAY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SH9_HOLIDAY'
,p_data_type=>'NUMBER'
,p_is_query_only=>true
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Sh9 holiday'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>470
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_is_primary_key=>false
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(117050927057717318)
,p_name=>'SH10_HOLIDAY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SH10_HOLIDAY'
,p_data_type=>'NUMBER'
,p_is_query_only=>true
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Sh10 holiday'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>480
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_is_primary_key=>false
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(117051085810717319)
,p_name=>'SH11_HOLIDAY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SH11_HOLIDAY'
,p_data_type=>'NUMBER'
,p_is_query_only=>true
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Sh11 holiday'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>490
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_is_primary_key=>false
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(117051104378717320)
,p_name=>'SH12_HOLIDAY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SH12_HOLIDAY'
,p_data_type=>'NUMBER'
,p_is_query_only=>true
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Sh12 holiday'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>500
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_is_primary_key=>false
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(117051244877717321)
,p_name=>'SH13_HOLIDAY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SH13_HOLIDAY'
,p_data_type=>'NUMBER'
,p_is_query_only=>true
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Sh13 holiday'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>510
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_is_primary_key=>false
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(117051322089717322)
,p_name=>'SH14_HOLIDAY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SH14_HOLIDAY'
,p_data_type=>'NUMBER'
,p_is_query_only=>true
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Sh14 holiday'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>520
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_is_primary_key=>false
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(117051435841717323)
,p_name=>'SH15_HOLIDAY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SH15_HOLIDAY'
,p_data_type=>'NUMBER'
,p_is_query_only=>true
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Sh15 holiday'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>530
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_is_primary_key=>false
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(117051521408717324)
,p_name=>'SH16_HOLIDAY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SH16_HOLIDAY'
,p_data_type=>'NUMBER'
,p_is_query_only=>true
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Sh16 holiday'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>540
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_is_primary_key=>false
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(117051621509717325)
,p_name=>'SH17_HOLIDAY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SH17_HOLIDAY'
,p_data_type=>'NUMBER'
,p_is_query_only=>true
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Sh17 holiday'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>550
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_is_primary_key=>false
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(117051732040717326)
,p_name=>'SH18_HOLIDAY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SH18_HOLIDAY'
,p_data_type=>'NUMBER'
,p_is_query_only=>true
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Sh18 holiday'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>560
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_is_primary_key=>false
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(117051823442717327)
,p_name=>'SH19_HOLIDAY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SH19_HOLIDAY'
,p_data_type=>'NUMBER'
,p_is_query_only=>true
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Sh19 holiday'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>570
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_is_primary_key=>false
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(117051997433717328)
,p_name=>'SH20_HOLIDAY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SH20_HOLIDAY'
,p_data_type=>'NUMBER'
,p_is_query_only=>true
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Sh20 holiday'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>580
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_is_primary_key=>false
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(117052062615717329)
,p_name=>'SH21_HOLIDAY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SH21_HOLIDAY'
,p_data_type=>'NUMBER'
,p_is_query_only=>true
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Sh21 holiday'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>590
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_is_primary_key=>false
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(117052196324717330)
,p_name=>'SH22_HOLIDAY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SH22_HOLIDAY'
,p_data_type=>'NUMBER'
,p_is_query_only=>true
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Sh22 holiday'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>600
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_is_primary_key=>false
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(117052283075717331)
,p_name=>'SH23_HOLIDAY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SH23_HOLIDAY'
,p_data_type=>'NUMBER'
,p_is_query_only=>true
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Sh23 holiday'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>610
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_is_primary_key=>false
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(117052310672717332)
,p_name=>'SH24_HOLIDAY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SH24_HOLIDAY'
,p_data_type=>'NUMBER'
,p_is_query_only=>true
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Sh24 holiday'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>620
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_is_primary_key=>false
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(117052491114717333)
,p_name=>'SH25_HOLIDAY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SH25_HOLIDAY'
,p_data_type=>'NUMBER'
,p_is_query_only=>true
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Sh25 holiday'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>630
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_is_primary_key=>false
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(117052504869717334)
,p_name=>'SH26_HOLIDAY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SH26_HOLIDAY'
,p_data_type=>'NUMBER'
,p_is_query_only=>true
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Sh26 holiday'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>640
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_is_primary_key=>false
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(117052680666717335)
,p_name=>'SH27_HOLIDAY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SH27_HOLIDAY'
,p_data_type=>'NUMBER'
,p_is_query_only=>true
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Sh27 holiday'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>650
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_is_primary_key=>false
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(117052787731717336)
,p_name=>'SH28_HOLIDAY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SH28_HOLIDAY'
,p_data_type=>'NUMBER'
,p_is_query_only=>true
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Sh28 holiday'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>660
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_is_primary_key=>false
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(117052863570717337)
,p_name=>'SH29_HOLIDAY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SH29_HOLIDAY'
,p_data_type=>'NUMBER'
,p_is_query_only=>true
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Sh29 holiday'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>670
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_is_primary_key=>false
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(117052996859717338)
,p_name=>'SH30_HOLIDAY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SH30_HOLIDAY'
,p_data_type=>'NUMBER'
,p_is_query_only=>true
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Sh30 holiday'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>680
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_is_primary_key=>false
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(117053017107717339)
,p_name=>'SH31_HOLIDAY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SH31_HOLIDAY'
,p_data_type=>'NUMBER'
,p_is_query_only=>true
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Sh31 holiday'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>690
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_is_primary_key=>false
,p_include_in_export=>true
);
wwv_flow_api.create_interactive_grid(
 p_id=>wwv_flow_api.id(73255916418029962)
,p_internal_uid=>73255916418029962
,p_is_editable=>true
,p_edit_operations=>'u'
,p_lost_update_check_type=>'VALUES'
,p_submit_checked_rows=>false
,p_lazy_loading=>true
,p_requires_filter=>false
,p_show_nulls_as=>'-'
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>false
,p_show_toolbar=>true
,p_toolbar_buttons=>'SAVE'
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_download=>true
,p_download_filename=>'print_schedule'
,p_enable_mail_download=>true
,p_csv_separator=>';'
,p_csv_enclosed_by=>'"'
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_api.create_ig_report(
 p_id=>wwv_flow_api.id(73256350611029964)
,p_interactive_grid_id=>wwv_flow_api.id(73255916418029962)
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>false
);
wwv_flow_api.create_ig_report_view(
 p_id=>wwv_flow_api.id(73256434862029965)
,p_report_id=>wwv_flow_api.id(73256350611029964)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(3158222050668)
,p_view_id=>wwv_flow_api.id(73256434862029965)
,p_display_seq=>35
,p_column_id=>wwv_flow_api.id(117050260135717311)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(3800747050672)
,p_view_id=>wwv_flow_api.id(73256434862029965)
,p_display_seq=>36
,p_column_id=>wwv_flow_api.id(117050387270717312)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(4348980050674)
,p_view_id=>wwv_flow_api.id(73256434862029965)
,p_display_seq=>37
,p_column_id=>wwv_flow_api.id(117050443955717313)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(4855404050675)
,p_view_id=>wwv_flow_api.id(73256434862029965)
,p_display_seq=>38
,p_column_id=>wwv_flow_api.id(117050532051717314)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(5458398050677)
,p_view_id=>wwv_flow_api.id(73256434862029965)
,p_display_seq=>39
,p_column_id=>wwv_flow_api.id(117050681428717315)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(6023790050678)
,p_view_id=>wwv_flow_api.id(73256434862029965)
,p_display_seq=>40
,p_column_id=>wwv_flow_api.id(117050701257717316)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(6670150050680)
,p_view_id=>wwv_flow_api.id(73256434862029965)
,p_display_seq=>41
,p_column_id=>wwv_flow_api.id(117050875884717317)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(7227309050687)
,p_view_id=>wwv_flow_api.id(73256434862029965)
,p_display_seq=>42
,p_column_id=>wwv_flow_api.id(117050927057717318)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(7888925050688)
,p_view_id=>wwv_flow_api.id(73256434862029965)
,p_display_seq=>43
,p_column_id=>wwv_flow_api.id(117051085810717319)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(8473784050692)
,p_view_id=>wwv_flow_api.id(73256434862029965)
,p_display_seq=>44
,p_column_id=>wwv_flow_api.id(117051104378717320)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(9075558050694)
,p_view_id=>wwv_flow_api.id(73256434862029965)
,p_display_seq=>45
,p_column_id=>wwv_flow_api.id(117051244877717321)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(9674277050695)
,p_view_id=>wwv_flow_api.id(73256434862029965)
,p_display_seq=>46
,p_column_id=>wwv_flow_api.id(117051322089717322)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(10262934050697)
,p_view_id=>wwv_flow_api.id(73256434862029965)
,p_display_seq=>47
,p_column_id=>wwv_flow_api.id(117051435841717323)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(10816810050698)
,p_view_id=>wwv_flow_api.id(73256434862029965)
,p_display_seq=>48
,p_column_id=>wwv_flow_api.id(117051521408717324)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(11459317050700)
,p_view_id=>wwv_flow_api.id(73256434862029965)
,p_display_seq=>49
,p_column_id=>wwv_flow_api.id(117051621509717325)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(12055232050701)
,p_view_id=>wwv_flow_api.id(73256434862029965)
,p_display_seq=>50
,p_column_id=>wwv_flow_api.id(117051732040717326)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(12620482050703)
,p_view_id=>wwv_flow_api.id(73256434862029965)
,p_display_seq=>51
,p_column_id=>wwv_flow_api.id(117051823442717327)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(13228514050704)
,p_view_id=>wwv_flow_api.id(73256434862029965)
,p_display_seq=>52
,p_column_id=>wwv_flow_api.id(117051997433717328)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(13896046050706)
,p_view_id=>wwv_flow_api.id(73256434862029965)
,p_display_seq=>53
,p_column_id=>wwv_flow_api.id(117052062615717329)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(14461783050709)
,p_view_id=>wwv_flow_api.id(73256434862029965)
,p_display_seq=>54
,p_column_id=>wwv_flow_api.id(117052196324717330)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(15039754050710)
,p_view_id=>wwv_flow_api.id(73256434862029965)
,p_display_seq=>55
,p_column_id=>wwv_flow_api.id(117052283075717331)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(15648851050714)
,p_view_id=>wwv_flow_api.id(73256434862029965)
,p_display_seq=>56
,p_column_id=>wwv_flow_api.id(117052310672717332)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(16221733050718)
,p_view_id=>wwv_flow_api.id(73256434862029965)
,p_display_seq=>57
,p_column_id=>wwv_flow_api.id(117052491114717333)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(16835802050719)
,p_view_id=>wwv_flow_api.id(73256434862029965)
,p_display_seq=>58
,p_column_id=>wwv_flow_api.id(117052504869717334)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(17476057050721)
,p_view_id=>wwv_flow_api.id(73256434862029965)
,p_display_seq=>59
,p_column_id=>wwv_flow_api.id(117052680666717335)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(18079617050722)
,p_view_id=>wwv_flow_api.id(73256434862029965)
,p_display_seq=>60
,p_column_id=>wwv_flow_api.id(117052787731717336)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(18662962050725)
,p_view_id=>wwv_flow_api.id(73256434862029965)
,p_display_seq=>61
,p_column_id=>wwv_flow_api.id(117052863570717337)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(19288897050726)
,p_view_id=>wwv_flow_api.id(73256434862029965)
,p_display_seq=>62
,p_column_id=>wwv_flow_api.id(117052996859717338)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(19894207050730)
,p_view_id=>wwv_flow_api.id(73256434862029965)
,p_display_seq=>63
,p_column_id=>wwv_flow_api.id(117053017107717339)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(73257584778029970)
,p_view_id=>wwv_flow_api.id(73256434862029965)
,p_display_seq=>0
,p_column_id=>wwv_flow_api.id(73257187728029969)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(73258169275029971)
,p_view_id=>wwv_flow_api.id(73256434862029965)
,p_display_seq=>2
,p_column_id=>wwv_flow_api.id(73257777133029971)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(73259317580029972)
,p_view_id=>wwv_flow_api.id(73256434862029965)
,p_display_seq=>0
,p_column_id=>wwv_flow_api.id(73258945465029972)
,p_is_visible=>true
,p_is_frozen=>true
,p_width=>113
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(114381180054952007)
,p_view_id=>wwv_flow_api.id(73256434862029965)
,p_display_seq=>2
,p_column_id=>wwv_flow_api.id(114374002356883902)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>30
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(114381636741952009)
,p_view_id=>wwv_flow_api.id(73256434862029965)
,p_display_seq=>3
,p_column_id=>wwv_flow_api.id(114374144392883903)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>30
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(114382137819952010)
,p_view_id=>wwv_flow_api.id(73256434862029965)
,p_display_seq=>4
,p_column_id=>wwv_flow_api.id(114374258348883904)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>30
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(114382694568952011)
,p_view_id=>wwv_flow_api.id(73256434862029965)
,p_display_seq=>5
,p_column_id=>wwv_flow_api.id(114374332704883905)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>30
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(114383163749952022)
,p_view_id=>wwv_flow_api.id(73256434862029965)
,p_display_seq=>6
,p_column_id=>wwv_flow_api.id(114374418028883906)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>30
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(114383690215952023)
,p_view_id=>wwv_flow_api.id(73256434862029965)
,p_display_seq=>7
,p_column_id=>wwv_flow_api.id(114374514647883907)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>30
);
end;
/
begin
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(114384184361952025)
,p_view_id=>wwv_flow_api.id(73256434862029965)
,p_display_seq=>8
,p_column_id=>wwv_flow_api.id(114374687680883908)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>30
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(114384641145952031)
,p_view_id=>wwv_flow_api.id(73256434862029965)
,p_display_seq=>9
,p_column_id=>wwv_flow_api.id(114374705724883909)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>30
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(114385188987952032)
,p_view_id=>wwv_flow_api.id(73256434862029965)
,p_display_seq=>10
,p_column_id=>wwv_flow_api.id(114374857710883910)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>30
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(114385677501952033)
,p_view_id=>wwv_flow_api.id(73256434862029965)
,p_display_seq=>11
,p_column_id=>wwv_flow_api.id(114374989293883911)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>35
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(114386121234952044)
,p_view_id=>wwv_flow_api.id(73256434862029965)
,p_display_seq=>12
,p_column_id=>wwv_flow_api.id(114375076328883912)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>35
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(114386632283952045)
,p_view_id=>wwv_flow_api.id(73256434862029965)
,p_display_seq=>13
,p_column_id=>wwv_flow_api.id(114375102268883913)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>35
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(114387104868952047)
,p_view_id=>wwv_flow_api.id(73256434862029965)
,p_display_seq=>14
,p_column_id=>wwv_flow_api.id(114375218140883914)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>35
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(114387640890952048)
,p_view_id=>wwv_flow_api.id(73256434862029965)
,p_display_seq=>15
,p_column_id=>wwv_flow_api.id(114375311765883915)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>35
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(114388118351952051)
,p_view_id=>wwv_flow_api.id(73256434862029965)
,p_display_seq=>16
,p_column_id=>wwv_flow_api.id(114375419903883916)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>35
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(114388658982952052)
,p_view_id=>wwv_flow_api.id(73256434862029965)
,p_display_seq=>17
,p_column_id=>wwv_flow_api.id(114375541678883917)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>35
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(114389156903952053)
,p_view_id=>wwv_flow_api.id(73256434862029965)
,p_display_seq=>18
,p_column_id=>wwv_flow_api.id(114375652832883918)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>35
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(114389640928952055)
,p_view_id=>wwv_flow_api.id(73256434862029965)
,p_display_seq=>19
,p_column_id=>wwv_flow_api.id(114375766052883919)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>35
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(114390136783952056)
,p_view_id=>wwv_flow_api.id(73256434862029965)
,p_display_seq=>20
,p_column_id=>wwv_flow_api.id(114375800290883920)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>35
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(114390659483952057)
,p_view_id=>wwv_flow_api.id(73256434862029965)
,p_display_seq=>21
,p_column_id=>wwv_flow_api.id(114375992023883921)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>35
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(114391106726952059)
,p_view_id=>wwv_flow_api.id(73256434862029965)
,p_display_seq=>22
,p_column_id=>wwv_flow_api.id(114376096220883922)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>35
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(114391664295952060)
,p_view_id=>wwv_flow_api.id(73256434862029965)
,p_display_seq=>23
,p_column_id=>wwv_flow_api.id(114376199583883923)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>35
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(114392170314952061)
,p_view_id=>wwv_flow_api.id(73256434862029965)
,p_display_seq=>24
,p_column_id=>wwv_flow_api.id(114376205029883924)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>35
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(114392600634952063)
,p_view_id=>wwv_flow_api.id(73256434862029965)
,p_display_seq=>25
,p_column_id=>wwv_flow_api.id(114376338919883925)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>35
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(114393152550952064)
,p_view_id=>wwv_flow_api.id(73256434862029965)
,p_display_seq=>26
,p_column_id=>wwv_flow_api.id(114376474678883926)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>35
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(114393689763952066)
,p_view_id=>wwv_flow_api.id(73256434862029965)
,p_display_seq=>27
,p_column_id=>wwv_flow_api.id(114376549770883927)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>35
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(114394164380952067)
,p_view_id=>wwv_flow_api.id(73256434862029965)
,p_display_seq=>28
,p_column_id=>wwv_flow_api.id(114376610646883928)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>35
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(114394658278952074)
,p_view_id=>wwv_flow_api.id(73256434862029965)
,p_display_seq=>29
,p_column_id=>wwv_flow_api.id(114376740047883929)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>35
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(114395105698952075)
,p_view_id=>wwv_flow_api.id(73256434862029965)
,p_display_seq=>30
,p_column_id=>wwv_flow_api.id(114376848326883930)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>35
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(114395698159952077)
,p_view_id=>wwv_flow_api.id(73256434862029965)
,p_display_seq=>31
,p_column_id=>wwv_flow_api.id(114376920543883931)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>35
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(114396131418952078)
,p_view_id=>wwv_flow_api.id(73256434862029965)
,p_display_seq=>32
,p_column_id=>wwv_flow_api.id(114377097338883932)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(114400441876049202)
,p_view_id=>wwv_flow_api.id(73256434862029965)
,p_display_seq=>32
,p_column_id=>wwv_flow_api.id(114377329171883935)
,p_is_visible=>false
,p_is_frozen=>false
,p_sort_order=>1
,p_sort_direction=>'ASC'
,p_sort_nulls=>'LAST'
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(118257626364307064)
,p_view_id=>wwv_flow_api.id(73256434862029965)
,p_display_seq=>33
,p_column_id=>wwv_flow_api.id(117050032645717309)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(118258155589307069)
,p_view_id=>wwv_flow_api.id(73256434862029965)
,p_display_seq=>34
,p_column_id=>wwv_flow_api.id(117050104546717310)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_highlight(
 p_id=>wwv_flow_api.id(61312000002)
,p_view_id=>wwv_flow_api.id(73256434862029965)
,p_execution_seq=>15
,p_name=>'sh3'
,p_column_id=>wwv_flow_api.id(114374258348883904)
,p_background_color=>'#D6D2D6'
,p_condition_type=>'COLUMN'
,p_condition_column_id=>wwv_flow_api.id(117050260135717311)
,p_condition_operator=>'EQ'
,p_condition_is_case_sensitive=>false
,p_condition_expression=>'1'
,p_is_enabled=>true
);
wwv_flow_api.create_ig_report_highlight(
 p_id=>wwv_flow_api.id(78707000001)
,p_view_id=>wwv_flow_api.id(73256434862029965)
,p_execution_seq=>5
,p_name=>'sh1'
,p_column_id=>wwv_flow_api.id(114374002356883902)
,p_background_color=>'#D6D2D6'
,p_condition_type=>'COLUMN'
,p_condition_column_id=>wwv_flow_api.id(117050032645717309)
,p_condition_operator=>'EQ'
,p_condition_is_case_sensitive=>false
,p_condition_expression=>'1'
,p_is_enabled=>true
);
wwv_flow_api.create_ig_report_highlight(
 p_id=>wwv_flow_api.id(165027000002)
,p_view_id=>wwv_flow_api.id(73256434862029965)
,p_execution_seq=>20
,p_name=>'sh4'
,p_column_id=>wwv_flow_api.id(114374332704883905)
,p_background_color=>'#D6D2D6'
,p_condition_type=>'COLUMN'
,p_condition_column_id=>wwv_flow_api.id(117050387270717312)
,p_condition_operator=>'EQ'
,p_condition_is_case_sensitive=>false
,p_condition_expression=>'1'
,p_is_enabled=>true
);
wwv_flow_api.create_ig_report_highlight(
 p_id=>wwv_flow_api.id(241078000002)
,p_view_id=>wwv_flow_api.id(73256434862029965)
,p_execution_seq=>25
,p_name=>'sh5'
,p_column_id=>wwv_flow_api.id(114374418028883906)
,p_background_color=>'#D6D2D6'
,p_condition_type=>'COLUMN'
,p_condition_column_id=>wwv_flow_api.id(117050443955717313)
,p_condition_operator=>'EQ'
,p_condition_is_case_sensitive=>false
,p_condition_expression=>'1'
,p_is_enabled=>true
);
wwv_flow_api.create_ig_report_highlight(
 p_id=>wwv_flow_api.id(344980006095)
,p_view_id=>wwv_flow_api.id(73256434862029965)
,p_execution_seq=>30
,p_name=>'sh6'
,p_column_id=>wwv_flow_api.id(114374514647883907)
,p_background_color=>'#D6D2D6'
,p_condition_type=>'COLUMN'
,p_condition_column_id=>wwv_flow_api.id(117050532051717314)
,p_condition_operator=>'EQ'
,p_condition_is_case_sensitive=>false
,p_condition_expression=>'1'
,p_is_enabled=>true
);
wwv_flow_api.create_ig_report_highlight(
 p_id=>wwv_flow_api.id(418378006095)
,p_view_id=>wwv_flow_api.id(73256434862029965)
,p_execution_seq=>35
,p_name=>'sh7'
,p_column_id=>wwv_flow_api.id(114374687680883908)
,p_background_color=>'#D6D2D6'
,p_condition_type=>'COLUMN'
,p_condition_column_id=>wwv_flow_api.id(117050681428717315)
,p_condition_operator=>'EQ'
,p_condition_is_case_sensitive=>false
,p_condition_expression=>'1'
,p_is_enabled=>true
);
wwv_flow_api.create_ig_report_highlight(
 p_id=>wwv_flow_api.id(716337015880)
,p_view_id=>wwv_flow_api.id(73256434862029965)
,p_execution_seq=>40
,p_name=>'sh8'
,p_column_id=>wwv_flow_api.id(114374705724883909)
,p_background_color=>'#D6D2D6'
,p_condition_type=>'COLUMN'
,p_condition_column_id=>wwv_flow_api.id(117050701257717316)
,p_condition_operator=>'EQ'
,p_condition_is_case_sensitive=>false
,p_condition_expression=>'1'
,p_is_enabled=>true
);
wwv_flow_api.create_ig_report_highlight(
 p_id=>wwv_flow_api.id(760601015881)
,p_view_id=>wwv_flow_api.id(73256434862029965)
,p_execution_seq=>45
,p_name=>'sh9'
,p_column_id=>wwv_flow_api.id(114374857710883910)
,p_background_color=>'#D6D2D6'
,p_condition_type=>'COLUMN'
,p_condition_column_id=>wwv_flow_api.id(117050875884717317)
,p_condition_operator=>'EQ'
,p_condition_is_case_sensitive=>false
,p_condition_expression=>'1'
,p_is_enabled=>true
);
wwv_flow_api.create_ig_report_highlight(
 p_id=>wwv_flow_api.id(868032015882)
,p_view_id=>wwv_flow_api.id(73256434862029965)
,p_execution_seq=>50
,p_name=>'sh10'
,p_column_id=>wwv_flow_api.id(114374989293883911)
,p_background_color=>'#D6D2D6'
,p_condition_type=>'COLUMN'
,p_condition_column_id=>wwv_flow_api.id(117050927057717318)
,p_condition_operator=>'EQ'
,p_condition_is_case_sensitive=>false
,p_condition_expression=>'1'
,p_is_enabled=>true
);
wwv_flow_api.create_ig_report_highlight(
 p_id=>wwv_flow_api.id(2170389031890)
,p_view_id=>wwv_flow_api.id(73256434862029965)
,p_execution_seq=>55
,p_name=>'sh11'
,p_column_id=>wwv_flow_api.id(114375076328883912)
,p_background_color=>'#D6D2D6'
,p_condition_type=>'COLUMN'
,p_condition_column_id=>wwv_flow_api.id(117051085810717319)
,p_condition_operator=>'EQ'
,p_condition_is_case_sensitive=>false
,p_condition_expression=>'1'
,p_is_enabled=>true
);
wwv_flow_api.create_ig_report_highlight(
 p_id=>wwv_flow_api.id(2297892031890)
,p_view_id=>wwv_flow_api.id(73256434862029965)
,p_execution_seq=>60
,p_name=>'sh12'
,p_column_id=>wwv_flow_api.id(114375102268883913)
,p_background_color=>'#D6D2D6'
,p_condition_type=>'COLUMN'
,p_condition_column_id=>wwv_flow_api.id(117051104378717320)
,p_condition_operator=>'EQ'
,p_condition_is_case_sensitive=>false
,p_condition_expression=>'1'
,p_is_enabled=>true
);
wwv_flow_api.create_ig_report_highlight(
 p_id=>wwv_flow_api.id(2377357031890)
,p_view_id=>wwv_flow_api.id(73256434862029965)
,p_execution_seq=>65
,p_name=>'sh13'
,p_column_id=>wwv_flow_api.id(114375218140883914)
,p_background_color=>'#D6D2D6'
,p_condition_type=>'COLUMN'
,p_condition_column_id=>wwv_flow_api.id(117051244877717321)
,p_condition_operator=>'EQ'
,p_condition_is_case_sensitive=>false
,p_condition_expression=>'1'
,p_is_enabled=>true
);
wwv_flow_api.create_ig_report_highlight(
 p_id=>wwv_flow_api.id(2450408031890)
,p_view_id=>wwv_flow_api.id(73256434862029965)
,p_execution_seq=>70
,p_name=>'sh14'
,p_column_id=>wwv_flow_api.id(114375311765883915)
,p_background_color=>'#D6D2D6'
,p_condition_type=>'COLUMN'
,p_condition_column_id=>wwv_flow_api.id(117051322089717322)
,p_condition_operator=>'EQ'
,p_condition_is_case_sensitive=>false
,p_condition_expression=>'1'
,p_is_enabled=>true
);
wwv_flow_api.create_ig_report_highlight(
 p_id=>wwv_flow_api.id(2547862031890)
,p_view_id=>wwv_flow_api.id(73256434862029965)
,p_execution_seq=>75
,p_name=>'sh15'
,p_column_id=>wwv_flow_api.id(114375419903883916)
,p_background_color=>'#D6D2D6'
,p_condition_type=>'COLUMN'
,p_condition_column_id=>wwv_flow_api.id(117051435841717323)
,p_condition_operator=>'EQ'
,p_condition_is_case_sensitive=>false
,p_condition_expression=>'1'
,p_is_enabled=>true
);
wwv_flow_api.create_ig_report_highlight(
 p_id=>wwv_flow_api.id(2681180031890)
,p_view_id=>wwv_flow_api.id(73256434862029965)
,p_execution_seq=>80
,p_name=>'sh16'
,p_column_id=>wwv_flow_api.id(114375541678883917)
,p_background_color=>'#D6D2D6'
,p_condition_type=>'COLUMN'
,p_condition_column_id=>wwv_flow_api.id(117051521408717324)
,p_condition_operator=>'EQ'
,p_condition_is_case_sensitive=>false
,p_condition_expression=>'1'
,p_is_enabled=>true
);
wwv_flow_api.create_ig_report_highlight(
 p_id=>wwv_flow_api.id(5718190073808)
,p_view_id=>wwv_flow_api.id(73256434862029965)
,p_execution_seq=>85
,p_name=>'sh17'
,p_column_id=>wwv_flow_api.id(114375652832883918)
,p_background_color=>'#D6D2D6'
,p_condition_type=>'COLUMN'
,p_condition_column_id=>wwv_flow_api.id(117051621509717325)
,p_condition_operator=>'EQ'
,p_condition_is_case_sensitive=>false
,p_condition_expression=>'1'
,p_is_enabled=>true
);
wwv_flow_api.create_ig_report_highlight(
 p_id=>wwv_flow_api.id(5835370073808)
,p_view_id=>wwv_flow_api.id(73256434862029965)
,p_execution_seq=>90
,p_name=>'sh18'
,p_column_id=>wwv_flow_api.id(114375766052883919)
,p_background_color=>'#D6D2D6'
,p_condition_type=>'COLUMN'
,p_condition_column_id=>wwv_flow_api.id(117051732040717326)
,p_condition_operator=>'EQ'
,p_condition_is_case_sensitive=>false
,p_condition_expression=>'1'
,p_is_enabled=>true
);
wwv_flow_api.create_ig_report_highlight(
 p_id=>wwv_flow_api.id(6006760073808)
,p_view_id=>wwv_flow_api.id(73256434862029965)
,p_execution_seq=>95
,p_name=>'sh19'
,p_column_id=>wwv_flow_api.id(114375800290883920)
,p_background_color=>'#D6D2D6'
,p_condition_type=>'COLUMN'
,p_condition_column_id=>wwv_flow_api.id(117051823442717327)
,p_condition_operator=>'EQ'
,p_condition_is_case_sensitive=>false
,p_condition_expression=>'1'
,p_is_enabled=>true
);
wwv_flow_api.create_ig_report_highlight(
 p_id=>wwv_flow_api.id(6033496073808)
,p_view_id=>wwv_flow_api.id(73256434862029965)
,p_execution_seq=>100
,p_name=>'sh20'
,p_column_id=>wwv_flow_api.id(114375992023883921)
,p_background_color=>'#D6D2D6'
,p_condition_type=>'COLUMN'
,p_condition_column_id=>wwv_flow_api.id(117051997433717328)
,p_condition_operator=>'EQ'
,p_condition_is_case_sensitive=>false
,p_condition_expression=>'1'
,p_is_enabled=>true
);
wwv_flow_api.create_ig_report_highlight(
 p_id=>wwv_flow_api.id(6190088073808)
,p_view_id=>wwv_flow_api.id(73256434862029965)
,p_execution_seq=>105
,p_name=>'sh21'
,p_column_id=>wwv_flow_api.id(114376096220883922)
,p_background_color=>'#D6D2D6'
,p_condition_type=>'COLUMN'
,p_condition_column_id=>wwv_flow_api.id(117052062615717329)
,p_condition_operator=>'EQ'
,p_condition_is_case_sensitive=>false
,p_condition_expression=>'1'
,p_is_enabled=>true
);
wwv_flow_api.create_ig_report_highlight(
 p_id=>wwv_flow_api.id(6311306073808)
,p_view_id=>wwv_flow_api.id(73256434862029965)
,p_execution_seq=>110
,p_name=>'sh22'
,p_column_id=>wwv_flow_api.id(114376199583883923)
,p_background_color=>'#D6D2D6'
,p_condition_type=>'COLUMN'
,p_condition_column_id=>wwv_flow_api.id(117052196324717330)
,p_condition_operator=>'EQ'
,p_condition_is_case_sensitive=>false
,p_condition_expression=>'1'
,p_is_enabled=>true
);
wwv_flow_api.create_ig_report_highlight(
 p_id=>wwv_flow_api.id(6378077073808)
,p_view_id=>wwv_flow_api.id(73256434862029965)
,p_execution_seq=>115
,p_name=>'sh23'
,p_column_id=>wwv_flow_api.id(114376205029883924)
,p_background_color=>'#D6D2D6'
,p_condition_type=>'COLUMN'
,p_condition_column_id=>wwv_flow_api.id(117052283075717331)
,p_condition_operator=>'EQ'
,p_condition_is_case_sensitive=>false
,p_condition_expression=>'1'
,p_is_enabled=>true
);
wwv_flow_api.create_ig_report_highlight(
 p_id=>wwv_flow_api.id(7012205090578)
,p_view_id=>wwv_flow_api.id(73256434862029965)
,p_execution_seq=>120
,p_name=>'sh24'
,p_column_id=>wwv_flow_api.id(114376338919883925)
,p_background_color=>'#D6D2D6'
,p_condition_type=>'COLUMN'
,p_condition_column_id=>wwv_flow_api.id(117052310672717332)
,p_condition_operator=>'EQ'
,p_condition_is_case_sensitive=>false
,p_condition_expression=>'1'
,p_is_enabled=>true
);
wwv_flow_api.create_ig_report_highlight(
 p_id=>wwv_flow_api.id(7049831090578)
,p_view_id=>wwv_flow_api.id(73256434862029965)
,p_execution_seq=>125
,p_name=>'sh25'
,p_column_id=>wwv_flow_api.id(114376474678883926)
,p_background_color=>'#D6D2D6'
,p_condition_type=>'COLUMN'
,p_condition_column_id=>wwv_flow_api.id(117052491114717333)
,p_condition_operator=>'EQ'
,p_condition_is_case_sensitive=>false
,p_condition_expression=>'1'
,p_is_enabled=>true
);
wwv_flow_api.create_ig_report_highlight(
 p_id=>wwv_flow_api.id(7126025090578)
,p_view_id=>wwv_flow_api.id(73256434862029965)
,p_execution_seq=>130
,p_name=>'sh26'
,p_column_id=>wwv_flow_api.id(114376549770883927)
,p_background_color=>'#D6D2D6'
,p_condition_type=>'COLUMN'
,p_condition_column_id=>wwv_flow_api.id(117052504869717334)
,p_condition_operator=>'EQ'
,p_condition_is_case_sensitive=>false
,p_condition_expression=>'1'
,p_is_enabled=>true
);
wwv_flow_api.create_ig_report_highlight(
 p_id=>wwv_flow_api.id(7224217090578)
,p_view_id=>wwv_flow_api.id(73256434862029965)
,p_execution_seq=>135
,p_name=>'sh27'
,p_column_id=>wwv_flow_api.id(114376610646883928)
,p_background_color=>'#D6D2D6'
,p_condition_type=>'COLUMN'
,p_condition_column_id=>wwv_flow_api.id(117052680666717335)
,p_condition_operator=>'EQ'
,p_condition_is_case_sensitive=>false
,p_condition_expression=>'1'
,p_is_enabled=>true
);
wwv_flow_api.create_ig_report_highlight(
 p_id=>wwv_flow_api.id(7335863090578)
,p_view_id=>wwv_flow_api.id(73256434862029965)
,p_execution_seq=>140
,p_name=>'sh28'
,p_column_id=>wwv_flow_api.id(114376740047883929)
,p_background_color=>'#D6D2D6'
,p_condition_type=>'COLUMN'
,p_condition_column_id=>wwv_flow_api.id(117052787731717336)
,p_condition_operator=>'EQ'
,p_condition_is_case_sensitive=>false
,p_condition_expression=>'1'
,p_is_enabled=>true
);
wwv_flow_api.create_ig_report_highlight(
 p_id=>wwv_flow_api.id(7421286090578)
,p_view_id=>wwv_flow_api.id(73256434862029965)
,p_execution_seq=>145
,p_name=>'sh29'
,p_column_id=>wwv_flow_api.id(114376848326883930)
,p_background_color=>'#D6D2D6'
,p_condition_type=>'COLUMN'
,p_condition_column_id=>wwv_flow_api.id(117052863570717337)
,p_condition_operator=>'EQ'
,p_condition_is_case_sensitive=>false
,p_condition_expression=>'1'
,p_is_enabled=>true
);
wwv_flow_api.create_ig_report_highlight(
 p_id=>wwv_flow_api.id(7542327090578)
,p_view_id=>wwv_flow_api.id(73256434862029965)
,p_execution_seq=>150
,p_name=>'sh30'
,p_column_id=>wwv_flow_api.id(114376920543883931)
,p_background_color=>'#D6D2D6'
,p_condition_type=>'COLUMN'
,p_condition_column_id=>wwv_flow_api.id(117052996859717338)
,p_condition_operator=>'EQ'
,p_condition_is_case_sensitive=>false
,p_condition_expression=>'1'
,p_is_enabled=>true
);
wwv_flow_api.create_ig_report_highlight(
 p_id=>wwv_flow_api.id(7695132090578)
,p_view_id=>wwv_flow_api.id(73256434862029965)
,p_execution_seq=>155
,p_name=>'sh31'
,p_column_id=>wwv_flow_api.id(114377097338883932)
,p_background_color=>'#D6D2D6'
,p_condition_type=>'COLUMN'
,p_condition_column_id=>wwv_flow_api.id(117053017107717339)
,p_condition_operator=>'EQ'
,p_condition_is_case_sensitive=>false
,p_condition_expression=>'1'
,p_is_enabled=>true
);
wwv_flow_api.create_ig_report_highlight(
 p_id=>wwv_flow_api.id(20547164056939)
,p_view_id=>wwv_flow_api.id(73256434862029965)
,p_execution_seq=>10
,p_name=>'sh2'
,p_column_id=>wwv_flow_api.id(114374144392883903)
,p_background_color=>'#D6D2D6'
,p_condition_type=>'COLUMN'
,p_condition_column_id=>wwv_flow_api.id(117050104546717310)
,p_condition_operator=>'EQ'
,p_condition_is_case_sensitive=>false
,p_condition_expression=>'1'
,p_is_enabled=>true
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(114423043688323717)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(73255461987029958)
,p_button_name=>'CHECK_SHIFT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(73172232404446357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Έλεγχος'
,p_button_position=>'BODY'
,p_button_redirect_url=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.::P2_MONTH,P2_YEAR:&P6_MONTH.,&P6_YEAR.'
,p_icon_css_classes=>'fa-stethoscope'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(114377162580883933)
,p_name=>'P6_YEAR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(73255461987029958)
,p_prompt=>'Έτος'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct cal_year, cal_year yid',
'from shc_schedule',
'order by 1'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(73171600810446349)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(114377234401883934)
,p_name=>'P6_MONTH'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(73255461987029958)
,p_prompt=>'Μήνας'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct month_name, cal_month yid',
'from gen_time',
'order by 2'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(73171600810446349)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'SUBMIT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(118854501875564301)
,p_name=>'P6_S1'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(73255461987029958)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'if shc_schedule_pkg.is_sk(:P6_YEAR, :P6_MONTH, 1) = ''Y'' or shc_schedule_pkg.is_holiday(:P6_YEAR, :P6_MONTH, 1) = ''Y'' then',
'  return ''.'';',
'else',
' return null;',
' end if;',
'end;'))
,p_source_type=>'FUNCTION_BODY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(118854646236564302)
,p_name=>'P6_S2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(73255461987029958)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'if shc_schedule_pkg.is_sk(:P6_YEAR, :P6_MONTH, 2) = ''Y'' or shc_schedule_pkg.is_holiday(:P6_YEAR, :P6_MONTH, 2) = ''Y'' then',
'  return ''.'';',
'else',
' return null;',
' end if;',
'end;'))
,p_source_type=>'FUNCTION_BODY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(118862469426697201)
,p_name=>'P6_S3'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(73255461987029958)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'if shc_schedule_pkg.is_sk(:P6_YEAR, :P6_MONTH, 3) = ''Y'' or shc_schedule_pkg.is_holiday(:P6_YEAR, :P6_MONTH, 3) = ''Y'' then',
'  return ''.'';',
'else',
' return null;',
' end if;',
'end;'))
,p_source_type=>'FUNCTION_BODY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(118862525144697202)
,p_name=>'P6_S4'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(73255461987029958)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'if shc_schedule_pkg.is_sk(:P6_YEAR, :P6_MONTH, 4) = ''Y'' or shc_schedule_pkg.is_holiday(:P6_YEAR, :P6_MONTH, 4) = ''Y'' then',
'  return ''.'';',
'else',
' return null;',
' end if;',
'end;'))
,p_source_type=>'FUNCTION_BODY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(118862732895697204)
,p_name=>'P6_S5'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(73255461987029958)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'if shc_schedule_pkg.is_sk(:P6_YEAR, :P6_MONTH, 5) = ''Y'' or shc_schedule_pkg.is_holiday(:P6_YEAR, :P6_MONTH, 5) = ''Y'' then',
'  return ''.'';',
'else',
' return null;',
' end if;',
'end;'))
,p_source_type=>'FUNCTION_BODY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(118862889087697205)
,p_name=>'P6_S6'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(73255461987029958)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'if shc_schedule_pkg.is_sk(:P6_YEAR, :P6_MONTH, 6) = ''Y'' or shc_schedule_pkg.is_holiday(:P6_YEAR, :P6_MONTH, 6) = ''Y'' then',
'  return ''.'';',
'else',
' return null;',
' end if;',
'end;'))
,p_source_type=>'FUNCTION_BODY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(118862907791697206)
,p_name=>'P6_S7'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(73255461987029958)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'if shc_schedule_pkg.is_sk(:P6_YEAR, :P6_MONTH, 7) = ''Y'' or shc_schedule_pkg.is_holiday(:P6_YEAR, :P6_MONTH, 7) = ''Y'' then',
'  return ''.'';',
'else',
' return null;',
' end if;',
'end;'))
,p_source_type=>'FUNCTION_BODY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(118863078037697207)
,p_name=>'P6_S8'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(73255461987029958)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'if shc_schedule_pkg.is_sk(:P6_YEAR, :P6_MONTH, 8) = ''Y'' or shc_schedule_pkg.is_holiday(:P6_YEAR, :P6_MONTH, 8) = ''Y'' then',
'  return ''.'';',
'else',
' return null;',
' end if;',
'end;'))
,p_source_type=>'FUNCTION_BODY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(118863167493697208)
,p_name=>'P6_S9'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(73255461987029958)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'if shc_schedule_pkg.is_sk(:P6_YEAR, :P6_MONTH, 9) = ''Y'' or shc_schedule_pkg.is_holiday(:P6_YEAR, :P6_MONTH, 9) = ''Y'' then',
'  return ''.'';',
'else',
' return null;',
' end if;',
'end;'))
,p_source_type=>'FUNCTION_BODY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(118863253519697209)
,p_name=>'P6_S10'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(73255461987029958)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'if shc_schedule_pkg.is_sk(:P6_YEAR, :P6_MONTH, 10) = ''Y'' or shc_schedule_pkg.is_holiday(:P6_YEAR, :P6_MONTH, 10) = ''Y'' then',
'  return ''.'';',
'else',
' return null;',
' end if;',
'end;'))
,p_source_type=>'FUNCTION_BODY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(118863307576697210)
,p_name=>'P6_S11'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(73255461987029958)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'if shc_schedule_pkg.is_sk(:P6_YEAR, :P6_MONTH, 11) = ''Y'' or shc_schedule_pkg.is_holiday(:P6_YEAR, :P6_MONTH, 11) = ''Y'' then',
'  return ''.'';',
'else',
' return null;',
' end if;',
'end;'))
,p_source_type=>'FUNCTION_BODY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(118863409863697211)
,p_name=>'P6_S12'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(73255461987029958)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'if shc_schedule_pkg.is_sk(:P6_YEAR, :P6_MONTH, 12) = ''Y'' or shc_schedule_pkg.is_holiday(:P6_YEAR, :P6_MONTH, 12) = ''Y'' then',
'  return ''.'';',
'else',
' return null;',
' end if;',
'end;'))
,p_source_type=>'FUNCTION_BODY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(118863551791697212)
,p_name=>'P6_S13'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(73255461987029958)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'if shc_schedule_pkg.is_sk(:P6_YEAR, :P6_MONTH, 13) = ''Y'' or shc_schedule_pkg.is_holiday(:P6_YEAR, :P6_MONTH, 13) = ''Y'' then',
'  return ''.'';',
'else',
' return null;',
' end if;',
'end;'))
,p_source_type=>'FUNCTION_BODY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(118863669907697213)
,p_name=>'P6_S14'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(73255461987029958)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'if shc_schedule_pkg.is_sk(:P6_YEAR, :P6_MONTH, 14) = ''Y'' or shc_schedule_pkg.is_holiday(:P6_YEAR, :P6_MONTH, 14) = ''Y'' then',
'  return ''.'';',
'else',
' return null;',
' end if;',
'end;'))
,p_source_type=>'FUNCTION_BODY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(118863709781697214)
,p_name=>'P6_S15'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(73255461987029958)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'if shc_schedule_pkg.is_sk(:P6_YEAR, :P6_MONTH, 15) = ''Y'' or shc_schedule_pkg.is_holiday(:P6_YEAR, :P6_MONTH, 15) = ''Y'' then',
'  return ''.'';',
'else',
' return null;',
' end if;',
'end;'))
,p_source_type=>'FUNCTION_BODY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(118863855265697215)
,p_name=>'P6_S16'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(73255461987029958)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'if shc_schedule_pkg.is_sk(:P6_YEAR, :P6_MONTH, 16) = ''Y'' or shc_schedule_pkg.is_holiday(:P6_YEAR, :P6_MONTH, 16) = ''Y'' then',
'  return ''.'';',
'else',
' return null;',
' end if;',
'end;'))
,p_source_type=>'FUNCTION_BODY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(118863942923697216)
,p_name=>'P6_S17'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_api.id(73255461987029958)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'if shc_schedule_pkg.is_sk(:P6_YEAR, :P6_MONTH, 17) = ''Y'' or shc_schedule_pkg.is_holiday(:P6_YEAR, :P6_MONTH, 17) = ''Y'' then',
'  return ''.'';',
'else',
' return null;',
' end if;',
'end;'))
,p_source_type=>'FUNCTION_BODY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
end;
/
begin
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(118864001184697217)
,p_name=>'P6_S18'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_api.id(73255461987029958)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'if shc_schedule_pkg.is_sk(:P6_YEAR, :P6_MONTH, 18) = ''Y'' or shc_schedule_pkg.is_holiday(:P6_YEAR, :P6_MONTH, 18) = ''Y'' then',
'  return ''.'';',
'else',
' return null;',
' end if;',
'end;'))
,p_source_type=>'FUNCTION_BODY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(118864155405697218)
,p_name=>'P6_S19'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_api.id(73255461987029958)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'if shc_schedule_pkg.is_sk(:P6_YEAR, :P6_MONTH, 19) = ''Y'' or shc_schedule_pkg.is_holiday(:P6_YEAR, :P6_MONTH, 19) = ''Y'' then',
'  return ''.'';',
'else',
' return null;',
' end if;',
'end;'))
,p_source_type=>'FUNCTION_BODY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(118864233979697219)
,p_name=>'P6_S20'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_api.id(73255461987029958)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'if shc_schedule_pkg.is_sk(:P6_YEAR, :P6_MONTH, 20) = ''Y'' or shc_schedule_pkg.is_holiday(:P6_YEAR, :P6_MONTH, 20) = ''Y'' then',
'  return ''.'';',
'else',
' return null;',
' end if;',
'end;'))
,p_source_type=>'FUNCTION_BODY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(118864367216697220)
,p_name=>'P6_S21'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_api.id(73255461987029958)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'if shc_schedule_pkg.is_sk(:P6_YEAR, :P6_MONTH, 21) = ''Y'' or shc_schedule_pkg.is_holiday(:P6_YEAR, :P6_MONTH, 21) = ''Y'' then',
'  return ''.'';',
'else',
' return null;',
' end if;',
'end;'))
,p_source_type=>'FUNCTION_BODY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(118864480209697221)
,p_name=>'P6_S22'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_api.id(73255461987029958)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'if shc_schedule_pkg.is_sk(:P6_YEAR, :P6_MONTH, 22) = ''Y'' or shc_schedule_pkg.is_holiday(:P6_YEAR, :P6_MONTH, 22) = ''Y'' then',
'  return ''.'';',
'else',
' return null;',
' end if;',
'end;'))
,p_source_type=>'FUNCTION_BODY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(118864589843697222)
,p_name=>'P6_S23'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_api.id(73255461987029958)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'if shc_schedule_pkg.is_sk(:P6_YEAR, :P6_MONTH, 23) = ''Y'' or shc_schedule_pkg.is_holiday(:P6_YEAR, :P6_MONTH, 23) = ''Y'' then',
'  return ''.'';',
'else',
' return null;',
' end if;',
'end;'))
,p_source_type=>'FUNCTION_BODY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(118864631284697223)
,p_name=>'P6_S24'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_api.id(73255461987029958)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'if shc_schedule_pkg.is_sk(:P6_YEAR, :P6_MONTH, 24) = ''Y'' or shc_schedule_pkg.is_holiday(:P6_YEAR, :P6_MONTH, 24) = ''Y'' then',
'  return ''.'';',
'else',
' return null;',
' end if;',
'end;'))
,p_source_type=>'FUNCTION_BODY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(118864760685697224)
,p_name=>'P6_S25'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_api.id(73255461987029958)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'if shc_schedule_pkg.is_sk(:P6_YEAR, :P6_MONTH, 25) = ''Y'' or shc_schedule_pkg.is_holiday(:P6_YEAR, :P6_MONTH, 25) = ''Y'' then',
'  return ''.'';',
'else',
' return null;',
' end if;',
'end;'))
,p_source_type=>'FUNCTION_BODY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(118864881240697225)
,p_name=>'P6_S26'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_api.id(73255461987029958)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'if shc_schedule_pkg.is_sk(:P6_YEAR, :P6_MONTH, 26) = ''Y'' or shc_schedule_pkg.is_holiday(:P6_YEAR, :P6_MONTH, 26) = ''Y'' then',
'  return ''.'';',
'else',
' return null;',
' end if;',
'end;'))
,p_source_type=>'FUNCTION_BODY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(118864963216697226)
,p_name=>'P6_S27'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_api.id(73255461987029958)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'if shc_schedule_pkg.is_sk(:P6_YEAR, :P6_MONTH, 27) = ''Y'' or shc_schedule_pkg.is_holiday(:P6_YEAR, :P6_MONTH, 27) = ''Y'' then',
'  return ''.'';',
'else',
' return null;',
' end if;',
'end;'))
,p_source_type=>'FUNCTION_BODY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(118865041799697227)
,p_name=>'P6_S28'
,p_item_sequence=>330
,p_item_plug_id=>wwv_flow_api.id(73255461987029958)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'if shc_schedule_pkg.is_sk(:P6_YEAR, :P6_MONTH, 28) = ''Y'' or shc_schedule_pkg.is_holiday(:P6_YEAR, :P6_MONTH, 28) = ''Y'' then',
'  return ''.'';',
'else',
' return null;',
' end if;',
'end;'))
,p_source_type=>'FUNCTION_BODY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(118865152630697228)
,p_name=>'P6_S29'
,p_item_sequence=>340
,p_item_plug_id=>wwv_flow_api.id(73255461987029958)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'if shc_schedule_pkg.is_sk(:P6_YEAR, :P6_MONTH, 29) = ''Y'' or shc_schedule_pkg.is_holiday(:P6_YEAR, :P6_MONTH, 29) = ''Y'' then',
'  return ''.'';',
'else',
' return null;',
' end if;',
'end;'))
,p_source_type=>'FUNCTION_BODY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(118865219552697229)
,p_name=>'P6_S30'
,p_item_sequence=>350
,p_item_plug_id=>wwv_flow_api.id(73255461987029958)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'if shc_schedule_pkg.is_sk(:P6_YEAR, :P6_MONTH, 30) = ''Y'' or shc_schedule_pkg.is_holiday(:P6_YEAR, :P6_MONTH, 30) = ''Y'' then',
'  return ''.'';',
'else',
' return null;',
' end if;',
'end;'))
,p_source_type=>'FUNCTION_BODY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(118865339318697230)
,p_name=>'P6_S31'
,p_item_sequence=>360
,p_item_plug_id=>wwv_flow_api.id(73255461987029958)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'if shc_schedule_pkg.is_sk(:P6_YEAR, :P6_MONTH, 31) = ''Y'' or shc_schedule_pkg.is_holiday(:P6_YEAR, :P6_MONTH, 31) = ''Y'' then',
'  return ''.'';',
'else',
' return null;',
' end if;',
'end;'))
,p_source_type=>'FUNCTION_BODY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(73260124397029974)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(73255461987029958)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>' - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00007
begin
wwv_flow_api.create_page(
 p_id=>7
,p_user_interface_id=>wwv_flow_api.id(73182974805446411)
,p_name=>'Στατιστικά'
,p_page_mode=>'NORMAL'
,p_step_title=>'Στατιστικά'
,p_step_sub_title=>'Στατιστικά'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'MARINOSY@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20170802145508'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(73279137720275308)
,p_plug_name=>'Στατιστικά'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(73148822037446237)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select fullname,',
'         SHC_SCHEDULE_PKG.count_shift_for_emp (:p7_year_from, :p7_year_to, :p7_month_from, :p7_month_to, 1, employee_id) count_6,',
'         SHC_SCHEDULE_PKG.count_shift_for_emp (:p7_year_from, :p7_year_to, :p7_month_from, :p7_month_to, 2, employee_id) count_7,',
'         SHC_SCHEDULE_PKG.count_shift_for_emp (:p7_year_from, :p7_year_to, :p7_month_from, :p7_month_to, 3, employee_id) count_9,',
'         SHC_SCHEDULE_PKG.count_shift_for_emp (:p7_year_from, :p7_year_to, :p7_month_from, :p7_month_to, 4, employee_id) count_10,',
'         SHC_SCHEDULE_PKG.count_shift_for_emp (:p7_year_from, :p7_year_to, :p7_month_from, :p7_month_to, 5, employee_id) count_14,',
'         SHC_SCHEDULE_PKG.count_shift_for_emp (:p7_year_from, :p7_year_to, :p7_month_from, :p7_month_to, 6, employee_id) count_15,',
'         SHC_SCHEDULE_PKG.count_shift_for_emp (:p7_year_from, :p7_year_to, :p7_month_from, :p7_month_to, 7, employee_id) count_r,',
'         SHC_SCHEDULE_PKG.count_shift_for_emp (:p7_year_from, :p7_year_to, :p7_month_from, :p7_month_to, 8, employee_id) count_a,',
'         SHC_SCHEDULE_PKG.count_sk_for_emp (:p7_year_from, :p7_year_to, :p7_month_from, :p7_month_to, employee_id) count_sk,',
'         SHC_SCHEDULE_PKG.count_holiday_for_emp (:p7_year_from, :p7_year_to, :p7_month_from, :p7_month_to, employee_id) count_holiday',
'         /*(select count(*) from SHC_SCHEDULE sch where sch.employee_id = emp.employee_id and nvl(sch.shift_id,0) between 1 and 6 and trim(to_char((select calendar_date from GEN_TIME where day_key = time_id), ''DAY'')) in (''SUNDAY'', ''SATURDAY'')) count_'
||'sk*/',
'from SHC_EMPLOYEE emp'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(73279292859275308)
,p_name=>'Στατιστικά'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_bar=>'N'
,p_show_detail_link=>'N'
,p_owner=>'MARINOSY@GMAIL.COM'
,p_internal_uid=>73279292859275308
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(73279656264275349)
,p_db_column_name=>'FULLNAME'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Ονοματεπώνυμο'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(73280079082275363)
,p_db_column_name=>'COUNT_6'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'6'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(73280444597275363)
,p_db_column_name=>'COUNT_7'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'7'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(73280847764275364)
,p_db_column_name=>'COUNT_9'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'9'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(73281227360275364)
,p_db_column_name=>'COUNT_10'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'10'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(73281685821275364)
,p_db_column_name=>'COUNT_14'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'14'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(73282044894275364)
,p_db_column_name=>'COUNT_15'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'15'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(73282466846275364)
,p_db_column_name=>'COUNT_R'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Ρεπό'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(73282866833275365)
,p_db_column_name=>'COUNT_A'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Άδεια'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(73283202399275365)
,p_db_column_name=>'COUNT_SK'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'ΣΚ'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(117049287079717301)
,p_db_column_name=>'COUNT_HOLIDAY'
,p_display_order=>20
,p_column_identifier=>'K'
,p_column_label=>'ΑΡΓΙΕΣ'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(73287075786288382)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'732871'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'FULLNAME:COUNT_6:COUNT_7:COUNT_9:COUNT_10:COUNT_14:COUNT_15:COUNT_R:COUNT_A:COUNT_SK:COUNT_HOLIDAY'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(117049776507717306)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_api.id(73279137720275308)
,p_button_name=>'REFRESH'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(73172026542446351)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Αναζήτηση'
,p_button_position=>'BODY'
,p_icon_css_classes=>'fa-refresh'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(117049322598717302)
,p_name=>'P7_YEAR_FROM'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(73279137720275308)
,p_prompt=>'Έτος από'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct cal_year, cal_year yid',
'from shc_schedule',
'order by 1'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(73171600810446349)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(117049464009717303)
,p_name=>'P7_YEAR_TO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(73279137720275308)
,p_prompt=>'μέχρι'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct cal_year, cal_year yid',
'from shc_schedule',
'order by 1'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(73171600810446349)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(117049590838717304)
,p_name=>'P7_MONTH_FROM'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(73279137720275308)
,p_prompt=>'Μήνας από'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct cal_month, cal_month yid',
'from shc_schedule',
'order by 1'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(73171600810446349)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(117049690807717305)
,p_name=>'P7_MONTH_TO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(73279137720275308)
,p_prompt=>'μέχρι'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct cal_month, cal_month yid',
'from shc_schedule',
'order by 1'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(73171600810446349)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
end;
/
prompt --application/pages/page_00008
begin
wwv_flow_api.create_page(
 p_id=>8
,p_user_interface_id=>wwv_flow_api.id(73182974805446411)
,p_name=>'Ημερολόγιο'
,p_page_mode=>'NORMAL'
,p_step_title=>'Ημερολόγιο'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'MARINOSY@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20170719132813'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(73366663164641484)
,p_plug_name=>'Ημερολόγιο'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(73149310067446237)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select SCHEDULE_ID,',
'       (select calendar_date from gen_time where day_key = time_id) TIME_ID,',
'       trim((select to_char(calendar_date, ''DAY'') from gen_time where day_key = time_id)) DAY_NAME,',
'       (select fullname from shc_employee e where e.employee_id = s.employee_id) EMPLOYEE_ID,',
'       SHIFT_ID,',
'       (select count(*) from SHC_SCHEDULE s2 where s2.time_id = s.time_id and s2.shift_id = s.shift_id) shift_counter',
'  from SHC_SCHEDULE s'))
,p_plug_source_type=>'NATIVE_CSS_CALENDAR'
,p_plug_query_row_template=>1
,p_plug_query_num_rows=>15
,p_attribute_01=>'TIME_ID'
,p_attribute_03=>'EMPLOYEE_ID'
,p_attribute_07=>'N'
,p_attribute_09=>'list:navigation'
,p_attribute_11=>'month:week:day:list:navigation'
,p_attribute_13=>'N'
,p_attribute_17=>'Y'
,p_attribute_18=>'00'
,p_attribute_19=>'Y'
,p_attribute_20=>'9'
,p_attribute_21=>'10'
,p_attribute_22=>'Y'
);
end;
/
prompt --application/pages/page_00010
begin
wwv_flow_api.create_page(
 p_id=>10
,p_user_interface_id=>wwv_flow_api.id(73182974805446411)
,p_name=>'Περίληψη ημέρας'
,p_page_mode=>'MODAL'
,p_step_title=>'Περίληψη ημέρας'
,p_step_sub_title=>'Περίληψη ημέρας'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'MARINOSY@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20170802150938'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(231802728001448649)
,p_plug_name=>'Περίληψη ημέρας'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(73139391964446210)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select shift_id,',
'      shift_code,',
'      shift_description,',
'      SHC_SCHEDULE_PKG.count_shift_for_day(:P10_YEAR, :P10_MONTH, :P10_DAY, shift_id) shift_counter1',
'from SHC_SHIFT'))
,p_plug_source_type=>'NATIVE_IG'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(231803893199448658)
,p_name=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROWID'
,p_data_type=>'ROWID'
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_pivot=>false
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(231804524898448659)
,p_name=>'SHIFT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SHIFT_ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>20
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(231805160171448660)
,p_name=>'SHIFT_CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SHIFT_CODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Βάρδια'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>10
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(231805718773448661)
,p_name=>'SHIFT_DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SHIFT_DESCRIPTION'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(231806361878448662)
,p_name=>'SHIFT_COUNTER1'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SHIFT_COUNTER1'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'1'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>50
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_interactive_grid(
 p_id=>wwv_flow_api.id(231803264677448655)
,p_internal_uid=>231803264677448655
,p_is_editable=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_show_nulls_as=>'-'
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_download=>true
,p_enable_mail_download=>true
,p_fixed_header=>'REGION'
,p_fixed_header_max_height=>500
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_api.create_ig_report(
 p_id=>wwv_flow_api.id(231803665850448656)
,p_interactive_grid_id=>wwv_flow_api.id(231803264677448655)
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_api.create_ig_report_view(
 p_id=>wwv_flow_api.id(231803787607448656)
,p_report_id=>wwv_flow_api.id(231803665850448656)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(231804346773448658)
,p_view_id=>wwv_flow_api.id(231803787607448656)
,p_display_seq=>1
,p_column_id=>wwv_flow_api.id(231803893199448658)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(231804910408448659)
,p_view_id=>wwv_flow_api.id(231803787607448656)
,p_display_seq=>2
,p_column_id=>wwv_flow_api.id(231804524898448659)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(231805557958448660)
,p_view_id=>wwv_flow_api.id(231803787607448656)
,p_display_seq=>3
,p_column_id=>wwv_flow_api.id(231805160171448660)
,p_is_visible=>true
,p_is_frozen=>true
,p_width=>180
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(231806163857448661)
,p_view_id=>wwv_flow_api.id(231803787607448656)
,p_display_seq=>4
,p_column_id=>wwv_flow_api.id(231805718773448661)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(231806754713448662)
,p_view_id=>wwv_flow_api.id(231803787607448656)
,p_display_seq=>5
,p_column_id=>wwv_flow_api.id(231806361878448662)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>361
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(73264537012070508)
,p_name=>'P10_DAY'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(231802728001448649)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(117401267902147677)
,p_name=>'P10_YEAR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(231802728001448649)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(117401650977147683)
,p_name=>'P10_MONTH'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(231802728001448649)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
end;
/
prompt --application/pages/page_00011
begin
wwv_flow_api.create_page(
 p_id=>11
,p_user_interface_id=>wwv_flow_api.id(73182974805446411)
,p_name=>'test'
,p_page_mode=>'NORMAL'
,p_step_title=>'test'
,p_step_sub_title=>'test'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'MARINOSY@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20170806234255'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(118088082381821777)
,p_name=>'Report 1'
,p_template=>wwv_flow_api.id(73149310067446237)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select CAL_YEAR,',
'       CAL_MONTH,',
'       MONTH_NAME,',
'       FULLNAME,',
'       S1,',
'       S2,',
'       S3,',
'       S4,',
'       S5,',
'       S6,',
'       S7,',
'       S8,',
'       S9,',
'       S10,',
'       S11,',
'       S12,',
'       S13,',
'       S14,',
'       S15,',
'       S16,',
'       S17,',
'       S18,',
'       S19,',
'       S20,',
'       S21,',
'       S22,',
'       S23,',
'       S24,',
'       S25,',
'       S26,',
'       S27,',
'       S28,',
'       S29,',
'       S30,',
'       S31',
'  from SHC_SCHEDULE_PRINT_V'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(73159323919446320)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'Y'
,p_csv_output_link_text=>'Download'
,p_prn_output=>'Y'
,p_prn_format=>'PDF'
,p_prn_output_link_text=>'Print'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width_units=>'PERCENTAGE'
,p_prn_width=>8.5
,p_prn_height=>11
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(118088627290821813)
,p_query_column_id=>1
,p_column_alias=>'CAL_YEAR'
,p_column_display_sequence=>1
,p_column_heading=>'Cal Year'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(118089087819821819)
,p_query_column_id=>2
,p_column_alias=>'CAL_MONTH'
,p_column_display_sequence=>2
,p_column_heading=>'Cal Month'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(118089428532821819)
,p_query_column_id=>3
,p_column_alias=>'MONTH_NAME'
,p_column_display_sequence=>3
,p_column_heading=>'Month Name'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(118089866344821821)
,p_query_column_id=>4
,p_column_alias=>'FULLNAME'
,p_column_display_sequence=>4
,p_column_heading=>'Fullname'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(118090296221821821)
,p_query_column_id=>5
,p_column_alias=>'S1'
,p_column_display_sequence=>5
,p_column_heading=>'S1'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(118090645876821821)
,p_query_column_id=>6
,p_column_alias=>'S2'
,p_column_display_sequence=>6
,p_column_heading=>'S2'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(118091042924821821)
,p_query_column_id=>7
,p_column_alias=>'S3'
,p_column_display_sequence=>7
,p_column_heading=>'S3'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(118091452101821822)
,p_query_column_id=>8
,p_column_alias=>'S4'
,p_column_display_sequence=>8
,p_column_heading=>'S4'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(118091828798821822)
,p_query_column_id=>9
,p_column_alias=>'S5'
,p_column_display_sequence=>9
,p_column_heading=>'S5'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(118092223771821822)
,p_query_column_id=>10
,p_column_alias=>'S6'
,p_column_display_sequence=>10
,p_column_heading=>'S6'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(118092636101821822)
,p_query_column_id=>11
,p_column_alias=>'S7'
,p_column_display_sequence=>11
,p_column_heading=>'S7'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(118093068276821822)
,p_query_column_id=>12
,p_column_alias=>'S8'
,p_column_display_sequence=>12
,p_column_heading=>'S8'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(118093490506821822)
,p_query_column_id=>13
,p_column_alias=>'S9'
,p_column_display_sequence=>13
,p_column_heading=>'S9'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(118093840547821823)
,p_query_column_id=>14
,p_column_alias=>'S10'
,p_column_display_sequence=>14
,p_column_heading=>'S10'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(118094222658821823)
,p_query_column_id=>15
,p_column_alias=>'S11'
,p_column_display_sequence=>15
,p_column_heading=>'S11'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(118094659594821826)
,p_query_column_id=>16
,p_column_alias=>'S12'
,p_column_display_sequence=>16
,p_column_heading=>'S12'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(118095003736821826)
,p_query_column_id=>17
,p_column_alias=>'S13'
,p_column_display_sequence=>17
,p_column_heading=>'S13'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(118095458977821827)
,p_query_column_id=>18
,p_column_alias=>'S14'
,p_column_display_sequence=>18
,p_column_heading=>'S14'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(118095890234821827)
,p_query_column_id=>19
,p_column_alias=>'S15'
,p_column_display_sequence=>19
,p_column_heading=>'S15'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(118096230827821827)
,p_query_column_id=>20
,p_column_alias=>'S16'
,p_column_display_sequence=>20
,p_column_heading=>'S16'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(118096604183821827)
,p_query_column_id=>21
,p_column_alias=>'S17'
,p_column_display_sequence=>21
,p_column_heading=>'S17'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(118097052559821827)
,p_query_column_id=>22
,p_column_alias=>'S18'
,p_column_display_sequence=>22
,p_column_heading=>'S18'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(118097482866821828)
,p_query_column_id=>23
,p_column_alias=>'S19'
,p_column_display_sequence=>23
,p_column_heading=>'S19'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(118097850409821828)
,p_query_column_id=>24
,p_column_alias=>'S20'
,p_column_display_sequence=>24
,p_column_heading=>'S20'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(118098223484821828)
,p_query_column_id=>25
,p_column_alias=>'S21'
,p_column_display_sequence=>25
,p_column_heading=>'S21'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(118098682106821831)
,p_query_column_id=>26
,p_column_alias=>'S22'
,p_column_display_sequence=>26
,p_column_heading=>'S22'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(118099017081821832)
,p_query_column_id=>27
,p_column_alias=>'S23'
,p_column_display_sequence=>27
,p_column_heading=>'S23'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(118099418635821833)
,p_query_column_id=>28
,p_column_alias=>'S24'
,p_column_display_sequence=>28
,p_column_heading=>'S24'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(118099893340821834)
,p_query_column_id=>29
,p_column_alias=>'S25'
,p_column_display_sequence=>29
,p_column_heading=>'S25'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(118100298810821834)
,p_query_column_id=>30
,p_column_alias=>'S26'
,p_column_display_sequence=>30
,p_column_heading=>'S26'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(118100675437821834)
,p_query_column_id=>31
,p_column_alias=>'S27'
,p_column_display_sequence=>31
,p_column_heading=>'S27'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(118101000692821834)
,p_query_column_id=>32
,p_column_alias=>'S28'
,p_column_display_sequence=>32
,p_column_heading=>'S28'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(118101429959821834)
,p_query_column_id=>33
,p_column_alias=>'S29'
,p_column_display_sequence=>33
,p_column_heading=>'S29'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(118101856537821835)
,p_query_column_id=>34
,p_column_alias=>'S30'
,p_column_display_sequence=>34
,p_column_heading=>'S30'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(118102277534821835)
,p_query_column_id=>35
,p_column_alias=>'S31'
,p_column_display_sequence=>35
,p_column_heading=>'S31'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
);
end;
/
prompt --application/pages/page_00012
begin
wwv_flow_api.create_page(
 p_id=>12
,p_user_interface_id=>wwv_flow_api.id(73182974805446411)
,p_name=>'Εκτύπωση Προγράμματος'
,p_page_mode=>'NORMAL'
,p_step_title=>'Εκτύπωση Προγράμματος'
,p_step_sub_title=>'Εκτύπωση Προγράμματος'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'MARINOSY@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20170807192852'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(191607157549956020)
,p_plug_name=>'ΠΡΟΓΡΑΜΜΑ ΜΙΚΡΟΒΙΟΛΟΓΙΚΟΥ ΕΡΓΑΣΤΗΡΙΟΥ &P12_MONTH_NAME. &P12_MONTH.ος &P12_YEAR.'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(73148822037446237)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select SCHEDULE_ID,',
'       --(select calendar_date from gen_time where day_key = time_id) TIME_ID,',
'       --trim((select to_char(calendar_date, ''DAY'') from gen_time where day_key = time_id)) DAY_NAME,',
'       (select fullname from shc_employee e where e.employee_id = s.employee_id) EMPLOYEE_ID',
'       ,SHIFT1',
'        ,SHIFT2',
'        ,SHIFT3',
'        ,SHIFT4',
'        ,SHIFT5',
'        ,SHIFT6',
'        ,SHIFT7',
'        ,SHIFT8',
'        ,SHIFT9',
'        ,SHIFT10',
'        ,SHIFT11',
'        ,SHIFT12',
'        ,SHIFT13',
'        ,SHIFT14',
'        ,SHIFT15',
'        ,SHIFT16',
'        ,SHIFT17',
'        ,SHIFT18',
'        ,SHIFT19',
'        ,SHIFT20',
'        ,SHIFT21',
'        ,SHIFT22',
'        ,SHIFT23',
'        ,SHIFT24',
'        ,SHIFT25',
'        ,SHIFT26',
'        ,SHIFT27',
'        ,SHIFT28',
'        ,SHIFT29',
'        ,SHIFT30',
'        ,SHIFT31',
'       --/*(select count(*) from SHC_SCHEDULE s2 where s2.time_id = s.time_id and s2.shift_id = s.shift_id)*/ shift_counter,',
'       --/*(select ''Αργία'' from gen_time where day_key = time_id and holiday = 1)*/ holiday',
'       ,(select schedule_order from shc_employee emp where emp.employee_id = s.employee_id) schedule_order',
'       ,case when shc_schedule_pkg.is_sk(:P12_YEAR, :P12_MONTH, 1) = ''Y'' or shc_schedule_pkg.is_holiday(:P12_YEAR, :P12_MONTH, 1) = ''Y'' then 1 else 0 end sh1_holiday',
'       ,case when shc_schedule_pkg.is_sk(:P12_YEAR, :P12_MONTH, 2) = ''Y'' or shc_schedule_pkg.is_holiday(:P12_YEAR, :P12_MONTH, 2) = ''Y'' then 1 else 0 end sh2_holiday',
'       ,case when shc_schedule_pkg.is_sk(:P12_YEAR, :P12_MONTH, 3) = ''Y'' or shc_schedule_pkg.is_holiday(:P12_YEAR, :P12_MONTH, 3) = ''Y'' then 1 else 0 end sh3_holiday',
'       ,case when shc_schedule_pkg.is_sk(:P12_YEAR, :P12_MONTH, 4) = ''Y'' or shc_schedule_pkg.is_holiday(:P12_YEAR, :P12_MONTH, 4) = ''Y'' then 1 else 0 end sh4_holiday',
'       ,case when shc_schedule_pkg.is_sk(:P12_YEAR, :P12_MONTH, 5) = ''Y'' or shc_schedule_pkg.is_holiday(:P12_YEAR, :P12_MONTH, 5) = ''Y'' then 1 else 0 end sh5_holiday',
'       ,case when shc_schedule_pkg.is_sk(:P12_YEAR, :P12_MONTH, 6) = ''Y'' or shc_schedule_pkg.is_holiday(:P12_YEAR, :P12_MONTH, 6) = ''Y'' then 1 else 0 end sh6_holiday',
'       ,case when shc_schedule_pkg.is_sk(:P12_YEAR, :P12_MONTH, 7) = ''Y'' or shc_schedule_pkg.is_holiday(:P12_YEAR, :P12_MONTH, 7) = ''Y'' then 1 else 0 end sh7_holiday',
'       ,case when shc_schedule_pkg.is_sk(:P12_YEAR, :P12_MONTH, 8) = ''Y'' or shc_schedule_pkg.is_holiday(:P12_YEAR, :P12_MONTH, 8) = ''Y'' then 1 else 0 end sh8_holiday',
'       ,case when shc_schedule_pkg.is_sk(:P12_YEAR, :P12_MONTH, 9) = ''Y'' or shc_schedule_pkg.is_holiday(:P12_YEAR, :P12_MONTH, 9) = ''Y'' then 1 else 0 end sh9_holiday',
'       ,case when shc_schedule_pkg.is_sk(:P12_YEAR, :P12_MONTH, 10) = ''Y'' or shc_schedule_pkg.is_holiday(:P12_YEAR, :P12_MONTH, 10) = ''Y'' then 1 else 0 end sh10_holiday',
'       ,case when shc_schedule_pkg.is_sk(:P12_YEAR, :P12_MONTH, 11) = ''Y'' or shc_schedule_pkg.is_holiday(:P12_YEAR, :P12_MONTH, 11) = ''Y'' then 1 else 0 end sh11_holiday',
'       ,case when shc_schedule_pkg.is_sk(:P12_YEAR, :P12_MONTH, 12) = ''Y'' or shc_schedule_pkg.is_holiday(:P12_YEAR, :P12_MONTH, 12) = ''Y'' then 1 else 0 end sh12_holiday',
'       ,case when shc_schedule_pkg.is_sk(:P12_YEAR, :P12_MONTH, 13) = ''Y'' or shc_schedule_pkg.is_holiday(:P12_YEAR, :P12_MONTH, 13) = ''Y'' then 1 else 0 end sh13_holiday',
'       ,case when shc_schedule_pkg.is_sk(:P12_YEAR, :P12_MONTH, 14) = ''Y'' or shc_schedule_pkg.is_holiday(:P12_YEAR, :P12_MONTH, 14) = ''Y'' then 1 else 0 end sh14_holiday',
'       ,case when shc_schedule_pkg.is_sk(:P12_YEAR, :P12_MONTH, 15) = ''Y'' or shc_schedule_pkg.is_holiday(:P12_YEAR, :P12_MONTH, 15) = ''Y'' then 1 else 0 end sh15_holiday',
'       ,case when shc_schedule_pkg.is_sk(:P12_YEAR, :P12_MONTH, 16) = ''Y'' or shc_schedule_pkg.is_holiday(:P12_YEAR, :P12_MONTH, 16) = ''Y'' then 1 else 0 end sh16_holiday',
'       ,case when shc_schedule_pkg.is_sk(:P12_YEAR, :P12_MONTH, 17) = ''Y'' or shc_schedule_pkg.is_holiday(:P12_YEAR, :P12_MONTH, 17) = ''Y'' then 1 else 0 end sh17_holiday',
'       ,case when shc_schedule_pkg.is_sk(:P12_YEAR, :P12_MONTH, 18) = ''Y'' or shc_schedule_pkg.is_holiday(:P12_YEAR, :P12_MONTH, 18) = ''Y'' then 1 else 0 end sh18_holiday',
'       ,case when shc_schedule_pkg.is_sk(:P12_YEAR, :P12_MONTH, 19) = ''Y'' or shc_schedule_pkg.is_holiday(:P12_YEAR, :P12_MONTH, 19) = ''Y'' then 1 else 0 end sh19_holiday',
'       ,case when shc_schedule_pkg.is_sk(:P12_YEAR, :P12_MONTH, 20) = ''Y'' or shc_schedule_pkg.is_holiday(:P12_YEAR, :P12_MONTH, 20) = ''Y'' then 1 else 0 end sh20_holiday',
'       ,case when shc_schedule_pkg.is_sk(:P12_YEAR, :P12_MONTH, 21) = ''Y'' or shc_schedule_pkg.is_holiday(:P12_YEAR, :P12_MONTH, 21) = ''Y'' then 1 else 0 end sh21_holiday',
'       ,case when shc_schedule_pkg.is_sk(:P12_YEAR, :P12_MONTH, 22) = ''Y'' or shc_schedule_pkg.is_holiday(:P12_YEAR, :P12_MONTH, 22) = ''Y'' then 1 else 0 end sh22_holiday',
'       ,case when shc_schedule_pkg.is_sk(:P12_YEAR, :P12_MONTH, 23) = ''Y'' or shc_schedule_pkg.is_holiday(:P12_YEAR, :P12_MONTH, 23) = ''Y'' then 1 else 0 end sh23_holiday',
'       ,case when shc_schedule_pkg.is_sk(:P12_YEAR, :P12_MONTH, 24) = ''Y'' or shc_schedule_pkg.is_holiday(:P12_YEAR, :P12_MONTH, 24) = ''Y'' then 1 else 0 end sh24_holiday',
'       ,case when shc_schedule_pkg.is_sk(:P12_YEAR, :P12_MONTH, 25) = ''Y'' or shc_schedule_pkg.is_holiday(:P12_YEAR, :P12_MONTH, 25) = ''Y'' then 1 else 0 end sh25_holiday',
'       ,case when shc_schedule_pkg.is_sk(:P12_YEAR, :P12_MONTH, 26) = ''Y'' or shc_schedule_pkg.is_holiday(:P12_YEAR, :P12_MONTH, 26) = ''Y'' then 1 else 0 end sh26_holiday',
'       ,case when shc_schedule_pkg.is_sk(:P12_YEAR, :P12_MONTH, 27) = ''Y'' or shc_schedule_pkg.is_holiday(:P12_YEAR, :P12_MONTH, 27) = ''Y'' then 1 else 0 end sh27_holiday',
'       ,case when shc_schedule_pkg.is_sk(:P12_YEAR, :P12_MONTH, 28) = ''Y'' or shc_schedule_pkg.is_holiday(:P12_YEAR, :P12_MONTH, 28) = ''Y'' then 1 else 0 end sh28_holiday',
'       ,case when shc_schedule_pkg.is_sk(:P12_YEAR, :P12_MONTH, 29) = ''Y'' or shc_schedule_pkg.is_holiday(:P12_YEAR, :P12_MONTH, 29) = ''Y'' then 1 else 0 end sh29_holiday',
'       ,case when shc_schedule_pkg.is_sk(:P12_YEAR, :P12_MONTH, 30) = ''Y'' or shc_schedule_pkg.is_holiday(:P12_YEAR, :P12_MONTH, 30) = ''Y'' then 1 else 0 end sh30_holiday',
'       ,case when shc_schedule_pkg.is_sk(:P12_YEAR, :P12_MONTH, 31) = ''Y'' or shc_schedule_pkg.is_holiday(:P12_YEAR, :P12_MONTH, 31) = ''Y'' then 1 else 0 end sh31_holiday',
'  from SHC_SCHEDULE s',
'  where cal_year = :P12_YEAR',
'   and cal_month = :P12_MONTH'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P12_ΜΟΝΤΗ_ΝΑΜΕ,P12_MONTH,P12_YEAR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>8.5
,p_prn_height=>11
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_plug_footer=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<style>',
'    div.a-Toolbar-group.a-Toolbar-group--together {',
'    display: none!important;',
'    visibility: hidden;!important;',
'}',
'</style>'))
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(117053126775717340)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'MARINOSY@GMAIL.COM'
,p_internal_uid=>117053126775717340
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(117053294940717341)
,p_db_column_name=>'SCHEDULE_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Schedule id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(117053379523717342)
,p_db_column_name=>'EMPLOYEE_ID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Employee id'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(117053422568717343)
,p_db_column_name=>'SHIFT1'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Shift1'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(117053520423717344)
,p_db_column_name=>'SHIFT2'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Shift2'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(117053621388717345)
,p_db_column_name=>'SHIFT3'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Shift3'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(117053796082717346)
,p_db_column_name=>'SHIFT4'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Shift4'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(117053849363717347)
,p_db_column_name=>'SHIFT5'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Shift5'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(117053957562717348)
,p_db_column_name=>'SHIFT6'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Shift6'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(117054076202717349)
,p_db_column_name=>'SHIFT7'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Shift7'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(117054170961717350)
,p_db_column_name=>'SHIFT8'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Shift8'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(118382045258927701)
,p_db_column_name=>'SHIFT9'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Shift9'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(118382189006927702)
,p_db_column_name=>'SHIFT10'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Shift10'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(118382215043927703)
,p_db_column_name=>'SHIFT11'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Shift11'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(118382395742927704)
,p_db_column_name=>'SHIFT12'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Shift12'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(118382442653927705)
,p_db_column_name=>'SHIFT13'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Shift13'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(118382570375927706)
,p_db_column_name=>'SHIFT14'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Shift14'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(118382696620927707)
,p_db_column_name=>'SHIFT15'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Shift15'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(118382749856927708)
,p_db_column_name=>'SHIFT16'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Shift16'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(118382837294927709)
,p_db_column_name=>'SHIFT17'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Shift17'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(118382913459927710)
,p_db_column_name=>'SHIFT18'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Shift18'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(118383017059927711)
,p_db_column_name=>'SHIFT19'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Shift19'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(118383144277927712)
,p_db_column_name=>'SHIFT20'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Shift20'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(118383252930927713)
,p_db_column_name=>'SHIFT21'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Shift21'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(118383348415927714)
,p_db_column_name=>'SHIFT22'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Shift22'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(118383465937927715)
,p_db_column_name=>'SHIFT23'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Shift23'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(118383587400927716)
,p_db_column_name=>'SHIFT24'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Shift24'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(118383631983927717)
,p_db_column_name=>'SHIFT25'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'Shift25'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(118383759210927718)
,p_db_column_name=>'SHIFT26'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'Shift26'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(118383804727927719)
,p_db_column_name=>'SHIFT27'
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>'Shift27'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(118383950091927720)
,p_db_column_name=>'SHIFT28'
,p_display_order=>300
,p_column_identifier=>'AD'
,p_column_label=>'Shift28'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(118384068787927721)
,p_db_column_name=>'SHIFT29'
,p_display_order=>310
,p_column_identifier=>'AE'
,p_column_label=>'Shift29'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(118384168543927722)
,p_db_column_name=>'SHIFT30'
,p_display_order=>320
,p_column_identifier=>'AF'
,p_column_label=>'Shift30'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(118384243213927723)
,p_db_column_name=>'SHIFT31'
,p_display_order=>330
,p_column_identifier=>'AG'
,p_column_label=>'Shift31'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(118384326254927724)
,p_db_column_name=>'SCHEDULE_ORDER'
,p_display_order=>340
,p_column_identifier=>'AH'
,p_column_label=>'Schedule order'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(118384476416927725)
,p_db_column_name=>'SH1_HOLIDAY'
,p_display_order=>350
,p_column_identifier=>'AI'
,p_column_label=>'Sh1 holiday'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(118384591620927726)
,p_db_column_name=>'SH2_HOLIDAY'
,p_display_order=>360
,p_column_identifier=>'AJ'
,p_column_label=>'Sh2 holiday'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(118384612287927727)
,p_db_column_name=>'SH3_HOLIDAY'
,p_display_order=>370
,p_column_identifier=>'AK'
,p_column_label=>'Sh3 holiday'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(118384797151927728)
,p_db_column_name=>'SH4_HOLIDAY'
,p_display_order=>380
,p_column_identifier=>'AL'
,p_column_label=>'Sh4 holiday'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(118384827726927729)
,p_db_column_name=>'SH5_HOLIDAY'
,p_display_order=>390
,p_column_identifier=>'AM'
,p_column_label=>'Sh5 holiday'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(118384937760927730)
,p_db_column_name=>'SH6_HOLIDAY'
,p_display_order=>400
,p_column_identifier=>'AN'
,p_column_label=>'Sh6 holiday'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(118385062379927731)
,p_db_column_name=>'SH7_HOLIDAY'
,p_display_order=>410
,p_column_identifier=>'AO'
,p_column_label=>'Sh7 holiday'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(118385111662927732)
,p_db_column_name=>'SH8_HOLIDAY'
,p_display_order=>420
,p_column_identifier=>'AP'
,p_column_label=>'Sh8 holiday'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(118385243537927733)
,p_db_column_name=>'SH9_HOLIDAY'
,p_display_order=>430
,p_column_identifier=>'AQ'
,p_column_label=>'Sh9 holiday'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(118385328213927734)
,p_db_column_name=>'SH10_HOLIDAY'
,p_display_order=>440
,p_column_identifier=>'AR'
,p_column_label=>'Sh10 holiday'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(118385431753927735)
,p_db_column_name=>'SH11_HOLIDAY'
,p_display_order=>450
,p_column_identifier=>'AS'
,p_column_label=>'Sh11 holiday'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(118385576644927736)
,p_db_column_name=>'SH12_HOLIDAY'
,p_display_order=>460
,p_column_identifier=>'AT'
,p_column_label=>'Sh12 holiday'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(118385645261927737)
,p_db_column_name=>'SH13_HOLIDAY'
,p_display_order=>470
,p_column_identifier=>'AU'
,p_column_label=>'Sh13 holiday'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(118385713303927738)
,p_db_column_name=>'SH14_HOLIDAY'
,p_display_order=>480
,p_column_identifier=>'AV'
,p_column_label=>'Sh14 holiday'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(118385857274927739)
,p_db_column_name=>'SH15_HOLIDAY'
,p_display_order=>490
,p_column_identifier=>'AW'
,p_column_label=>'Sh15 holiday'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(118385960275927740)
,p_db_column_name=>'SH16_HOLIDAY'
,p_display_order=>500
,p_column_identifier=>'AX'
,p_column_label=>'Sh16 holiday'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(118386041512927741)
,p_db_column_name=>'SH17_HOLIDAY'
,p_display_order=>510
,p_column_identifier=>'AY'
,p_column_label=>'Sh17 holiday'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(118386192552927742)
,p_db_column_name=>'SH18_HOLIDAY'
,p_display_order=>520
,p_column_identifier=>'AZ'
,p_column_label=>'Sh18 holiday'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(118386238171927743)
,p_db_column_name=>'SH19_HOLIDAY'
,p_display_order=>530
,p_column_identifier=>'BA'
,p_column_label=>'Sh19 holiday'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(118386375833927744)
,p_db_column_name=>'SH20_HOLIDAY'
,p_display_order=>540
,p_column_identifier=>'BB'
,p_column_label=>'Sh20 holiday'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(118386495330927745)
,p_db_column_name=>'SH21_HOLIDAY'
,p_display_order=>550
,p_column_identifier=>'BC'
,p_column_label=>'Sh21 holiday'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(118386567264927746)
,p_db_column_name=>'SH22_HOLIDAY'
,p_display_order=>560
,p_column_identifier=>'BD'
,p_column_label=>'Sh22 holiday'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(118386638553927747)
,p_db_column_name=>'SH23_HOLIDAY'
,p_display_order=>570
,p_column_identifier=>'BE'
,p_column_label=>'Sh23 holiday'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(118386714574927748)
,p_db_column_name=>'SH24_HOLIDAY'
,p_display_order=>580
,p_column_identifier=>'BF'
,p_column_label=>'Sh24 holiday'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(118386838437927749)
,p_db_column_name=>'SH25_HOLIDAY'
,p_display_order=>590
,p_column_identifier=>'BG'
,p_column_label=>'Sh25 holiday'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(118386948084927750)
,p_db_column_name=>'SH26_HOLIDAY'
,p_display_order=>600
,p_column_identifier=>'BH'
,p_column_label=>'Sh26 holiday'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(118387028949927701)
,p_db_column_name=>'SH27_HOLIDAY'
,p_display_order=>610
,p_column_identifier=>'BI'
,p_column_label=>'Sh27 holiday'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(118387158224927702)
,p_db_column_name=>'SH28_HOLIDAY'
,p_display_order=>620
,p_column_identifier=>'BJ'
,p_column_label=>'Sh28 holiday'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(118387207463927703)
,p_db_column_name=>'SH29_HOLIDAY'
,p_display_order=>630
,p_column_identifier=>'BK'
,p_column_label=>'Sh29 holiday'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(118387392266927704)
,p_db_column_name=>'SH30_HOLIDAY'
,p_display_order=>640
,p_column_identifier=>'BL'
,p_column_label=>'Sh30 holiday'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(118387476258927705)
,p_db_column_name=>'SH31_HOLIDAY'
,p_display_order=>650
,p_column_identifier=>'BM'
,p_column_label=>'Sh31 holiday'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(118440757698928696)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1184408'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'SCHEDULE_ID:EMPLOYEE_ID:SHIFT1:SHIFT2:SHIFT3:SHIFT4:SHIFT5:SHIFT6:SHIFT7:SHIFT8:SHIFT9:SHIFT10:SHIFT11:SHIFT12:SHIFT13:SHIFT14:SHIFT15:SHIFT16:SHIFT17:SHIFT18:SHIFT19:SHIFT20:SHIFT21:SHIFT22:SHIFT23:SHIFT24:SHIFT25:SHIFT26:SHIFT27:SHIFT28:SHIFT29:SHI'
||'FT30:SHIFT31:SCHEDULE_ORDER:SH1_HOLIDAY:SH2_HOLIDAY:SH3_HOLIDAY:SH4_HOLIDAY:SH5_HOLIDAY:SH6_HOLIDAY:SH7_HOLIDAY:SH8_HOLIDAY:SH9_HOLIDAY:SH10_HOLIDAY:SH11_HOLIDAY:SH12_HOLIDAY:SH13_HOLIDAY:SH14_HOLIDAY:SH15_HOLIDAY:SH16_HOLIDAY:SH17_HOLIDAY:SH18_HOLID'
||'AY:SH19_HOLIDAY:SH20_HOLIDAY:SH21_HOLIDAY:SH22_HOLIDAY:SH23_HOLIDAY:SH24_HOLIDAY:SH25_HOLIDAY:SH26_HOLIDAY:SH27_HOLIDAY:SH28_HOLIDAY:SH29_HOLIDAY:SH30_HOLIDAY:SH31_HOLIDAY'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(118379664094926151)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(191607157549956020)
,p_button_name=>'CHECK_SHIFT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(73172232404446357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Έλεγχος'
,p_button_position=>'BODY'
,p_button_redirect_url=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:RP:P2_MONTH,P2_YEAR:&P12_MONTH.,&P12_YEAR.'
,p_icon_css_classes=>'fa-stethoscope'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(118380064269926152)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(191607157549956020)
,p_button_name=>'Print'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(73172232404446357)
,p_button_image_alt=>'Εκτύπωση'
,p_button_position=>'REGION_TEMPLATE_COPY'
,p_button_redirect_url=>'f?p=&APP_ID.:0:&SESSION.:PRINT_REPORT=Schedule%20Print'
,p_icon_css_classes=>'fa-print'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(118380467116926153)
,p_name=>'P12_YEAR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(191607157549956020)
,p_prompt=>'Έτος'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct cal_year, cal_year yid',
'from shc_schedule',
'order by 1'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(73171600810446349)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(118380834505926156)
,p_name=>'P12_MONTH'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(191607157549956020)
,p_prompt=>'Μήνας'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct month_name, cal_month yid',
'from gen_time',
'order by 2'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(73171600810446349)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'SUBMIT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(118381269214926157)
,p_name=>'P12_ΜΟΝΤΗ_ΝΑΜΕ'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(191607157549956020)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
' l_ret_value varchar2(25);',
'begin',
'',
'select distinct month_name',
'into l_ret_value',
'from gen_time',
'where cal_month = :P12_MONTH',
'and :P12_MONTH is not null;',
'',
'return l_ret_value;',
'',
'exception when others then',
' return ''-'';',
'end;'))
,p_source_type=>'FUNCTION_BODY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'Y'
,p_attribute_01=>'Y'
);
end;
/
prompt --application/pages/page_00013
begin
wwv_flow_api.create_page(
 p_id=>13
,p_user_interface_id=>wwv_flow_api.id(73182974805446411)
,p_name=>'Έλεγχος Βαρδιών'
,p_page_mode=>'MODAL'
,p_step_title=>'Έλεγχος Βαρδιών'
,p_step_sub_title=>'Έλεγχος Βαρδιών'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'600'
,p_dialog_width=>'1000'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'MARINOSY@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20170807210944'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(233016434767846232)
,p_plug_name=>'Έλεγχος βαρδιών'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(73148822037446237)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select shift_id,',
'      shift_code,',
'      shift_description,',
'      case when shift_counter1 > day_limit then shift_counter1||''!'' else to_char(shift_counter1) end shift_counter1,',
'      case when shift_counter2 > day_limit then shift_counter2||''!'' else to_char(shift_counter2) end shift_counter2,',
'      case when shift_counter3 > day_limit then shift_counter3||''!'' else to_char(shift_counter3) end shift_counter3,',
'      case when shift_counter4 > day_limit then shift_counter4||''!'' else to_char(shift_counter4) end shift_counter4,',
'      case when shift_counter5 > day_limit then shift_counter5||''!'' else to_char(shift_counter5) end shift_counter5,',
'      case when shift_counter6 > day_limit then shift_counter6||''!'' else to_char(shift_counter6) end shift_counter6,',
'      case when shift_counter7 > day_limit then shift_counter7||''!'' else to_char(shift_counter7) end shift_counter7,',
'      case when shift_counter8 > day_limit then shift_counter8||''!'' else to_char(shift_counter8) end shift_counter8,',
'      case when shift_counter9 > day_limit then shift_counter9||''!'' else to_char(shift_counter9) end shift_counter9,',
'      case when shift_counter10 > day_limit then shift_counter10||''!'' else to_char(shift_counter10) end shift_counter10,',
'      case when shift_counter11 > day_limit then shift_counter11||''!'' else to_char(shift_counter11) end shift_counter11,',
'      case when shift_counter12 > day_limit then shift_counter12||''!'' else to_char(shift_counter12) end shift_counter12,',
'      case when shift_counter13 > day_limit then shift_counter13||''!'' else to_char(shift_counter13) end shift_counter13,',
'      case when shift_counter14 > day_limit then shift_counter14||''!'' else to_char(shift_counter14) end shift_counter14,',
'      case when shift_counter15 > day_limit then shift_counter15||''!'' else to_char(shift_counter15) end shift_counter15,',
'      case when shift_counter16 > day_limit then shift_counter16||''!'' else to_char(shift_counter16) end shift_counter16,',
'      case when shift_counter17 > day_limit then shift_counter17||''!'' else to_char(shift_counter17) end shift_counter17,',
'      case when shift_counter18 > day_limit then shift_counter18||''!'' else to_char(shift_counter18) end shift_counter18,',
'      case when shift_counter19 > day_limit then shift_counter19||''!'' else to_char(shift_counter19) end shift_counter19,',
'      case when shift_counter20 > day_limit then shift_counter20||''!'' else to_char(shift_counter20) end shift_counter20,',
'      case when shift_counter21 > day_limit then shift_counter21||''!'' else to_char(shift_counter21) end shift_counter21,',
'      case when shift_counter22 > day_limit then shift_counter22||''!'' else to_char(shift_counter22) end shift_counter22,',
'      case when shift_counter23 > day_limit then shift_counter23||''!'' else to_char(shift_counter23) end shift_counter23,',
'      case when shift_counter24 > day_limit then shift_counter24||''!'' else to_char(shift_counter24) end shift_counter24,',
'      case when shift_counter25 > day_limit then shift_counter25||''!'' else to_char(shift_counter25) end shift_counter25,',
'      case when shift_counter26 > day_limit then shift_counter26||''!'' else to_char(shift_counter26) end shift_counter26,',
'      case when shift_counter27 > day_limit then shift_counter27||''!'' else to_char(shift_counter27) end shift_counter27,',
'      case when shift_counter28 > day_limit then shift_counter28||''!'' else to_char(shift_counter28) end shift_counter28,',
'      case when shift_counter29 > day_limit then shift_counter29||''!'' else to_char(shift_counter29) end shift_counter29,',
'      case when shift_counter30 > day_limit then shift_counter30||''!'' else to_char(shift_counter30) end shift_counter30,',
'      case when shift_counter31 > day_limit then shift_counter31||''!'' else to_char(shift_counter31) end shift_counter31',
'from (',
'select shift_id,',
'      shift_code,',
'      shift_description,',
'      SHC_SCHEDULE_PKG.count_shift_for_day(:P13_YEAR, :P13_MONTH, 1, shift_id) shift_counter1,',
'      SHC_SCHEDULE_PKG.count_shift_for_day(:P13_YEAR, :P13_MONTH, 2, shift_id) shift_counter2,',
'      SHC_SCHEDULE_PKG.count_shift_for_day(:P13_YEAR, :P13_MONTH, 3, shift_id) shift_counter3,',
'      SHC_SCHEDULE_PKG.count_shift_for_day(:P13_YEAR, :P13_MONTH, 4, shift_id) shift_counter4,',
'      SHC_SCHEDULE_PKG.count_shift_for_day(:P13_YEAR, :P13_MONTH, 5, shift_id) shift_counter5,',
'      SHC_SCHEDULE_PKG.count_shift_for_day(:P13_YEAR, :P13_MONTH, 6, shift_id) shift_counter6,',
'      SHC_SCHEDULE_PKG.count_shift_for_day(:P13_YEAR, :P13_MONTH, 7, shift_id) shift_counter7,',
'      SHC_SCHEDULE_PKG.count_shift_for_day(:P13_YEAR, :P13_MONTH, 8, shift_id) shift_counter8,',
'      SHC_SCHEDULE_PKG.count_shift_for_day(:P13_YEAR, :P13_MONTH, 9, shift_id) shift_counter9,',
'      SHC_SCHEDULE_PKG.count_shift_for_day(:P13_YEAR, :P13_MONTH, 10, shift_id) shift_counter10,',
'      SHC_SCHEDULE_PKG.count_shift_for_day(:P13_YEAR, :P13_MONTH, 11, shift_id) shift_counter11,',
'      SHC_SCHEDULE_PKG.count_shift_for_day(:P13_YEAR, :P13_MONTH, 12, shift_id) shift_counter12,',
'      SHC_SCHEDULE_PKG.count_shift_for_day(:P13_YEAR, :P13_MONTH, 13, shift_id) shift_counter13,',
'      SHC_SCHEDULE_PKG.count_shift_for_day(:P13_YEAR, :P13_MONTH, 14, shift_id) shift_counter14,',
'      SHC_SCHEDULE_PKG.count_shift_for_day(:P13_YEAR, :P13_MONTH, 15, shift_id) shift_counter15,',
'      SHC_SCHEDULE_PKG.count_shift_for_day(:P13_YEAR, :P13_MONTH, 16, shift_id) shift_counter16,',
'      SHC_SCHEDULE_PKG.count_shift_for_day(:P13_YEAR, :P13_MONTH, 17, shift_id) shift_counter17,',
'      SHC_SCHEDULE_PKG.count_shift_for_day(:P13_YEAR, :P13_MONTH, 18, shift_id) shift_counter18,',
'      SHC_SCHEDULE_PKG.count_shift_for_day(:P13_YEAR, :P13_MONTH, 19, shift_id) shift_counter19,',
'      SHC_SCHEDULE_PKG.count_shift_for_day(:P13_YEAR, :P13_MONTH, 20, shift_id) shift_counter20,',
'      SHC_SCHEDULE_PKG.count_shift_for_day(:P13_YEAR, :P13_MONTH, 21, shift_id) shift_counter21,',
'      SHC_SCHEDULE_PKG.count_shift_for_day(:P13_YEAR, :P13_MONTH, 22, shift_id) shift_counter22,',
'      SHC_SCHEDULE_PKG.count_shift_for_day(:P13_YEAR, :P13_MONTH, 23, shift_id) shift_counter23,',
'      SHC_SCHEDULE_PKG.count_shift_for_day(:P13_YEAR, :P13_MONTH, 24, shift_id) shift_counter24,',
'      SHC_SCHEDULE_PKG.count_shift_for_day(:P13_YEAR, :P13_MONTH, 25, shift_id) shift_counter25,',
'      SHC_SCHEDULE_PKG.count_shift_for_day(:P13_YEAR, :P13_MONTH, 26, shift_id) shift_counter26,',
'      SHC_SCHEDULE_PKG.count_shift_for_day(:P13_YEAR, :P13_MONTH, 27, shift_id) shift_counter27,',
'      SHC_SCHEDULE_PKG.count_shift_for_day(:P13_YEAR, :P13_MONTH, 28, shift_id) shift_counter28,',
'      SHC_SCHEDULE_PKG.count_shift_for_day(:P13_YEAR, :P13_MONTH, 29, shift_id) shift_counter29,',
'      SHC_SCHEDULE_PKG.count_shift_for_day(:P13_YEAR, :P13_MONTH, 30, shift_id) shift_counter30,',
'      SHC_SCHEDULE_PKG.count_shift_for_day(:P13_YEAR, :P13_MONTH, 31, shift_id) shift_counter31,',
'    day_limit',
'from SHC_SHIFT)'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>8.5
,p_prn_height=>11
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(236987230325472891)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'MARINOSY@GMAIL.COM'
,p_internal_uid=>236987230325472891
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(118600333923545203)
,p_db_column_name=>'SHIFT_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Shift id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(118600651522545204)
,p_db_column_name=>'SHIFT_CODE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Βάρδια'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(118601072841545204)
,p_db_column_name=>'SHIFT_DESCRIPTION'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Περιγραφή'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(118601416840545204)
,p_db_column_name=>'SHIFT_COUNTER1'
,p_display_order=>40
,p_column_identifier=>'AI'
,p_column_label=>'1'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(118601839722545205)
,p_db_column_name=>'SHIFT_COUNTER2'
,p_display_order=>50
,p_column_identifier=>'AJ'
,p_column_label=>'2'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(118602232530545206)
,p_db_column_name=>'SHIFT_COUNTER3'
,p_display_order=>60
,p_column_identifier=>'AK'
,p_column_label=>'3'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(118602665029545206)
,p_db_column_name=>'SHIFT_COUNTER4'
,p_display_order=>70
,p_column_identifier=>'AL'
,p_column_label=>'4'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(118603095432545206)
,p_db_column_name=>'SHIFT_COUNTER5'
,p_display_order=>80
,p_column_identifier=>'AM'
,p_column_label=>'5'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(118603424975545206)
,p_db_column_name=>'SHIFT_COUNTER6'
,p_display_order=>90
,p_column_identifier=>'AN'
,p_column_label=>'6'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(118603895031545207)
,p_db_column_name=>'SHIFT_COUNTER7'
,p_display_order=>100
,p_column_identifier=>'AO'
,p_column_label=>'7'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(118604224220545207)
,p_db_column_name=>'SHIFT_COUNTER8'
,p_display_order=>110
,p_column_identifier=>'AP'
,p_column_label=>'8'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(118604613691545207)
,p_db_column_name=>'SHIFT_COUNTER9'
,p_display_order=>120
,p_column_identifier=>'AQ'
,p_column_label=>'9'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(118605046360545207)
,p_db_column_name=>'SHIFT_COUNTER10'
,p_display_order=>130
,p_column_identifier=>'AR'
,p_column_label=>'10'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(118605437176545208)
,p_db_column_name=>'SHIFT_COUNTER11'
,p_display_order=>140
,p_column_identifier=>'AS'
,p_column_label=>'11'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(118605817184545208)
,p_db_column_name=>'SHIFT_COUNTER12'
,p_display_order=>150
,p_column_identifier=>'AT'
,p_column_label=>'12'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(118606215116545208)
,p_db_column_name=>'SHIFT_COUNTER13'
,p_display_order=>160
,p_column_identifier=>'AU'
,p_column_label=>'13'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(118606624998545209)
,p_db_column_name=>'SHIFT_COUNTER14'
,p_display_order=>170
,p_column_identifier=>'AV'
,p_column_label=>'14'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(118607023294545210)
,p_db_column_name=>'SHIFT_COUNTER15'
,p_display_order=>180
,p_column_identifier=>'AW'
,p_column_label=>'15'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(118607494673545210)
,p_db_column_name=>'SHIFT_COUNTER16'
,p_display_order=>190
,p_column_identifier=>'AX'
,p_column_label=>'16'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(118607800810545210)
,p_db_column_name=>'SHIFT_COUNTER17'
,p_display_order=>200
,p_column_identifier=>'AY'
,p_column_label=>'17'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(118608205376545210)
,p_db_column_name=>'SHIFT_COUNTER18'
,p_display_order=>210
,p_column_identifier=>'AZ'
,p_column_label=>'18'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(118608693126545211)
,p_db_column_name=>'SHIFT_COUNTER19'
,p_display_order=>220
,p_column_identifier=>'BA'
,p_column_label=>'19'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(118609010621545211)
,p_db_column_name=>'SHIFT_COUNTER20'
,p_display_order=>230
,p_column_identifier=>'BB'
,p_column_label=>'20'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(118609458891545211)
,p_db_column_name=>'SHIFT_COUNTER21'
,p_display_order=>240
,p_column_identifier=>'BC'
,p_column_label=>'21'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(118609875494545212)
,p_db_column_name=>'SHIFT_COUNTER22'
,p_display_order=>250
,p_column_identifier=>'BD'
,p_column_label=>'22'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(118610267893545212)
,p_db_column_name=>'SHIFT_COUNTER23'
,p_display_order=>260
,p_column_identifier=>'BE'
,p_column_label=>'23'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(118610648503545212)
,p_db_column_name=>'SHIFT_COUNTER24'
,p_display_order=>270
,p_column_identifier=>'BF'
,p_column_label=>'24'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(118611027317545213)
,p_db_column_name=>'SHIFT_COUNTER25'
,p_display_order=>280
,p_column_identifier=>'BG'
,p_column_label=>'25'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(118611450427545213)
,p_db_column_name=>'SHIFT_COUNTER26'
,p_display_order=>290
,p_column_identifier=>'BH'
,p_column_label=>'26'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(118611897753545213)
,p_db_column_name=>'SHIFT_COUNTER27'
,p_display_order=>300
,p_column_identifier=>'BI'
,p_column_label=>'27'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(118612247882545215)
,p_db_column_name=>'SHIFT_COUNTER28'
,p_display_order=>310
,p_column_identifier=>'BJ'
,p_column_label=>'28'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(118612631109545215)
,p_db_column_name=>'SHIFT_COUNTER29'
,p_display_order=>320
,p_column_identifier=>'BK'
,p_column_label=>'29'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(118613077805545215)
,p_db_column_name=>'SHIFT_COUNTER30'
,p_display_order=>330
,p_column_identifier=>'BL'
,p_column_label=>'30'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(118613414784545216)
,p_db_column_name=>'SHIFT_COUNTER31'
,p_display_order=>340
,p_column_identifier=>'BM'
,p_column_label=>'31'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(237131076218788282)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1186138'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'SHIFT_CODE0123456789012345678901'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(118614275789545219)
,p_name=>'P13_YEAR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(233016434767846232)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(118614645859545221)
,p_name=>'P13_MONTH'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(233016434767846232)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
end;
/
prompt --application/pages/page_00101
begin
wwv_flow_api.create_page(
 p_id=>101
,p_user_interface_id=>wwv_flow_api.id(73182974805446411)
,p_name=>'Login Page'
,p_alias=>'LOGIN_DESKTOP'
,p_page_mode=>'NORMAL'
,p_step_title=>'Shift Scheduler - Log In'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(73132749338446161)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'Y'
,p_cache_mode=>'NOCACHE'
,p_last_upd_yyyymmddhh24miss=>'20170717220201'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(73183438966446496)
,p_plug_name=>'Shift Scheduler'
,p_icon_css_classes=>'fa-sign-in'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(73149152090446237)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(73183799485446511)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(73183438966446496)
,p_button_name=>'LOGIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(73172160222446356)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Log In'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_alignment=>'LEFT'
,p_grid_new_grid=>false
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(73183573276446503)
,p_name=>'P101_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(73183438966446496)
,p_prompt=>'username'
,p_placeholder=>'username'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(73171597890446345)
,p_item_icon_css_classes=>'fa-user'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(73183641069446510)
,p_name=>'P101_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(73183438966446496)
,p_prompt=>'password'
,p_placeholder=>'password'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(73171597890446345)
,p_item_icon_css_classes=>'fa-key'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(73183965507446527)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Username Cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_authentication.send_login_username_cookie (',
'    p_username => lower(:P101_USERNAME) );'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(73183882379446516)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Login'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_authentication.login(',
'    p_username => :P101_USERNAME,',
'    p_password => :P101_PASSWORD );'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(73184165020446528)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(73184085278446527)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_process_sql_clob=>':P101_USERNAME := apex_authentication.get_login_username_cookie;'
);
end;
/
prompt --application/deployment/definition
begin
null;
end;
/
prompt --application/deployment/install
begin
null;
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
wwv_flow_api.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
commit;
end;
/
set verify on feedback on define on
prompt  ...done
