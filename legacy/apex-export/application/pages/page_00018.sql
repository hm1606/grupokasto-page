prompt --application/pages/page_00018
begin
--   Manifest
--     PAGE: 00018
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
 p_id=>18
,p_user_interface_id=>wwv_flow_api.id(1954772723207063)
,p_name=>unistr('Log\00EDstica')
,p_step_title=>unistr('Log\00EDstica')
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(1968417659227077)
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_last_updated_by=>'ADMINPOGK'
,p_last_upd_yyyymmddhh24miss=>'20220913225545'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2020910737974013)
,p_plug_name=>'page-header'
,p_region_template_options=>'#DEFAULT#:margin-bottom-none:t-Form--noPadding'
,p_plug_template=>wwv_flow_api.id(1990753307084041)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <section class="page-header" style="background-image: url(#APP_IMAGES#assets/images/Logistica_y_originacion.jpg); style="width: 1343px;"">',
'            <div  style="text-align: center; position: relative;">',
unistr('                <h2>Log\00EDstica y Originaci\00F3n</h2>'),
'                <ul class="thm-breadcrumb list-unstyled button-right">',
'                    <li><a href="https://www.grupokasto.com/ords/PDB1/f?p=102:1:&SESSION.">Inicio</a></li>',
unistr('                    <li><span>Log\00EDstica</span></li>'),
'                </ul>',
'            </div>',
'  </section>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2021003200974014)
,p_plug_name=>'service_detail'
,p_region_template_options=>'#DEFAULT#:margin-bottom-none:t-Form--noPadding'
,p_plug_template=>wwv_flow_api.id(1990753307084041)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="service_detail">',
'    <div class="container" style="padding-bottom: 0; margin-bottom: -120px;">',
'        <div class="row">',
'            <div class="col-xl-4 col-lg-4">',
'                <div class="service_details_left">',
'                    <ul class="list-unstyled service_all_list">',
unistr('                        <li class="active"><a href="https://www.grupokasto.com/ords/PDB1/f?p=102:18:&SESSION." style="text-transform:none;">Log\00EDstica y originaci\00F3n</a></li>'),
unistr('                        <li><a href="https://www.grupokasto.com/ords/PDB1/f?p=102:19:&SESSION." style="text-transform:none;">Comercializaci\00F3n</a></li>'),
unistr('                        <li><a href="https://www.grupokasto.com/ords/PDB1/f?p=102:20:&SESSION." style="text-transform:none;">Asesor\00EDa y consultor\00EDa</a></li>'),
'                        <li><a href="https://www.grupokasto.com/ords/PDB1/f?p=102:21:&SESSION." style="text-transform:none;">Desarrollo de proyectos</a></li>',
'                    </ul>',
'                    <div class="need_help_box">',
unistr('                        <h2>\00BFNecesitas Ayuda?</h2>'),
unistr('                        <p>\00BFHabla con un asesor para completar un formulario? llame a la oficina corporativa y lo comunicamos'),
'                            con un miembro del equipo que pueda ayudar.</p>',
'                        <h3><span class="icon-phone-call"></span>352 526 1766</h3> <!--352 526 1939-->',
'                    </div>',
'                </div>',
'            </div>',
'            <div class="col-xl-8 col-lg-8">',
'                <div class="service_details_right">',
'                    <div class="service_details_One_img">',
'                        <!--<img src="#APP_IMAGES#img01.jpg" alt="">-->',
'                    </div>',
'                    <div class="harvest_innovations" style="margin-top: -45px;">',
unistr('                        <h2>Log\00EDstica y Originaci\00F3n de granos y pastas</h2>'),
unistr('                        <p>Prestamos servicios de compra, almacenamiento y conservaci\00F3n; embarque de trigo, ma\00EDz y pasta de soya. Adem\00E1s, ofrecemos servicios de recepci\00F3n de granos y pastas en cami\00F3n o tolva de ferrocarril; contamos con terminales ca')
||unistr('rrusel en La Barca, Jalisco y en Ciudad Obreg\00F3n, Sonora.</p>'),
unistr('                        <p>La gran capacidad de recepci\00F3n y log\00EDstica de transporte nos coloca como una de las principales empresas originadoras de granos del pa\00EDs, lo cual nos llena de orgullo y nos mantiene comprometidos a superarnos diariamente.</')
||'p>',
unistr('                        <p>El resultado de este esfuerzo se confirma en la confianza que nos depositan los productores, a quienes acompa\00F1amos en todo su ciclo productivo desde la siembra hasta la comercializc\00F3n de sus granos.</p>'),
'                        <!--<p class="harvest_innovations_bottom_text"></p>-->',
'',
'                    </div>',
'                    <div class="row">',
'                        <div class="col-xl-6 col-lg-6">',
'                            <div class="service_details_single_img_box">',
'                                <img src="#APP_IMAGES#assets/images/LO_izq.jpg" alt="">',
'                            </div>',
'                        </div>',
'                        <div class="col-xl-6 col-lg-6">',
'                            <div class="service_details_single_img_box">',
'                                <img src="#APP_IMAGES#assets/images/LO_der.jpg" alt="">',
'                            </div>',
'                        </div>',
'                    </div>',
'                </div>',
'            </div>',
'        </div>',
'    </div>',
'</section>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.component_end;
end;
/
