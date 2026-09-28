prompt --application/pages/page_00000
begin
--   Manifest
--     PAGE: 00000
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2020.03.31'
,p_release=>'20.1.0.00.13'
,p_default_workspace_id=>1829437844690909
,p_default_application_id=>102
,p_default_id_offset=>0
,p_default_owner=>'XXPOKASTO'
);
wwv_flow_api.create_page(
 p_id=>0
,p_user_interface_id=>wwv_flow_api.id(1954772723207063)
,p_name=>'Global Page - Desktop'
,p_step_title=>'Global Page - Desktop'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'D'
,p_last_updated_by=>'ADMINPOGK'
,p_last_upd_yyyymmddhh24miss=>'20220914001602'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(14648897603090433)
,p_name=>'Hide es'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'CURRENT_LANG_EQ_COND1'
,p_display_when_cond=>'es'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(14648986779090434)
,p_event_id=>wwv_flow_api.id(14648897603090433)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'JQUERY_SELECTOR'
,p_affected_elements=>'#top-lang-button-es, #bottom-lang-button-es, #side-lang-button-es'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(14649064756090435)
,p_name=>'Hide en'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'CURRENT_LANG_EQ_COND1'
,p_display_when_cond=>'en'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(14649172473090436)
,p_event_id=>wwv_flow_api.id(14649064756090435)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'JQUERY_SELECTOR'
,p_affected_elements=>'#top-lang-button-en, #bottom-lang-button-en, #side-lang-button-en'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(14649204346090437)
,p_name=>'Set en'
,p_event_sequence=>30
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#top-lang-button-en, #bottom-lang-button-en, #side-lang-button-en'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(14649386653090438)
,p_event_id=>wwv_flow_api.id(14649204346090437)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    APEX_UTIL.SET_SESSION_LANG( P_LANG => ''en'');',
'END;'))
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(14649456577090439)
,p_event_id=>wwv_flow_api.id(14649204346090437)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(14649562552090440)
,p_name=>'Set es'
,p_event_sequence=>40
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#top-lang-button-es, #bottom-lang-button-es, #side-lang-button-es'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(14649612263090441)
,p_event_id=>wwv_flow_api.id(14649562552090440)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    APEX_UTIL.SET_SESSION_LANG( P_LANG => ''es'');',
'END;'))
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(14649766753090442)
,p_event_id=>wwv_flow_api.id(14649562552090440)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'N'
);
wwv_flow_api.component_end;
end;
/
