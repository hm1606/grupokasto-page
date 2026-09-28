prompt --application/pages/page_00003
begin
--   Manifest
--     PAGE: 00003
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
 p_id=>3
,p_user_interface_id=>wwv_flow_api.id(1954772723207063)
,p_name=>'About'
,p_step_title=>'About'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(1968417659227077)
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_last_updated_by=>'ADMINPOGK'
,p_last_upd_yyyymmddhh24miss=>'20220913223936'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1971381758258613)
,p_plug_name=>'page-header'
,p_region_template_options=>'#DEFAULT#:margin-bottom-none:t-Form--noPadding'
,p_plug_template=>wwv_flow_api.id(1990753307084041)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="page-header" style="background-image: url(#APP_IMAGES#encabezado_2.jpg);">',
'            <div style="text-align: center; position: relative;">',
'                <h2>Grupo Kasto</h2>',
'                <ul class="thm-breadcrumb list-unstyled button-right">',
'                    <li><a href="https://www.grupokasto.com/ords/PDB1/f?p=102:1:&SESSION.">Inicio</a></li>',
'                    <li><span>Acerca de</span></li>',
'                </ul>',
'            </div>',
'</section> '))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1971444756258614)
,p_plug_name=>'about_two'
,p_region_template_options=>'#DEFAULT#:margin-bottom-none:t-Form--noPadding'
,p_plug_template=>wwv_flow_api.id(1990753307084041)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'   <section class="about_two">',
'            <div class="container">',
'                <div class="row">',
'                      <div class="col-xl-6 col-lg-6 col-md-6">',
'                        <div class="block-title text-left"> ',
'                        <p>Acerca de nosotros</p>                           ',
unistr('                            <h3>Somos su mejor opci\00F3n</h3>'),
'                            <div class="leaf">',
'                                <img src="#APP_IMAGES#assets/images/resources/leaf.png" alt="">',
'                            </div>',
'                        </div>',
'                    </div>',
'                    <div class="col-xl-6 col-lg-6 col-md-6">',
'                        <div class="about_two_text">',
unistr('                            <p>Somos un s\00F3lido y reconocido grupo de empresas agroindustriales con un gran compromiso social. Contamos con \00E1reas de producci\00F3n, comercializaci\00F3n, servicios y distribuci\00F3n de productos de consumo.</p>'),
'                        </div>',
'                    </div>                   ',
'                </div>',
'                <div class="row">',
'                    <div class="col-xl-5 col-lg-5">',
'                        <div class="about_two_left">',
'                            <img src="#APP_IMAGES#assets/images/HAN-01.jpg" alt="">',
'                        </div>',
'                    </div>',
'                    <div class="col-xl-5 col-lg-5">',
'                        <div class="about_two_middle">',
'                            <img src="#APP_IMAGES#about1.jpg" alt="">',
'                        </div>',
'                    </div>',
'                    <div class="col-xl-2 col-lg-2">',
'                        <div class="about_two-right">',
'                            <img src="#APP_IMAGES#assets/images/about/about_page_right-img.jpg" alt="">',
'                            <div class="about_two_content">',
unistr('                                <h2>Tenemos<br> +75 A\00F1os <br>de Experiencia</h2>'),
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
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1971533519258615)
,p_plug_name=>'product-one'
,p_region_template_options=>'#DEFAULT#:margin-bottom-none:t-Form--noPadding'
,p_plug_template=>wwv_flow_api.id(1990753307084041)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="product-one" style=" padding:120px 0 0px;">',
'            <div class="container">',
'                <div class="row">',
'                    <div class="col-xl-6 col-lg-6">',
'                        <div class="product_img">',
'                            <img src="#APP_IMAGES#imagen-13.jpg" alt="Product One Img">',
'                            <div class="experience_box">',
'                                <h2>1945</h2>',
'                                <p>Nuestro inicio</p>',
'                            </div>',
'                        </div>',
'                    </div>',
'                    <div class="col-xl-6 col-lg-6" >',
'                        <div class="growing_product" style="padding-bottom: 1px;">',
'                            <div class="block-title text-left">',
unistr('                                <p>Con\00F3cenos</p>'),
'                                <h3>Nuestra Historia</h3>',
'                                <div class="leaf">',
'                                    <img src="#APP_IMAGES#assets/images/resources/leaf.png" alt="">',
'                                </div>',
'                            </div>',
'                            <div class="growing_product_text ">',
unistr('                                <p>Grupo Kasto nace en el a\00F1o de 1945 en la Piedad, Michoac\00E1n, en el segmento de la comercializaci\00F3n de semillas.</p>'),
'',
'                                <ul class="company_list_box list-unstyled">',
unistr('                                <li style="font-size:16px;"><i class="fa fa-check"></i><b>1955</b> se ingresa en el mercado de la porcicultura con una peque\00F1a cantidad de cabezas de ganado.</li>'),
'',
'                                <li style="font-size:16px;"><i class="fa fa-check"></i><b>1962</b> se adquiere la primera granja porcina tecnificada.</li>',
'',
'                                <li style="font-size:16px;"><i class="fa fa-check"></i><b>1965</b> se inicia la compra-venta de semillas a gran escala, asentando oficinas en Santa Ana Pacueco, Guanajuato.</li>',
'',
unistr('                                <li style="font-size:16px;"><i class="fa fa-check"></i><b>1966</b> gracias a la visi\00F3n de varios productores pecuarios, entre ellos el fundador de Grupo Kasto, se constituye Folapsa</li>'),
'',
unistr('                                <li style="font-size:16px;"><i class="fa fa-check"></i><b>1975</b> contando ya con una experiencia probada en el ramo de la comercializaci\00F3n de granos, se incursiona en el mercado de la molienda de Trigo, a trav\00E9s de p')
||unistr('articipaci\00F3n accionaria en la Harinera de Atotonilco.</li>'),
'',
unistr('                                <li style="font-size:16px;"><i class="fa fa-check"></i><b>1989</b> se inicia en la distribuci\00F3n de productos de consumo mediante la asociaci\00F3n en Productos de Consumo \201CZ\201D.</li>'),
'',
unistr('                                <li style="font-size:16px;"><i class="fa fa-check"></i><b>2001</b> nace Agr\00EDcola el Rosal (ahora Red Sun Farms) ingresando en el mercado de hortalizas y cultivos con sistema hidrop\00F3nico (invernaderos).</li>'),
'                                ',
unistr('                                <li style="font-size:16px;"><i class="fa fa-check"></i><b>2010</b>  nace Ohlala! Y desde 2017 Grupo Kasto participa en el sector de panader\00EDa y bistr\00F3 a trav\00E9s de su asociaci\00F3n con \201COhlala! Boulangerie, Bistrot\201D.</li>'),
'',
unistr('                                <p>Respaldados por una vasta experiencia, Grupo Kasto se ha convertido en l\00EDder regional de la comercializaci\00F3n de granos y harinas; l\00EDder nacional en la distribuci\00F3n de productos de consumo y en la exportaci\00F3n de prod')
||unistr('uctos de invernaderos de alta tecnolog\00EDa.</p>'),
'                            </ul>',
'',
'                            </div>',
'                            ',
'                        </div>',
'                    </div>',
'                </div>',
'            </div>',
'        </section>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1971667040258616)
,p_plug_name=>'team_one about_team_one'
,p_region_template_options=>'#DEFAULT#:margin-bottom-none:t-Form--noPadding'
,p_plug_template=>wwv_flow_api.id(1990753307084041)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="team_one about_team_one">',
'            <div class="container">',
'                <div class="block-title text-center">',
unistr('                    <p>El mayor activo de la compa\00F1ia</p>'),
'                    <h3>Nuestros Colaboradores</h3>',
'                    <div class="leaf">',
'                                <img src="#APP_IMAGES#assets/images/resources/leaf.png" alt="">',
'                            </div>',
'                </div>',
'                <div class="row">',
'                    <div class="col-xl-3 col-lg-3 col-md-6">',
'                        <div class="team_one_single">',
'                            <div class="team_one_image">',
'                                <img src="#APP_IMAGES#assets/images/emp_mike.png" alt="">',
'                            </div>',
'                            <div class="team_one_deatils" style="padding: 5px 10px 5px;">',
'                                <p>Colaborador</p>',
unistr('                                <h2><a href="#">Miguel \00C1ngel</a></h2>'),
'                                <p style="color: #5b8c51">desde 2006</p>',
'                                <div class="team_one_social">',
unistr('                                    <h3 style="font-size: 26px; line-height: 34px; color: #404a3d; text-transform:none;"> "Lo que m\00E1s admiro de Grupo Kasto como compa\00F1\00EDa, es su gran sentido humano" </h3>'),
'                                </div>',
'                            </div>',
'                        </div>',
'                    </div>',
'                    <div class="col-xl-3 col-lg-3 col-md-6">',
'                        <div class="team_one_single">',
'                            <div class="team_one_image">',
'                                <img src="#APP_IMAGES#assets/images/emp_sandra.png" alt="">',
'                            </div>',
'                            <div class="team_one_deatils" style="padding: 5px 10px 5px;">',
'                                <p>Colaborador</p>',
'                                <h2><a href="#">Sandra</a></h2>',
'                                <p style="color: #5b8c51">desde 1989</p>',
'                                <div class="team_one_social">',
'                                    <h3 style="font-size: 26px; line-height: 34px; color: #404a3d; text-transform:none;">"Estoy agradecida por seguir creciendo profesional y personalmente en la empresa"</h3>',
'                                </div>',
'                            </div>',
'                        </div>',
'                    </div>',
'                    <div class="col-xl-3 col-lg-3 col-md-6">',
'                        <div class="team_one_single">',
'                            <div class="team_one_image">',
'                                <img src="#APP_IMAGES#assets/images/emp_rodrigo.jpg" alt="">',
'                            </div>',
'                            <div class="team_one_deatils" style="padding: 5px 10px 5px;">',
'                                <p>Colaborador</p>',
'                                <h2><a href="#">Rodrigo</a></h2>',
'                                <p style="color: #5b8c51">desde 2012</p>',
'                                <div class="team_one_social">',
'                                    <h3 style="font-size: 26px; line-height: 34px; color: #404a3d; text-transform:none;">"Los estupendos y apasionados equipos de trabajo, estimulan mi compromiso dentro del grupo"</h3>',
'                                </div>',
'                            </div>',
'                        </div>',
'                    </div>',
'                    <div class="col-xl-3 col-lg-3 col-md-6">',
'                        <div class="team_one_single"> <!--wow fadeInUp-->',
'                            <div class="team_one_image">',
'                                <img src="#APP_IMAGES#assets/images/emp_zulema.png" alt="">',
'                            </div>',
'                            <div class="team_one_deatils" style="padding: 5px 10px 5px;">',
'                                <p>Colaborador</p>',
'                                <h2><a href="#">Zulema</a></h2>',
'                                <p style="color: #5b8c51">desde 2004</p>',
'                                <div class="team_one_social">',
'                                    <h3 style="font-size: 26px; line-height: 34px; color: #404a3d; text-transform:none;">"Me siento afortunada de pertenecer a un grupo en donde juntos logramos metas" <br> &nbsp;</h3>',
'                                </div>',
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
 p_id=>wwv_flow_api.id(1971758440258617)
