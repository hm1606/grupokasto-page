prompt --application/pages/page_00020
begin
--   Manifest
--     PAGE: 00020
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
 p_id=>20
,p_user_interface_id=>wwv_flow_api.id(1954772723207063)
,p_name=>'Asesoria'
,p_step_title=>'Asesoria'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(1968417659227077)
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_last_updated_by=>'ADMINPOGK'
,p_last_upd_yyyymmddhh24miss=>'20220913225804'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2021354151974017)
,p_plug_name=>'page-header'
,p_region_template_options=>'#DEFAULT#:margin-bottom-none:t-Form--noPadding'
,p_plug_template=>wwv_flow_api.id(1990753307084041)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
' <section class="page-header" style="background-image: url(#APP_IMAGES#assets/images/asesoria_y_consultoria.jpg); style="width: 1343px;"">',
'            <div  style="text-align: center; position: relative;">',
unistr('                <h2>Asesor\00EDa y Consultor\00EDa</h2>'),
'                <ul class="thm-breadcrumb list-unstyled button-right">',
'                    <li><a href="https://www.grupokasto.com/ords/PDB1/f?p=102:1:&SESSION.">Inicio</a></li>',
unistr('                    <li><span>Consultor\00EDa</span></li>'),
'                </ul>',
'            </div>',
'  </section>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2021432471974018)
,p_plug_name=>'service_detail'
,p_region_template_options=>'#DEFAULT#:margin-bottom-none:t-Form--noPadding'
,p_plug_template=>wwv_flow_api.id(1990753307084041)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="service_detail">',
'            <div class="container" style=" padding-bottom: 0; margin-bottom: -120px;">',
'                <div class="row">',
'                    <div class="col-xl-4 col-lg-4">',
'                        <div class="service_details_left">',
'                            <ul class="list-unstyled service_all_list">',
unistr('                                <li><a href="https://www.grupokasto.com/ords/PDB1/f?p=102:18:&SESSION." style="text-transform:none;">Log\00EDstica y originaci\00F3n</a></li>'),
unistr('                                <li><a href="https://www.grupokasto.com/ords/PDB1/f?p=102:19:&SESSION." style="text-transform:none;">Comercializaci\00F3n</a></li>'),
unistr('                                <li class="active"><a href="https://www.grupokasto.com/ords/PDB1/f?p=102:20:&SESSION." style="text-transform:none;">Asesor\00EDa y consultor\00EDa</a></li>'),
'                                <li><a href="https://www.grupokasto.com/ords/PDB1/f?p=102:21:&SESSION." style="text-transform:none;">Desarrollo de proyectos</a></li>',
'                            </ul>',
'                            <div class="need_help_box">',
unistr('                                <h2>\00BFNecesitas Ayuda?</h2>'),
unistr('                                <p>\00BFHabla con un asesor para completar un formulario? llame a la oficina corporativa y lo comunicamos'),
'                                    con un miembro del equipo que pueda ayudar.</p>',
'                                <h3><span class="icon-phone-call"></span>352 526 1939</h3>',
'                            </div>',
'                        </div>',
'                    </div>',
'                    <div class="col-xl-8 col-lg-8">',
'                        <div class="service_details_right">',
'                            <div class="service_details_One_img">',
'                                <!--<img src="#APP_IMAGES#img01.jpg" alt="">-->',
'                            </div>',
'                            <div class="harvest_innovations" style="margin-top: -45px;">',
unistr('                                <h2>ASESOR\00CDA Y CONSULTOR\00CDA corporativa Y OPERATIVA</h2>'),
unistr('                                <p>Contamos con personal capacitado en \00E1reas t\00E9cnicas y administrativas que dan soporte a las empresas que forman parte de Grupo Kasto. Esta experiencia nos permite ofrecer estos servicios a los clientes que lo requier')
||'en.</p>',
unistr('                                <p>Dentro de nuestro portafolio de servicios est\00E1n: Consultor\00EDa y redise\00F1o de procesos, consultor\00EDa contable y legal, consultor\00EDa en la implementaci\00F3n y operaci\00F3n de sistemas de informaci\00F3n, desarrollo de sistemas de i')
||unistr('nformaci\00F3n a la medida, administraci\00F3n de la seguridad de redes inform\00E1ticas, adem\00E1s de soporte operativo y t\00E9cnico.</p>'),
'',
'                                <!--<p class="harvest_innovations_bottom_text"></p>-->',
'                            </div>',
'                            <div class="row">',
'                                <div class="col-xl-6 col-lg-6">',
'                                    <div class="service_details_single_img_box">',
'                                        <img src="#APP_IMAGES#assets/images/AC_iqz.jpeg" alt="">',
'                                    </div>',
'                                </div>',
'                                <div class="col-xl-6 col-lg-6">',
'                                    <div class="service_details_single_img_box">',
'                                        <img src="#APP_IMAGES#assets/images/AC_der.jpg" alt="">',
'                                    </div>',
'                                </div>',
'                            </div>',
'                        </div>',
'                    </div>',
'                </div>',
'            </div>',
'        </section>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.component_end;
end;
/
