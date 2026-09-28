prompt --application/pages/page_00038
begin
--   Manifest
--     PAGE: 00038
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
 p_id=>38
,p_user_interface_id=>wwv_flow_api.id(1954772723207063)
,p_name=>'Noticias-Detalladas-16'
,p_alias=>'NOTICIAS-DETALLADAS-16'
,p_step_title=>'Noticias-Detalladas-16'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(1968417659227077)
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_last_updated_by=>'ADMINPOGK'
,p_last_upd_yyyymmddhh24miss=>'20241115150259'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1492249771637467132)
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
 p_id=>wwv_flow_api.id(2442098754576020679)
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
 p_id=>wwv_flow_api.id(2442098839237020680)
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
'                        <img src="#APP_IMAGES#news_16_img_header.webp" alt="">',
'                        <div class="news_detail_date_box">',
'                            <p>15 Nov 2024</p>',
'                        </div>',
'                    </div>',
'                    <br>',
'                    <div class="news_detail_content">',
unistr('                        <h2>Agroindustrias La Barca Fomenta la Tradici\00F3n del D\00EDa de Muertos con Actividad Familiar</h2>'),
'                        <p class="news_detail_one_text">',
unistr('                            En conmemoraci\00F3n por el D\00EDa de Muertos, el equipo de Agroindustrias La Barca, por segundo'),
unistr('                            a\00F1o consecutivo, realiz\00F3 una actividad muy especial para sus colaboradores y sus familias.'),
unistr('                            Se Invit\00F3 a los hijos de los colaboradores a disfrutar una tarde de juegos, Pan de Muerto y'),
unistr('                            de la pel\00EDcula de \201CLibro de la Vida\201D en nuestras instalaciones.'),
'                        </p>',
'                        <p class="news_detail_one_text">',
unistr('                            La actividad estuvo llena de emoci\00F3n, risas y mucha alegr\00EDa, ya que no s\00F3lo se brind\00F3 un'),
unistr('                            espacio para que los peque\00F1os se divirtieran, sino que tambi\00E9n permiti\00F3 que se fortalecieran'),
unistr('                            los lazos con sus familias, al igual que celebrar juntos esta tradici\00F3n tan importante para'),
unistr('                            nuestra cultura. Esta iniciativa refleja el esp\00EDritu de colaboraci\00F3n y comunidad que'),
'                            promovemos dentro de Grupo Kasto.',
'                        </p>',
'                        <div id="news_11_image_flexbox" style="display: flex; justify-content: center;">',
'                            <img src="#APP_IMAGES#news_16_img_1.webp"',
'                                style="height: 400px; border-radius: 3px; margin: 4px;" alt="">',
'                        </div>',
'                    </div>',
'                    <div class="news_detail__bottom">',
'                        <p class="news_detail__tags">',
'                            <span>Etiquetas:</span>',
'                            <a href="#">Agricultura,</a>',
unistr('                            <a href="#">Alimentaci\00F3n,</a>'),
'                            <a href="#">Responsabilidad Social Corporativa</a>',
'                            <a href="#">Sociales</a>',
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
