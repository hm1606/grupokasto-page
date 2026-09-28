prompt --application/pages/page_00007
begin
--   Manifest
--     PAGE: 00007
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
 p_id=>7
,p_user_interface_id=>wwv_flow_api.id(1954772723207063)
,p_name=>'Granos'
,p_step_title=>'Granos'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(1968417659227077)
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_last_updated_by=>'ADMINPOGK'
,p_last_upd_yyyymmddhh24miss=>'20220913224926'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1972693183258626)
,p_plug_name=>'page-header'
,p_region_template_options=>'#DEFAULT#:margin-bottom-none:t-Form--noPadding'
,p_plug_template=>wwv_flow_api.id(1990753307084041)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <section class="page-header" style="background-image: url(#APP_IMAGES#slide_v1_2.jpg); style="width: 1343px;"">',
'            <div  style="text-align: center; position: relative;">',
'                <h2>Granos</h2>',
'                <ul class="thm-breadcrumb list-unstyled button-right">',
'                    <li><a href="https://www.grupokasto.com/ords/PDB1/f?p=102:1:&SESSION.">Inicio</a></li>',
'                    <li><span>Granos</span></li>',
'                </ul>',
'            </div>',
'  </section>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1972752731258627)
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
'                            <!--<img src="#APP_IMAGES#granos.jpg" alt="">-->',
'                            <img src="#APP_IMAGES#assets/images/DG_info.jpg">',
'                        </div>',
'                    </div>',
'                </div>',
'                <div class="row">',
'                    <div class="col-xl-8 col-lg-7">',
'                        <div class="project_detail_left_content">',
'                            <div class="harvest_innovations_detail">',
unistr('                                <h2>Divisi\00F3n Granos</h2>'),
unistr('                                <p>Es la encargada de la comercializaci\00F3n de granos, semillas y agroqu\00EDmicos. Cuenta con instalaciones modernas localizadas en los territorios del Baj\00EDo y Noroeste del Pa\00EDs, desde donde abastece a las industrias de mol')
||'ienda de trigos harineros y semoleros, de la masa y la tortilla, y el sector pecuario.</p>',
'',
unistr('                                <p>Opera una plataforma extensa, integrada desde el origen hasta el consumo en el mercado nacional o de exportaci\00F3n. Dentro de sus operaci\00F3nes est\00E1n la compra, el manejo, acondicionamiento y almacenamiento de productos')
||unistr(' agr\00EDcolas, principalmente en los estados de Jalisco, Michoac\00E1n, Guanajuato y Sonora.</p>'),
'',
'                                <!--<p class="harvest_innovations_detail_bottom_text">Las empresas que la conforman son:<br>',
unistr('                                \2022 AGROBASA \2013 Agroindustrias La Barca <br>'),
unistr('                                \2022 KASAVI \2013 Kasavi Comercial<br>'),
unistr('                                \2022 SEFINSA \2013 Semillas y Fibras Internacionales<br>'),
unistr('                                \2022 Ferropuerto de Sonora.</p>-->'),
'                            </div>',
'                            <br>',
'                            <div style="margin-bottom: 20px;">',
'                            <div class="block-title text-left">',
unistr('                                <p>\00BFQUI\00C9NES participan EN LA DIVISI\00D3N?</p>'),
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
'                                        <p style="padding-top: 15px;">Agroindustrias La Barca (AGROBASA)</p>',
'                                    </div>',
'                                </li>',
'                                <li>',
'                                    <div class="choose_count">',
'                                        <h2>02</h2>',
'                                    </div>',
'                                    <div class="choose_text">',
'                                        <p  style="padding-top: 15px;">Kasavi Comercial (KASAVI)</p>',
'                                    </div>',
'                                </li>',
'                                <li>',
'                                    <div class="choose_count">',
'                                        <h2>03</h2>',
'                                    </div>',
'                                    <div class="choose_text">',
'                                        <p  style="padding-top: 15px;">Semillas y Fibras Internacionales (SEFINSA)</p>',
'                                    </div>',
'                                </li>',
'                                <li>',
'                                    <div class="choose_count">',
'                                        <h2>04</h2>',
'                                    </div>',
'                                    <div class="choose_text">',
'                                        <p  style="padding-top: 15px;">Ferropuerto de Sonora</p>',
'                                    </div>',
'                                </li>',
'                                <li>',
'                                    <div class="choose_count">',
'                                        <h2>05</h2>',
'                                    </div>',
'                                    <div class="choose_text">',
'                                        <p  style="padding-top: 15px;">Semillas e Insumos GK</p>',
'                                    </div>',
'                                </li>',
'                            </ul>',
'                            </div>',
'',
'                            <br>',
'                            <hr>',
'                            <br>',
'',
'                            <!--<div class="project_challenges">',
'                                <ul class="list-unstyled project_challenges_box">',
'                                    <li>',
'                                        <div class="project_challenges_icon">',
'                                            <span class="icon-growth"></span>',
'                                        </div>',
'                                        <div class="project_challenges_content">',
'                                            <h4>Atraer y Retener clientes de alta calidad</h4>',
unistr('                                            <p>Esta unidad de negocios es la encargada de la Comercializaci\00F3n de Granos, Semillas y Agroqu\00EDmicos, '),
unistr('                                            para lo cual contamos con instalaciones modernas localizadas principalmente en el Baj\00EDo y Noroeste del '),
unistr('                                            Pa\00EDs, desde donde abastecemos a las industrias de Molienda de Trigos Harineros y Semoleros, de la Masa '),
'                                            y la Tortilla y, el sector pecuario.</p>',
'                                        </div>',
'                                    </li>',
'                                    <li>',
'                                        <div class="project_challenges_icon">',
'                                            <span class="icon-temperature"></span>',
'                                        </div>',
'                                        <div class="project_challenges_content">',
'                                            <h4>Atraer y Retener clientes de alta calidad</h4>',
unistr('                                            <p>Esta unidad de negocios es la encargada de la Comercializaci\00F3n de Granos, Semillas y Agroqu\00EDmicos, '),
unistr('                                            para lo cual contamos con instalaciones modernas localizadas principalmente en el Baj\00EDo y Noroeste del '),
unistr('                                            Pa\00EDs, desde donde abastecemos a las industrias de Molienda de Trigos Harineros y Semoleros, de la Masa '),
'                                            y la Tortilla y, el sector pecuario.</p>',
'                                        </div>',
'                                    </li>',
'                                </ul>',
'                            </div>-->',
'                            <div class="project_detail_last_text" style="margin-top: -50px;">',
unistr('                                <p>Nuestras empresas son especialistas en el acopio y conservaci\00F3n de granos. Est\00E1n certificadas en ISO 9001-2015 y HACCP (An\00E1lisis de Peligros y Puntos Cr\00EDticos de Control, por sus siglas en ingl\00E9s); lo que garantiza ')
||unistr('la homologaci\00F3n de sus procesos y el compromiso con la calidad de los productos que ofrecen: Trigo para panificaci\00F3n, trigo cristalino, ma\00EDz, soya, sorgo, c\00E1rtamo y pasta de soya.</p>'),
'                            </div>',
'                        </div>',
'                    </div>',
'                    <div class="col-xl-4 col-lg-5">',
'                        <div class="project_information_box" style="padding: 40px;">',
'                            <h3>Directorio</h3>',
'                            <ul class="project_information_list list-unstyled" style="padding-bottom: 20px;">',
'                                <li><span>Agroindustrias La Barca, S.A. de C.V.<br>',
'                                Km. 2.5 Carr. La Barca-Zalamea<br>',
'                                Zona industrial<br>',
'                                La Barca, Jal. &nbsp; C.P. 47910<br>',
'                                Tel: (393) 93 53224, (393) 93 50504</li>',
'                            </ul>',
'                            <ul class="project_information_list list-unstyled" style="padding-bottom: 20px;">',
'                                <li><span>Kasavi Comercial, S.A. de C.V.<br>',
'                                Av. Padre Hidalgo No. 410-5<br>',
'                                Santa Ana Pacueco, Gto.&nbsp; C.P. 36910<br>',
'                                Tel: (352) 52 61766, (352) 52 62207</li>',
'                            </ul>',
'                            ',
'                            <ul class="project_information_list list-unstyled" style="padding-bottom: 20px;">',
'                                <li><span>Semillas y Fibras Intl, S.A. de C.V.<br>',
'                                Circuito Interior No. 1003<br>',
'                                Parque Industrial<br>',
unistr('                                Ciudad Obreg\00F3n, Son. &nbsp;C.P. 85065 <br>'),
'                                Tel: (644) 41 10150, (644) 41 10018<br>',
'                                </li>',
'                            </ul>',
'                            ',
'                            <ul class="project_information_list list-unstyled" style="padding-bottom: 20px;">',
'                                <li><span>Ferropuerto de Sonora, S.A. de C.V.<br>',
'                                Carr. Internacional Km. 545-5<br>',
'                                Zona Industrial<br>',
unistr('                                Ciudad Obreg\00F3n, Son. &nbsp;C.P. 85090<br>'),
'                                Tel: (644) 41 10435, (644) 41 10786<br>',
'                                </li>',
'                            </ul>',
'                            ',
'                            <ul class="list-unstyled">',
'                                <li><span>Semillas e Insumos GK S.A de C.V.<br>',
'                                Av. Padre Hidalgo No. 600<br>',
'                                Santa Ana Pacueco, Gto.&nbsp; C.P. 36910<br>',
'                                Tel: (352) 52 62324, (352) 52 61340</li>',
'                            </ul>',
'                            <!--<div class="site-footer__social">',
'                                <a href="https://facebook.com/"><i class="fab fa-facebook-square"></i></a>',
'                                <a href="https://twitter.com/"><i class="fab fa-twitter"></i></a>',
'                                <a href="https://instagram.com/"><i class="fab fa-instagram"></i></a>',
'                                <a href="https://dribbble.com/"><i class="fab fa-dribbble"></i></a>',
'                            </div>-->',
'                            ',
'                        </div>',
'                    </div>',
'                </div>',
'            </div>',
'        </section>',
'        <br>',
''))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1972851463258628)
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
unistr('                    <h3>Con\00F3celas</h3>'),
'                    <div class="leaf">',
'                        <img src="#APP_IMAGES#assets/images/resources/leaf.png" alt="">',
'                    </div>',
'                </div>',
'                <div class="recent_project_three_carousel owl-theme owl-carousel">',
'',
'                    <!--Item-->',
'                    <!--<div class="project_three_single wow fadeInUp" data-wow-delay="1200ms">-->',
'                    <div class="project_three_single" data-wow-delay="1200ms">',
'                      <div class="project_three_image">',
'                           <div class="gallery_two_single">',
'                                <div class="gallery_two_image">',
'                                    <img src="#APP_IMAGES#assets/images/GK-Draftb-6.jpg" alt="">',
'                                    <div class="gallery_two_hover_box">',
'                                        <div class="gallery_two_icon">',
'                                            ',
'                                            <div class="about_two_content">',
'                                                <h2>Agrobasa</h2>',
'                                            </div>',
'                                                    ',
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
'                                    <img src="#APP_IMAGES#assets/images/GK-Draftb-4.jpg" alt="">',
'                                    <div class="gallery_two_hover_box">',
'                                        <div class="gallery_two_icon">',
'                                            ',
'                                            <div class="about_two_content">',
'                                                <h2>Kasavi</h2>',
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
'                                    <img src="#APP_IMAGES#assets/images/GK-aT-Bar-b-3.jpg" alt="">',
'                                    <div class="gallery_two_hover_box">',
'                                        <div class="gallery_two_icon">',
'                                            ',
'                                            <div class="about_two_content">',
'                                                <h2>Sefinsa</h2>',
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
'                                    <img src="#APP_IMAGES#assets/images/Draft-GK-004.jpg" alt="">',
'                                    <div class="gallery_two_hover_box">',
'                                        <div class="gallery_two_icon">',
'                                            ',
'                                            <div class="about_two_content">',
'                                                <h2>Ferropuerto</h2>',
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
'                                    <img src="#APP_IMAGES#assets/images/DG_04.jpg" alt="">',
'                                    <div class="gallery_two_hover_box">',
'                                        <div class="gallery_two_icon">',
'                                            ',
'                                            <div class="about_two_content">',
'                                                <h2>Agrobasa</h2>',
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
