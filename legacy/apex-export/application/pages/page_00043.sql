prompt --application/pages/page_00043
begin
--   Manifest
--     PAGE: 00043
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
 p_id=>43
,p_user_interface_id=>wwv_flow_api.id(1954772723207063)
,p_name=>'Noticias-Detalladas-21'
,p_alias=>'NOTICIAS-DETALLADAS-21'
,p_step_title=>'Noticias-Detalladas-21'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(1968417659227077)
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_last_updated_by=>'ADMINPOGK'
,p_last_upd_yyyymmddhh24miss=>'20250521174713'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(930245308362612304)
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
 p_id=>wwv_flow_api.id(930245403089612305)
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
'            <img src="#APP_IMAGES#news_21_img_header.png" alt="" />',
'            <div class="news_detail_date_box">',
'              <p>02 May 2025</p>',
'            </div>',
'          </div>',
'          <br />',
'          <div class="news_detail_content">',
unistr('            <h2>Celebrando con \00E9xito la Semana de la Seguridad 2025</h2>'),
'            <p class="news_detail_one_text" style="text-align: justify">',
unistr('              Con el objetivo de reforzar la cultura de la prevenci\00F3n y el'),
unistr('              bienestar laboral, Grupo Kasto llev\00F3 a cabo la Semana de la'),
'              Seguridad en todas sus divisiones. Durante esta jornada, se',
unistr('              organizaron diversas actividades din\00E1micas y educativas que'),
'              involucraron activamente al personal.',
'            </p>',
'            <p class="news_detail_one_text" style="text-align: justify">',
'              Entre las actividades destacadas que se realizaron se encuentra la',
unistr('              \201CFeria de la Seguridad\201D, el juego interactivo \201C100 trabajadores'),
unistr('              dijeron\201D, as\00ED como \201CAdivina qui\00E9n de la seguridad\201D, fomentando el'),
unistr('              aprendizaje de manera l\00FAdica. Adem\00E1s, se impartieron pl\00E1ticas'),
unistr('              informativas por parte de expertos del IMSS, se llev\00F3 a cabo el'),
unistr('              reto \201CPonle el equipo de seguridad al trabajador\201D y se ofrecieron'),
unistr('              pr\00E1cticas reales con extintores.'),
'            </p>',
'            <p class="news_detail_one_text" style="text-align: justify">',
'              Dichas iniciativas presentadas en las diferentes divisiones',
'              reafirman el compromiso de Grupo Kasto con la seguridad y salud de',
'              sus colaboradores, promoviendo entornos de trabajo seguros y',
'              responsables.',
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
'                src="#APP_IMAGES#news_21_img_1.png"',
'                style="width: 100%; height: auto; border-radius: 3px"',
'                alt=""',
'              />',
'              <img',
'                src="#APP_IMAGES#news_21_img_2.png"',
'                style="width: 100%; height: auto; border-radius: 3px"',
'                alt=""',
'              />',
'              <img',
'                src="#APP_IMAGES#news_21_img_3.png"',
'                style="width: 100%; height: auto; border-radius: 3px"',
'                alt=""',
'              />',
'              <img',
'                src="#APP_IMAGES#news_21_img_4.png"',
'                style="width: 100%; height: auto; border-radius: 3px"',
'                alt=""',
'              />',
'            </div>',
'          </div>',
'          <div class="news_detail__bottom">',
'            <p class="news_detail__tags">',
'              <span>Etiquetas:</span>',
unistr('              <a href="#">Prevenci\00F3n,</a>'),
'              <a href="#">Seguridad,</a>',
'              <a href="#">Bienestar Laboral,</a>',
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
'              <div class="comment-one__content"></div>',
'            </div>',
'          </div>',
'        </div>',
'      </div>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(930245594119612306)
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
