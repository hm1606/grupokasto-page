prompt --application/pages/page_00029
begin
--   Manifest
--     PAGE: 00029
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
 p_id=>29
,p_user_interface_id=>wwv_flow_api.id(1954772723207063)
,p_name=>'Noticias-Detalladas-9'
,p_alias=>'NOTICIAS-DETALLADAS-9'
,p_step_title=>'Noticias-Detalladas-9'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(1968417659227077)
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_last_updated_by=>'ADMINPOGK'
,p_last_upd_yyyymmddhh24miss=>'20240823122040'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8789962551053501)
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
 p_id=>wwv_flow_api.id(8790047212053502)
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
'            <img src="#APP_IMAGES#Noticia-9.png" alt="">',
'            <div class="news_detail_date_box">',
'              <p>20 Ene 2022</p>',
'            </div>',
'          </div>',
'          <br>',
'          <div class="news_detail_content">',
unistr('            <h2>Un d\00EDa para donar</h2>'),
'            <p class="news_detail_one_text">',
unistr('              El pasado 20 de enero, en <b>Grupo Kasto Divisi\00F3n Molinos</b>, tuvimos la fortuna de'),
'              colaborar con <a href="https://blooders.org/" target="_BLANK"><b>Blooders.org</b></a> en una',
unistr('              campa\00F1a de naturaleza altruista y con una intenci\00F3n verdaderamente aut\00E9ntica de ayudar a'),
'              muchas personas que necesitan sangre o alguno de sus derivados.',
'            </p>',
'            <p class="news_detail_two_text">',
unistr('              El evento se llev\00F3 a cabo en las instalaciones de Grupo Kasto Molinos Planta Central, en'),
'              Zapopan, Jalisco.',
'            </p>',
'            <p class="news_detail_three_text">',
unistr('              El entusiasmo de los donadores fue la principal caracter\00EDstica en ese d\00EDa, en donde las'),
'              ganas de ayudar sobrepasaron por mucho a los nervios por las agujas',
'            </p>',
'            <p class="news_detail_three_text">',
unistr('              La campa\00F1a se desarroll\00F3 de una manera muy bien organizada, en tiempo y forma y cumpliendo'),
unistr('              adem\00E1s todos los protocolos sanitarios, tanto por la contingencia por COVID as\00ED como los'),
'              protocolos sanitarios por parte del banco de sangre, quienes transmitieron tranquilidad y',
'              confianza a todos nuestros colaboradores.',
'            </p>',
'',
'            <p class="news_detail_three_text">',
unistr('              <b>Hace falta m\00E1s.</b> Siempre habr\00E1 personas que necesiten de una donaci\00F3n de sangre.'),
'            </p>',
'',
'            <p class="news_detail_three_text">',
unistr('              Siempre habr\00E1 oportunidad de <b>fomentar m\00E1s la cultura de la donaci\00F3n altruista de sangre'),
unistr('                en M\00E9xico</b>, pero vamos por buen camino, aportando un granito m\00E1s de arena y con la'),
unistr('              seguridad de que en la pr\00F3xima oportunidad romperemos nuestro propio r\00E9cord.'),
'            </p>',
'',
'          </div>',
'          <div class="news_detail__bottom">',
'            <p class="news_detail__tags">',
'              <span>Etiquetas:</span>',
'              <a href="#">Blooders,</a>',
'              <a href="#">Resett</a>',
'            </p>',
'            <p class="news_detail__tags">',
'              <span>Fuente:</span>',
unistr('              <a>Dpto. M\00E9dico Grupo Kasto</a>'),
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
 p_id=>wwv_flow_api.id(363722576894754906)
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
