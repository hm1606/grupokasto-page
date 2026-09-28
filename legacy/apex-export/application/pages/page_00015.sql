prompt --application/pages/page_00015
begin
--   Manifest
--     PAGE: 00015
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
 p_id=>15
,p_user_interface_id=>wwv_flow_api.id(1954772723207063)
,p_name=>unistr('Promotora-de-Inversi\00F3n')
,p_step_title=>unistr('Promotora-de-Inversi\00F3n')
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(1968417659227077)
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_last_updated_by=>'ADMINPOGK'
,p_last_upd_yyyymmddhh24miss=>'20220913225426'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2019860023974002)
,p_plug_name=>'page-header'
,p_region_template_options=>'#DEFAULT#:margin-bottom-none:t-Form--noPadding'
,p_plug_template=>wwv_flow_api.id(1990753307084041)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="page-header" style="background-image: url(#APP_IMAGES#assets/images/Promotora_de_inversion.jpg); style="width: 1343px;"">',
'            <div  style="text-align: center; position: relative;">',
unistr('                <h2>Promotora de Inversi\00F3n</h2>'),
'                <ul class="thm-breadcrumb list-unstyled button-right">',
'                    <li><a href="https://www.grupokasto.com/ords/PDB1/f?p=102:1:&SESSION.">Inicio</a></li>',
'                    <li><span>Promotora</span></li>',
'                </ul>',
'            </div>',
'  </section>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2020083612974004)
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
'                            <img src="#APP_IMAGES#assets/images/DPI_info.jpg">',
'                        </div>',
'                    </div>',
'                </div>',
'                <div class="row">',
'                    <div class="col-xl-8 col-lg-7">',
'                        <div class="project_detail_left_content">',
'                            <div class="harvest_innovations_detail">',
unistr('                                <h2>Divisi\00F3n PROMOTORA DE INVERSI\00D3N</h2>'),
unistr('                                <p>Esta divisi\00F3n tiene como objetivo el fomento, promoci\00F3n y desarrollo de nuevas inversiones, ya sean en las divisiones existentes o la creaci\00F3n de nuevas empresas u oportunidades de negocio.</p>'),
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
'                                        <p style="padding-top: 15px;">Desarrollo Inmobiliario Kasto</p>',
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
unistr('                                <p>A trav\00E9s de esta empresa en Grupo Kasto buscamos fortalecer nuestro portafolio de negocios, a la vez que promovemos el desarrollo de los estados en donde tenemos presencia.</p>'),
'                            </div>',
'                        </div>',
'                    </div>',
'                    <div class="col-xl-4 col-lg-5">',
'                        <div class="project_information_box" style="padding: 40px;">',
'                            <h3>Directorio</h3>',
'                            <ul class="list-unstyled">',
'                                <li><span>Desarrollo Inmobiliario Kasto, S.A. de C.V.<br>',
'                                    Av. Padre Hidalgo No. 410-2<br>',
'                                    Centro<br>',
'                                    Santa Ana Pacueco, Gto.&nbsp; C.P. 36910<br>',
'                                    Tel: (352) 52 61939, (352) 52 60705</li>',
'                            </ul>',
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
 p_id=>wwv_flow_api.id(2020110625974005)
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
unistr('                    <p>Desarrollando el futuro de m\00E9xico</p>'),
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
'                                    <img src="#APP_IMAGES#assets/images/DPI_03.jpg" alt="">',
'                                    <div class="gallery_two_hover_box">',
'                                        <div class="gallery_two_icon">',
'                                            ',
'                                            <div class="about_two_content">',
'                                                <h2>Desarrollo Inmobiliario Kasto</h2>',
'                                            </div>         ',
'                                        </div>',
'                                    </div>',
'                                </div>',
'                            </div>',
'                        </div>',
'                    </div>',
'',
'                    <!--Item-->',
'                    <div class="project_three_single" data-wow-delay="900ms">',
'                      <div class="project_three_image">',
'                           <div class="gallery_two_single">',
'                                <div class="gallery_two_image">',
'                                    <img src="#APP_IMAGES#assets/images/DPI_04.png" alt="">',
'                                    <div class="gallery_two_hover_box">',
'                                        <div class="gallery_two_icon">',
'                                            ',
'                                            <div class="about_two_content">',
'                                                <h2>Desarrollo Inmobiliario Kasto</h2>',
'                                            </div>',
'                                                    ',
'                                        </div>',
'                                    </div>',
'                                </div>',
'                            </div>',
'                        </div>',
'                    </div>',
'',
'                    ',
'                    <!--Item-->',
'                    <div class="project_three_single" data-wow-delay="600ms">',
'                        <div class="project_three_image">',
'                           <div class="gallery_two_single">',
'                                <div class="gallery_two_image">',
'                                    <img src="#APP_IMAGES#assets/images/DPI_02.jpg" alt="">',
'                                    <div class="gallery_two_hover_box">',
'                                        <div class="gallery_two_icon">',
'                                            ',
'                                            <div class="about_two_content">',
'                                                <h2>Desarrollo Inmobiliario Kasto</h2>',
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
'                                    <img src="#APP_IMAGES#assets/images/DPI_01.jpg" alt="">',
'                                    <div class="gallery_two_hover_box">',
'                                        <div class="gallery_two_icon">',
'                                            ',
'                                            <div class="about_two_content">',
'                                                <h2>Desarrollo Inmobiliario Kasto</h2>',
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
