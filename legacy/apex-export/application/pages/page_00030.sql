prompt --application/pages/page_00030
begin
--   Manifest
--     PAGE: 00030
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
 p_id=>30
,p_user_interface_id=>wwv_flow_api.id(1954772723207063)
,p_name=>'Noticias-Detalladas-7'
,p_step_title=>'Noticias-Detalladas-7'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(1968417659227077)
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_last_updated_by=>'ADMINPOGK'
,p_last_upd_yyyymmddhh24miss=>'20240823122158'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2919367289863101)
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
 p_id=>wwv_flow_api.id(2919410309863102)
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
'',
'          <div class="welcome_video_box" style="background-image:url(''#APP_IMAGES#Molino_concepcion.jpeg'')">',
'            <div class="news_detail_date_box">',
'              <p>23 Sep 2021</p>',
'            </div>',
'            <a href="https://www.youtube.com/watch?v=-roywUh6-qI" class="welcome_video_btn video-popup">',
'              <i class="fa fa-play"></i>',
'            </a>',
'          </div>',
'',
'          <br>',
'          <div class="news_detail_content">',
unistr('            <h2>En Grupo Kasto Molinos estamos: \00A1Construyendo nuestro futuro! </h2>'),
'',
unistr('            <p class="news_detail_one_text">Grupo Kasto Molinos inaugur\00F3 una nueva planta denominada "Molino'),
unistr('              La Concepci\00F3n", en La Barca, Jalisco; la cual producir\00E1 harina y derivados de trigo para'),
unistr('              abastecer a m\00E1s de 17 estados de la rep\00FAblica.</p>'),
unistr('            <p class="news_detail_one_text">Este molino fue dise\00F1ado para alcanzar un alto nivel de'),
unistr('              productividad y la disminuci\00F3n del impacto ambiental.</p>'),
'',
'',
unistr('            <p class="news_detail_two_text">Cuenta con una planta fotovoltaica, que capta la radiaci\00F3n solar'),
unistr('              y la transforma en electricidad; As\00ED mismo, cuenta con un sistema de captaci\00F3n de agua'),
unistr('              pluvial, permitiendo la potabilizaci\00F3n de agua pluvial para el uso de servicios generales y'),
unistr('              proceso de elaboraci\00F3n de harinas y subproductos.</p>'),
unistr('            <p class="news_detail_two_text">Molino La Concepci\00F3n cuenta con azoteas frescas, las diferentes'),
'              edificaciones del complejo fueron impermeabilizadas en color blanco con el objetivo de',
unistr('              reducir emisiones de di\00F3xido de carbono y la temperatura en el interior de los edificios'),
unistr('              ocasionada por radiaci\00F3n solar.</p>'),
'',
'            <p class="news_detail_three_text">Este molino cuenta con una amplia superficie de campos de',
'              agave como zonas verdes permeables, que permite hacer uso racional del agua.</p>',
unistr('            <p class="news_detail_three_text">Molino La Concepci\00F3n representa una ventaja log\00EDstica en'),
unistr('              cuanto a la recepci\00F3n de trigo por su ubicaci\00F3n entre la zona productora de trigo y el'),
unistr('              centro de almacenaje m\00E1s grande de la regi\00F3n "Agroindustrias La Barca" (filial de Grupo'),
unistr('              Kasto), optimizando as\00ED su proceso de abastecimiento de materia prima.</p>'),
'          </div>',
'',
'',
'',
'',
'          <div class="news_detail__bottom">',
'            <p class="news_detail__tags">',
'              <span>Etiquetas:</span>',
'              <a href="#">Agricultura,</a>',
unistr('              <a href="#">Alimentaci\00F3n,</a>'),
unistr('              <a href="#">Econom\00EDa</a>'),
'            </p>',
'            <p class="news_detail__tags">',
'              <span>Fuente:</span>',
'              <a>Grupo Kasto</a>',
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
 p_id=>wwv_flow_api.id(363722661860754907)
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
