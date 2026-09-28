prompt --application/pages/page_00001
begin
--   Manifest
--     PAGE: 00001
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
 p_id=>1
,p_user_interface_id=>wwv_flow_api.id(1954772723207063)
,p_name=>'Home'
,p_alias=>'HOME'
,p_step_title=>'Portal GK'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(1968417659227077)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(1957340994207110)
,p_page_is_public_y_n=>'Y'
,p_last_updated_by=>'ADMINPOGK'
,p_last_upd_yyyymmddhh24miss=>'20251218102720'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1970124490258601)
,p_plug_name=>'Carrousel'
,p_region_template_options=>'#DEFAULT#:margin-bottom-none:t-Form--noPadding'
,p_plug_template=>wwv_flow_api.id(1990753307084041)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'        <!-- Banner Section -->',
'        <section class="banner-section banner-one">',
'',
'            <div class="banner-carousel owl-theme owl-carousel">',
'                <!-- Slide Item -->',
'                <div class="slide-item">',
'                    <div class="image-layer" style="background-image: url(#APP_IMAGES#assets/images/Filosofia.jpg);">',
'                    </div>',
'                    <div class="auto-container">',
'                        <div class="content-box">',
'                            <div class="content">',
'                                <div class="inner">',
'                                    <div class="sub-title" style="margin-top: 80px;">Contribuimos al desarrollo</div>',
'                                    <h1 style="margin-top: 0px;">Bienvenidos a<br> Grupo Kasto</h1>',
'                                    <div class="link-box">',
unistr('                                        <a href="http://wwwgk.nyva.io/ords/PDB1/f?p=102:3" class="thm-btn">Descubra m\00E1s</a>'),
'                                    </div>',
'                                </div>',
'                            </div>',
'                        </div>',
'                    </div>',
'                </div>',
'                ',
'                <!-- Slide Item -->',
'                <div class="slide-item">',
'                    <div class="image-layer" style="background-image: url(#APP_IMAGES#assets/images/Molinos_de_Trigo.jpg);">',
'                    </div>',
'                    <div class="auto-container">',
'                        <div class="content-box">',
'                            <div class="content">',
'                                <div class="inner">',
'                                    <div class="sub-title" style="margin-top: 80px;">Contribuimos al desarrollo</div>',
'                                    <h1 style="margin-top: 0px;">Bienvenidos a<br> Grupo Kasto</h1>',
'                                    <div class="link-box">',
unistr('                                        <a href="http://wwwgk.nyva.io/ords/PDB1/f?p=102:3" class="thm-btn">Descubra m\00E1s</a>'),
'                                    </div>',
'                                </div>',
'                            </div>',
'                        </div>',
'                    </div>',
'                </div>',
'                <!-- Slide Item -->',
'                <div class="slide-item">',
'                    <div class="image-layer" style="background-image: url(#APP_IMAGES#assets/images/pecuarios_4.jpg);">',
'                    </div>',
'                    <div class="auto-container">',
'                        <div class="content-box">',
'                            <div class="content">',
'                                <div class="inner">',
'                                    <div class="sub-title" style="margin-top: 80px;">Contribuimos al desarrollo</div>',
'                                    <h1 style="margin-top: 0px;">Bienvenidos a<br> Grupo Kasto</h1>',
'                                    <div class="link-box">',
unistr('                                        <a href="http://wwwgk.nyva.io/ords/PDB1/f?p=102:3" class="thm-btn">Descubra m\00E1s</a>'),
'                                    </div>',
'                                </div>',
'                            </div>',
'                        </div>',
'                    </div>',
'                </div>',
'                <!-- Slide Item -->',
'                <div class="slide-item">',
'                    <div class="image-layer" style="background-image: url(#APP_IMAGES#assets/images/Invernaderos.jpg);">',
'                    </div>',
'                    <div class="auto-container">',
'                        <div class="content-box">',
'                            <div class="content">',
'                                <div class="inner">',
'                                    <div class="sub-title" style="margin-top: 80px;">Contribuimos al desarrollo</div>',
'                                    <h1 style="margin-top: 0px;">Bienvenidos a<br> Grupo Kasto</h1>',
'                                    <div class="link-box">',
unistr('                                        <a href="http://wwwgk.nyva.io/ords/PDB1/f?p=102:3" class="thm-btn">Descubra m\00E1s</a>'),
'                                    </div>',
'                                </div>',
'                            </div>',
'                        </div>',
'                    </div>',
'                </div>',
'                <!-- Slide Item -->',
'                <div class="slide-item">',
'                    <div class="image-layer" style="background-image: url(#APP_IMAGES#assets/images/Ohlala_carrusel.jpg);">',
'                    </div>',
'                    <div class="auto-container">',
'                        <div class="content-box">',
'                            <div class="content">',
'                                <div class="inner">',
'                                    <div class="sub-title" style="margin-top: 80px;">Contribuimos al desarrollo</div>',
'                                    <h1 style="margin-top: 0px;">Bienvenidos a<br> Grupo Kasto</h1>',
'                                    <div class="link-box">',
unistr('                                        <a href="http://wwwgk.nyva.io/ords/PDB1/f?p=102:3" class="thm-btn">Descubra m\00E1s</a>'),
'                                    </div>',
'                                </div>',
'                            </div>',
'                        </div>',
'                    </div>',
'                </div>',
'                <!-- Slide Item -->',
'                <div class="slide-item">',
'                    <div class="image-layer" style="background-image: url(#APP_IMAGES#assets/images/p_consumo.jpg);">',
'                        <!--#APP_IMAGES#encabezado_1.jpg-->',
'                    </div>',
'                    <div class="auto-container">',
'                        <div class="content-box">',
'                            <div class="content">',
'                                <div class="inner">',
'                                    <div class="sub-title" style="margin-top: 80px;">Contribuimos al desarrollo</div>',
'                                    <h1 style="margin-top: 0px;">Bienvenidos a<br> Grupo Kasto</h1>',
'                                    <div class="link-box">',
unistr('                                        <a href="http://wwwgk.nyva.io/ords/PDB1/f?p=102:3" class="thm-btn">Descubra m\00E1s</a>'),
'                                    </div>',
'                                </div>',
'                            </div>',
'                        </div>',
'                    </div>',
'                </div>',
'                ',
'            </div>',
'        </section>',
'        <!--End Banner Section -->',
''))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1970226816258602)
,p_plug_name=>'about_one'
,p_region_template_options=>'#DEFAULT#:margin-bottom-none:t-Form--noPadding'
,p_plug_template=>wwv_flow_api.id(1990753307084041)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'        ',
'        <section class="about_one">',
'            <div class="container">',
'                <div class="row">',
'                    <div class="col-xl-6 col-lg-6">',
'                        <div class="about1_img">',
'                            <div class="about1_shape_1"></div>',
'                            <img src="#APP_IMAGES#about-1-img-1.jpg" alt="About-Img">',
'                            <!--#APP_IMAGES#about-1-img-1.jpg-->',
'                            <div class="about1_icon-box">',
'                                <div class="circle">',
'                                    <span class="icon-focus"></span>',
'                                </div>',
'                            </div>',
'                            <div class="about_img_2">',
'                                <img src="#APP_IMAGES#assets/images/Ohlala.jpg" alt="">',
'                            </div>',
'                        </div>',
'                    </div>',
'                    <div class="col-xl-6 col-lg-6">',
'                        <div class="block-title text-left">',
unistr('                            <p>L\00EDderes en el mercado agr\00EDcola</p>'),
'                            <h3 style="font-size: 40px;">Acerca de nosotros</h3>',
'                            <div class="leaf">',
'                                <img src="#APP_IMAGES#assets/images/resources/leaf.png" alt="">',
'                            </div>',
'                        </div>',
'                        <div class="about_content">',
'                            <div class="text">',
unistr('                                <p style="padding-bottom: 10px;">Somos un s\00F3lido y reconocido grupo de empresas agroindustriales con un gran compromiso social.</p>'),
unistr('                                <p style="padding-bottom: 10px;">Contamos con \00E1reas de producci\00F3n, comercializaci\00F3n, servicios y distribuci\00F3n de productos de consumo.</p>'),
unistr('                                <p>Nuestra gama de giros nos permite tener una estructura s\00F3lida para satisfacer exitosamente las demandas de suministro y calidad que requieren nuestros clientes, cumpliendo los retos de llevar a cabo pr\00E1cticas cada v')
||unistr('ez m\00E1s eficientes, innovadoras, inocuas y ecol\00F3gicas.</p>'),
'                            </div>',
'                            <div class="about1_icon_wrap">',
'                                <div class="about1_icon_single">',
'                                    <div class="about1_icon">',
'                                        <img src="#APP_IMAGES#assets/images/productos-50x55-1.png">',
'                                    </div>',
'                                    <p>Ofrecemos los mejores productos</p>',
'                                </div>',
'                                <div class="about1_icon_single">',
'                                    <div class="about1_icon">',
'                                        <img src="#APP_IMAGES#assets/images/campo-50x55-1.png">',
'                                    </div>',
'                                    <p>Desde el campo hasta su hogar</p>',
'                                </div>',
'                            </div>',
'                            <div class="bottom_text">',
unistr('                                <p> Ofrecemos los mejores productos y servicios en nuestra zona de influencia. Tenemos presencia en Baj\00EDo, Occidente y Noroeste de M\00E9xico.</p>'),
'                            </div>',
'                            <!--<div class="about1__button-block">',
unistr('                                <a href="https://apex.oracle.com/pls/apex/f?p=11012:4" class="thm-btn about_one__btn">Aprende m\00E1s</a>'),
'                            </div>-->',
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
 p_id=>wwv_flow_api.id(1970373693258603)
