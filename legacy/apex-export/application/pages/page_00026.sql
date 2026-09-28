prompt --application/pages/page_00026
begin
--   Manifest
--     PAGE: 00026
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
 p_id=>26
,p_user_interface_id=>wwv_flow_api.id(1954772723207063)
,p_name=>'Noticias-Detalladas-5'
,p_step_title=>'Noticias-Detalladas-5'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(1968417659227077)
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_last_updated_by=>'ADMINPOGK'
,p_last_upd_yyyymmddhh24miss=>'20240823122353'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2188944397826903)
,p_plug_name=>'Carrusel'
,p_region_template_options=>'#DEFAULT#:margin-bottom-none:t-Form--noPadding'
,p_plug_template=>wwv_flow_api.id(1990753307084041)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'        <section class="page-header" style="background-image: url(#APP_IMAGES#encabezado_1.jpg);">',
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
 p_id=>wwv_flow_api.id(2189067186826904)
,p_plug_name=>'News_detail'
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
'            <img src="#APP_IMAGES#Portalgkm_new.jpg" alt="">',
'            <div class="news_detail_date_box">',
'              <p>05 Abr 2021</p>',
'            </div>',
'          </div>',
'          <br>',
'          <div class="news_detail_content">',
'            <h2>Nuevo sitio web de Grupo Kasto Molinos </h2>',
'            <p class="news_detail_one_text">Hoy nos complace anunciar el lanzamiento del nuevo sitio web de',
unistr('              Grupo Kasto Molinos en su direcci\00F3n habitual <a href="https://molinosgrupokasto.com/ords/pdb1/f?p=101:4"'),
unistr('                target="_blank">www.molinosgrupokasto.com</a>, con una imagen renovada, m\00E1s din\00E1mica y'),
'              visual </p>',
unistr('            <p class="news_detail_two_text">El prop\00F3sito es que nuestra p\00E1gina sea m\00E1s amigable, de imagen'),
unistr('              limpia y funcional; Agilizando su navegaci\00F3n con contenido r\00E1pido e intuitivo.</p>'),
unistr('            <p class="news_detail_three_text">Esperamos que nuestra nueva p\00E1gina sea de tu agrado y que te'),
unistr('              permita conocer m\00E1s sobre Grupo Kasto Molinos.</p>'),
unistr('            <p class="news_detail_three_text">\00A1Bienvenido!</p>'),
'          </div>',
'          <div class="news_detail__bottom">',
'            <p class="news_detail__tags">',
'              <span>Etiquetas:</span>',
'              <a href="#">Agricultura,</a>',
unistr('              <a href="#">Alimentaci\00F3n,</a>'),
'              <a href="#">Economia</a>',
'            </p>',
'            <p class="news_detail__tags">',
'              <span>Fuente:</span>',
'              <a>Grupo Kasto Molinos</a>',
'            </p>',
'          </div>',
'          <div class="comment-one">',
'            <h3 class="comment-one__title"></h3>',
'            <div class="comment-one__single">',
'              <div class="comment-one__image">',
'              </div>',
'              <div cass="comment-one__content">',
'              </div>',
'            </div>',
'          </div>',
'        </div>',
'      </div>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(363722881532754909)
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
