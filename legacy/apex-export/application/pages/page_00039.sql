prompt --application/pages/page_00039
begin
--   Manifest
--     PAGE: 00039
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
 p_id=>39
,p_user_interface_id=>wwv_flow_api.id(1954772723207063)
,p_name=>'Noticias-Detalladas-17'
,p_alias=>'NOTICIAS-DETALLADAS-17'
,p_step_title=>'Noticias-Detalladas-17'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(1968417659227077)
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_last_updated_by=>'ADMINPOGK'
,p_last_upd_yyyymmddhh24miss=>'20241202121456'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1875382044302188389)
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
 p_id=>wwv_flow_api.id(2825231027240741936)
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
 p_id=>wwv_flow_api.id(2825231111901741937)
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
'                        <img src="#APP_IMAGES#news_17_img_header.jpg" alt="">',
'                        <div class="news_detail_date_box">',
'                            <p>02 Dic 2024</p>',
'                        </div>',
'                    </div>',
'                    <br>',
'                    <div class="news_detail_content">',
'                        <h2>Molino Planta Guadalajara se certifica como Entorno Laboral Saludable y Seguro</h2>',
'                        <p class="news_detail_one_text">',
unistr('                            As\00ED se llevo a cabo el cierre de nuestro programa entorno saludable; autoridades sanitarias'),
unistr('                            de la Secretar\00EDa de Salud Jalisco, develaron la placa de certificaci\00F3n mediante la cual se'),
'                            reconoce a <strong>Grupo Kasto Molinos: Planta Guadalajara como Entorno Laboral Saludable y',
'                                Seguro',
'                                (ENLASSE).</strong> El programa tiene como objetivo apoyar a las empresas y centros de',
'                            trabajo para',
unistr('                            promover y mantener la salud f\00EDsica y mental de sus colaboradores, tambi\00E9n se trata de'),
unistr('                            reducir los riesgos para la salud y el bienestar de los colaboradores a trav\00E9s de pr\00E1cticas'),
unistr('                            laborales seguras, entornos de trabajo saludables y una organizaci\00F3n del trabajo'),
'                            responsable.',
'                        </p>',
'                        <p class="news_detail_one_text">',
unistr('                            Adicional, se premi\00F3 a los ganadores del concurso <i>\201CMenos Peso M\00E1s Salud\201D</i>, dicho reto tuvo el'),
'                            objetivo de invitar a todos los colaboradores, en especial a aquellos que padecen de',
unistr('                            sobrepeso u obesidad, diabetes o hipertensi\00F3n. El reto dur\00F3 3 meses en los cuales la meta'),
unistr('                            fue llegar a tener una buena condici\00F3n f\00EDsica y un peso adequado para tener una vida m\00E1s'),
'                            saludable.',
'                        </p>',
'                        <div id="news_11_image_flexbox" style="display: flex; justify-content: center;">',
'                            <img src="#APP_IMAGES#news_17_img_1.jpg"',
'                                style="height: 240px; border-radius: 3px; margin: 4px;" alt="">',
'                            <img src="#APP_IMAGES#news_17_img_2.jpg"',
'                                style="height: 240px; border-radius: 3px; margin: 4px;" alt="">',
'                        </div>',
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