,p_plug_name=>'testimonials-one'
,p_region_template_options=>'#DEFAULT#:margin-bottom-none:t-Form--noPadding'
,p_plug_template=>wwv_flow_api.id(1990753307084041)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="testimonials-one">',
'            <div class="container">',
'                <div class="row">',
'                    <div class="col-xl-6 col-lg-6">',
'                        <div class="testimonials_one_left">',
'                            <div class="block-title text-left">',
'                                <p>CON UN ENFOQUE CENTRADO EN EL CLIENTE</p>',
'                                <h3 style="font-size: 40px;">Nuestra oferta de valor</h3>',
'                                <div class="leaf">',
'                                    <img src="#APP_IMAGES#assets/images/resources/leaf.png" alt="">',
'                                </div>',
'                            </div>',
'                            <div class="testimonials_one_text">',
unistr('                                <p style="padding-bottom: 10px;">Las empresas de Grupo Kasto operan en las zonas del Baj\00EDo, Occidente y Noroeste de la Rep\00FAblica Mexicana, promoviendo sus productos en m\00E1s de 25 estados y exportando a Estados Unidos y ')
||unistr('Canad\00E1.</p>'),
'                                <p>Trabajamos con la velocidad de respuesta necesaria para cumplir con las expectativas y necesidades de nuestros clientes, ofreciendo agilidad, confiabilidad y certeza a los resultados esperados. Nuestro objetivo prin'
||unistr('cipal es la satisfacci\00F3n del cliente.</p>'),
'                            </div>',
'                            <div class="project_counted wow fadeInUp" data-wow-delay="300ms">',
'                                <div class="icon_box">',
'                                    <span class="icon-customer-review"></span>',
'                                </div>',
'                                <div class="project-content" style="padding-bottom: 20px;">',
'                                    <h3 class="counter" style="margin-left: 10px;">3,300</h3>',
'                                    <p>Clientes satisfechos</p>',
'                                </div>',
'                            </div>',
'                        </div>',
'                    </div>',
'                    <div class="col-xl-6 col-lg-6">',
'                        <div class="testimonials_one_content">',
'                            <div class="testimonials_one_carousel owl-theme owl-carousel">',
'                                <div class="testimonials_one_single_item">',
'                                    <div class="text">',
unistr('                                        <p>La promesa de satisfacci\00F3n de Grupo Kasto radica en el conocimiento de las necesidades de sus consumidores, mismas que se anticipan en su amplio portafolio de productos.</p>'),
'                                    </div>',
'                                    <div class="client_thumbnail">',
'                                        <div class="client_img">',
'                                            <img src="#APP_IMAGES#assets/images/testimonial_Susana_solis.jpg"',
'                                                alt="testimonial1-img">',
'                                        </div>',
'                                        <div class="client_title">',
unistr('                                            <h4>Susana Sol\00EDs</h4>'),
'                                            <p>Gerente Administrativo</p>',
'                                        </div>',
'                                    </div>',
'                                </div>',
'                                <div class="testimonials_one_single_item">',
'                                    <div class="text">',
'                                        <p>La oferta de valor de Grupo Kasto, se basa en la seriedad de las negociaciones y en el cumplimiento de los compromisos adquiridos. Mejoramos nuestros procesos buscando maximizar la experiencia de compra.</p>',
'                                    </div>',
'                                    <div class="client_thumbnail">',
'                                        <div class="client_img">',
'                                            <img src="#APP_IMAGES#assets/images/emp_javier.png"',
'                                                alt="testimonial1-img">',
'                                        </div>',
'                                        <div class="client_title">',
'                                            <h4> Francisco Javier Ortiz</h4>',
'                                            <p>Gerente Comercial</p>',
'                                        </div>',
'                                    </div>',
'                                </div>',
'                                <div class="testimonials_one_single_item">',
'                                    <div class="text">',
unistr('                                        <p>Tenemos la mejor combinaci\00F3n de financiamiento y proveedur\00EDa de insumos para nuestros productores, mientras trabajamos en conjunto para conseguir la mejor oferta en el mercado de granos.</p>'),
'                                    </div>',
'                                    <div class="client_thumbnail">',
'                                        <div class="client_img">',
'                                            <img src="#APP_IMAGES#assets/images/emp_guillermo.jpg"',
'                                                alt="testimonial1-img">',
'                                        </div>',
'                                        <div class="client_title">',
'                                            <h4>Guillermo Rivera</h4>',
'                                            <p>Gerente de Unidad de Negocio</p>',
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
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1970431738258604)
,p_plug_name=>'brand-one'
,p_region_template_options=>'#DEFAULT#:margin-bottom-none:t-Form--noPadding'
,p_plug_template=>wwv_flow_api.id(1990753307084041)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="brand-one">',
'            <div class="container">',
'                <div class="row">',
'                    <div class="col-xl-12">',
'                        <div class="brand-one-carousel owl-carousel">',
'                            ',
'                            <div class="single_brand_item">',
'                                <a href="#"><img src="#APP_IMAGES#parayas.png" alt="brand"></a>',
'                            </div>',
'                            <div class="single_brand_item">',
'                                <a href="#"><img src="#APP_IMAGES#Division_molinos-de-trigo.png" alt="brand"></a>',
'                            </div>',
'                            <div class="single_brand_item">',
'                                <a href="#"><img src="#APP_IMAGES#vigia.png" alt="brand"></a>',
'                            </div>',
'                            <div class="single_brand_item">',
'                                <a href="#"><img src="#APP_IMAGES#Division_pecuaria.png" alt="brand"></a>',
'                            </div>',
'                            <div class="single_brand_item">',
'                                <a href="#"><img src="#APP_IMAGES#folapsa.png" alt="brand"></a>',
'                            </div>',
'                            ',
'                            <div class="single_brand_item">',
'                                <a href="#"><img src="#APP_IMAGES#recosa.png" alt="brand"></a>',
'                            </div>',
'                            <div class="single_brand_item">',
'                                <a href="#"><img src="#APP_IMAGES#Division_granos.png" alt="brand"></a>',
'                            </div>',
'                            <div class="single_brand_item">',
'                                <a href="#"><img src="  #APP_IMAGES#assets/images/redsunfarms.png" alt="brand"></a>',
'                            </div>',
'                            <div class="single_brand_item">',
'                                <a href="#"><img src="#APP_IMAGES#Division_servicios.png" alt="brand"></a>',
'                            </div>',
'                            <div class="single_brand_item">',
'                                <a href="#"><img src="#APP_IMAGES#assets/images/z-productos-de-consumo.png" alt="brand"></a>',
'                            </div>',
'                            <div class="single_brand_item">',
'                                <a href="#"><img src="#APP_IMAGES#assets/images/Brand_ohlala.png" alt="brand"></a>',
'                            </div>',
'                        </div>',
'                    </div>',
'                </div>',
'            </div>',
'        </div>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1970561195258605)
,p_plug_name=>'video-one'
,p_region_template_options=>'#DEFAULT#:margin-bottom-none:t-Form--noPadding'
,p_plug_template=>wwv_flow_api.id(1990753307084041)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="video-one" style="background-image:url(#APP_IMAGES#assets/images/video_bg_02.jpg);">',
'            <div class="container text-center">',
'                <!--<a href="https://www.youtube.com/watch?v=6aIEVJor3fU" class="video-one__btn video-popup"><i',
'                        class="fa fa-play"></i></a>-->',
'                <p>Grupo Kasto</p>',
'                <h3>La Agricultura es importante<br>para el desarrollo futuro</h3>',
'            </div>',
'        </section>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1970622830258606)
,p_plug_name=>'product-one'
,p_region_template_options=>'#DEFAULT#:margin-bottom-none:t-Form--noPadding'
,p_plug_template=>wwv_flow_api.id(1990753307084041)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="product-one" style="padding-bottom: 0;">',
'            <div class="container">',
'                <div class="row">',
'                    <div class="col-xl-6 col-lg-6">',
'                        <div class="product_img">',
'                            <img src="#APP_IMAGES#assets/images/Molinos-de-trigo-gk.jpg" alt="Product One Img">',
'                            <div class="experience_box">',
unistr('                                <h2>80 A\00F1os</h2>'),
'                                <p>De Experiencia</p>',
'                            </div>',
'                        </div>',
'                    </div>',
'                    <div class="col-xl-6 col-lg-6">',
'                        <div class="growing_product">',
'                            <div class="block-title text-left">',
'                                <p>Con casi un siglo en el negocio</p>',
'                                <h3 style="font-size: 40px;">Nuestra experiencia</h3>',
'                                <div class="leaf">',
'                                    <img src="#APP_IMAGES#assets/images/resources/leaf.png" alt="">',
'                                </div>',
'                            </div>',
'                            <div class="growing_product_text">',
unistr('                                <p> Los or\00EDgenes de Grupo Kasto se remontan al a\00F1o de 1945, cuando el fundador se integra al negocio de la venta de granos en un establecimiento conocido como \201CLa Maicer\00EDa\201D, en La Piedad Michoac\00E1n.'),
'                                </p>',
'                                <br>',
'                            </div>',
'                            <div class="progress-levels">',
'                                <!--Skill Box-->',
'                                <div class="progress-box">',
'                                    <div class="inner count-box">',
'                                        <div class="text">Granos</div>',
'                                        <div class="bar">',
'                                            <div class="bar-innner">',
'                                                <div class="skill-percent">',
'                                                    <span class="count-text" data-speed="100" data-stop="80">0</span>',
unistr('                                                    <span class="percent">A\00F1os</span>'),
'                                                </div>',
'                                                <div class="bar-fill" data-percent="100"></div>',
'                                            </div>',
'                                        </div>',
'                                    </div>',
'                                </div>',
'                                <!--Skill Box-->',
'                                <div class="progress-box">',
'                                    <div class="inner count-box">',
'                                        <div class="text">Harinas</div>',
'                                        <div class="bar">',
'                                            <div class="bar-innner">',
'                                                <div class="skill-percent">',
'                                                    <span class="count-text" data-speed="100" data-stop="50">0</span>',
unistr('                                                    <span class="percent">A\00F1os</span>'),
'                                                </div>',
'                                                <div class="bar-fill" data-percent="53"></div>',
'                                            </div>',
'                                        </div>',
'                                    </div>',
'                                </div>',
'                                <!--Skill Box-->',
'                                <div class="progress-box">',
'                                    <div class="inner count-box">',
'                                        <div class="text">Invernaderos</div>',
'                                        <div class="bar">',
'                                            <div class="bar-innner">',
'                                                <div class="skill-percent">',
'                                                    <span class="count-text" data-speed="100" data-stop="23">0</span>',
unistr('                                                    <span class="percent">A\00F1os</span>'),
'                                                </div>',
'                                                <div class="bar-fill" data-percent="26"></div>',
'                                            </div>',
'                                        </div>',
'                                    </div>',
'                                </div>',
'                                <!--Skill Box-->',
'                                <div class="progress-box">',
'                                    <div class="inner count-box">',
'                                        <div class="text">Pecuaria</div>',
'                                        <div class="bar">',
'                                            <div class="bar-innner">',
'                                                <div class="skill-percent">',
'                                                    <span class="count-text" data-speed="100" data-stop="59">0</span>',
unistr('                                                    <span class="percent">A\00F1os</span>'),
'                                                </div>',
'                                                <div class="bar-fill" data-percent="64"></div>',
'                                            </div>',
'                                        </div>',
'                                    </div>',
'                                </div>',
'                                <!--Skill Box-->',
'                                <div class="progress-box">',
'                                    <div class="inner count-box">',
unistr('                                        <div class="text">Panader\00EDa & Bistr\00F3</div>'),
'                                        <div class="bar">',
'                                            <div class="bar-innner">',
'                                                <div class="skill-percent">',
'                                                    <span class="count-text" data-speed="100" data-stop="15">0</span>',
unistr('                                                    <span class="percent">A\00F1os</span>'),
'                                                </div>',
'                                                <div class="bar-fill" data-percent="23"></div>',
'                                            </div>',
'                                        </div>',
'                                    </div>',
'                                </div>',
'                                <!--Skill Box-->',
'                                <div class="progress-box">',
'                                    <div class="inner count-box">',
'                                        <div class="text">Porcicultura</div>',
'                                        <div class="bar">',
'                                            <div class="bar-innner">',
'                                                <div class="skill-percent">',
'                                                    <span class="count-text" data-speed="100" data-stop="63">0</span>',
unistr('                                                    <span class="percent">A\00F1os</span>'),
'                                                </div>',
'                                                <div class="bar-fill" data-percent="68"></div>',
'                                            </div>',
'                                        </div>',
'                                    </div>',
'                                </div>',
'                                <!--Skill Box-->',
'                                <div class="progress-box">',
'                                    <div class="inner count-box">',
'                                        <div class="text">Prod. de Consumo</div>',
'                                        <div class="bar">',
'                                            <div class="bar-innner">',
'                                                <div class="skill-percent">',
'                                                    <span class="count-text" data-speed="100" data-stop="33">0</span>',
unistr('                                                    <span class="percent">A\00F1os</span>'),
'                                                </div>',
'                                                <div class="bar-fill" data-percent="36"></div>',
'                                            </div>',
'                                        </div>',
'                                    </div>',
'                                </div>',
'                                <!--Skill Box-->',
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
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2020.03.31'
,p_release=>'20.1.0.00.13'
,p_default_workspace_id=>1829437844690909
,p_default_application_id=>102
,p_default_id_offset=>0
,p_default_owner=>'XXPOKASTO'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1970757777258607)
,p_plug_name=>'blog_fou'
,p_region_template_options=>'#DEFAULT#:margin-bottom-none:t-Form--noPadding'
,p_plug_template=>wwv_flow_api.id(1990753307084041)
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="blog_four" style="margin-bottom: -80px; padding-top: 150px">',
'    <div class="container">',
'        <div class="row">',
'            <div class="col-xl-4 col-lg-4" data-wow-delay="100ms">',
'                <div class="block-title text-left">',
'                    <p>Desde nuestro blog</p>',
'                    <h3 style="font-size: 40px">',
unistr('                        Noticias<br />y Art\00EDculos <br />Publicados <br />'),
'                        con frecuencia',
'                    </h3>',
'                    <div class="leaf">',
'                        <img src="#APP_IMAGES#assets/images/resources/leaf.png" alt="" />',
'                    </div>',
'                </div>',
'                <div class="blog-four_btn">',
'                    <a href="https://www.grupokasto.com/ords/PDB1/f?p=102:11:&SESSION." class="thm-btn">Ver todas las',
'                        Noticias</a>',
'                </div>',
'            </div>',
'            <!-- <div class="col-xl-4 col-lg-4">',
'                <div class="blog_one_single" data-wow-delay="300ms">',
'                    <div class="blog_one_image">',
'                        <div class="blog_image">',
'                            <img src="#APP_IMAGES#news_20_img_header.png" alt="Blog One Image"',
'                                style="height: 247px; width: 370px" />',
'                            <div class="blog_one_date_box">',
'                                <p>29 Abr 2025</p>',
'                            </div>',
'                        </div>',
'                        <div class="blog-one__content" style="padding: 0">',
'                            <h3>',
'                                <a href="https://www.grupokasto.com/ords/PDB1/f?p=102:42:&SESSION."',
'                                    class="blog_four_title">Simulacro Nacional en Molino Planta Central: Reforzando',
unistr('                                    nuestra cultura de prevenci\00F3n<br /></a>'),
'                            </h3>',
'                            <div class="blog_one_text">',
'                                <p>',
'                                    Asi se llevo a cabo el Primer Simulacro Nacional en nuestras',
'                                    instalaciones de Molino Planta Central.',
'                                </p>',
'                            </div>',
'                            <div class="read_more_btn">',
'                                <a href="https://www.grupokasto.com/ords/PDB1/f?p=102:42:&SESSION."><i',
unistr('                                        class="fa fa-angle-right"></i>Leer M\00E1s...</a>'),
'                            </div>',
'                        </div>',
'                    </div>',
'                </div>',
'            </div> -->',
'            <div class="col-xl-4 col-lg-4">',
'                <div class="blog_one_single" data-wow-delay="300ms">',
'                    <div class="blog_one_image">',
'                        <div class="blog_image">',
'                            <img src="#APP_IMAGES#news_21_img_header.png" alt="Blog One Image"',
'                                style="height: 247px; width: 370px" />',
'                            <div class="blog_one_date_box">',
'                                <p>02 May 2025</p>',
'                            </div>',
'                        </div>',
'                        <div class="blog-one__content" style="padding: 0">',
'                            <h3>',
'                                <a href="https://www.grupokasto.com/ords/PDB1/f?p=102:43:&SESSION."',
unistr('                                    class="blog_four_title">Celebrando con \00E9xito la Semana de la Seguridad'),
'                                    2025<br /></a>',
'                            </h3>',
'                            <div class="blog_one_text">',
'                                <p>',
unistr('                                    Con el objetivo de reforzar la cultura de la prevenci\00F3n y el'),
unistr('                                    bienestar laboral, Grupo Kasto llev\00F3 a cabo la Semana de la'),
'                                    Seguridad en todas sus divisiones.',
'                                </p>',
'                            </div>',
'                            <div class="read_more_btn">',
'                                <a href="https://www.grupokasto.com/ords/PDB1/f?p=102:43:&SESSION."><i',
unistr('                                        class="fa fa-angle-right"></i>Leer M\00E1s...</a>'),
'                            </div>',
'                        </div>',
'                    </div>',
'                </div>',
'            </div>',
'',
'            <div class="col-xl-4 col-lg-4">',
'                <div class="blog_one_single" data-wow-delay="300ms">',
'                    <div class="blog_one_image">',
'                        <div class="blog_image">',
'                            <img src="#APP_IMAGES#news_22_img_header.png" alt="Blog One Image"',
'                                style="height: 247px; width: 370px" />',
'                            <div class="blog_one_date_box">',
'                                <p>07 Nav 2025</p>',
'                            </div>',
'                        </div>',
'                        <div class="blog-one__content" style="padding: 0">',
'                            <h3>',
'                                <a href="https://www.grupokasto.com/ords/PDB1/f?p=102:44:&SESSION."',
'                                    class="blog_four_title">Colaboradores participan en jornada de voluntariado para el',
'                                    cuidado de los bosques<br /></a>',
'                            </h3>',
'                            <div class="blog_one_text">',
'                                <p>',
'                                    Como parte de las iniciativas de sostenibilidad del grupo, colaboradores de',
'                                    distintas divisiones participaron en una jornada de',
unistr('                                    voluntariado ambiental en diversas \00E1reas naturales ubicadas en las regiones donde'),
'                                    Grupo Kasto tiene presencia.',
'                                </p>',
'                            </div>',
'                            <div class="read_more_btn">',
'                                <a href="https://www.grupokasto.com/ords/PDB1/f?p=102:44:&SESSION."><i',
unistr('                                        class="fa fa-angle-right"></i>Leer M\00E1s...</a>'),
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
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(16135486121135233)
,p_name=>'Set buttons text en'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'CURRENT_LANG_EQ_COND1'
,p_display_when_cond=>'en'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(16135576158135234)
,p_event_id=>wwv_flow_api.id(16135486121135233)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(".owl-prev").html("<span class=\"icon fa fa-angle-left\" aria-hidden=\"true\"></span><p>Previous</p>")',
'$(".owl-next").html("<p>Next</p><span class=\"icon fa fa-angle-right\" aria-hidden=\"true\"></span>")'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(16135697522135235)
,p_name=>'Set buttons text es'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'CURRENT_LANG_EQ_COND1'
,p_display_when_cond=>'es'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(16135706196135236)
,p_event_id=>wwv_flow_api.id(16135697522135235)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(".owl-prev").html("<span class=\"icon fa fa-angle-left\" aria-hidden=\"true\"></span><p>Anterior</p>")',
'$(".owl-next").html("<p>Siguiente</p><span class=\"icon fa fa-angle-right\" aria-hidden=\"true\"></span>")'))
);
wwv_flow_api.component_end;
end;
/
