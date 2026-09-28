prompt --application/pages/page_00042
begin
--   Manifest
--     PAGE: 00042
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
 p_id=>42
,p_user_interface_id=>wwv_flow_api.id(1954772723207063)
,p_name=>'Noticias-Detalladas-20'
,p_alias=>'NOTICIAS-DETALLADAS-20'
,p_step_title=>'Noticias-Detalladas-20'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(1968417659227077)
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_last_updated_by=>'ADMINPOGK'
,p_last_upd_yyyymmddhh24miss=>'20250521171737'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(453847710154609219)
,p_plug_name=>'carrousel'
,p_region_template_options=>'#DEFAULT#:margin-bottom-none:t-Form--noPadding'
,p_plug_template=>wwv_flow_api.id(1990753307084041)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section',
'  class="page-header"',
'  style="background-image: url(#APP_IMAGES#encabezado_1.jpg)"',
'>',
'  <div style="text-align: center; position: relative">',
'    <h2>Noticias Detalladas</h2>',
'    <ul class="thm-breadcrumb list-unstyled button-right">',
'      <li>',
'        <a href="https://www.grupokasto.com/ords/PDB1/f?p=102:1:&SESSION."',
'          >Inicio</a',
'        >',
'      </li>',
'      <li><span>Noticias Detalladas</span></li>',
'    </ul>',
'  </div>',
'</section>',
''))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(453847804881609220)
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
'            <img src="#APP_IMAGES#news_20_img_header.png" alt="" />',
'            <div class="news_detail_date_box">',
'              <p>29 Abr 2025</p>',
'            </div>',
'          </div>',
'          <br />',
'          <div class="news_detail_content">',
'            <h2>',
'              Simulacro Nacional en Molino Planta Central: Reforzando nuestra',
unistr('              cultura de prevenci\00F3n'),
'            </h2>',
'            <p class="news_detail_one_text" style="text-align: justify;">',
'              El pasado 29 de abril, a las 11:30 horas, llevamos a cabo con',
unistr('              \00E9xito el Primer Simulacro Nacional en nuestras instalaciones de'),
'              Molino Planta Central. Esta actividad tuvo como objetivo principal',
unistr('              fortalecer la cultura de prevenci\00F3n dentro de la organizaci\00F3n, as\00ED'),
'              como mejorar nuestra capacidad de respuesta ante posibles',
unistr('              emergencias s\00EDsmicas.'),
'            </p>',
'            <p class="news_detail_one_text" style="text-align: justify;">',
unistr('              La jornada fue liderada por el equipo de Seguridad en coordinaci\00F3n'),
'              con las brigadas internas, quienes ejecutaron el simulacro de',
unistr('              manera organizada y eficiente. Destacamos la participaci\00F3n activa'),
'              y comprometida de todo el personal de Planta Central, demostrando',
unistr('              una vez m\00E1s nuestra responsabilidad y preparaci\00F3n frente a'),
'              situaciones de riesgo.',
'            </p>',
'            <p class="news_detail_one_text" style="text-align: justify;">',
'              Seguiremos trabajando para fomentar entornos de trabajo seguros y',
unistr('              una cultura organizacional enfocada en la prevenci\00F3n y la'),
unistr('              protecci\00F3n de todos nuestros colaboradores.'),
'            </p>',
'            <div',
'              id="news_11_image_gridbox"',
'              style="',
'                display: grid;',
'                grid-template-columns: repeat(2, 1fr);',
'                gap: 10px;',
'                max-width: 100%;',
'                justify-content: center;',
'                align-items: center;',
'              "',
'            >',
'              <img',
'                src="#APP_IMAGES#news_20_img_4.png"',
'                style="width: 100%; height: auto; border-radius: 3px"',
'                alt=""',
'              />',
'              <img',
'                src="#APP_IMAGES#news_20_img_3.png"',
'                style="width: 100%; height: auto; border-radius: 3px"',
'                alt=""',
'              />',
'              <img',
'                src="#APP_IMAGES#news_20_img_2.png"',
'                style="width: 100%; height: auto; border-radius: 3px"',
'                alt=""',
'              />',
'              <img',
'                src="#APP_IMAGES#news_20_img_1.png"',
'                style="width: 100%; height: auto; border-radius: 3px"',
'                alt=""',
'              />',
'              <img',
'                src="#APP_IMAGES#news_20_img_5.png"',
'                style="',
'                  width: 100%;',
'                  height: auto;',
'                  border-radius: 3px;',
'                  grid-column: 1 / 2;',
'                "',
'                alt=""',
'              />',
'            </div>',
'          </div>',
'          <div class="news_detail__bottom">',
'            <p class="news_detail__tags">',
'              <span>Etiquetas:</span>',
'              <a href="#">Agricultura,</a>',
unistr('              <a href="#">Alimentaci\00F3n,</a>'),
'              <a href="#">Responsabilidad Social Corporativa,</a>',
'              <a href="#">Entorno Saludable,</a>',
'              <a href="#">ENLASSE</a>',
'            </p>',
'            <p class="news_detail__tags">',
'              <span>Fuente:</span>',
unistr('              <a>Comunicaci\00F3n Grupo Kasto</a>'),
'            </p>',
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
 p_id=>wwv_flow_api.id(453847995911609221)
,p_plug_name=>'Latest news'
,p_region_template_options=>'#DEFAULT#:margin-bottom-none:t-Form--noPadding'
,p_plug_template=>wwv_flow_api.id(364504265777560493)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.component_end;
end;
/
