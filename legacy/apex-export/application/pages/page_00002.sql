prompt --application/pages/page_00002
begin
--   Manifest
--     PAGE: 00002
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
 p_id=>2
,p_user_interface_id=>wwv_flow_api.id(1954772723207063)
,p_name=>'Contacto'
,p_step_title=>'Contacto'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(1968417659227077)
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_last_updated_by=>'ADMINPOGK'
,p_last_upd_yyyymmddhh24miss=>'20250502124815'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1970907309258609)
,p_plug_name=>'Carrusel'
,p_region_template_options=>'#DEFAULT#:margin-bottom-none:t-Form--noPadding'
,p_plug_template=>wwv_flow_api.id(1990753307084041)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'        <section class="page-header" style="background-image: url(#APP_IMAGES#assets/images/contacto.jpg);">',
'            <div style="text-align: center; position: relative;">',
'                <h2>Contacto</h2>',
'                <ul class="thm-breadcrumb list-unstyled button-right">',
'                    <li><a href="https://www.grupokasto.com/ords/PDB1/f?p=102:1:&SESSION.">Inicio</a></li>',
'                    <li><span>Contacto</span></li>',
'                </ul>',
'            </div>',
'        </section>',
'    '))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1971095918258610)
,p_plug_name=>'location'
,p_region_template_options=>'#DEFAULT#:margin-bottom-none:t-Form--noPadding'
,p_plug_template=>wwv_flow_api.id(1990753307084041)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="location">',
'            <div class="container">',
'                <div class="row">',
'                    <div class="col-xl-3 col-lg-3 col-md-6">',
'                        <div class="location_single">',
'                            <h2>Oficinas Corporativas</h2>',
'                            <p>Av. Padre Hidalgo No. 600<br>',
'                                    Santa Ana Pacueco, Gto.<br>',
'                                    C.P. 36910',
'                                </p>',
'                                <br><br>',
'                            <a href="mailto:contacto@grupokasto.com">contacto@grupokasto.com</a><br>',
'                            <a>352 526 1939</a>',
'                        </div>',
'                    </div>',
'',
'                    <div class="col-xl-3 col-lg-3 col-md-6">',
'                        <div class="location_single">',
unistr('                            <h2>Divisi\00F3n Granos</h2>'),
'                            <p>Kasavi Comercial S.A. de C.V.</p>',
'                            <p>Av. Padre Hidalgo No. 410-5<br>',
'                                    Santa Ana Pacueco, Gto.<br>',
'                                    C.P. 36910',
'                                </p>',
'                                <br>',
'                                <a href="mailto:contacto@grupokasto.com">contacto@grupokasto.com</a><br>',
'                                <a>352 526 1766</a>',
'                        </div>',
'                    </div>',
'',
'                    <div class="col-xl-3 col-lg-3 col-md-6">',
'                        <div class="location_single">',
unistr('                            <h2>Divisi\00F3n Molinos</h2>'),
'                            <p>Grupo Kasto Molinos S.A. de C.V.</p>',
unistr('                            <p>Calle 3 No. 690, Col\00F3n Industrial <br>Guadalajara, Jal <br> C.P. 44940</p>'),
'                            <br>',
'                            <a href="mailto:contacto@grupokasto.com">contacto@grupokasto.com</a><br>',
'                            <a>33 3145 2460</a>',
'                        </div>',
'                    </div>',
'',
'                    <div class="col-xl-3 col-lg-3 col-md-6">',
'                        <div class="location_single">',
unistr('                            <h2>Divisi\00F3n Pecuaria</h2>'),
'                            <p>Folap, S.A. de C. V.</p>',
unistr('                            <p>L\00E1zaro C\00E1rdenas 1109, Santa F\00E9<br>La Piedad, Mich<br>C.P. 59370</p>'),
'                            <br>',
'                            <a href="mailto:folapsa@grupokasto.com">folapsa@grupokasto.com</a><br>',
'                            <a>352 522 0508</a>',
'                        </div>',
'                    </div>',
'                    ',
'                </div>',
'            </div>',
'        </section>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1971145910258611)
,p_plug_name=>'contact-one'
,p_region_css_classes=>'d-none'
,p_region_template_options=>'#DEFAULT#:margin-bottom-none:t-Form--noPadding'
,p_plug_template=>wwv_flow_api.id(1990753307084041)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="contact-one d-none">',
'    <div class="container">',
'        <div class="row">',
'            <div class="col-xl-7">',
'                <div class="contact-one__form__wrap">',
'                    <div class="block-title text-left">',
unistr('                        <p>Cont\00E1ctanos</p>'),
'                        <h3>Escribe tu mensaje</h3>',
'                        <div class="leaf">',
'                            <img src="#APP_IMAGES#assets/images/resources/leaf.png" alt="">',
'                        </div>',
'                    </div>',
'                    <form action="/static/sendemail.php" class="contact-one__form" method="POST">',
'                        <div class="row g-3 p-4 rounded-4">',
'                            <div class="col-md-6 p-3">',
'                                <input type="text" name="name" class="form-control form-control-lg" placeholder="Tu nombre completo" required>',
'                            </div>',
'                            <div class="col-md-6 p-3">',
'                                <input type="email" name="email" class="form-control form-control-lg" placeholder="tu@email.com" required>',
'                            </div>',
'                            <div class="col-md-6 p-3">',
'                                <input type="text" name="phone" class="form-control form-control-lg" placeholder="Ej. 55 1234 5678" required>',
'                            </div>',
'                            <div class="col-md-6 p-3">',
'                                <input type="text" name="subject" class="form-control form-control-lg" placeholder="Asunto del mensaje" required>',
'                            </div>',
'                            <div class="col-md-12 p-3">',
unistr('                                <textarea name="message" rows="5" class="form-control form-control-lg" placeholder="Cu\00E9ntanos m\00E1s..." required></textarea>'),
'                            </div>',
'                            <div class="col-md-12 text-center pt-3">',
'                                <button type="submit" class="btn thm-btn btn-lg px-5 shadow-sm">Enviar mensaje</button>',
'                            </div>',
'                        </div>',
'                        ',
'                    </form>',
'                </div>',
'            </div>',
'            <div class="col-xl-5">',
'                <div class="have_questions">',
'                    <div class="image_box">',
'                        <img src="#APP_IMAGES#assets/images/Contacto_imagen1.jpg" alt="">',
'                    </div>',
'                    <div class="block-title text-center">',
unistr('                        <p>P\00F3nganse en contacto con nosotros</p>'),
unistr('                        <h3>\00BFTiene preguntas?</h3>'),
'                        <div class="leaf">',
'                            <img src="#APP_IMAGES#assets/images/resources/leaf.png" alt="">',
'                        </div>',
'                    </div>',
'                    <div class="have_questions_text">',
unistr('                        <p>A trav\00E9s de las empresas que conforman nuestras unidades de negocio,'),
'                            podemos ofrecer a nuestros clientes una variedad de productos y servicios',
'                            para satisfacer sus necesidades.',
'                        </p>',
'                    </div>',
'                    <div class="have_questions_btn">',
'                        <a href="https://www.grupokasto.com/ords/PDB1/f?p=102:18:&SESSION." class="thm-btn">Leer',
unistr('                            m\00E1s...</a>'),
'                    </div>',
'                </div>',
'            </div>',
'        </div>',
'    </div>',
'</section>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1971296958258612)
,p_plug_name=>'contact_google_map_1'
,p_region_template_options=>'#DEFAULT#:margin-bottom-none:t-Form--noPadding'
,p_plug_template=>wwv_flow_api.id(1990753307084041)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'              <section class="contact_google_map_1">',
'<div style="height:400px; width:100%; display:inline-block; overflow:hidden;">',
'<iframe class="google-map__contact1" style="position:relative; top:-55px; border:none;" src="https://www.google.com/maps/d/embed?mid=1Oav-EmHNi7IVdKfDoS2XG9qC1v8Jf6mH&ehbc=2E312F" ></iframe>',
'</div>',
'        </section>',
'      ',
'      ',
'      ',
'      ',
'        ',
'      <!--  <section class="contact_google_map_1">',
'<div style="height:400px; width:100%; display:inline-block; overflow:hidden;">',
'<iframe class="google-map__contact1" style="position:relative; top:-55px; border:none;" src="https://www.google.com/maps/d/embed?mid=1oZu4cp8v9IjTN8EZRQbOZTVuQXHDWbp6" ></iframe>',
'</div>',
'        </section> -->'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(443719304145116406)
,p_plug_name=>'Contact_Apex'
,p_region_name=>'contact-one'
,p_region_css_classes=>'contact-one container'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1859245628206915)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(443720486607116417)
,p_plug_name=>'Row'
,p_parent_plug_id=>wwv_flow_api.id(443719304145116406)
,p_region_css_classes=>'row'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1859245628206915)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(443720594621116418)
,p_plug_name=>'COL_7'
,p_parent_plug_id=>wwv_flow_api.id(443720486607116417)
,p_region_css_classes=>'col-xl-7 contact-one__form__wrap'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1859245628206915)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'          <div class="block-title text-left">',
unistr('            <p>Cont\00E1ctanos</p>'),
'            <h3>Escribe tu mensaje</h3>',
'            <div class="leaf">',
'              <img src="#APP_IMAGES#assets/images/resources/leaf.png" alt="" />',
'            </div>',
'            ',
'            ',
'',
'            <div id="alerta_exito" class="alert alert-success alert-dismissible fade show" role="alert" style="display: none;">',
unistr('              <strong>\00A1\00C9xito!</strong> Tu mensaje fue enviado correctamente desde grupokasto.com.'),
'              <button type="button" class="close" data-dismiss="alert" aria-label="Cerrar">',
'                <span aria-hidden="true">&times;</span>',
'              </button>',
'            </div>',
'',
'          </div>',
''))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(443719434039116407)
,p_plug_name=>'CONTACTO'
,p_parent_plug_id=>wwv_flow_api.id(443720594621116418)
,p_region_css_classes=>'contact-one__form'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1859245628206915)
,p_plug_display_sequence=>20
,p_plug_new_grid=>true
,p_plug_display_point=>'BODY'
,p_query_type=>'TABLE'
,p_query_table=>'WEB_CONSULTAS'
,p_include_rowid_column=>false
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(443720692504116419)
,p_plug_name=>'COL_5'
,p_parent_plug_id=>wwv_flow_api.id(443720486607116417)
,p_region_css_classes=>'col-xl-5'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1859245628206915)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="have_questions">',
'    <div class="image_box">',
'        <img src="#APP_IMAGES#assets/images/Contacto_imagen1.jpg" alt="">',
'    </div>',
'    <div class="block-title text-center">',
unistr('        <p>P\00F3nganse en contacto con nosotros</p>'),
unistr('        <h3>\00BFTiene preguntas?</h3>'),
'        <div class="leaf">',
'            <img src="#APP_IMAGES#assets/images/resources/leaf.png" alt="">',
'        </div>',
'    </div>',
'    <div class="have_questions_text">',
unistr('        <p>A trav\00E9s de las empresas que conforman nuestras unidades de negocio,'),
'           podemos ofrecer a nuestros clientes una variedad de productos y servicios',
'           para satisfacer sus necesidades.',
'        </p>',
'    </div>',
'    <div class="have_questions_btn">',
unistr('        <a href="https://www.grupokasto.com/ords/PDB1/f?p=102:18:&SESSION." class="thm-btn">Leer m\00E1s...</a>'),
'    </div>',
'</div>',
''))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(443720737605116420)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_api.id(443719434039116407)
,p_button_name=>'Send_mail'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1932811093207010)
,p_button_image_alt=>'Enviar mensaje'
,p_button_position=>'BODY'
,p_button_alignment=>'CENTER-CENTER'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'btn thm-btn btn-lg px-5 shadow-sm mt-3'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(443719688821116409)
,p_name=>'P2_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(443719434039116407)
,p_item_source_plug_id=>wwv_flow_api.id(443719434039116407)
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(443719717422116410)
,p_name=>'P2_NOMBRE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(443719434039116407)
,p_item_source_plug_id=>wwv_flow_api.id(443719434039116407)
,p_placeholder=>'Tu nombre completo'
,p_source=>'NOMBRE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>100
,p_tag_css_classes=>'form-control form-control-lg p-3'
,p_label_alignment=>'ABOVE'
,p_field_alignment=>'LEFT-CENTER'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(443719875302116411)
,p_name=>'P2_EMAIL'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(443719434039116407)
,p_item_source_plug_id=>wwv_flow_api.id(443719434039116407)
,p_placeholder=>'tu@email.com'
,p_source=>'EMAIL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>100
,p_tag_css_classes=>'form-control form-control-lg'
,p_label_alignment=>'ABOVE'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(1932311476207007)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'EMAIL'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(443719903702116412)
,p_name=>'P2_TELEFONO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(443719434039116407)
,p_item_source_plug_id=>wwv_flow_api.id(443719434039116407)
,p_placeholder=>'Ej. 55 1234 5678'
,p_source=>'TELEFONO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>20
,p_tag_css_classes=>'form-control form-control-lg'
,p_label_alignment=>'ABOVE'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(1932311476207007)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(443720003244116413)
,p_name=>'P2_MENSAJE'
,p_source_data_type=>'CLOB'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(443719434039116407)
,p_item_source_plug_id=>wwv_flow_api.id(443719434039116407)
,p_placeholder=>unistr('Cu\00E9ntanos m\00E1s...')
,p_source=>'MENSAJE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>32767
,p_cHeight=>5
,p_tag_css_classes=>'form-control form-control-lg'
,p_label_alignment=>'ABOVE'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(1932311476207007)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(443720167981116414)
,p_name=>'P2_UNIDAD_NEGOCIO'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(443719434039116407)
,p_item_source_plug_id=>wwv_flow_api.id(443719434039116407)
,p_prompt=>unistr('<p class=''text-white''>\00BFSobre qu\00E9 tema deseas contactar?</p>')
,p_source=>'UNIDAD_NEGOCIO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'   NOMBRE,',
'   ID',
'FROM WEB_UNIDADES_NEGOCIO'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_tag_css_classes=>'form-control form-control-lg'
,p_label_alignment=>'ABOVE'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(1932311476207007)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(443720832846116421)
,p_name=>'Create_msj_and_send'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(443720737605116420)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(443721072704116423)
,p_event_id=>wwv_flow_api.id(443720832846116421)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  l_unidad_negocio_nombre VARCHAR2(100);',
'  l_body_html CLOB;',
'  l_body_text VARCHAR2(4000);',
'BEGIN',
'  -- Obtener nombre legible de la unidad de negocio',
'  SELECT nombre',
'  INTO l_unidad_negocio_nombre',
'  FROM WEB_UNIDADES_NEGOCIO',
'  WHERE id = :P2_UNIDAD_NEGOCIO;',
'',
'  -- Insertar la consulta',
'  INSERT INTO WEB_CONSULTAS (',
'    ID,',
'    NOMBRE,',
'    EMAIL,',
'    TELEFONO,',
'    MENSAJE,',
'    UNIDAD_NEGOCIO',
'  ) VALUES (',
'    WEB_CONSULTAS_SEQ.NEXTVAL,',
'    :P2_NOMBRE,',
'    :P2_EMAIL,',
'    :P2_TELEFONO,',
'    :P2_MENSAJE,',
'    :P2_UNIDAD_NEGOCIO',
'  );',
'',
'  -- Texto plano del correo',
unistr('  l_body_text := ''Se recibi\00F3 una nueva consulta:'' || CHR(10) ||'),
'                 ''Nombre: '' || :P2_NOMBRE || CHR(10) ||',
'                 ''Email: '' || :P2_EMAIL || CHR(10) ||',
unistr('                 ''Tel\00E9fono: '' || :P2_TELEFONO || CHR(10) ||'),
'                 ''Unidad de negocio: '' || l_unidad_negocio_nombre || CHR(10) ||',
'                 ''Mensaje: '' || :P2_MENSAJE || CHR(10) ||',
'                 ''Enviado desde grupokasto.com'';',
'',
'  -- HTML del correo',
'l_body_html := ''',
'  <div style="width:100%; background-color:#eceeef; padding:20px 0; font-family:Arial, sans-serif;">',
'    <table align="center" cellpadding="0" cellspacing="0" style="max-width:600px; width:100%; background-color:#ffffff; border-radius:12px; overflow:hidden; box-shadow:0 4px 15px rgba(0,0,0,0.1);">',
'      <tr>',
'        <td style="background-color:#eddd5e; padding:20px; text-align:center;">',
'          <h2 style="color:#5b8c51; margin:0;">Nueva consulta desde grupokasto.com</h2>',
'        </td>',
'      </tr>',
'      <tr>',
'        <td style="padding:20px;">',
'          <table cellpadding="5" cellspacing="0" width="100%" style="color:#404a3d;">',
'            <tr>',
'              <td style="font-weight:bold; width:30%;">Nombre:</td>',
'              <td>'' || :P2_NOMBRE || ''</td>',
'            </tr>',
'            <tr>',
'              <td style="font-weight:bold;">Email:</td>',
'              <td>'' || :P2_EMAIL || ''</td>',
'            </tr>',
'            <tr>',
unistr('              <td style="font-weight:bold;">Tel\00E9fono:</td>'),
'              <td>'' || :P2_TELEFONO || ''</td>',
'            </tr>',
'            <tr>',
'              <td style="font-weight:bold;">Unidad de negocio:</td>',
'              <td>'' || l_unidad_negocio_nombre || ''</td>',
'            </tr>',
'            <tr>',
'              <td style="font-weight:bold; vertical-align:top;">Mensaje:</td>',
'              <td style="background-color:#f9f9f9; padding:10px; border-left:4px solid #5b8c51;">',
'                '' || REPLACE(:P2_MENSAJE, CHR(10), ''<br>'') || ''',
'              </td>',
'            </tr>',
'          </table>',
'          <hr style="margin:30px 0; border:none; border-top:1px solid #ccc;">',
'          <p style="font-size:12px; color:#888888; text-align:center;">',
unistr('            Este correo fue generado autom\00E1ticamente desde <strong>grupokasto.com</strong>'),
'          </p>',
'        </td>',
'      </tr>',
'    </table>',
'  </div>'';',
'',
'',
'',
'  -- Enviar correo',
'  APEX_MAIL.SEND(',
'    p_to        => ''comunicacion@grupokasto.com'',',
'    p_bcc       => ''sahara.merin@grupokasto.com'', ',
'    p_from      => ''postmaster@grupokasto.com'',',
'    p_subj      => ''Nueva consulta desde grupokasto.com'',',
'    p_body      => TO_CLOB(l_body_text),',
'    p_body_html => l_body_html',
'  );',
'',
'  -- Enviar en cola',
'  APEX_MAIL.PUSH_QUEUE;',
'',
'  COMMIT;',
'END;',
''))
,p_attribute_02=>'P2_NOMBRE,P2_EMAIL,P2_TELEFONO,P2_MENSAJE,P2_UNIDAD_NEGOCIO'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(443721324633116426)
,p_event_id=>wwv_flow_api.id(443720832846116421)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'document.getElementById(''alerta_exito'').style.display = ''block'';',
'setTimeout(function() {',
'  document.getElementById(''alerta_exito'').style.display = ''none'';',
unistr('}, 5000); // Oculta despu\00E9s de 5 segundos'),
''))
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(451228097393568703)
,p_event_id=>wwv_flow_api.id(443720832846116421)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P2_ID,P2_NOMBRE,P2_EMAIL,P2_TELEFONO,P2_MENSAJE,P2_UNIDAD_NEGOCIO'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(443719551605116408)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_api.id(443719434039116407)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Contacto'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
