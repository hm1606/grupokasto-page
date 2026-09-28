prompt --application/pages/page_00023
begin
--   Manifest
--     PAGE: 00023
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
 p_id=>23
,p_user_interface_id=>wwv_flow_api.id(1954772723207063)
,p_name=>'Noticias-Detalladas-3'
,p_step_title=>'Noticias-Detalladas-3'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(1968417659227077)
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_last_updated_by=>'ADMINPOGK'
,p_last_upd_yyyymmddhh24miss=>'20240823122751'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2021982479974023)
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
'        </section>',
'    '))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2022017814974024)
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
'            <img src="#APP_IMAGES#imagen-16.jpg" alt="">',
'            <div class="news_detail_date_box">',
'              <p>17 May 2018</p>',
'            </div>',
'          </div>',
'          <br>',
'          <div class="news_detail_content">',
unistr('            <h2>Ternium, Pemex y Constellation Brands, los clientes top de GM\00E9xico Transportes.</h2>'),
unistr('            <p class="news_detail_one_text">Los principales clientes de GM\00E9xico Transportes (GMXT)'),
unistr('              en t\00E9rminos de ventas en 2017 fueron: Ternium, Pemex, Costellation Brands, Cemex M\00E9xico,'),
unistr('              Grupo Proan, Almidones Mexicanos, General Motors, Nissan Mexicana, Minera M\00E9xico y'),
'              Grupo Deacero.</p>',
unistr('            <p class="news_detail_two_text">GMXT tiene como due\00F1os a Grupo M\00E9xico (69.96%), Sinca Inbursa'),
'              y Grupo Carso (16.60%) y otros accionistas con 13.44 por ciento. Al cierre de 2017, sus 50',
'              clientes',
'              principales representan 75.5% de sus ingresos por servicios (excluyendo a Florida East',
'              Coast, FEC).</p>',
unistr('            <p class="news_detail_three_text">En el Sector Agr\00EDcola GMXT presta servicio de transporte'),
unistr('              de carga en M\00E9xico a Grupo Kasto, productor de alimentos a base de cereales.</p>'),
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
'              <a>https://www.opportimes.com</a>',
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
 p_id=>wwv_flow_api.id(363723222728754913)
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
