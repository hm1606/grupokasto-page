prompt --application/pages/page_00014
begin
--   Manifest
--     PAGE: 00014
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
 p_id=>14
,p_user_interface_id=>wwv_flow_api.id(1954772723207063)
,p_name=>'Productos-de-Consumo'
,p_step_title=>'Productos-de-Consumo'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(1968417659227077)
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_last_updated_by=>'ADMINPOGK'
,p_last_upd_yyyymmddhh24miss=>'20220913225355'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1974995129258649)
,p_plug_name=>'page-header'
,p_region_template_options=>'#DEFAULT#:margin-bottom-none:t-Form--noPadding'
,p_plug_template=>wwv_flow_api.id(1990753307084041)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="page-header" style="background-image: url(#APP_IMAGES#assets/images/p_consumo.jpg); style="width: 1343px;"">',
'            <div  style="text-align: center; position: relative;">',
'                <h2>Productos de Consumo</h2>',
'                <ul class="thm-breadcrumb list-unstyled button-right">',
'                    <li><a href="https://www.grupokasto.com/ords/PDB1/f?p=102:1:&SESSION.">Inicio</a></li>',
'                    <li><span>Consumo</span></li>',
'                </ul>',
'            </div>',
'  </section>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1975089268258650)
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
'                            <img src="#APP_IMAGES#assets/images/DPC_Info.jpg">',
'                        </div>',
'                    </div>',
'                </div>',
'                <div class="row">',
'                    <div class="col-xl-8 col-lg-7">',
'                        <div class="project_detail_left_content">',
'                            <div class="harvest_innovations_detail">',
unistr('                                <h2>Divisi\00F3n Productos de consumo</h2>'),
unistr('                                <p>Grupo Kasto tiene participaci\00F3n en el sector abarrotero, distribuye y vende productos de consumo a trav\00E9s de 4 unidades de negocio: mayoreo o preventa; mostradores o cash & carry; distribuci\00F3n asistida o venta horiz')
||unistr('ontal y autoservicio o tiendas de conveniencia, que nos permiten llegar al consumidor final y tener una cobertura del 90% de la Rep\00FAblica Mexicana. </p>'),
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
unistr('                                        <p style="padding-top: 15px;">Productos de Consumo \201CZ\201D</p>'),
'                                    </div>',
'                                </li>',
'                                <li>',
'                                    <div class="choose_count">',
'                                        <h2>02</h2>',
'                                    </div>',
'                                    <div class="choose_text">',
'                                        <p style="padding-top: 15px;">Abarrotes Monterrey</p>',
'                                    </div>',
'                                </li>',
'',
'                            </ul>',
'                            </div>',
'',
'                            <br>',
'                            <hr>',
'                            <br>',
'',
'                            <div class="project_detail_last_text" style="margin-top: -50px;">',
unistr('                                <p>Entendemos la importancia que tiene el abasto oportuno de nuestros clientes, para esto se atiende al mercado institucional conformado por a hoteles, restaurantes y hospitales a trav\00E9s de telemarketing y venta direct')
||'a.</p>',
'                            </div>',
'                        </div>',
'                    </div>',
'                    <div class="col-xl-4 col-lg-5">',
'                        <div class="project_information_box" style="padding: 40px;">',
'                            <h3>Directorio</h3>',
'                            <ul class="list-unstyled">',
unistr('                                <li><span>Productos de Consumo \201CZ\201D<br>'),
unistr('                                    Incalpa No. 2000, Perif\00E9rico Sur<br>'),
'                                    Las Pintas<br>',
'                                    Tlaquepaque, Jal.&nbsp; C.P. 45590<br>',
'                                    Tel: (33) 39 151500, (33) 39 151513.</li>',
'                            </ul>',
'                            <ul class="list-unstyled">',
'                                    <li><span>Visitanos:</span><a href="https://zproductos.mx/" style="color: #5b8c51;" target="_BLANK"> zproductos.mx</a></li>',
'                            </ul>',
'                            <div class="site-footer__social">',
'                                <a href="https://www.facebook.com/Corporativo-PCZ-111603490601287/?modal=admin_todo_tour" target="_BLANK"><i class="fab fa-facebook-square"></i></a>',
'                                <a href="https://twitter.com/CorporativoPcz" target="_BLANK"><i class="fab fa-twitter"></i></a>',
'                                <a href="https://www.instagram.com/corporativopcz/" target="_BLANK"><i class="fab fa-instagram"></i></a>',
'                                <a href="https://www.linkedin.com/company/productos-de-consumo-z-sa-de-cv" target="_BLANK"><i class="fab fa-linkedin"></i></a>',
'                                <a href="https://www.youtube.com/channel/UCX1Xh4GSVGrSti4JeiAEtFw?view_as=subscriber" target="_BLANK"><i class="fab fa-youtube"></i></a>',
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
 p_id=>wwv_flow_api.id(2019767819974001)
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
'                    <div class="project_three_single" data-wow-delay="600ms">',
'                        <div class="project_three_image">',
'                           <div class="gallery_two_single">',
'                                <div class="gallery_two_image">',
'                                    <img src="#APP_IMAGES#assets/images/DPC_02.jpg" alt="">',
'                                    <div class="gallery_two_hover_box">',
'                                        <div class="gallery_two_icon">',
'                                            ',
'                                            <div class="about_two_content">',
'                                                <h2>Productos de <br> consumo z</h2>',
'                                            </div>',
'                                                    ',
'                                        </div>',
'                                    </div>',
'                                </div>',
'                            </div>',
'                        </div>',
'                    </div>',
'                    <!--Item-->',
'                    <!--Item-->',
'                    <div class="project_three_single" data-wow-delay="900ms">',
'                      <div class="project_three_image">',
'                           <div class="gallery_two_single">',
'                                <div class="gallery_two_image">',
'                                    <img src="#APP_IMAGES#assets/images/DPC_04.jpg" alt="">',
'                                    <div class="gallery_two_hover_box">',
'                                        <div class="gallery_two_icon">',
'                                            ',
'                                            <div class="about_two_content">',
'                                                <h2>Productos de <br> consumo z</h2>',
'                                            </div>',
'                                                    ',
'                                        </div>',
'                                    </div>',
'                                </div>',
'                            </div>',
'                        </div>',
'                    </div>',
'                    ',
'                    <div class="project_three_single" data-wow-delay="1200ms">',
'                      <div class="project_three_image">',
'                           <div class="gallery_two_single">',
'                                <div class="gallery_two_image">',
'                                    <img src="#APP_IMAGES#assets/images/DPC_03.jpg" alt="">',
'                                    <div class="gallery_two_hover_box">',
'                                        <div class="gallery_two_icon">',
'                                            ',
'                                            <div class="about_two_content">',
'                                                <h2>Productos de <br> consumo z</h2>',
'                                            </div>         ',
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
'                                    <img src="#APP_IMAGES#assets/images/DPC_01.png" alt="">',
'                                    <div class="gallery_two_hover_box">',
'                                        <div class="gallery_two_icon">',
'                                            ',
'                                            <div class="about_two_content">',
'                                                <h2>Productos de <br> consumo z</h2>',
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
