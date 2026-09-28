prompt --application/pages/page_00010
begin
--   Manifest
--     PAGE: 00010
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
 p_id=>10
,p_user_interface_id=>wwv_flow_api.id(1954772723207063)
,p_name=>'Invernaderos'
,p_step_title=>'Invernaderos'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(1968417659227077)
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_last_updated_by=>'ADMINPOGK'
,p_last_upd_yyyymmddhh24miss=>'20220913225138'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1973834691258638)
,p_plug_name=>'page-header'
,p_region_template_options=>'#DEFAULT#:margin-bottom-none:t-Form--noPadding'
,p_plug_template=>wwv_flow_api.id(1990753307084041)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <section class="page-header" style="background-image: url(#APP_IMAGES#assets/images/Invernaderos.jpg); style="width: 1343px;"">',
'            <div  style="text-align: center; position: relative;">',
'                <h2>Invernaderos</h2>',
'                <ul class="thm-breadcrumb list-unstyled button-right">',
'                    <li><a href="https://www.grupokasto.com/ords/PDB1/f?p=102:1:&SESSION.">Inicio</a></li>',
'                    <li><span>Invernaderos</span></li>',
'                </ul>',
'            </div>',
'  </section>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1973954081258639)
,p_plug_name=>'project_detail'
,p_region_template_options=>'#DEFAULT#:margin-bottom-none:t-Form--noPadding'
,p_plug_template=>wwv_flow_api.id(1990753307084041)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
' <section class="project_detail">',
'            <div class="container">',
'                <div class="row">',
'                    <div class="col-xl-12 col-lg-12 col-md-12">',
'                        <div class="project_detail_image">',
'                            <img src="#APP_IMAGES#assets/images/DI_info.jpg">',
'                        </div>',
'                    </div>',
'                </div>',
'                <div class="row">',
'                    <div class="col-xl-8 col-lg-7">',
'                        <div class="project_detail_left_content">',
'                            <div class="harvest_innovations_detail">',
unistr('                                <h2>Divisi\00F3n Invernaderos</h2>'),
unistr('                                <p>Grupo Kasto cuenta con participaci\00F3n accionaria en el segmento de invernaderos, con instalaciones ubicadas en Guanajuato y Michoac\00E1n, cuyo mercado principal es el de exportaci\00F3n hacia los Estados Unidos y Canad\00E1. No')
||unistr('s dedicamos a la producci\00F3n de vegetales bajo un sistema hidrop\00F3nico de alta tecnolog\00EDa, destacando como el invernadero m\00E1s grande del pa\00EDs y uno de los m\00E1s grandes de su tipo en Am\00E9rica Latina.</p>'),
unistr('                                <p>Los productos de esta unidad de negocios se comercializan a trav\00E9s de Red Sun Farms.</p>'),
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
unistr('                                        <p style="padding-top: 15px;">Agr\00EDcola El Rosal</p>'),
'                                    </div>',
'                                </li>',
'                                <li>',
'                                    <div class="choose_count">',
'                                        <h2>02</h2>',
'                                    </div>',
'                                    <div class="choose_text">',
'                                        <p  style="padding-top: 15px;">Naturbell</p>',
'                                    </div>',
'                                </li>',
'                                <li>',
'                                    <div class="choose_count">',
'                                        <h2>03</h2>',
'                                    </div>',
'                                    <div class="choose_text">',
'                                        <p  style="padding-top: 15px;">Plantfort</p>',
'                                    </div>',
'                                </li>',
'                                <li>',
'                                    <div class="choose_count">',
'                                        <h2>04</h2>',
'                                    </div>',
'                                    <div class="choose_text">',
'                                        <p  style="padding-top: 15px;"> San Miguel Red sun Farms </p>',
'                                    </div>',
'                                </li>',
'                                <li>',
'                                    <div class="choose_count">',
'                                        <h2>05</h2>',
'                                    </div>',
'                                    <div class="choose_text">',
'                                        <p  style="padding-top: 15px;">Biotech</p>',
'                                    </div>',
'                                </li>',
'                                <li>',
'                                    <div class="choose_count">',
'                                        <h2>06</h2>',
'                                    </div>',
'                                    <div class="choose_text">',
'                                        <p  style="padding-top: 15px;">Red Sun Farms Norteamerica</p>',
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
unistr('                                <p>En los invernaderos de Grupo Kasto damos especial atenci\00F3n a la Fito-sanidad y bioseguridad desde la adquisici\00F3n de la semilla, hasta la entrega del producto en el canal de comercializaci\00F3n. Nuestros principales pro')
||unistr('ductos son el tomate en racimo, el pimiento morr\00F3n, otros tipos de pimiento, pepino y berenjena.</p>'),
'                            </div>',
'                        </div>',
'                    </div>',
'                    <div class="col-xl-4 col-lg-5">',
'                        <div class="project_information_box" style="padding: 40px;">',
'                            <h3>Directorio</h3>                         ',
'                            <ul class="list-unstyled">',
unistr('                                <li><span>Agr\00EDcola El Rosal, S.A. de C.V.<br>'),
'                                    Granja Santa Elena<br>',
'                                    Rancho Altamira<br>',
unistr('                                    Numar\00E1n, Mich.&nbsp; C.P. 59430<br>'),
'                                    Tel: (352) 52 29585, (352) 52 25106</li>',
'                            </ul>',
'                            <ul class="list-unstyled">',
'                                    <li><span>Visitanos:</span><a href="https://www.redsunfarms.com/" style="color: #5b8c51;" target="_BLANK"> redsunfarms.com</a></li>',
'                            </ul>',
'                            <div class="site-footer__social">',
'                                <a href="https://www.facebook.com/redsunfarms" target="_BLANK"><i class="fab fa-facebook-square"></i></a>',
'                                <a href="https://twitter.com/shopredsun" target="_BLANK"><i class="fab fa-twitter"></i></a>',
'                                <a href="https://www.instagram.com/shopredsun/" target="_BLANK"><i class="fab fa-instagram"></i></a>',
'                                <a href="https://www.pinterest.com/redsunfarms/" target="_BLANK"><i class="fab fa-pinterest"></i></a>',
'                                <a href="https://www.linkedin.com/company/redsunfarms" target="_BLANK"><i class="fab fa-linkedin"></i></a>',
'                                ',
'                                ',
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
 p_id=>wwv_flow_api.id(1974098589258640)
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
'',
'                    <!--Item-->',
'                    <div class="project_three_single" data-wow-delay="1200ms">',
'                      <div class="project_three_image">',
'                           <div class="gallery_two_single">',
'                                <div class="gallery_two_image">',
'                                    <img src="#APP_IMAGES#assets/images/DI_01.jpg" alt="">',
'                                    <div class="gallery_two_hover_box">',
'                                        <div class="gallery_two_icon">',
'                                            <div class="about_two_content">',
'                                                <h2>red sun<br>farms</h2>',
'                                            </div>',
'                                                    ',
'                                        </div>',
'                                    </div>',
'                                </div>',
'                            </div>',
'                        </div>',
'                    </div>',
'                     <!--Item-->',
'                    <div class="project_three_single" data-wow-delay="1200ms">',
'                      <div class="project_three_image">',
'                           <div class="gallery_two_single">',
'                                <div class="gallery_two_image">',
'                                    <img src="#APP_IMAGES#assets/images/DI_03.jpg" alt="">',
'                                    <div class="gallery_two_hover_box">',
'                                        <div class="gallery_two_icon">',
'                                            ',
'                                            <div class="about_two_content">',
'                                                <h2>red sun<br>farms</h2>',
'                                            </div>         ',
'                                        </div>',
'                                    </div>',
'                                </div>',
'                            </div>',
'                        </div>',
'                    </div>',
'                  ',
'                    <!--Item-->',
'                    <div class="project_three_single" data-wow-delay="600ms">',
'                        <div class="project_three_image">',
'                           <div class="gallery_two_single">',
'                                <div class="gallery_two_image">',
'                                    <img src="#APP_IMAGES#assets/images/DI_02.png" alt="">',
'                                    <div class="gallery_two_hover_box">',
'                                        <div class="gallery_two_icon">',
'                                            ',
'                                            <div class="about_two_content">',
'                                                <h2>red sun<br>farms</h2>',
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
'                                    <img src="#APP_IMAGES#assets/images/DI_07.jpg" alt="">',
'                                    <div class="gallery_two_hover_box">',
'                                        <div class="gallery_two_icon">',
'                                            ',
'                                            <div class="about_two_content">',
'                                                <h2>red sun<br>farms</h2>',
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
'                                    <img src="#APP_IMAGES#assets/images/DI_06.jpg" alt="">',
'                                    <div class="gallery_two_hover_box">',
'                                        <div class="gallery_two_icon">',
'                                            ',
'                                            <div class="about_two_content">',
'                                                <h2>red sun<br>farms</h2>',
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
'                                    <img src="#APP_IMAGES#assets/images/DI_04.jpg" alt="">',
'                                    <div class="gallery_two_hover_box">',
'                                        <div class="gallery_two_icon">',
'                                            ',
'                                            <div class="about_two_content">',
'                                                <h2>red sun<br>farms</h2>',
'                                            </div>',
'                                                    ',
'                                        </div>',
'                                    </div>',
'                                </div>',
'                            </div>',
'                        </div>',
'                    </div>',
'                   ',
'                    <!--Item-->',
'                    <div class="project_three_single" data-wow-delay="900ms">',
'                      <div class="project_three_image">',
'                           <div class="gallery_two_single">',
'                                <div class="gallery_two_image">',
'                                    <img src="#APP_IMAGES#assets/images/DI_05.jpg" alt="">',
'                                    <div class="gallery_two_hover_box">',
'                                        <div class="gallery_two_icon">',
'                                            ',
'                                            <div class="about_two_content">',
'                                                <h2>red sun<br>farms</h2>',
'                                            </div>',
'                                                    ',
'                                        </div>',
'                                    </div>',
'                                </div>',
'                            </div>',
'                        </div>',
'                    </div>',
'                    ',
'                    ',
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
