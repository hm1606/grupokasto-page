prompt --application/pages/page_00004
begin
--   Manifest
--     PAGE: 00004
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
 p_id=>4
,p_user_interface_id=>wwv_flow_api.id(1954772723207063)
,p_name=>'Ohlala!'
,p_step_title=>'Ohlala!'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(1968417659227077)
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_last_updated_by=>'ADMINPOGK'
,p_last_upd_yyyymmddhh24miss=>'20230609121756'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1971823842258618)
,p_plug_name=>'page-header'
,p_region_template_options=>'#DEFAULT#:margin-bottom-none:t-Form--noPadding'
,p_plug_template=>wwv_flow_api.id(1990753307084041)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <section class="page-header" style="background-image: url(#APP_IMAGES#assets/images/Ohlala_carrusel.jpg); style="width: 1343px;"">',
'            <div  style="text-align: center; position: relative;">',
unistr('                <h2>Panader\00EDa y bistr\00F3</h2>'),
'                <ul class="thm-breadcrumb list-unstyled button-right">',
'                    <li><a href="https://www.grupokasto.com/ords/PDB1/f?p=102:1:&SESSION.">Inicio</a></li>',
'                    <li><span>Panaderia</span></li>',
'                </ul>',
'            </div>',
'  </section>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1971943256258619)
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
'                    <img src="#APP_IMAGES#assets/images/Ohlala_info.jpg">',
'                </div>',
'            </div>',
'        </div>',
'        <div class="row">',
'            <div class="col-xl-8 col-lg-7">',
'                <div class="project_detail_left_content">',
'                    <div class="harvest_innovations_detail">',
'                        <h2>Ohlala! Boulangerie, Bistrot</h2>',
unistr('                        <p>Desde 2017 Grupo Kasto participa en el sector de panader\00EDa y bistr\00F3 a trav\00E9s de su asociaci\00F3n'),
unistr('                            con \201COhlala! Boulangerie, Bistrot\201D; ofreciendo el sabor de la panader\00EDa artesanal francesa'),
unistr('                            en M\00E9xico y brindando a sus clientes un espacio c\00E1lido y casual para disfrutar de sus'),
'                            productos.</p>',
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
'                                    <p style="padding-top: 15px;">Operadora Ohlala</p>',
'                                </div>',
'                            </li>',
'                            <li>',
'                                <div class="choose_count">',
'                                    <h2>02</h2>',
'                                </div>',
'                                <div class="choose_text">',
'                                    <p style="padding-top: 15px;">Productora de alimentos Oh</p>',
'                                </div>',
'                            </li>',
'                        </ul>',
'                    </div>',
'',
'                    <br>',
'                    <hr>',
'                    <br>',
'',
'                    <div class="project_detail_last_text" style="margin-top: -50px;">',
'                        <p>',
unistr('                            Actualmente esta divisi\00F3n cuenta con una panificadora industrial y 11 establecimientos en la'),
unistr('                            zona metropolitana de Guadalajara, ubicados estrat\00E9gicamente en: La Estancia, La Rioja,'),
'                            Providencia, Monraz, Naciones Unidas, Chapalita, Libertad, Valle Real, San Isidro, Punto',
'                            Faro y Plan de San Luis.',
'                        </p>',
'                    </div>',
'                </div>',
'            </div>',
'            <div class="col-xl-4 col-lg-5">',
'                <div class="project_information_box" style="padding: 40px;">',
'                    <h3>Directorio</h3>',
'                    <ul class="project_information_list list-unstyled" style="padding-bottom: 20px;">',
'                        <li><span>Operadora Ohlala, S.A. de C.V.<br>',
unistr('                                Av. Sebasti\00E1n Bach 5074<br>'),
'                                La Estancia<br>',
'                                Zapopan, Jal.&nbsp; C.P. 45020 <br>',
'                                Tel:3315 62 6995<br>',
'                        </li>',
'                    </ul>',
'',
'                    <ul class=" list-unstyled">',
'                        <li><span>Productora de alimentos Oh, S.A. de C.V.<br>',
unistr('                                Anillo Perif. Nte. Manuel G\00F3mez Morin 6650 Bodega 1<br>'),
'                                Col. Miramar<br>',
'                                Zapopan, Jal.&nbsp; C.P. 45060 <br>',
'                                Tel: 3330409091<br>',
'                        </li>',
'                    </ul>',
'',
'                    <ul class="list-unstyled">',
'                        <li><span>Visitanos:</span><a href="https://ohlala.com.mx/" style="color: #5b8c51;"',
'                                target="_BLANK">ohlala.com.mx</a></li>',
'                    </ul>',
'                    <div class="site-footer__social">',
'                        <a href="https://www.facebook.com/OhlalaPanaderiaChapalita/" target="_BLANK"><i',
'                                class="fab fa-facebook-square"></i></a>',
'                        <a href="https://www.instagram.com/ohlalapanaderiagdl/" target="_BLANK"><i',
'                                class="fab fa-instagram"></i></a>',
'                        <a href="https://www.youtube.com/watch?v=HAk5MZpnJjo" target="_BLANK"><i',
'                                class="fab fa-youtube"></i></a>',
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
 p_id=>wwv_flow_api.id(1972080632258620)
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
'                    <p>Nuestras instalaciones</p>',
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
'                                    <img src="#APP_IMAGES#assets/images/Doh_01.jpg" alt="">',
'                                    <div class="gallery_two_hover_box">',
'                                        <div class="gallery_two_icon">',
'                                            ',
'                                            <div class="about_two_content">',
'                                                <h2>Operadora Ohlala</h2>',
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
'                                    <img src="#APP_IMAGES#assets/images/Doh_09.jpg" alt="">',
'                                    <div class="gallery_two_hover_box">',
'                                        <div class="gallery_two_icon">',
'                                            ',
'                                            <div class="about_two_content">',
'                                                <h2>Productora de alimentos Oh</h2>',
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
'                                    <img src="#APP_IMAGES#assets/images/Doh_05.jpg" alt="">',
'                                    <div class="gallery_two_hover_box">',
'                                        <div class="gallery_two_icon">',
'                                            ',
'                                            <div class="about_two_content">',
'                                                <h2>Operadora Ohlala</h2>',
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
'                                    <img src="#APP_IMAGES#assets/images/Doh_08.jpg" alt="">',
'                                    <div class="gallery_two_hover_box">',
'                                        <div class="gallery_two_icon">',
'                                            ',
'                                            <div class="about_two_content">',
'                                                <h2>Productora de alimentos Oh</h2>',
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
'                                    <img src="#APP_IMAGES#assets/images/Doh_25.jpg" alt="">',
'                                    <div class="gallery_two_hover_box">',
'                                        <div class="gallery_two_icon">',
'                                            ',
'                                            <div class="about_two_content">',
'                                                <h2>Operadora Ohlala</h2>',
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
'                                    <img src="#APP_IMAGES#assets/images/Doh_11.jpg" alt="">',
'                                    <div class="gallery_two_hover_box">',
'                                        <div class="gallery_two_icon">',
'                                            ',
'                                            <div class="about_two_content">',
'                                                <h2>Productora de alimentos Oh</h2>',
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
'                                    <img src="#APP_IMAGES#assets/images/Doh_28.jpg" alt="">',
'                                    <div class="gallery_two_hover_box">',
'                                        <div class="gallery_two_icon">',
'                                            ',
'                                            <div class="about_two_content">',
'                                                <h2>Operadora Ohlala</h2>',
'                                            </div>',
'                                                    ',
'                                        </div>',
'                                    </div>',
'                                </div>',
'                            </div>',
'                        </div>',
'                    </div> ',
'                    <!--Item-->',
'                    <div class="project_three_single" data-wow-delay="900ms">',
'                      <div class="project_three_image">',
'                           <div class="gallery_two_single">',
'                                <div class="gallery_two_image">',
'                                    <img src="#APP_IMAGES#assets/images/Doh_10.jpg" alt="">',
'                                    <div class="gallery_two_hover_box">',
'                                        <div class="gallery_two_icon">',
'                                            ',
'                                            <div class="about_two_content">',
'                                                <h2>Productora de alimentos Oh</h2>',
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
'        </section>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.component_end;
end;
/
