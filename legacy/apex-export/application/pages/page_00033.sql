prompt --application/pages/page_00033
begin
--   Manifest
--     PAGE: 00033
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
 p_id=>33
,p_user_interface_id=>wwv_flow_api.id(1954772723207063)
,p_name=>'Noticias-Detalladas-11'
,p_alias=>'NOTICIAS-DETALLADAS-11'
,p_step_title=>'Noticias-Detalladas-11'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(1968417659227077)
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_last_updated_by=>'ADMINPOGK'
,p_last_upd_yyyymmddhh24miss=>'20240823121802'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(363722308487754904)
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
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(587603397813010707)
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
 p_id=>wwv_flow_api.id(587603482474010708)
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
'            <img src="#APP_IMAGES#News_11_img_header.jpeg" alt="">',
'            <div class="news_detail_date_box">',
'              <p>20 Jun 2024</p>',
'            </div>',
'          </div>',
'          <br>',
'          <div class="news_detail_content">',
'            <h2>Team Building Trasciende</h2>',
'            <p class="news_detail_one_text">',
unistr('              Los d\00EDas 19 y 20 de abril, se tuvo el evento anual de Trasciende, evento en el cual se'),
unistr('              re\00FAnen algunos de los l\00EDderes y talentos de Grupo Kasto. Durante este Team Building se'),
unistr('              trabajo en plasmar y crear una nueva cultura organizacional, Por lo cual se tuvieron m\00E1s de'),
'              150 entrevistas previas con diferentes colaboradores de todas la divisiones y agentes',
unistr('              externos, para conocer su opini\00F3n y su sensibilidad a la historia del grupo.'),
'            </p>',
'            <p class="news_detail_one_text">',
unistr('              Estos dos d\00EDas de trabajo, est\00E1n rindiendo sus frutos, comenzando por la definici\00F3n del'),
unistr('              prop\00F3sito de Grupo Kasto: <em> Contribuir al desarrollo integral de las comunidades de'),
'                manera',
'                sostenible, llevando felicidad a la mesa de todos los hogares.</em>',
'            </p>',
'',
'            <p class="news_detail_three_text">',
'              Seguiremos trabajando para compartir nuestra cultura organizacional con todos nuestros',
unistr('              colaboradores, es un largo proceso, en el cual estaremos involucrando a compa\00F1eros de todas'),
'              las empresas.',
'            </p>',
'            <div id="news_11_image_flexbox" style="display: flex;">',
'              <img src="#APP_IMAGES#News_11_img_1.jpeg" style="width: 400px; border-radius: 3px; margin: 4px;" alt="">',
'              <img src="#APP_IMAGES#News_11_img_2.jpeg" style="width: 400px; border-radius: 3px; margin: 4px;" alt="">',
'            </div>',
'',
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
unistr('              <a>Comunicaci\00F3n Grupo Kasto</a>'),
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
wwv_flow_api.component_end;
end;
/
