prompt --application/pages/page_00037
begin
--   Manifest
--     PAGE: 00037
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
 p_id=>37
,p_user_interface_id=>wwv_flow_api.id(1954772723207063)
,p_name=>'Noticias-Detalladas-15'
,p_alias=>'NOTICIAS-DETALLADAS-15'
,p_step_title=>'Noticias-Detalladas-15'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(1968417659227077)
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_last_updated_by=>'ADMINPOGK'
,p_last_upd_yyyymmddhh24miss=>'20241106151254'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1112057655743637446)
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
 p_id=>wwv_flow_api.id(2061906638682190993)
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
 p_id=>wwv_flow_api.id(2061906723343190994)
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
'                        <img src="#APP_IMAGES#news_15_img_header.jpeg" alt="">',
'                        <div class="news_detail_date_box">',
'                            <p>06 Nov 2024</p>',
'                        </div>',
'                    </div>',
'                    <br>',
'                    <div class="news_detail_content">',
unistr('                        <h2>Grupo Kasto Promueve la Concientizaci\00F3n contra el C\00E1ncer de mama</h2>'),
'                        <p class="news_detail_one_text">',
'                            El departamento de Recursos Humanos y Seguridad Laboral de Grupo Kasto, en sus diferentes',
unistr('                            divisiones, con motivo del D\00EDa Mundial contra el C\00E1ncer de Mama busc\00F3 a trav\00E9s de diferentes'),
unistr('                            actividades, incentivar la prevenci\00F3n y brindar informaci\00F3n a los colaboradores sobre dicha'),
'                            enfermedad.',
'                        </p>',
'                        <p class="news_detail_one_text">',
unistr('                            En nuestras diferentes divisiones se realizaron como pl\00E1ticas de prevenci\00F3n,'),
unistr('                            pl\00E1ticas testimoniales y de concientizaci\00F3n.'),
'                        </p>',
'                        <p class="news_detail_three_text">',
unistr('                            As\00ED mismo en Molino La Concepci\00F3n, se cont\00F3 con una unidad m\00F3vil de mastograf\00EDas para'),
unistr('                            brindar exploraci\00F3n gratuita a las colaboradoras y personas de la zona. En Agroindustrias La'),
unistr('                            Barca, de nuestra Divisi\00F3n Granos, se realiz\00F3 una carrera interna, con el objetivo de'),
unistr('                            concientizar sobre la lucha contra el c\00E1ncer de mama.'),
'                        </p>',
'                        <p class="news_detail_three_text">',
unistr('                            De esta forma Grupo Kasto se suma al mes rosa para <strong>conmemora el D\00EDa Internacional de'),
unistr('                            lucha contra el C\00E1ncer de mama, </strong> brindado herramientas de apoyo a los'),
'                            colaboradores para detectar a tiempo esta enfermedad.',
'                        </p>',
'                        <div id="news_11_image_flexbox" style="display: flex;">',
'                            <img src="#APP_IMAGES#news_15_img_1.png"',
'                                style="height: 400px; border-radius: 3px; margin: 4px;" alt="">',
'                            <!-- <div style="">',
unistr('                                Sefinsa Divisi\00F3n Granos'),
'                            </div> -->',
'                            <img src="#APP_IMAGES#news_15_img_2.jpeg"',
'                                style="height: 400px; border-radius: 3px; margin: 4px; z-index: 1;" alt="">',
'                        </div>',
'                        <div id="news_11_image_flexbox" style="display: flex;">',
'                            <img src="#APP_IMAGES#news_15_img_3.jpeg"',
'                                style="height: 400px; border-radius: 3px; margin: 4px;" alt="">',
'                            <div>',
'                            </div>',
'                            <img src="#APP_IMAGES#news_15_img_4.jpeg"',
'                                style="height: 400px; border-radius: 3px; margin: 4px; z-index: 1;" alt="">',
'                        </div>',
'                    </div>',
'                    <div class="news_detail__bottom">',
'                        <p class="news_detail__tags">',
'                            <span>Etiquetas:</span>',
'                            <a href="#">Agricultura,</a>',
unistr('                            <a href="#">Alimentaci\00F3n,</a>'),
'                            <a href="#">Responsabilidad Social Corporativa</a>',
unistr('                            <a href="#">C\00E1ncer de mama</a>'),
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