,p_plug_name=>'bx-testimonial'
,p_region_template_options=>'#DEFAULT#:margin-bottom-none:t-Form--noPadding'
,p_plug_template=>wwv_flow_api.id(1990753307084041)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="bx-testimonial bx-testimonial2" style="    padding: 100px 0 100px;">',
'            <div class="container">',
'            ',
'            ',
'                <div class="row">',
'        ',
'                    <div class="col-xl-12">',
'                    <div class="block-title text-center">',
unistr('                        <p>La raz\00F3n de ser del grupo</p>'),
'                                <h3>Nuestros clientes</h3>',
'                                <div class="leaf">',
'                                    <img src="#APP_IMAGES#assets/images/resources/leaf.png" alt="">',
'                                </div>',
'                            </div>',
'                    </div>',
'                    </div>',
'            ',
'                <div class="row">',
'        ',
'                    <div class="col-xl-12">',
'                              ',
'',
'                            ',
'                        <div class="bx_testimonial_slider" >',
'                            <div class="bx-testimonial_title" >Testimonios</div>',
'                          ',
'                            <div class="slider-pager">',
'                                <ul class="thumb-box list-unstyled text-center">',
'                                    <li>',
'                                        <a class="active" data-slide-index="0" href="#">',
'                                            <div class="img-holder">',
'                                                <img src="#APP_IMAGES#assets/images/testimonial_miguel.png" style="max-width: 80px; max-height: 80px;" alt="">',
'                                                <div class="quote_testimonial" style="display: flex;">',
'                                                    <img src="#APP_IMAGES#assets/images/icon/quote_1.png" style="margin: auto;" alt="">',
'                                                </div>',
'                                            </div>',
'                                        </a>',
'                                    </li>',
'                                    <li>',
'                                        <a data-slide-index="1" href="#">',
'                                            <div class="img-holder">',
'                                                <img src="#APP_IMAGES#assets/images/testimonial_alberto.png" style="max-width: 80px; max-height: 80px;" alt="">',
'                                                <div class="quote_testimonial" style="display: flex;">',
'                                                    <img src="#APP_IMAGES#assets/images/icon/quote_1.png" style="margin: auto;" alt="">',
'                                                </div>',
'                                            </div>',
'                                        </a>',
'                                    </li>',
'                                    <li>',
'                                        <a data-slide-index="2" href="#">',
'                                            <div class="img-holder">',
'                                                <img src="#APP_IMAGES#assets/images/testimonial_rosario.png" style="max-width: 80px; max-height: 80px;" alt="">',
'                                                <div class="quote_testimonial" style="display: flex;">',
'                                                    <img src="#APP_IMAGES#assets/images/icon/quote_1.png" style="margin: auto;" alt="">',
'                                                </div>',
'                                            </div>',
'                                        </a>',
'                                    </li>',
'                                </ul>',
'                            </div>',
'',
'                            <ul class="slider-content clearfix bxslider list-unstyled text-center">',
'                                <li>',
'                                    <div class="bx_testimonial_single clearfix">',
'                                        <div class="bx_testimonial_text">',
unistr('                                            <p>"Agradezco el buen servicio y disponibilidad de Grupo Kasto, la atenci\00F3n es excelente. Siempre est\00E1n al pendiente de mi inventario, evitando que se me termine el producto."</p>'),
'                                            <h3>Miguel</h3>',
'                                            <h6>Cliente</h6>',
'                                        </div>',
'                                    </div>',
'                                </li>',
'                                <li>',
'                                    <div class="bx_testimonial_single clearfix">',
'                                        <div class="bx_testimonial_text">',
'                                            <p>"Tengo respeto y amplio agradecimiento para Grupo Kasto, es una empresa que se preocupa por brindar un buen servicio a sus clientes. Me han ayudado en el crecimiento, gestionando apoyos de publicidad y r'
||unistr('otulaci\00F3n de veh\00EDculos."</p>'),
'                                            <h3>Alberto</h3>',
'                                            <h6>Cliente</h6>',
'                                        </div>',
'                                    </div>',
'                                </li>',
'                                <li>',
'                                    <div class="bx_testimonial_single clearfix">',
'                                        <div class="bx_testimonial_text">',
unistr('                                            <p>"Agradezco que Grupo Kasto est\00E9 al pendiente de nosotros y que se interese por nuestra panader\00EDa"</p>'),
'                                            <h3>Rosario</h3>',
'                                            <h6>Cliente</h6>',
'                                        </div>',
'                                    </div>',
'                                </li>',
'                            </ul>',
'',
'                            <ul id="testi-bx-pager">',
'                                <li><a class="pager-item" data-slide="0"></a></li>',
'                                <li><a class="pager-item" data-slide="1"></a></li>',
'                                <li><a class="pager-item" data-slide="2"></a></li>',
'                            </ul><!-- /#testi-bx-pager -->',
'',
'',
'                        </div>',
'                    </div>',
'                </div>',
'            </div>',
'            ',
'',
'        </section>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.component_end;
end;
/
