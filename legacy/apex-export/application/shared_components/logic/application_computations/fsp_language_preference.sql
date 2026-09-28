prompt --application/shared_components/logic/application_computations/fsp_language_preference
begin
--   Manifest
--     APPLICATION COMPUTATION: FSP_LANGUAGE_PREFERENCE
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2020.03.31'
,p_release=>'20.1.0.00.13'
,p_default_workspace_id=>1829437844690909
,p_default_application_id=>102
,p_default_id_offset=>0
,p_default_owner=>'XXPOKASTO'
);
wwv_flow_api.create_flow_computation(
 p_id=>wwv_flow_api.id(25110032586756933)
,p_computation_sequence=>10
,p_computation_item=>'FSP_LANGUAGE_PREFERENCE'
,p_computation_point=>'ON_NEW_INSTANCE'
,p_computation_type=>'FUNCTION_BODY'
,p_computation_processed=>'REPLACE_EXISTING'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN ',
'    APEX_UTIL.SET_PREFERENCE(p_preference => ''FSP_LANGUAGE_PREFERENCE'', ',
'                             p_value => ''es'');',
'END;'))
,p_compute_when_type=>'ALWAYS'
);
wwv_flow_api.component_end;
end;
/
