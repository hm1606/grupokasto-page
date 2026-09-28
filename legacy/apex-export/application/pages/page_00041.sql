prompt --application/pages/page_00041
begin
--   Manifest
--     PAGE: 00041
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
 p_id=>41
,p_user_interface_id=>wwv_flow_api.id(1954772723207063)
,p_name=>'Noticias-Detalladas-19'
,p_alias=>'NOTICIAS-DETALLADAS-19'
,p_step_title=>'Noticias-Detalladas-19'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(1968417659227077)
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_last_updated_by=>'ADMINPOGK'
,p_last_upd_yyyymmddhh24miss=>'20250227174634'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2676484236025810532)
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
 p_id=>wwv_flow_api.id(3626333218964364079)
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
 p_id=>wwv_flow_api.id(3626333303625364080)
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
'                        <img src="#APP_IMAGES#news_19_img_header.png" alt="">',
'                        <div class="news_detail_date_box">',
'                            <p>24 Feb 2025</p>',
'                        </div>',
'                    </div>',
'                    <br>',
'                    <div class="news_detail_content">',
unistr('                        <h2>Expo Agr\00EDcola GK: Promoviendo la Agricultura Sustentable</h2>'),
'                        <p class="news_detail_one_text">',
unistr('                            La Expo Agr\00EDcola GK es un evento anual que se lleva a cabo en las instalaciones de Agroindustrias La                                 Barca, en el municipio de La Barca, Jalisco, M\00E9xico, desde el 2023, donde se re\00FAnen Empre')
||unistr('sas l\00EDderes en                             el Sector Agr\00EDcola con agricultores de la Regi\00F3n.'),
'                        </p>',
'                        <p class="news_detail_one_text">',
unistr('                            La Expo Agr\00EDcola GK naci\00F3 como un espacio donde prevalece la promoci\00F3n de productos innovadores, los                                 cuales pueden ser adquiridos en las instalaciones de Agroindustrias La Barca y de Kasavi ')
||unistr('Comercial,                                 ambas empresas de la Divisi\00F3n Granos de Grupo Kasto.'),
'                        </p>',
'                        <p class="news_detail_one_text">',
unistr('                            A trav\00E9s de este evento, Grupo Kasto busca dar a conocer opciones para los productores de la Regi\00F3n,                                 reafirmando el compromiso que tiene con el Futuro de la Agricultura.'),
'                        </p>',
'                        <p class="news_detail_one_text">',
unistr('                            Contamos con la asistencia de agricultores que nos visitaron de distintos municipios de los Estados de                               Jalisco, Michoac\00E1n y Guanajuato, qui\00E9nes tuvieron la oportunidad de conocer la oferta de ')
||unistr('productos                                   innovadores para la producci\00F3n agr\00EDcola, principalmente de ma\00EDz y trigo, de m\00E1s de 25 Empresas que nos                               apoyaron este a\00F1o.'),
'                        </p>',
'                        <p class="news_detail_one_text">',
unistr('                            Qui\00E9nes participaron, ya sea trav\00E9s de las diferentes din\00E1micas en los stand, de charlas t\00E9cnicas con                               los Expositores que promueven sus productos y servicios, degustando alimentos durante la c')
||unistr('omida o                                   ganando unos de los muchos premios en la rifa que se realiza hacia el cierre del evento, lograron hacer                             de nuestra 3ra. Edici\00F3n un gran evento.'),
'                        </p>',
'                        <p class="news_detail_one_text">',
unistr('                            Agradecemos a los expositores, asistentes y colaboradores que hicieron posible el \00E9xito de esta edici\00F3n.                             Seguiremos trabajando, para seguir siendo un foro que promueva la Agricultura Sustentable')
||unistr(', con los                                   productos y servicios que hacen de Grupo Kasto la mejor opci\00F3n para los agricultores. Nos vemos en la                               pr\00F3xima edici\00F3n.'),
'                        </p>',
'                        <div id="news_11_image_gridbox" style="',
'    display: grid;',
'    grid-template-columns: repeat(2, 1fr);',
'    gap: 10px;',
'    max-width: 100%;',
'    justify-content: center;',
'    align-items: center;',
'">',
'    <img src="#APP_IMAGES#news_19_img_4.png" ',
'        style="width: 100%; height: auto; border-radius: 3px;" alt="">',
'    <img src="#APP_IMAGES#news_19_img_3.png" ',
'        style="width: 100%; height: auto; border-radius: 3px;" alt="">',
'    <img src="#APP_IMAGES#news_19_img_2.png" ',
'        style="width: 100%; height: auto; border-radius: 3px;" alt="">',
'    <img src="#APP_IMAGES#news_19_img_1.png" ',
'        style="width: 100%; height: auto; border-radius: 3px;" alt="">',
'    <img src="#APP_IMAGES#news_19_img_5.png" ',
'        style="width: 100%; height: auto; border-radius: 3px; grid-column: 1 / 2;" alt="">',
'</div>',
'       ',
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
