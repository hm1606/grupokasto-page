prompt --application/shared_components/user_interface/templates/region/gkastocarrusel
begin
--   Manifest
--     REGION TEMPLATE: GKASTOCARRUSEL
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2020.03.31'
,p_release=>'20.1.0.00.13'
,p_default_workspace_id=>1829437844690909
,p_default_application_id=>102
,p_default_id_offset=>0
,p_default_owner=>'XXPOKASTO'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(1990753307084041)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!-- GKasto Region -->',
'#BODY#'))
,p_page_plug_template_name=>'gkasto-carrusel'
,p_internal_name=>'GKASTOCARRUSEL'
,p_theme_id=>42
,p_theme_class_id=>13
,p_preset_template_options=>'margin-bottom-none:t-Form--noPadding'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.component_end;
end;
/
