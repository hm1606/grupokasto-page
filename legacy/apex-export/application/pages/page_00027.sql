prompt --application/pages/page_00027
begin
--   Manifest
--     PAGE: 00027
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
 p_id=>27
,p_user_interface_id=>wwv_flow_api.id(1954772723207063)
,p_name=>'Noticias-Detalladas-6'
,p_step_title=>'Noticias-Detalladas-6'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(1968417659227077)
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_last_updated_by=>'ADMINPOGK'
,p_last_upd_yyyymmddhh24miss=>'20240823122257'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2189140420826905)
,p_plug_name=>'carrousel'
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
 p_id=>wwv_flow_api.id(2189203841826906)
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
'            <img src="#APP_IMAGES#Nueva_sucursal_ohlala.jpeg" alt="">',
'            <div class="news_detail_date_box">',
'              <p>10 Jun 2021</p>',
'            </div>',
'          </div>',
'          <br>',
'          <div class="news_detail_content">',
'            <h2>Ohlala crece y abre una nueva sucursal </h2>',
unistr('            <p class="news_detail_one_text">Ohlala contin\00FAa expandi\00E9ndose, inaugurando su octava sucursal en'),
unistr('              la ciudad de Guadalajara. \00A1Ahora m\00E1s cerca de ti!</p>'),
unistr('            <p class="news_detail_two_text">La nueva sucursal llamada Valle real est\00E1 ubicada en plaza'),
unistr('              D\00B4lucca con direcci\00F3n Avenida Santa Margarita 4099, a poca distancia de plaza Real center.'),
'            </p>',
unistr('            <p class="news_detail_three_text">Esta compa\00F1\00EDa inici\00F3 sus operaciones en el a\00F1o 2010 y desde'),
unistr('              ah\00ED, no han parado de satisfacer a los clientes abriendo sucursales en gran parte la Zona'),
'              metropolitana de Guadalajara.</p>',
unistr('            <p class="news_detail_three_text">\00A1Con\00F3cela!</p>'),
'          </div>',
'          <div class="news_detail__bottom">',
'            <p class="news_detail__tags">',
'              <span>Etiquetas:</span>',
unistr('              <a href="#">Panader\00EDa,</a>'),
unistr('              <a href="#">Alimentaci\00F3n,</a>'),
'              <a href="#">Restaurantes</a>',
'            </p>',
'            <p class="news_detail__tags">',
'              <span>Fuente:</span>',
'              <a>OhLala Boulangerie Bistrot</a>',
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
 p_id=>wwv_flow_api.id(363722783793754908)
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
