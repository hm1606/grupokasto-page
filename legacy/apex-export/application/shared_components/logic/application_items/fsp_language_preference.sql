prompt --application/shared_components/logic/application_items/fsp_language_preference
begin
--   Manifest
--     APPLICATION ITEM: FSP_LANGUAGE_PREFERENCE
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2020.03.31'
,p_release=>'20.1.0.00.13'
,p_default_workspace_id=>1829437844690909
,p_default_application_id=>102
,p_default_id_offset=>0
,p_default_owner=>'XXPOKASTO'
);
wwv_flow_api.create_flow_item(
 p_id=>wwv_flow_api.id(22325342733378614)
,p_name=>'FSP_LANGUAGE_PREFERENCE'
,p_protection_level=>'N'
);
wwv_flow_api.component_end;
end;
/
