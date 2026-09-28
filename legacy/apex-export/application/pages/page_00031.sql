prompt --application/pages/page_00031
begin
--   Manifest
--     PAGE: 00031
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
 p_id=>31
,p_user_interface_id=>wwv_flow_api.id(1954772723207063)
,p_name=>'Noticias-Detalladas-8'
,p_alias=>'NOTICIAS-DETALLADAS-8'
,p_step_title=>'Noticias-Detalladas-8'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(1968417659227077)
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_last_updated_by=>'ADMINPOGK'
,p_last_upd_yyyymmddhh24miss=>'20230727155029'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2544359411739201)
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
 p_id=>wwv_flow_api.id(2544484548739202)
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
'                        <img src="https://apex.oracle.com/pls/apex/gkasto/r/74688/files/static/v27/ohlala_nvo_cpto.jpg"',
'                            alt="">',
'                        <div class="news_detail_date_box">',
'                            <p>09 Dic 2021</p>',
'                        </div>',
'                    </div>',
'                    <br>',
'                    <div class="news_detail_content">',
unistr('                        <h2>\201COhlala! Boulangerie Caf\00E9\201D, el nuevo concepto de Ohlala! abre sus puertas.</h2>'),
'                        <p class="news_detail_one_text">',
unistr('                            Gracias a la aceptaci\00F3n del p\00FAblico tapat\00EDo, Ohlala! Boulangerie Bistrot, inaugur\00F3 con \00E9xito'),
unistr('                            su nuevo concepto de Boulangerie Caf\00E9, ubicado sobre la Avenida Bosques de San Isidro, al'),
unistr('                            interior de Plaza Ubika, en Zapopan. Siendo as\00ED la novena sucursal de Ohlala! en la Zona'),
'                            Metropolitana de Guadalajara.',
'                        </p>',
'                        <p class="news_detail_two_text">',
unistr('                            Para deleitar a sus comensales, el nuevo, fresco y agradable concepto \201COhlala! Boulangerie'),
unistr('                            Caf\00E9\201D cuenta con venta de panader\00EDa, pasteler\00EDa, productos empacados, cafeter\00EDa y un men\00FA'),
unistr('                            reducido de servicio r\00E1pido; donde podr\00E1n encontrar baguettes, molletes, pizzas, entre otras'),
'                            cosas.',
'                        </p>',
'                        <p class="news_detail_three_text">',
'                            Los invitamos a conocer esta sucursal y disfrutar de este agradable espacio en familia,',
'                            solos, en pareja o con amigos.',
'                        </p>',
unistr('                        <p class="news_detail_three_text">M\00E1s informaci\00F3n en sus redes sociales: <a'),
'                                href="https://www.facebook.com/OhlalaPanaderiaBistrot"',
'                                target="_BLANK">www.facebook.com/OhlalaPanaderiaBistrot</a></p>',
'',
'                        <p class="news_detail_three_text">Ohlala! Boulangerie Bistrot (<a',
'                                href="https://www.instagram.com/ohlalapanaderiagdl/"',
unistr('                                target="_BLANK">@ohlalapanaderiagdl</a>) \2022 Fotos y videos de Instagram</p>'),
'',
'                        <p class="news_detail_three_text" style=" text-align: center;">',
'                            Plaza Ubika, Av. Bosques de San Isidro No. 586, Local 113',
'                            <br>',
'                            San Isidro, Zapopan, Jalisco',
'                            <br>',
unistr('                            Horario: L-V 8:00 am a 8:00 pm, s\00E1bado 8:00 am a 6:00 pm y domingo 8:30 am a 6:00 pm'),
'                        </p>',
'',
'                    </div>',
'                    <div class="news_detail__bottom">',
'                        <p class="news_detail__tags">',
'                            <span>Etiquetas:</span>',
unistr('                            <a href="#">Panader\00EDa,</a>'),
unistr('                            <a href="#">Alimentaci\00F3n,</a>'),
'                            <a href="#">Restaurantes</a>',
'                        </p>',
'                        <p class="news_detail__tags">',
'                            <span>Fuente:</span>',
'                            <a>OhLala Boulangerie Bistrot</a>',
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
'            </div>',
'',
'            <div class="col-xl-4 col-lg-5">',
'                <div class="sidebar">',
'                    <div class="sidebar__single sidebar__post">',
unistr('                        <h3 class="sidebar__title">\00DAltimas Publicaciones</h3>'),
'                        <ul class="sidebar__post-list list-unstyled">',
'                            <li>',
'                                <div class="sidebar__post-image">',
'                                    <img src="#APP_IMAGES#News_10_img_header.jpeg" alt=""',
'                                        style="width: 80px; height: 60px;">',
'                                </div>',
'                                <div class="sidebar__post-content">',
'                                    <h3>',
'                                        <a href="#" class="sidebar__post-content_meta"><i',
unistr('                                                class="far fa-user-circle"></i> Administraci\00F3n</a>'),
'                                        <a href="https://www.grupokasto.com/ords/PDB1/f?p=102:32:&SESSION.">La semana',
unistr('                                            del 24 al 29 de abril se celebr\00F3 la Semana de la Seguridad en el grupo.</a>'),
'                                    </h3>',
'                                </div>',
'                            </li>',
'',
'                            <li>',
'                                <div class="sidebar__post-image">',
'                                    <img src="#APP_IMAGES#Noticia-9-e.jpg" alt="" style="width: 80px; height: 60px;">',
'                                </div>',
'                                <div class="sidebar__post-content">',
'                                    <h3>',
'                                        <a href="#" class="sidebar__post-content_meta"><i',
unistr('                                                class="far fa-user-circle"></i> Administraci\00F3n</a>'),
unistr('                                        <a href="https://www.grupokasto.com/ords/PDB1/f?p=102:29:&SESSION.">La divisi\00F3n'),
unistr('                                            Molinos particip\00F3 en un programa de responsabilidad social. </a>'),
'                                    </h3>',
'                                </div>',
'                            </li>',
'',
'                            <li>',
'',
'                                <div class="sidebar__post-image">',
'                                    <img src="https://apex.oracle.com/pls/apex/gkasto/r/74688/files/static/v27/ohlala_nvo_cpto_e.jpg"',
'                                        alt="" style="width: 80px; height: 60px;">',
'                                </div>',
'                                <div class="sidebar__post-content">',
'                                    <h3>',
'                                        <a href="#" class="sidebar__post-content_meta"><i',
unistr('                                                class="far fa-user-circle"></i> Administraci\00F3n</a>'),
'                                        <a href="https://www.grupokasto.com/ords/PDB1/f?p=102:31:&SESSION.">',
unistr('                                            \201COhlala! Boulangerie Caf\00E9\201D, el nuevo concepto de Ohlala! abre sus'),
'                                            puertas.</a>',
'                                    </h3>',
'                                </div>',
'                            </li>',
'',
'                        </ul>',
'                    </div>',
'                    <div class="sidebar__single sidebar__tags">',
'                        <h3 class="sidebar__title">Etiquetas Populares</h3>',
'                        <div class="sidebar__tags-list">',
'                            <a href="#">Agricultura,</a>',
unistr('                            <a href="#">Alimentaci\00F3n,</a>'),
unistr('                            <a href="#">Econom\00EDa</a>'),
'                        </div>',
'                    </div>',
'                </div>',
'            </div>',
'',
'',
'        </div>',
'    </div>',
'</section>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.component_end;
end;
/
