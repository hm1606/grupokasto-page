prompt --application/pages/page_00012
begin
--   Manifest
--     PAGE: 00012
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
 p_id=>12
,p_user_interface_id=>wwv_flow_api.id(1954772723207063)
,p_name=>'Noticias-Detalladas'
,p_step_title=>'Noticias-Detalladas'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(1968417659227077)
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_last_updated_by=>'ADMINPOGK'
,p_last_upd_yyyymmddhh24miss=>'20240823122640'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1974429716258644)
,p_plug_name=>'Carrusel'
,p_region_template_options=>'#DEFAULT#:margin-bottom-none:t-Form--noPadding'
,p_plug_template=>wwv_flow_api.id(1990753307084041)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
' <section class="page-header" style="background-image: url(#APP_IMAGES#encabezado_1.jpg);">',
'            <div style="text-align: center; position: relative;">',
'                <h2>Noticias Detalladas</h2>',
'                <ul class="thm-breadcrumb list-unstyled button-right">',
'                    <li><a href="https://www.grupokasto.com/ords/PDB1/f?p=102:1:&SESSION.">Inicio</a></li>',
'                    <li><span>Noticias Detalladas</span></li>',
'                </ul>',
'            </div>',
'        </section>',
''))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1974530771258645)
,p_plug_name=>'news_detail'
,p_region_template_options=>'#DEFAULT#:margin-bottom-none:t-Form--noPadding'
,p_plug_template=>wwv_flow_api.id(1990753307084041)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="news_detail">',
'  <div class="container">',
'    <div class="row">',
'      <div class="col-xl-8 col-lg-7">',
'        <div class="news_detail_left">',
'          <div class="news_detail_image_box">',
'            <img src="#APP_IMAGES#imagen-25.jpg" alt="">',
'            <div class="news_detail_date_box">',
'              <p>9 Jul 2020</p>',
'            </div>',
'          </div>',
'          <br>',
'          <div class="news_detail_content">',
'            <h2>Ciudad del Sol estrena contenedores</h2>',
unistr('            <p class="news_detail_one_text">La Piedad, Michoac\00E1n. 9 de julio de 2020.-'),
unistr('              El Alcalde dela Piedad Alex Espinoza y el director de Servicios P\00FAblicos,'),
unistr('              Ram\00F3n Romero Ram\00EDrez, pusieron en marcha la instalaci\00F3n de un primer'),
'              lote de 21 contenedores de basura nuevos en la zona vieja de Ciudad del Sol.</p>',
unistr('            <p class="news_detail_two_text">que es una de las m\00E1s habitadas del municipio,'),
'              existe un promedio de 90 contenedores de los cuales se renovaron 21 en este primer lote.</p>',
unistr('            <p class="news_detail_three_text">Los dep\00F3sitos de basura colocados son nuevos pues se'),
unistr('              cont\00F3 con el apoyo de las empresas como Grupo Kasto y Agr\00EDcola El Rosal.</p>'),
'          </div>',
'          <div class="news_detail__bottom">',
'            <p class="news_detail__tags">',
'              <span>Etiquetas:</span>',
'              <a href="#">Agricultura,</a>',
unistr('              <a href="#">Alimentaci\00F3n,</a>'),
unistr('              <a href="#">Econom\00EDa</a>'),
'            </p>',
'            <p class="news_detail__tags">',
'              <span>Fuente:</span>',
'              <a href="#">https://www.brunoticias.com</a>',
'            </p>',
'',
'          </div>',
'          <div class="comment-one">',
'            <h3 class="comment-one__title"></h3>',
'            <div class="comment-one__single">',
'              <div class="comment-one__image"></div>',
'              <div cass="comment-one__content"></div>',
'            </div>',
'          </div>',
'        </div>',
'      </div>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(363723150005754912)
,p_plug_name=>'Latest News'
,p_region_template_options=>'#DEFAULT#:margin-bottom-none:t-Form--noPadding'
,p_plug_template=>wwv_flow_api.id(364504265777560493)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.component_end;
end;
/
