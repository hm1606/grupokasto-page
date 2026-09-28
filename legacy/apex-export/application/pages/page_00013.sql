prompt --application/pages/page_00013
begin
--   Manifest
--     PAGE: 00013
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
 p_id=>13
,p_user_interface_id=>wwv_flow_api.id(1954772723207063)
,p_name=>unistr('Divisi\00F3n-Servicios')
,p_step_title=>unistr('Divisi\00F3n-Servicios')
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(1968417659227077)
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_last_updated_by=>'ADMINPOGK'
,p_last_upd_yyyymmddhh24miss=>'20220913225106'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1974681221258646)
,p_plug_name=>'page-header'
,p_region_template_options=>'#DEFAULT#:margin-bottom-none:t-Form--noPadding'
,p_plug_template=>wwv_flow_api.id(1990753307084041)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <section class="page-header" style="background-image: url(#APP_IMAGES#assets/images/Servicios.jpg); style="width: 1343px;"">',
'            <div  style="text-align: center; position: relative;">',
unistr('                <h2>Divisi\00F3n Servicios</h2>'),
'                <ul class="thm-breadcrumb list-unstyled button-right">',
'                    <li><a href="https://www.grupokasto.com/ords/PDB1/f?p=102:1:&SESSION.">Inicio</a></li>',
unistr('                    <li><span>Divisi\00F3n Servicios</span></li>'),
'                </ul>',
'            </div>',
'  </section>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1974748480258647)
,p_plug_name=>'project_detail'
,p_region_template_options=>'#DEFAULT#:margin-bottom-none:t-Form--noPadding'
,p_plug_template=>wwv_flow_api.id(1990753307084041)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="project_detail">',
'            <div class="container">',
'                <div class="row">',
'                    <div class="col-xl-12 col-lg-12 col-md-12">',
'                        <div class="project_detail_image">',
'                            <img src="#APP_IMAGES#assets/images/DS_info.jpg">',
'                        </div>',
'                    </div>',
'                </div>',
'                <div class="row">',
'                    <div class="col-xl-8 col-lg-7">',
'                        <div class="project_detail_left_content">',
'                            <div class="harvest_innovations_detail">',
unistr('                                <h2>Divisi\00F3n Servicios</h2>'),
unistr('                                <p>El crecimiento sostenido en nuestra cadena de valor, provoc\00F3 la generaci\00F3n de empresas adicionales que cubren las necesidades de abasto, log\00EDstica y soporte al resto de las unidades de negocio, ampliando la relaci\00F3n')
||' con clientes internos y externos.</p>',
'                            </div>',
'                            <br>',
'                            <div style="margin-bottom: 20px;">',
'                            <div class="block-title text-left">',
unistr('                                <p>\00BFQUI\00C9NES PARTICIPAN EN LA DIVISI\00D3N?</p>'),
'                                <h3>UNIDADES DE NEGOCIO </h3>',
'                                <div class="leaf" style="margin-top: 15px;">',
'                                    <img src="#APP_IMAGES#assets/images/resources/leaf.png" alt="">',
'                                </div>',
'                            </div>',
'                            <ul class="why_choose_list list-unstyled">',
'                                <li>',
'                                    <div class="choose_count">',
'                                        <h2>01</h2>',
'                                    </div>',
'                                    <div class="choose_text">',
'                                        <p  style="padding-top: 15px;">Servicio Ciudad del Sol</p>',
'                                    </div>',
'                                </li>',
'                                <li>',
'                                    <div class="choose_count">',
'                                        <h2>02</h2>',
'                                    </div>',
'                                    <div class="choose_text">',
unistr('                                        <p style="padding-top: 15px;">Regional de La Construcci\00F3n</p>'),
'                                    </div>',
'                                </li>',
'                                <li>',
'                                    <div class="choose_count">',
'                                        <h2>03</h2>',
'                                    </div>',
'                                    <div class="choose_text">',
'                                        <p  style="padding-top: 15px;">Transportes Kasto </p>',
'                                    </div>',
'                                </li>',
'                                <li>',
'                                    <div class="choose_count">',
'                                        <h2>04</h2>',
'                                    </div>',
'                                    <div class="choose_text">',
unistr('                                        <p  style="padding-top: 15px;">Investigaci\00F3n y desarrollo Grupo Kasto (IDGK) </p>'),
'                                    </div>',
'                                </li>',
'                                <li>',
'                                    <div class="choose_count">',
'                                        <h2>05</h2>',
'                                    </div>',
'                                    <div class="choose_text">',
'                                        <p  style="padding-top: 15px;">Multiservicios Profesionales GK </p>',
'                                    </div>',
'                                </li>',
'                            </ul>',
'                            </div>',
'',
'                            <br>',
'                            <hr>',
'                            <br>',
'',
'                            <div class="project_detail_last_text" style="margin-top: -50px;">',
unistr('                                <p>En Servicio Ciudad del sol  nos dedicamos a ofrecer la mejor calidad en combustibles. Nos esforzamos cada d\00EDa en mejorar para satisfacer a nuestros clientes, quienes se merecen la mejor atenci\00F3n y servicio.<br> '),
'',
unistr('                                    <br>En Recosa desde el a\00F1o 1979, buscamos entregar a nuestros clientes los mejores productos del mercado para satisfacer sus necesidades de construcci\00F3n, remodelaci\00F3n y decoraci\00F3n de su hogar, industria o negocio. ')
||'<br> ',
'',
unistr('                                    <br>En IDGK somos un centro de innovaci\00F3n que ofrece servicios de laboratorio anal\00EDtico para la evaluaci\00F3n de las caracter\00EDsticas f\00EDsicas y qu\00EDmicas del trigo y harinas; capaz de proporcionar un servicio confiable ')
||'y oportuno.<br> ',
'',
unistr('                                    <br>Multiservicios Profesionales GK es el brazo tecnol\00F3gico y de consultor\00EDa de negocio de Grupo Kasto. En el \00E1rea de Tecnolog\00EDas de la Informaci\00F3n hemos madurado nuestros procesos mediante la metodolog\00EDa de ITIL (')
||unistr('La Biblioteca de Infraestructura de Tecnolog\00EDas de Informaci\00F3n, por sus siglas en ingl\00E9s); y ofrecemos soporte t\00E9cnico a clientes externos a la compa\00F1\00EDa.</p>'),
'                            </div>',
'                        </div>',
'                    </div>',
'                    <div class="col-xl-4 col-lg-5">',
'                        <div class="project_information_box" style="padding: 40px;">',
'                            <h3>Directorio</h3>',
'                            <ul class="project_information_list list-unstyled" style="padding-bottom: 20px;">',
'                                <li><span>Multiservicios Profesionales GK, S.A. de C.V.<br>',
'                                    Av. Padre Hidalgo 410-1<br>',
'                                    Centro<br>',
'                                    Santa Ana Pacueco, Gto.&nbsp; C.P. 36910<br>',
'                                    Tel: (352) 52 61939</li>',
'                            </ul> ',
'                            <ul class=" project_information_list list-unstyled" style="padding-bottom: 20px;">',
unistr('                                <li><span>Investigaci\00F3n y Desarrollo GK S.A de C.V.<br>'),
'                                    Av. Abedules 414<br>',
'                                    Rinconada Santa Rita<br>',
'                                    Zapopan, Jal.&nbsp; C.P. 45120<br>',
'                                    Tel: (33) 38 13 4281 </li>',
'                            </ul>',
'                            ',
'                            <ul class="project_information_list list-unstyled" style="padding-bottom: 20px;">',
'                                <li><span>Servicios Ciudad del Sol, S.A. de C.V.<br>',
unistr('                                    Av. Michoac\00E1n No. 475<br>'),
'                                    Col. Ciudad del Sol<br>',
'                                    La Piedad, Mich.&nbsp; C.P. 59310<br>',
'                                    Tel: (352) 52 66269<br>',
'                                </li>',
'                            </ul>',
'                            ',
'                            <ul class="project_information_list list-unstyled" style="padding-bottom: 20px;">',
'                                <li><span>Transportes Kasto, S.A. de C.V.<br>',
'                                    Av. Padre Hidalgo No. 410-4<br>',
'                                    Centro<br>',
'                                    Santa Ana Pacueco, Gto.&nbsp; C.P. 36910<br>',
'                                    Tel: (352) 52 61340, (352) 52 25571<br>',
'                                </li>',
'                            </ul>',
'',
'                            <ul class=" list-unstyled">',
unistr('                                <li><span>Regional de La Construcci\00F3n, S.A. de C.V.<br>'),
unistr('                                    Blvd. L\00E1zaro C\00E1rdenas No. 1111<br>'),
'                                    Col. Santa Fe<br>',
'                                    La Piedad, Mich.&nbsp; C.P. 59370<br>',
'                                    Tel: (352) 52 61350, (352) 52 61050</li>',
'                            </ul>',
'',
'                            <ul class="list-unstyled">',
'                                    <li><span>Visitanos:</span><a href="http://recosa.mx/" style="color: #5b8c51;" target="_BLANK"> recosa.mx</a></li>',
'                            </ul>',
'                            <div class="site-footer__social">',
'                                <a href="https://www.facebook.com/RecosaOficial/" target="_BLANK"><i class="fab fa-facebook-square"></i></a>',
'                            </div>',
'                        </div>',
'                    </div>',
'                </div>',
'            </div>',
'        </section>',
'        <br>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1974825583258648)
,p_plug_name=>'recent_project_three'
,p_region_template_options=>'#DEFAULT#:margin-bottom-none:t-Form--noPadding'
,p_plug_template=>wwv_flow_api.id(1990753307084041)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="recent_project_three">',
'            <div class="container-fullwidth">',
'                <div class="block-title text-center">',
'                    <p>Nuestras Instalaciones</p>',
unistr('                    <h3>CON\00D3CELAS</h3>'),
'                    <div class="leaf">',
'                        <img src="#APP_IMAGES#assets/images/resources/leaf.png" alt="">',
'                    </div>',
'                </div>',
'                <div class="recent_project_three_carousel owl-theme owl-carousel">',
'                    <!--Item-->',
'                    <div class="project_three_single" data-wow-delay="1200ms">',
'                      <div class="project_three_image">',
'                           <div class="gallery_two_single">',
'                                <div class="gallery_two_image">',
'                                    <img src="#APP_IMAGES#assets/images/DS_01.jpg" alt="">',
'                                    <div class="gallery_two_hover_box">',
'                                        <div class="gallery_two_icon">',
'                                            ',
'                                            <div class="about_two_content">',
'                                                <h2>Servicio <br> Ciudad del sol</h2>',
'                                            </div>',
'                                                    ',
'                                        </div>',
'                                    </div>',
'                                </div>',
'                            </div>',
'                        </div>',
'                    </div>',
'                    <!--Item-->',
'                    <div class="project_three_single" data-wow-delay="900ms">',
'                      <div class="project_three_image">',
'                           <div class="gallery_two_single">',
'                                <div class="gallery_two_image">',
'                                    <img src="#APP_IMAGES#assets/images/DS_05.jpg" alt="">',
'                                    <div class="gallery_two_hover_box">',
'                                        <div class="gallery_two_icon">',
'                                            ',
'                                            <div class="about_two_content">',
'                                                <h2>Recosa</h2>',
'                                            </div>',
'                                                    ',
'                                        </div>',
'                                    </div>',
'                                </div>',
'                            </div>',
'                        </div>',
'                    </div>',
'                    <!--Item-->',
'                    <div class="project_three_single" data-wow-delay="1200ms">',
'                      <div class="project_three_image">',
'                           <div class="gallery_two_single">',
'                                <div class="gallery_two_image">',
'                                    <img src="#APP_IMAGES#assets/images/DS_03.png" alt="">',
'                                    <div class="gallery_two_hover_box">',
'                                        <div class="gallery_two_icon">',
'                                            ',
'                                            <div class="about_two_content">',
'                                                <h2>Transportes <br> Kasto </h2>',
'                                            </div>         ',
'                                        </div>',
'                                    </div>',
'                                </div>',
'                            </div>',
'                        </div>',
'                    </div>',
'                    <!--Item-->',
'                    <div class="project_three_single" data-wow-delay="900ms">',
'                      <div class="project_three_image">',
'                           <div class="gallery_two_single">',
'                                <div class="gallery_two_image">',
'                                    <img src="#APP_IMAGES#assets/images/DS_04.png" alt="">',
'                                    <div class="gallery_two_hover_box">',
'                                        <div class="gallery_two_icon">',
'                                            ',
'                                            <div class="about_two_content">',
unistr('                                                <h2>Investigaci\00F3n y <br>Desarrollo GK</h2>'),
'                                            </div>',
'                                                    ',
'                                        </div>',
'                                    </div>',
'                                </div>',
'                            </div>',
'                        </div>',
'                    </div>',
'                    <!--Item-->',
'                    <div class="project_three_single" data-wow-delay="600ms">',
'                        <div class="project_three_image">',
'                           <div class="gallery_two_single">',
'                                <div class="gallery_two_image">',
'                                    <img src="#APP_IMAGES#assets/images/DS_02.jpg" alt="">',
'                                    <div class="gallery_two_hover_box">',
'                                        <div class="gallery_two_icon">',
'                                            ',
'                                            <div class="about_two_content">',
'                                                <h2>Multiservicios <br>Profesionales GK</h2>',
'                                            </div>',
'                                                    ',
'                                        </div>',
'                                    </div>',
'                                </div>',
'                            </div>',
'                        </div>',
'                    </div>',
'                </div>',
'            </div>',
'        </section>',
''))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.component_end;
end;
/
