prompt --application/pages/page_00044
begin
--   Manifest
--     PAGE: 00044
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
 p_id=>44
,p_user_interface_id=>wwv_flow_api.id(1954772723207063)
,p_name=>'Noticias-Detalladas-22'
,p_alias=>'NOTICIAS-DETALLADAS-22'
,p_step_title=>'Noticias-Detalladas-22'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(1968417659227077)
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_last_updated_by=>'ADMINPOGK'
,p_last_upd_yyyymmddhh24miss=>'20251218100050'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(521906270266008601)
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
'                        <img src="#APP_IMAGES#news_22_img_header.png" alt="" />',
'                        <div class="news_detail_date_box">',
'                            <p>07 Nov 2025</p>',
'                        </div>',
'                    </div>',
'                    <br />',
'                    <div class="news_detail_content">',
'                        <h2>Colaboradores participan en jornada de voluntariado para el cuidado de los bosques</h2>',
'                        <p class="news_detail_one_text" style="text-align: justify">',
'                            Como parte de las iniciativas de sostenibilidad del grupo, el pasado viernes 7 de noviembre',
'                            colaboradores de distintas divisiones participaron en una jornada de voluntariado ambiental',
unistr('                            en diversas \00E1reas naturales ubicadas en las regiones donde Grupo Kasto tiene presencia. La'),
unistr('                            iniciativa estuvo abierta a todos los interesados y registr\00F3 una entusiasta respuesta por'),
'                            parte de quienes se sumaron a las actividades.',
'                        </p>',
'                        <p class="news_detail_one_text" style="text-align: justify">',
unistr('                            Las sedes de Grupo Kasto ubicadas en Guadalajara, La Barca, Ciudad Obreg\00F3n y La Piedad se'),
unistr('                            integraron activamente a esta acci\00F3n colectiva, mostrando compromiso y disposici\00F3n para'),
'                            contribuir al cuidado del entorno natural.',
'                        </p>',
'                        <p class="news_detail_one_text" style="text-align: justify">',
unistr('                            En el caso de los colaboradores de \00E1rea metropolitana de Guadalajara, los voluntarios'),
unistr('                            acudieron al Bosque Centinela, donde se realizaron labores enfocadas en la conservaci\00F3n y el'),
unistr('                            fortalecimiento del ecosistema local. Entre las tareas desarrolladas se incluy\00F3 la creaci\00F3n'),
unistr('                            de cajetes para facilitar la captaci\00F3n de agua en los \00E1rboles m\00E1s j\00F3venes, la limpieza de'),
unistr('                            \00E1reas verdes y el riego de los ejemplares sembrados. A su vez, en La Barca, Jalisco, con'),
unistr('                            apoyo de las autoridades locales, se realiz\00F3 la plantaci\00F3n de 103 \00E1rboles en los alrededores'),
unistr('                            de la planta industrial harinera \201CMolino La Concepci\00F3n\201D, adem\00E1s de esto, en Ciudad Obreg\00F3n,'),
unistr('                            Sonora, se plantaron 10 \00E1rboles en los alrededores de las instalaciones de Grupo Kasto, y'),
unistr('                            finalmente en La Piedad, Michoac\00E1n, 15 \00E1rboles fueron plantados. Las plantaciones se'),
unistr('                            planearon con la visi\00F3n de procurar el crecimiento y sobrevivencia de estos \00E1rboles.'),
'                        </p>',
'                        <p class="news_detail_one_text" style="text-align: justify">',
'                            Los voluntarios demostraron gran entusiasmo y compromiso, contribuyendo de manera',
unistr('                            significativa al mantenimiento de los bosques y \00E1reas naturales reafirmando el sentido de'),
'                            responsabilidad ambiental que impulsa al grupo.',
'                        </p>',
'                        <p class="news_detail_one_text" style="text-align: justify">',
unistr('                            Con actividades como esta, la organizaci\00F3n contin\00FAa promoviendo iniciativas que fortalecen'),
unistr('                            la sostenibilidad, la participaci\00F3n comunitaria y el cuidado del medio ambiente.'),
'                        </p>',
'                        <div id="news_11_image_gridbox" style="',
'                display: grid;',
'                grid-template-columns: repeat(2, 1fr);',
'                gap: 10px;',
'                max-width: 100%;',
'                justify-content: center;',
'                align-items: center;',
'              ">',
'                            <img src="#APP_IMAGES#news_22_img_1.png"',
'                                style="width: 100%; height: auto; border-radius: 3px" alt="" />',
'                            <img src="#APP_IMAGES#news_22_img_2.png"',
'                                style="width: 100%; height: auto; border-radius: 3px" alt="" />',
'                            <img src="#APP_IMAGES#news_22_img_3.png"',
'                                style="width: 100%; height: auto; border-radius: 3px" alt="" />',
'                            <img src="#APP_IMAGES#news_22_img_4.png"',
'                                style="width: 100%; height: auto; border-radius: 3px" alt="" />',
'                        </div>',
'                    </div>',
'                    <div class="news_detail__bottom">',
'                        <p class="news_detail__tags">',
'                            <span>Etiquetas:</span>',
unistr('                            <a href="#">Prevenci\00F3n,</a>'),
'                            <a href="#">Seguridad,</a>',
'                            <a href="#">Bienestar Laboral,</a>',
'                            <a href="#">ENLASSE</a>',
'                        </p>',
'                        <p class="news_detail__tags">',
'                            <span>Fuente:</span>',
unistr('                            <a>Comunicaci\00F3n Grupo Kasto</a>'),
'                        </p>',
'                    </div>',
'                    <div class="comment-one">',
'                        <h3 class="comment-one__title"></h3>',
'                        <div class="comment-one__single">',
'                            <div class="comment-one__image"></div>',
'                            <div class="comment-one__content"></div>',
'                        </div>',
'                    </div>',
'                </div>',
'            </div>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1452151159976623093)
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
 p_id=>wwv_flow_api.id(1452162189850515695)
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
