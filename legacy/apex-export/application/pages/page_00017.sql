prompt --application/pages/page_00017
begin
--   Manifest
--     PAGE: 00017
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
 p_id=>17
,p_user_interface_id=>wwv_flow_api.id(1954772723207063)
,p_name=>'Certificaciones'
,p_step_title=>'Certificaciones'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(1968417659227077)
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_last_updated_by=>'ADMINPOGK'
,p_last_upd_yyyymmddhh24miss=>'20230609153409'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2020620619974010)
,p_plug_name=>'page-header'
,p_region_template_options=>'#DEFAULT#:margin-bottom-none:t-Form--noPadding'
,p_plug_template=>wwv_flow_api.id(1990753307084041)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="page-header" style="background-image: url(#APP_IMAGES#assets/images/certificaciones.jpg); style="width: 1343px;"">',
'    <div  style="text-align: center; position: relative;">',
'        <h2>Certificaciones</h2>',
'        <ul class="thm-breadcrumb list-unstyled button-right">',
'            <li><a href="https://www.grupokasto.com/ords/PDB1/f?p=102:1:&SESSION.">Inicio</a></li>',
'            <li><span>Certificaciones</span></li>',
'        </ul>',
'    </div>',
'</section>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2020759203974011)
,p_plug_name=>'need_all2'
,p_region_template_options=>'#DEFAULT#:margin-bottom-none:t-Form--noPadding'
,p_plug_template=>wwv_flow_api.id(1990753307084041)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="about_two">',
'    <div class="container">',
'        <div class="row">',
'            <div class="col-xl-6 col-lg-6 col-md-6">',
'                <div class="left_content">',
'                    <div class="block-title text-left">',
'                        <p>Comprometidos con la calidad</p>',
'                        <h3>Nuestros CErtificados</h3>',
'                        <div class="leaf">',
'                            <img src="#APP_IMAGES#leaf.png" alt="">',
'                        </div>',
'                    </div>',
'                    <div class="need_image2">',
'                        <img src="#APP_IMAGES#Molino_trigo.jpg" alt="Need Image" />',
'                    </div>',
'                </div>',
'            </div>',
'            <div class="col-xl-6 col-lg-6 col-md-6">',
'                <div class="about_two_text">',
'                    <div>',
'                        <p style="text-align: justify;">',
unistr('                            Cumplimos con los m\00E1s altos est\00E1ndares de calidad e inocuidad establecidos, a trav\00E9s de'),
unistr('                            procesos est\00E1ndar que nos permiten trabajar de manera eficiente, oportuna, din\00E1mica y con'),
'                            personal altamente capacitado.',
'                        </p>',
'',
'                        <br>',
'',
'                        <p style="text-align: justify;">',
unistr('                            Desde 2012, las empresas pertenecientes a las divisi\00F3nes de granos y molinos de trigo se'),
unistr('                            encuentran certificadas bajo las normas ISO 9001-2015 y HACCP (An\00E1lisis de Peligros y Puntos'),
unistr('                            Cr\00EDticos de Control, por sus siglas en ingl\00E9s).'),
'                        </p>',
'',
'                        <br>',
'',
'                        <p style="text-align: justify;">',
unistr('                            Desde el 2022, Molino La Concepci\00F3n, perteneciente a la divisi\00F3n molinos, obtuvo la'),
unistr('                            certificaci\00F3n en el esquema FSSC 22000 (Sistemas de Inocuidad de los Alimentos, por sus'),
unistr('                            siglas en ingl\00E9s) y Kosher.'),
'                        </p>',
'                    </div>',
'                    <br>',
'                    <!-- <div class="row">',
'                        <div class="service_four_icon">',
'                            <img src="#APP_IMAGES#logoiso9001.png" alt="">',
'                        </div>',
'                        <div class="service_four_icon">',
'                            <img src="#APP_IMAGES#logohaccp.png" alt="">',
'                        </div>',
'                    </div> -->',
'                    <!-- <div class="row">',
'                        <div class="service_four_icon" style="background: none;">',
'                            <img src="https://molinosgrupokasto.com/img/nosotros/ICONO-FSSC22000.png" width="135px" height="135px" alt="FSSC22000">',
'                        </div>',
'                        <div class="service_four_icon" style="background: none;">',
'                            <img src="https://molinosgrupokasto.com/img/nosotros/ICONO-KOSHER.png" width="150px" height="150px" alt="Kosher">',
'                        </div>',
'                    </div> -->',
'                </div>',
'            </div>',
'        </div>',
'    </div>',
'</section>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2020805360974012)
,p_plug_name=>'welcome_one'
,p_region_template_options=>'#DEFAULT#:margin-bottom-none:t-Form--noPadding'
,p_plug_template=>wwv_flow_api.id(1990753307084041)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
' <section class="welcome_one">',
'            <div class="container">',
'                <div class="row">',
'                    <div class="col-xl-6 col-lg-6 col-md-6">',
'                        <div class="block-title text-left">',
'                            <p>De la mano de nuestra comunidad</p>',
'                            <h3> Empresa socialmente<br> Responsable</h3>',
'                            <div class="leaf">',
'                                <img src="#APP_IMAGES#leaf.png" alt="">',
'                            </div>',
'                        </div>',
'                        <div class="welcome_video_box"',
'                            style="background-image:url(''#APP_IMAGES#GROUP-ON-DARK-WOOD-e1504188944269.jpg'')">',
'                            <!--<a href="https://www.youtube.com/watch?v=5k-K21uWvr4"',
'                                class="welcome_video_btn video-popup"><i class="fa fa-play"></i></a>-->',
'                        </div>',
'                      ',
'                    </div>',
'                    <div class="col-xl-6 col-lg-6 col-md-6">',
'                        ',
'                            <div class="about_two_text" style="margin-top:-20px;">',
'                                <br>',
unistr('                                <p style="text-align: justify;">En nuestra Divisi\00F3n Invernaderos adem\00E1s de contar con el distintivo ESR '),
unistr('                                (Empresa socialmente responsable), aseguramos la exportaci\00F3n de nuestros productos a trav\00E9s de los siguientes certificados:</p>'),
'                                <br>',
'',
'                                <ul class="company_list_box list-unstyled">',
unistr('                                    <li><i style=''font-size:24px'' class=''fas''>&#xf559;</i>BPA (Buenas Pr\00E1cticas de Agricultura)</li>'),
unistr('                                    <li><i style=''font-size:24px'' class=''fas''>&#xf559;</i>BPM (Buenas Pr\00E1cticas para el Manejo de Empaque)</li>'),
unistr('                                    <li><i style=''font-size:24px'' class=''fas''>&#xf559;</i>SRR (Sistema de Reducci\00F3n de Riesgos de Contaminaci\00F3n)</li>'),
'                                    <li><i style=''font-size:24px'' class=''fas''>&#xf559;</i>Certificado de Trazabilidad</li>',
'                                    <li><i style=''font-size:24px'' class=''fas''>&#xf559;</i>Customs Trade Partnership Against Terrorism</li>',
'                                </ul>',
'                                <br>',
'                                <br>',
'                                 <div class="need_image2" style="margin-top: -85px;">',
'                                    <img class="mx-auto d-block" style="max-width: 300px;" ',
'                                      src="https://www.industriasenergeticas.com/ie/images/Logo-ESR.png"',
'                                      alt="Need Image"/>',
'                                </div>',
'                       ',
'',
'                       ',
'',
'                       <!--<div class="growing_box" style="margin-top: -80px;">',
'                            <div class="growing_icon_box">',
'                                ',
'                            </div>',
'                            <div class="growing_text">',
unistr('                                <p style="font-size: 15px;">Reconocimiento por una contribuci\00F3n activa y voluntaria para mejorar las condiciones sociales, econ\00F3micas y ambientales.</p>'),
'                            </div>',
'                        </div>-->',
'                    </div>',
'                </div>',
'            </div>',
'        </section>',
''))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(16009790677533132)
,p_plug_name=>'Certifications'
,p_region_template_options=>'#DEFAULT#:margin-bottom-none:t-Form--noPadding'
,p_plug_template=>wwv_flow_api.id(1990753307084041)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="about_two" style="padding: 65px 0 25px;">',
'    <div class="container">',
'        <div class="col-xl-12 col-lg-12 col-md-12">',
'            <div class="about_two_text">',
'                <div class="row">',
'                    <div class="service_four_icon">',
'                        <img src="#APP_IMAGES#logoiso9001.png" alt="">',
'                    </div>',
'                    <div class="service_four_icon">',
'                        <img src="#APP_IMAGES#logohaccp.png" alt="">',
'                    </div>',
'                    <div class="service_four_icon" style="background: none;">',
'                        <img src="#APP_IMAGES#fssc22000.png" width="186px" height="186px" alt="FSSC22000">',
'                    </div>',
'                    <div class="service_four_icon" style="background: none;">',
'                        <img src="https://molinosgrupokasto.com/img/nosotros/ICONO-FSSC22000.png" alt="FSSC22000">',
'                    </div>',
'                    <div class="service_four_icon" style="background: none;">',
'                        <img src="https://molinosgrupokasto.com/img/nosotros/ICONO-KOSHER.png" width="160px"',
'                            height="160px" alt="Kosher">',
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
