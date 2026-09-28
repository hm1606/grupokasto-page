prompt --application/pages/page_00009
begin
--   Manifest
--     PAGE: 00009
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
 p_id=>9
,p_user_interface_id=>wwv_flow_api.id(1954772723207063)
,p_name=>'Pecuarios'
,p_step_title=>'Pecuarios'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(1968417659227077)
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_last_updated_by=>'ADMINPOGK'
,p_last_upd_yyyymmddhh24miss=>'20230609150020'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1973538302258635)
,p_plug_name=>'page-header'
,p_region_template_options=>'#DEFAULT#:margin-bottom-none:t-Form--noPadding'
,p_plug_template=>wwv_flow_api.id(1990753307084041)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <section class="page-header" style="background-image: url(#APP_IMAGES#assets/images/pecuarios_4.jpg); style="width: 1343px;"">',
'            <div  style="text-align: center; position: relative;">',
'                <h2>Pecuaria</h2>',
'                <ul class="thm-breadcrumb list-unstyled button-right">',
'                    <li><a href="https://www.grupokasto.com/ords/PDB1/f?p=102:1:&SESSION.">Inicio</a></li>',
'                    <li><span>Pecuaria</span></li>',
'                </ul>',
'            </div>',
'  </section>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1973698784258636)
,p_plug_name=>'project_detail'
,p_region_template_options=>'#DEFAULT#:margin-bottom-none:t-Form--noPadding'
,p_plug_template=>wwv_flow_api.id(1990753307084041)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="project_detail">',
'    <div class="container">',
'        <div class="row">',
'            <div class="col-xl-12 col-lg-12 col-md-12">',
'                <div class="project_detail_image">',
'                    <img src="#APP_IMAGES#assets/images/DP_info.jpg">',
'                </div>',
'            </div>',
'        </div>',
'        <div class="row">',
'            <div class="col-xl-8 col-lg-7">',
'                <div class="project_detail_left_content">',
'                    <div class="harvest_innovations_detail">',
unistr('                        <h2>Divisi\00F3n Pecuaria</h2>'),
unistr('                        <p>Con 54 a\00F1os de experiencia en el negocio de la porcicultura, Grupo Kasto contin\00FAa con la'),
unistr('                            producci\00F3n de ganado porcino en sus granjas. Cuenta con procesos y pr\00E1cticas de producci\00F3n'),
'                            innovadoras bajo ambientes controlados y seguros, que le permiten vender su ganado a rastros',
unistr('                            TIF (Tipo Inspecci\00F3n Federal).</p>'),
'                    </div>',
'                    <br>',
'                    <div style="margin-bottom: 20px;">',
'                        <div class="block-title text-left">',
unistr('                            <p>\00BFQUI\00C9NES PARTICIPAN EN LA DIVISI\00D3N?</p>'),
'                            <h3>UNIDADES DE NEGOCIO </h3>',
'                            <div class="leaf" style="margin-top: 15px;">',
'                                <img src="#APP_IMAGES#assets/images/resources/leaf.png" alt="">',
'                            </div>',
'                        </div>',
'                        <ul class="why_choose_list list-unstyled">',
'                            <li>',
'                                <div class="choose_count">',
'                                    <h2>01</h2>',
'                                </div>',
'                                <div class="choose_text">',
'                                    <p style="padding-top: 15px;">Agro Comercio San Juan</p>',
'                                </div>',
'                            </li>',
'                            <li>',
'                                <div class="choose_count">',
'                                    <h2>02</h2>',
'                                </div>',
'                                <div class="choose_text">',
'                                    <p style="padding-top: 15px;">Folapsa</p>',
'                                </div>',
'                            </li>',
'',
'                        </ul>',
'                    </div>',
'',
'                    <br>',
'                    <hr>',
'                    <br>',
'',
'                    <div class="project_detail_last_text" style="margin-top: -50px;">',
unistr('                        <p>Adicionalmente en esta Divisi\00F3n se fabrican y comercializan alimentos balanceados, para la'),
unistr('                            industria porcina y bovina, que cumplen con los m\00E1s altos de est\00E1ndares de calidad.</p>'),
'                    </div>',
'                </div>',
'            </div>',
'            <div class="col-xl-4 col-lg-5">',
'                <div class="project_information_box" style="padding: 40px;">',
'                    <h3>Directorio</h3>',
'                    <ul class="project_information_list list-unstyled" style="padding-bottom: 20px;">',
'                        <li><span>Agro Comercio San Juan, S.A. de C.V.<br>',
'                                Av. Padre Hidalgo 410-6<br>',
'                                Centro<br>',
'                                Santa Ana Pacueco, Gto.&nbsp; C.P. 36910<br>',
'                                Tel. (352) 52 60705</li>',
'                    </ul>',
'                    <ul class="list-unstyled" style="padding-bottom: 20px;">',
'                        <li><span>Folap, S.A. de C.V.<br>',
unistr('                                Blvd. L\00E1zaro C\00E1rdenas 1109<br>'),
'                                Col. Santa Fe<br>',
'                                La Piedad, Mich.&nbsp; C.P. 59370<br>',
'                                Tels: (352) 52 21350, (352) 52 20580</span></li>',
'                    </ul>',
'                    <div class="site-footer__social">',
'                        <a href="https://www.facebook.com/pages/Folapsa/702257193210349" target="_BLANK"><i',
'                                class="fab fa-facebook-square"></i></a>',
'',
'                    </div>',
'                </div>',
'            </div>',
'        </div>',
'    </div>',
'</section>',
'<br>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1973734419258637)
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
'                    <div class="project_three_single" data-wow-delay="900ms">',
'                      <div class="project_three_image">',
'                           <div class="gallery_two_single">',
'                                <div class="gallery_two_image">',
'                                    <img src="#APP_IMAGES#assets/images/DP_4.jpg" alt="">',
'                                    <div class="gallery_two_hover_box">',
'                                        <div class="gallery_two_icon">',
'                                            ',
'                                            <div class="about_two_content">',
'                                                <h2>Folapsa</h2>',
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
'                                    <img src="#APP_IMAGES#assets/images/DP_1.jpg" alt="">',
'                                    <div class="gallery_two_hover_box">',
'                                        <div class="gallery_two_icon">',
'                                            ',
'                                            <div class="about_two_content">',
'                                                <h2>Granjas<br>porcinas</h2>',
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
'                                    <img src="#APP_IMAGES#assets/images/DP_2.jpg" alt="">',
'                                    <div class="gallery_two_hover_box">',
'                                        <div class="gallery_two_icon">',
'                                            ',
'                                            <div class="about_two_content">',
'                                                <h2>Granjas<br>porcinas</h2>',
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
'                                    <img src="#APP_IMAGES#assets/images/DP_3.jpg" alt="">',
'                                    <div class="gallery_two_hover_box">',
'                                        <div class="gallery_two_icon">',
'                                            ',
'                                            <div class="about_two_content">',
'                                                <h2>Folapsa</h2>',
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
'                                    <img src="#APP_IMAGES#assets/images/DP_5.jpg" alt="">',
'                                    <div class="gallery_two_hover_box">',
'                                        <div class="gallery_two_icon">',
'                                            ',
'                                            <div class="about_two_content">',
'                                                <h2>Granjas<br>porcinas</h2>',
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
'                                    <img src="#APP_IMAGES#assets/images/DP_6.jpg" alt="">',
'                                    <div class="gallery_two_hover_box">',
'                                        <div class="gallery_two_icon">',
'                                            ',
'                                            <div class="about_two_content">',
'                                                <h2>Folapsa</h2>',
'                                            </div>',
'                                                    ',
'                                        </div>',
'                                    </div>',
'                                </div>',
'                            </div>',
'                        </div>',
'                    </div>                    ',
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
