prompt --application/shared_components/user_interface/templates/page/gkasto2
begin
--   Manifest
--     TEMPLATE: GKASTO2
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2020.03.31'
,p_release=>'20.1.0.00.13'
,p_default_workspace_id=>1829437844690909
,p_default_application_id=>102
,p_default_id_offset=>0
,p_default_owner=>'XXPOKASTO'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(2043851198600933)
,p_theme_id=>42
,p_name=>'gkasto2'
,p_internal_name=>'GKASTO2'
,p_is_popup=>false
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">',
'<head>',
'#HEAD#',
'<title>#TITLE#</title>',
'</head>',
'<body #ONLOAD#>#FORM_OPEN#<a name="PAGETOP"></a>'))
,p_box=>'#BOX_BODY#'
,p_footer_template=>'#FORM_CLOSE#<a name="END"></a></body></html>'
,p_theme_class_id=>3
,p_grid_type=>'TABLE'
);
wwv_flow_api.component_end;
end;
/
