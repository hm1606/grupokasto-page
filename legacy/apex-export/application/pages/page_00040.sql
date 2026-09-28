prompt --application/pages/page_00040
begin
--   Manifest
--     PAGE: 00040
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
 p_id=>40
,p_user_interface_id=>wwv_flow_api.id(1954772723207063)
,p_name=>'Noticias-Detalladas-18'
,p_alias=>'NOTICIAS-DETALLADAS-18'
,p_step_title=>'Noticias-Detalladas-18'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(1968417659227077)
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_last_updated_by=>'ADMINPOGK'
,p_last_upd_yyyymmddhh24miss=>'20250227173157'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2275914778756853861)
,p_plug_name=>'Latest news'
,p_region_template_options=>'#DEFAULT#:margin-bottom-none:t-Form--noPadding'
,p_plug_template=>wwv_flow_api.id(364504265777560493)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(3225763761695407408)
,p_plug_name=>'carrousel'
,p_region_template_options=>'#DEFAULT#:margin-bottom-none:t-Form--noPadding'
,p_plug_template=>wwv_flow_api.id(1990753307084041)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="page-header" style="background-image: url(#APP_IMAGES#encabezado_1.jpg);">',
'            <div style="text-align: center; position: relative;">',
'                <h2>Noticias Detalladas</h2>',
'                <ul class="thm-breadcrumb list-unstyled button-right">',
'                    <li><a href="https://www.grupokasto.com/ords/PDB1/f?p=102:1:&SESSION.">Inicio</a></li>',
'                    <li><span>Noticias Detalladas</span></li>',
'                </ul>',
'            </div>',
'        </section>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(3225763846356407409)
,p_plug_name=>'News_detail'
,p_region_template_options=>'#DEFAULT#:margin-bottom-none:t-Form--noPadding'
,p_plug_template=>wwv_flow_api.id(1990753307084041)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="news_detail">',
'    <div class="container">',
'        <div class="row">',
'            <div class="col-xl-8 col-lg-7">',
'                <div class="news_detail_left">',
'                    <div class="news_detail_image_box">',
'                        <img src="#APP_IMAGES#news_18_img_header.png" alt="">',
'                        <div class="news_detail_date_box">',
'                            <p>24 Ene 2025</p>',
'                        </div>',
'                    </div>',
'                    <br>',
'                    <div class="news_detail_content">',
'                        <h2>GKM Planta Central Refuerza su Compromiso con la Responsabilidad Social Corporativa</h2>',
'                        <p class="news_detail_one_text">',
unistr('                            En el mes de enero, GKM Planta Central llev\00F3 a cabo una capacitaci\00F3n fundamental para su equipo de                                   brigadistas 2025, con el objetivo de fortalecer la preparaci\00F3n ante emergencias y afianza')
||unistr('r su compromiso                             con la seguridad y el bienestar de sus colaboradores, as\00ED como con la comunidad en general.'),
'                        </p>',
'                        <p class="news_detail_one_text">',
unistr('                            La capacitaci\00F3n, realizada en las instalaciones de Protecci\00F3n Civil, incluy\00F3 formaci\00F3n en Primeros                                   Auxilios, Evacuaci\00F3n, Combate contra Incendios, B\00FAsqueda y Rescate, y Comunicaci\00F3n de Eme')
||unistr('rgencias. Este                             programa no solo busc\00F3 equipar al equipo con habilidades pr\00E1cticas, sino tambi\00E9n transmitirles la                                   importancia de actuar con responsabilidad y solidaridad en situaciones de c')
||unistr('risis, fomentando una cultura                             de prevenci\00F3n y cuidado tanto dentro de la planta como en sus alrededores.'),
'                        </p>',
'                        <p class="news_detail_one_text">',
unistr('                            En esta edici\00F3n, se incluy\00F3 un componente adicional de responsabilidad social, destacando c\00F3mo la                                   preparaci\00F3n ante emergencias puede impactar positivamente en la comunidad local. El progra')
||unistr('ma culmin\00F3 con                             un simulacro de incendio, donde se puso en pr\00E1ctica lo aprendido, evaluando la capacidad de respuesta y                             coordinaci\00F3n del equipo. '),
'                        </p>',
'                        <p class="news_detail_one_text">',
unistr('                            Este tipo de iniciativas no solo garantizan la seguridad de los colaboradores, sino que tambi\00E9n                                     refuerzan el compromiso de Grupo Kasto con la protecci\00F3n y el bienestar de la comunidad, d')
||unistr('estacando la                               importancia de ser una empresa que no solo se preocupa por sus operaciones internas, sino tambi\00E9n por el                             entorno que la rodea.'),
'                        </p>',
'                       <div id="news_11_image_flexbox" style="display: flex; flex-wrap: wrap; max-width: 100%; justify-content:                            center;">',
'                          <img src="#APP_IMAGES#news_18_img_1.png"',
'                                style="height: 400px; width: auto; max-width: 48%; border-radius: 3px; margin: 4px; object-fit:                                     cover;" alt="">',
'                          <img src="#APP_IMAGES#news_18_img_2.png"',
'                                style="height: 400px; width: auto; max-width: 48%; border-radius: 3px; margin: 4px; object-fit:                                     cover;" alt="">',
'                      </div>',
'',
'                      <div id="news_11_image_flexbox" style="display: flex; flex-wrap: wrap; max-width: 100%; justify-content:                             center;">',
'                          <img src="#APP_IMAGES#news_18_img_3.png"',
'                                style="height: 400px; width: auto; max-width: 48%; border-radius: 3px; margin: 4px; object-fit:                                     cover;" alt="">',
'                          <img src="#APP_IMAGES#news_18_img_4.png"',
'                                style="height: 400px; width: auto; max-width: 48%; border-radius: 3px; margin: 4px; object-fit:                                     cover;" alt="">',
'                      </div>',
'                    </div>',
'                    <div class="news_detail__bottom">',
'                        <p class="news_detail__tags">',
'                            <span>Etiquetas:</span>',
'                            <a href="#">Agricultura,</a>',
unistr('                            <a href="#">Alimentaci\00F3n,</a>'),
'                            <a href="#">Responsabilidad Social Corporativa,</a>',
'                            <a href="#">Entorno Saludable,</a>',
'                            <a href="#">ENLASSE</a>',
'                        </p>',
'                        <p class="news_detail__tags">',
'                            <span>Fuente:</span>',
unistr('                            <a>Comunicaci\00F3n Grupo Kasto</a>'),
'                        </p>',
'                    </div>',
'                    <div class="comment-one">',
'                        <h3 class="comment-one__title"></h3>',
'                        <div class="comment-one__single">',
'                            <div class="comment-one__image">',
'                            </div>',
'                            <div cass="comment-one__content">',
'                            </div>',
'                        </div>',
'                    </div>',
'                </div>',
'            </div>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.component_end;
end;
/
