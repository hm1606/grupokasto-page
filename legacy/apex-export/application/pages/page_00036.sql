prompt --application/pages/page_00036
begin
--   Manifest
--     PAGE: 00036
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
 p_id=>36
,p_user_interface_id=>wwv_flow_api.id(1954772723207063)
,p_name=>'Noticias-Detalladas-14'
,p_alias=>'NOTICIAS-DETALLADAS-14'
,p_step_title=>'Noticias-Detalladas-14'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(1968417659227077)
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_last_updated_by=>'ADMINPOGK'
,p_last_upd_yyyymmddhh24miss=>'20240919110435'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(733360008788726328)
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
 p_id=>wwv_flow_api.id(1683208991727279875)
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
 p_id=>wwv_flow_api.id(1683209076388279876)
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
'                        <img src="#APP_IMAGES#news_14_img_header.jpeg" alt="">',
'                        <div class="news_detail_date_box">',
'                            <p>18 Sep 2024</p>',
'                        </div>',
'                    </div>',
'                    <br>',
'                    <div class="news_detail_content">',
'                        <h2>Materializando Nuestro Modelo de Sostenibilidad</h2>',
'                        <p class="news_detail_one_text">',
unistr('                            Para este \00FAltimo trimestre del a\00F1o, nos sentimos muy entusiasmados porque dentro del'),
unistr('                            desarrollo de nuestro programa <i>\201CGrupo Kasto rumbo a la Sostenibilidad\201D</i> estaremos'),
unistr('                            trabajando en la materialidad para dise\00F1ar nuestro modelo de sostenibilidad.'),
'                        </p>',
'                        <p class="news_detail_one_text">',
unistr('                            Vendr\00E1n grandes retos a trav\00E9s de din\00E1micas como la formaci\00F3n de personas facilitadoras, a'),
unistr('                            trav\00E9s de quienes iremos organizando y realizando las acciones que de nuestra estrategia'),
'                            sostenible se desprendan.',
'                        </p>',
'                        <p class="news_detail_three_text">',
unistr('                            Hemos contado afortunadamente, con un gran entusiasmo de la gente y su participaci\00F3n para'),
'                            sumarse a esta nueva etapa de Grupo Kasto.',
'                        </p>',
'                        <p class="news_detail_three_text">',
unistr('                            Continuaremos trabajando de manera constante para llegar al final del a\00F1o con nuestro modelo'),
unistr('                            dise\00F1ado y listo para su implementaci\00F3n.'),
'                        </p>',
'                        <div id="news_11_image_flexbox" style="display: flex;">',
'                            <img src="#APP_IMAGES#news_14_img_1.jpg"',
'                                style="width: 400px; height: 266px; border-radius: 3px; margin: 4px;" alt="">',
'                            <img src="#APP_IMAGES#news_14_img_2.jpg"',
'                                style="width: 400px; height: 266px; border-radius: 3px; margin: 4px; z-index: 1;"',
'                                alt="">',
'                            <!-- <img src="#APP_IMAGES#news_14_img_1.jpg" alt=""> -->',
'                            <!-- <img src="#APP_IMAGES#news_14_img_2.JPG"',
'                                style="width: 400px; border-radius: 3px; margin: 4px;" alt=""> -->',
'                        </div>',
'                    </div>',
'                    <div class="news_detail__bottom">',
'                        <p class="news_detail__tags">',
'                            <span>Etiquetas:</span>',
'                            <a href="#">Agricultura,</a>',
unistr('                            <a href="#">Alimentaci\00F3n,</a>'),
'                            <a href="#">Sostentabilidad</a>',
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
