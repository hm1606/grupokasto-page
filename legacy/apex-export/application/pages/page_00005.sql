prompt --application/pages/page_00005
begin
--   Manifest
--     PAGE: 00005
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
 p_id=>5
,p_user_interface_id=>wwv_flow_api.id(1954772723207063)
,p_name=>unistr('Galer\00EDa')
,p_step_title=>unistr('Galer\00EDa')
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(1968417659227077)
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_last_updated_by=>'ADMINPOGK'
,p_last_upd_yyyymmddhh24miss=>'20220913224834'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1972179579258621)
,p_plug_name=>'page-header'
,p_region_template_options=>'#DEFAULT#:margin-bottom-none:t-Form--noPadding'
,p_plug_template=>wwv_flow_api.id(1990753307084041)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="page-header" style="background-image: url(#APP_IMAGES#assets/images/Aviso_privacidad.jpg);">',
'    <div style="text-align: center; position: relative;">',
unistr('        <h2>Galer\00EDa</h2>'),
'        <ul class="thm-breadcrumb list-unstyled button-right">',
'            <li><a href="https://www.grupokasto.com/ords/PDB1/f?p=102:1:&SESSION.">Inicio</a></li>',
unistr('            <li><span>Galer\00EDa  </span></li>'),
'        </ul>',
'    </div>',
'</section>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1972292145258622)
,p_plug_name=>'gallery_two'
,p_region_template_options=>'#DEFAULT#:margin-bottom-none:t-Form--noPadding'
,p_plug_template=>wwv_flow_api.id(1990753307084041)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="gallery_two" style="padding-bottom: 0;">',
'            <div class="container">',
'                <div class="row masonary-layout">',
'                    <div class="col-xl-4 col-lg-6 col-md-6 masonary-item">',
'                        <div class="gallery_two_single">',
'                            <div class="gallery_two_image">',
'                                <img src="#APP_IMAGES#assets/images/g_Pecuaria_mediano.jpg" alt="">',
'                                <div class="gallery_two_hover_box">',
'                                    <div class="gallery_two_icon">',
'                                        <a class="img-popup" href="#APP_IMAGES#assets/images/g_Pecuaria_original.jpg"><span',
'                                                class="icon-plus-symbol"></span></a>',
'                                    </div>',
'                                </div>',
'                            </div>',
'                        </div>',
'                    </div>',
'                    <div class="col-xl-4 col-lg-6 col-md-6 masonary-item">',
'                        <div class="gallery_two_single">',
'                             <div class="gallery_two_image">',
'                                <img src="#APP_IMAGES#assets/images/G_parayas_grande.jpg" alt="">',
'                                <div class="gallery_two_hover_box">',
'                                    <div class="gallery_two_icon">',
'                                        <a class="img-popup" href="#APP_IMAGES#assets/images/g_parayas_original.jpg"><span',
'                                                class="icon-plus-symbol"></span></a>',
'                                    </div>',
'                                </div>',
'                            </div>',
'                        </div>',
'                    </div>',
'                    <div class="col-xl-4 col-lg-6 col-md-6 masonary-item">',
'                        <div class="gallery_two_single">',
'                            <div class="gallery_two_image">',
'                                <img src="#APP_IMAGES#assets/images/G_ohlala_min.jpg" alt="">',
'                                <div class="gallery_two_hover_box">',
'                                    <div class="gallery_two_icon">',
'                                        <a class="img-popup" href="#APP_IMAGES#assets/images/G_ohlala_orig.jpg"><span',
'                                                class="icon-plus-symbol"></span></a>',
'                                    </div>',
'                                </div>',
'                            </div>',
'                        </div>',
'                    </div>',
'                    <div class="col-xl-4 col-lg-6 col-md-6 masonary-item">',
'                        <div class="gallery_two_single">',
'                            <div class="gallery_two_image">',
'                                <img src="#APP_IMAGES#assets/images/g_ros_min.jpg" alt="">',
'                                <div class="gallery_two_hover_box">',
'                                    <div class="gallery_two_icon">',
'                                        <a class="img-popup" href="#APP_IMAGES#assets/images/g_ros_orig.jpg"><span',
'                                                class="icon-plus-symbol"></span></a>',
'                                    </div>',
'                                </div>',
'                            </div>',
'                        </div>',
'                    </div>',
'                    <div class="col-xl-4 col-lg-6 col-md-6 masonary-item">',
'                        <div class="gallery_two_single">',
'                            <div class="gallery_two_image">',
'                                <img src="#APP_IMAGES#assets/images/g_z_min.jpg" alt="">',
'                                <div class="gallery_two_hover_box">',
'                                    <div class="gallery_two_icon">',
'                                        <a class="img-popup" href="#APP_IMAGES#assets/images/g_z_orig.jpg"><span',
'                                                class="icon-plus-symbol"></span></a>',
'                                    </div>',
'                                </div>',
'                            </div>',
'                        </div>',
'                    </div>',
'                    <div class="col-xl-4 col-lg-6 col-md-6 masonary-item">',
'                        <div class="gallery_two_single">',
'                            <div class="gallery_two_image">',
'                                <img src="#APP_IMAGES#assets/images/g_agrobasa_min.jpg" alt="">',
'                                <div class="gallery_two_hover_box">',
'                                    <div class="gallery_two_icon">',
'                                        <a class="img-popup" href="#APP_IMAGES#assets/images/g_agrobasa_orig.jpg "><span',
'                                                class="icon-plus-symbol"></span></a>',
'                                    </div>',
'                                </div>',
'                            </div>',
'                        </div>',
'                    </div>',
'                    <div class="col-xl-4 col-lg-6 col-md-6 masonary-item">',
'                        <div class="gallery_two_single">',
'                            <div class="gallery_two_image">',
'                                <img src="#APP_IMAGES#assets/images/g_sefinsa_min.jpg" alt="">',
'                                <div class="gallery_two_hover_box">',
'                                    <div class="gallery_two_icon">',
'                                        <a class="img-popup" href="#APP_IMAGES#assets/images/g_sefinsa_orig.jpg"><span',
'                                                class="icon-plus-symbol"></span></a>',
'                                    </div>',
'                                </div>',
'                            </div>',
'                        </div>',
'                    </div>',
'                    <div class="col-xl-4 col-lg-6 col-md-6 masonary-item">',
'                        <div class="gallery_two_single">',
'                            <div class="gallery_two_image">',
'                                <img src="#APP_IMAGES#assets/images/g_folap_min.jpg" alt="">',
'                                <div class="gallery_two_hover_box">',
'                                    <div class="gallery_two_icon">',
'                                        <a class="img-popup" href="#APP_IMAGES#assets/images/g_folap_orig.jpg"><span',
'                                                class="icon-plus-symbol"></span></a>',
'                                    </div>',
'                                </div>',
'                            </div>',
'                        </div>',
'                    </div>',
'                    <div class="col-xl-4 col-lg-6 col-md-6 masonary-item">',
'                        <div class="gallery_two_single">',
'                            <div class="gallery_two_image">',
'                                <img src="#APP_IMAGES#assets/images/g_cdsol_min.jpg" alt="">',
'                                <div class="gallery_two_hover_box">',
'                                    <div class="gallery_two_icon">',
'                                        <a class="img-popup" href="#APP_IMAGES#assets/images/g_cdsol_orig.jpg"><span',
'                                                class="icon-plus-symbol"></span></a>',
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
