prompt --application/pages/page_00016
begin
--   Manifest
--     PAGE: 00016
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
 p_id=>16
,p_user_interface_id=>wwv_flow_api.id(1954772723207063)
,p_name=>'Filosofia'
,p_step_title=>'Filosofia'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(1968417659227077)
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_last_updated_by=>'ADMINPOGK'
,p_last_upd_yyyymmddhh24miss=>'20260421131012'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2020276359974006)
,p_plug_name=>'page-header'
,p_region_template_options=>'#DEFAULT#:margin-bottom-none:t-Form--noPadding'
,p_plug_template=>wwv_flow_api.id(1990753307084041)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <section class="page-header" style="background-image: url(#APP_IMAGES#assets/images/Filosofia.jpg); style="width: 1343px;"">',
'            <div  style="text-align: center; position: relative;">',
'                <h2>Filosofia</h2>',
'                <ul class="thm-breadcrumb list-unstyled button-right">',
'                    <li><a href="https://www.grupokasto.com/ords/PDB1/f?p=102:1:&SESSION.">Inicio</a></li>',
'                    <li><span>Filosofia</span></li>',
'                </ul>',
'            </div>',
'  </section>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2020340179974007)
,p_plug_name=>'about_one'
,p_region_template_options=>'#DEFAULT#:margin-bottom-none:t-Form--noPadding'
,p_plug_template=>wwv_flow_api.id(1990753307084041)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="achieved_one" style="margin-bottom: 0px">',
'  <style>',
'    .img-wrapper {',
'      width: 100%;',
unistr('      height: 450px; /* Altura m\00E1s discreta */'),
'      overflow: hidden;',
'    }',
'',
'    .img-wrapper img.img-cover {',
'      width: 100%;',
'      height: 100%;',
'      object-fit: cover;',
'      object-position: center;',
'      display: block;',
'    }',
'',
'    @media screen and (max-width: 768px) {',
'      .img-wrapper {',
unistr('        height: 160px; /* M\00E1s bajo a\00FAn en m\00F3viles */'),
'      }',
'    }',
'  </style>',
'',
'  <div class="container">',
'    <div class="row align-items-center">',
'      <div class="col-xl-6 col-lg-6 col-md-6">',
'        <div class="achieved_one_left_img img-wrapper">',
'          <img',
'            src="#APP_IMAGES#assets/images/SEFINSA.jpg"',
unistr('            alt="Imagen prop\00F3sito institucional"'),
'            class="img-cover"',
'          />',
'        </div>',
'      </div>',
'      <div class="col-xl-6 col-lg-6 col-md-6">',
'        <div class="block-title text-left">',
unistr('          <p>Nuestra raz\00F3n de ser</p>'),
unistr('          <h3>Nuestro Prop\00F3sito</h3>'),
'          ',
'           ',
'          <div class="leaf">',
'            <img src="#APP_IMAGES#leaf.png" alt="Leaf" />',
'          </div>',
'        </div>',
'        <ul class="list-unstyled project_challenges_box">',
'                                <li>',
'        <div class="project_challenges_icon">',
'             <img src="#APP_IMAGES#sin_fondo_proposito.png">',
'        </div>',
'        ',
'',
'        <div class="about_two_text">',
unistr('        <h4>Prop\00F3sito</h4>'),
'          <p style="font-size: 18px; line-height: 1.8">',
'            Contribuir al desarrollo integral de las comunidades de manera',
'            sostenible, llevando felicidad a la mesa de todos los hogares.',
'          </p>',
'        </div>',
'       </li> </ul>',
'      </div>',
'    </div>',
'  </div>',
'</section>',
'<section class="about_one">',
'            <div class="container">',
'                <div class="row">',
'                    <div class="col-xl-6 col-lg-6 col-md-6">',
'                        <div class="about1_img">',
'                            <div class="about1_shape_1"></div>',
'                            <img src="#APP_IMAGES#assets/images/index_about_us1.jpg" alt="About-Img">',
'                            <!--#APP_IMAGES#assets/images/recent-pro-img-1.jpg -->',
'                            <div class="about1_icon-box">',
'                                <div class="circle">',
'                                    <span class="icon-watering"></span>',
'                                </div>',
'                            </div>',
'                            <div class="about_img_2">',
'                                <img src="#APP_IMAGES#assets/images/HAN-02.jpg" alt="">',
'                            </div>',
'                        </div>',
'                    </div>',
'                    <div class="col-xl-6 col-lg-6 col-md-6";>',
'                        <div class="block-title text-left">',
'                            <p>Con rumbo hacia 2025</p>',
unistr('                            <h3 style="font-size: 40px;">Misi\00F3n y Visi\00F3n</h3>'),
'                            <div class="leaf">',
'                                <img src="#APP_IMAGES#leaf.png" alt="">',
'                            </div>',
'                        </div>',
'                    ',
'',
'                        <div class="about_two_text">',
'                               <ul class="list-unstyled project_challenges_box">',
'                                <li>',
'                                    <div class="project_challenges_icon">',
'                                             <img src="#APP_IMAGES#sin_fondo_mision.png">',
'                                        </div>',
'                                    <div class="project_challenges_content">',
unistr('                                        <h4>Misi\00F3n</h4>'),
'                                            <p>Somos un grupo de empresas dentro del ramo agroindustrial y de servicios, contribuimos al desarrollo de nuestras regiones.</p>',
'                                    </div>',
'                                </li>',
'                                <br>',
'                                <li>',
'                                    <div class="project_challenges_icon">',
'                                            <img src="#APP_IMAGES#sin_fondo_vision.png">',
'                                        </div>',
'                                    <div class="project_challenges_content">',
unistr('                                        <h4>Visi\00F3n</h4>'),
unistr('                                            <p>Ser la mejor opci\00F3n de negocio para nuestros clientes.</p>'),
'                                    </div>',
'                                </li>',
'                                </ul>',
'                            </div>',
'                    </div>',
'                </div>',
'            </div>',
'        </section>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2020402052974008)
,p_plug_name=>'achieved_one'
,p_region_template_options=>'#DEFAULT#:margin-bottom-none:t-Form--noPadding'
,p_plug_template=>wwv_flow_api.id(1990753307084041)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'        <section class="achieved_one "  style="margin-bottom: 0px;">',
'            <div class="container">',
'                <div class="row">',
'                    <div class="col-xl-6 col-lg-6 col-md-6">',
'                        <div class="achieved_one_left_img" style="padding-bottom:50px;">',
'                            <img src="#APP_IMAGES#assets/images/HAN-04.jpg" alt="Achieved One Image">',
'                        </div>',
'                    </div>',
'                    <div class="col-xl-6 col-lg-6 col-md-6">',
'                        ',
'                                                        ',
'                            <div class="block-title text-left">',
'                                <p>Conoce la cultura corporativa</p>',
'                                <h3>Nuestros Valores</h3>',
'                                <div class="leaf">',
'                                    <img src="#APP_IMAGES#leaf.png" alt="">',
'                                </div>',
'                            </div>',
'                            ',
'                            ',
'                            <div class="about_two_text">',
'                               <ul class="list-unstyled project_challenges_box">',
'                                <li>',
'                                    <div class="project_challenges_icon">',
'                                             <img src="#APP_IMAGES#sin_fondo_compromiso.png">',
'                                        </div>',
'                                    <div class="project_challenges_content">',
'                                        <h4>Compromiso</h4>',
'                                            <p>Nos caracterizamos por ser congruentes y comprometidos en cada uno de nuestros servicios, siempre buscando ofrecer soluciones adecuadas para las diferentes necesidades.</p>',
'                                    </div>',
'                                </li>',
'                                <li>',
'                                    <div class="project_challenges_icon">',
'                                            <img src="#APP_IMAGES#sin_fondo_responsabilidad.png">',
'                                        </div>',
'                                    <div class="project_challenges_content">',
'                                        <h4>Responsabilidad</h4>',
unistr('                                            <p>Enfocamos nuestros esfuerzos en las necesidades de cada cliente, para darle un excelente servicio, siempre bajo la filosofia de ganar-ganar, asegur\00E1ndonos de cumplir sus expectativas y protegiendo el med')
||'io ambiente.</p>',
'                                    </div>',
'                                </li>',
'                                <li>',
'                                    <div class="project_challenges_icon">',
'                                            <img src="#APP_IMAGES#sin_fondo_honestidad.png">',
'                                        </div>',
'                                    <div class="project_challenges_content">',
'                                        <h4>Honestidad</h4>',
'                                            <p>Siempre nos conducimos actuando con rectitud y veracidad.</p>',
'                                    </div>',
'                                </li>',
'                                <li>',
'                                    <div class="project_challenges_icon">',
'                                            <img src="#APP_IMAGES#sin_fondo_respeto.png">',
'                                        </div>',
'                                    <div class="project_challenges_content">',
'                                       <h4>Respeto a la persona</h4>',
'                                            <p>Cuidamos el trato humano en nuestras relaciones, protegemos la dignidad e integridad de las personas.</p>',
'                                    </div>',
'                                </li>',
'',
'                                <li>',
'                                    <div class="project_challenges_icon">',
'                                            <img src="#APP_IMAGES#sin_fondo_humildad.png">',
'                                        </div>',
'                                    <div class="project_challenges_content">',
'                                       <h4>Humildad</h4>',
unistr('                                            <p>Reconocemos nuestras debilidades, cualidades y capacidades, escuchando y aceptando las opiniones que nos aporten en aprendizaje para mejorar y obrar en bien de los dem\00E1s.</p>'),
'                                    </div>',
'                                </li>',
'',
'                                <li>',
'                                    <div class="project_challenges_icon">',
'                                            <img src="#APP_IMAGES#sin_fondo_lealtad.png">',
'                                        </div>',
'                                    <div class="project_challenges_content">',
'                                       <h4>Lealtad</h4>',
unistr('                                            <p>Nuestras relaciones se basan en la disposici\00F3n, confianza y transparencia.</p>'),
'                                    </div>',
'                                </li>',
'',
'                            </ul>',
'                            </div>',
'                        ',
'                    </div>',
'                </div>',
'            </div>',
'        </section>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2020590197974009)
,p_plug_name=>'why_choose_one'
,p_region_template_options=>'#DEFAULT#:margin-bottom-none:t-Form--noPadding'
,p_plug_template=>wwv_flow_api.id(1990753307084041)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'        <section class="why_choose_one">',
'            <div class="container">',
'                <div class="row">',
'                    <div class="col-xl-6 col-lg-6 col-md-6">',
'                            <div class="why_choose_one_left_content">',
'                            <div class="block-title text-left">',
'                                <p>Conoce la cultura corporativa</p>',
'                                <h3>Formas de Trabajo</h3>',
'                                <div class="leaf">',
'                                    <img src="#APP_IMAGES#leaf.png" alt="">',
'                                </div>',
'                            </div>',
'                            <div class="about_two_text">',
'                                <ul class="list-unstyled project_challenges_box">',
'                                    <li>',
'                                        <div class="project_challenges_icon">',
'                                                 <img src="#APP_IMAGES#sin_fondo_trabajo_en_equipo.png">',
'                                            </div>',
'                                        <div class="project_challenges_content">',
'                                            <h4>Trabajo en equipo</h4>',
unistr('                                                <p>Fomentamos una organizaci\00F3n en la que sumamos el trabajo y las aportaciones de cada persona para el logro de un mismo fin.</p>'),
'                                        </div>',
'                                    </li>',
'                                    <li>',
'                                        <div class="project_challenges_icon">',
'                                                <img src="#APP_IMAGES#sin_fondo_pasion.png">',
'                                            </div>',
'                                        <div class="project_challenges_content">',
unistr('                                            <h4>Pasi\00F3n por la calidad y servicio</h4>'),
unistr('                                                <p>Entregamos el coraz\00F3n en lo que hacemos y ofrecemos, nos preocupamos por la eficiencia y oportunidad en los servicios y en la calidad de nuestros productos.</p>'),
'                                        </div>',
'                                    </li>',
'                                    <li>',
'                                        <div class="project_challenges_icon">',
'                                                <img src="#APP_IMAGES#sin_fondo_mejora_continua.png">',
'                                            </div>',
'                                        <div class="project_challenges_content">',
'                                            <h4>Mejora Continua</h4>',
unistr('                                                <p>Contamos con procesos de mejora para nuestros productos y servicios, lo que contribuye al crecimiento y satisfacci\00F3n de nuestros clientes.</p>'),
'                                        </div>',
'                                    </li>',
'                                    <li>',
'                                        <div class="project_challenges_icon">',
'                                                <img src="#APP_IMAGES#sin_fondo_Innovacion.png">',
'                                            </div>',
'                                        <div class="project_challenges_content">',
unistr('                                           <h4>Innovaci\00F3n</h4>'),
unistr('                                                <p>Apoyamos la creaci\00F3n de soluciones para nuestros clientes a trav\00E9s de quienes conformamos Grupo Kasto.</p>'),
'                                        </div>',
'                                    </li>',
'                                </ul>',
'                            </div>',
'                        </div>',
'                    </div>',
'                    <div class="col-xl-6 col-lg-6">',
'                        <div class="why_choose_image_top">',
'                            <div class="why_choose_image" style="background-image: url(#APP_IMAGES#assets/images/HAN_05.jpg)">',
'',
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
