prompt --application/pages/page_00028
begin
--   Manifest
--     PAGE: 00028
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
 p_id=>28
,p_user_interface_id=>wwv_flow_api.id(1954772723207063)
,p_name=>'Buzon_QyS'
,p_step_title=>'Buzon_QyS'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(1968417659227077)
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_last_updated_by=>'ADMINPOGK'
,p_last_upd_yyyymmddhh24miss=>'20210724182722'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2608866441572901)
,p_plug_name=>'Carrousel'
,p_region_template_options=>'#DEFAULT#:margin-bottom-none:t-Form--noPadding'
,p_plug_template=>wwv_flow_api.id(1990753307084041)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="page-header" style="background-image: url(#APP_IMAGES#assets/images/contacto.jpg);">',
'            <div style="text-align: center; position: relative;">',
'                <h2>Quejas y sugerencias</h2>',
'                <ul class="thm-breadcrumb list-unstyled button-right">',
'                    <li><a href="#">Inicio</a></li>',
'                    <li><span>Quejas y sugerencias</span></li>',
'                </ul>',
'            </div>',
'        </section>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2608965724572902)
,p_plug_name=>'contact-one'
,p_region_template_options=>'#DEFAULT#:margin-bottom-none:t-Form--noPadding'
,p_plug_template=>wwv_flow_api.id(1990753307084041)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<br>',
'<section class="contact-one">',
'            <div class="container">',
'                <div class="row">',
'                    <div class="col-xl-7">',
'                        <div class="contact-one__form__wrap">',
'                            <div class="block-title text-left">',
'                                <p>Dejanos saber tu</p>',
'                                <h3>Queja o Sugerencia</h3>',
'                                <div class="leaf">',
'                                    <img src="#APP_IMAGES#assets/images/resources/leaf.png" alt="">',
'                                </div>',
'                            </div>',
'                             <form action="#" class="contact-one__form" method="POST">',
'                                <div class="row low-gutters">',
'                                    <div class="col-md-6">',
'                                        <div class="input-group">',
'                                            <input type="text" name="name" placeholder="Nombre" required="">',
'                                        </div>',
'                                    </div>',
'                                    <div class="col-md-6">',
'                                        <div class="input-group">',
'                                            <input type="text" name="email" placeholder="Email" required="">',
'                                        </div>',
'                                    </div>',
'                                    <div class="col-md-6">',
'                                        <div class="input-group">',
unistr('                                            <input type="text" name="phone" placeholder="Tel\00E9fono" required="">'),
'                                        </div>',
'                                    </div>',
'                                    <div class="col-md-6">',
'                                        <div class="input-group">',
'                                            <input type="text" name="subject" placeholder="Queja o Sugerencia" required="">',
'                                        </div>',
'                                    </div>',
'                                    <div class="col-md-12">',
'                                        <div class="input-group">',
'                                            <textarea name="message" placeholder="Escribe tu Queja o Sugerencia" required=""></textarea>',
'                                        </div>',
'                                    </div>',
'                                    <div class="col-md-12">',
'                                        <div class="input-group contact__btn">',
'                                            <button type="submit" class="thm-btn contact-one__btn">Enviar</button>',
'                                            ',
'                                        </div>',
'                                    </div>',
'                                </div>',
'                            </form>',
'                        </div>',
'                    </div>',
'                    <div class="col-xl-5">',
'                        <div class="have_questions">',
'                            <div class="image_box">',
'                                <img src="  #APP_IMAGES#assets/images/Contacto_imagen1.jpg" alt="">',
'                            </div>',
'                            <div class="block-title text-center">',
unistr('                                <p>P\00F3nganse en contacto con nosotros</p>'),
unistr('                                <h3>\00BFTiene alguna queja o sugerencia?</h3>'),
'                                <div class="leaf">',
'                                    <img src="#APP_IMAGES#assets/images/resources/leaf.png" alt="">',
'                                </div>',
'                            </div>',
'                            <div class="have_questions_text">',
'                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod',
'                                tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,',
'                                quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo',
'                                consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse',
'                                cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non',
'                                proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
'                            </p>',
'                            </div>',
'                        </div>',
'                    </div>',
'                </div>',
'            </div>',
'</section><!-- GKasto Region -->'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2609017854572903)
,p_plug_name=>'conctact-two'
,p_region_template_options=>'#DEFAULT#:margin-bottom-none:t-Form--noPadding'
,p_plug_template=>wwv_flow_api.id(1990753307084041)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="why_choose_one">',
'            <div class="container">',
'                <div class="row">',
'                    <div class="col-xl-6 col-lg-6 col-md-6">',
'                            <div class="why_choose_one_left_content">',
'                            <div class="block-title text-left">',
'                                <p>Dejanos saber tu </p>',
'                                <h3>Queja o Sugerencia</h3>',
'                                <div class="leaf">',
'                                    <img src="#APP_IMAGES#assets/images/resources/leaf.png" alt="">',
'                                </div>',
'                            </div>',
'                            <div class="about_two_text">',
'                                <form action="#" class="contact-one__form" method="POST">',
'                                <div class="row low-gutters">',
'                                    <div class="col-md-6">',
'                                        <div class="input-group">',
'                                            <input type="text" name="name" placeholder="Nombre" required="" style="background-color:#fff;">',
'                                        </div>',
'                                    </div>',
'                                    <div class="col-md-6">',
'                                        <div class="input-group">',
'                                            <input type="text" name="email" placeholder="Email" required="" style="background-color:#fff;">',
'                                        </div>',
'                                    </div>',
'                                    <div class="col-md-6">',
'                                        <div class="input-group">',
unistr('                                            <input type="text" name="phone" placeholder="Tel\00E9fono" required="" style="background-color:#fff;">'),
'                                        </div>',
'                                    </div>',
'                                    <div class="col-md-6">',
'                                        <div class="input-group">',
'                                            <input type="text" name="subject" placeholder="Queja o Sugerencia" required="" style="background-color:#fff;">',
'                                        </div>',
'                                    </div>',
'                                    <div class="col-md-12">',
'                                        <div class="input-group">',
'                                            <textarea name="message" placeholder="Escribe tu Queja o Sugerencia" required="" style="background-color:#fff;"></textarea>',
'                                        </div>',
'                                    </div>',
'                                    <div class="col-md-12">',
'                                        <div class="input-group contact__btn">',
'                                            <button type="submit" class="thm-btn contact-one__btn">Enviar</button>',
'                                            ',
'                                        </div>',
'                                    </div>',
'                                </div>',
'                            </form>',
'                            </div>',
'                        </div>',
'                    </div>',
'                    <div class="col-xl-6 col-lg-6">',
'                        <div class="why_choose_image_top">',
'                            <div class="why_choose_image" style="background-image: url(#APP_IMAGES#assets/images/Contacto_imagen1.jpg)">',
'',
'                            </div>',
'                        </div>',
'                    </div>',
'                </div>',
'            </div>',
'</section>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2609141223572904)
,p_plug_name=>'Contact-three'
,p_region_template_options=>'#DEFAULT#:margin-bottom-none:t-Form--noPadding'
,p_plug_template=>wwv_flow_api.id(1990753307084041)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="testimonials-one">',
'            <div class="container">',
'                <div class="row">',
'                    <div class="col-xl-6 col-lg-6">',
'                        <div class="testimonials_one_left">',
'                            <div class="block-title text-left">',
'                                <p>Dejanos saber tu</p>',
'                                <h3 style="font-size: 40px;">Queja o sugerencia</h3>',
'                                <div class="leaf">',
'                                    <img src="#APP_IMAGES#assets/images/resources/leaf.png" alt="">',
'                                </div>',
'                            </div>',
'                            <div class="testimonials_one_text">',
'                                <p style="padding-bottom: 10px;">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod',
'                                tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,',
'                                quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo',
'                                consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse',
'                                cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non',
'                                proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>',
'                            </div>',
'                ',
'                        </div>',
'                    </div>',
'                    <div class="col-xl-6 col-lg-6">',
'                        <div style="',
'                        position: relative;',
'                        display: block;',
'                        padding: 25px 10px 100px;',
'                        z-index: 1; background-color:#5b8c51;',
'                        border-radius: 5px;">',
'',
'                        <form action="#" class="contact-one__form" method="POST">',
'                                <div class="row low-gutters">',
'                                    <div class="col-md-6">',
'                                        <div class="input-group">',
'                                            <input type="text" name="name" placeholder="Nombre" required>',
'                                        </div>',
'                                    </div>',
'                                    <div class="col-md-6">',
'                                        <div class="input-group">',
'                                            <input type="text" name="email" placeholder="Email" required>',
'                                        </div>',
'                                    </div>',
'                                    <div class="col-md-6">',
'                                        <div class="input-group">',
unistr('                                            <input type="text" name="phone" placeholder="Tel\00E9fono" required>'),
'                                        </div>',
'                                    </div>',
'                                    <div class="col-md-6">',
'                                        <div class="input-group">',
'                                            <input type="text" name="subject" placeholder="Queja o sugerencia" required>',
'                                        </div>',
'                                    </div>',
'                                    <div class="col-md-12">',
'                                        <div class="input-group">',
'                                            <textarea name="message" placeholder="Escribe tu mensaje" required></textarea>',
'                                        </div>',
'                                    </div>',
'                                    <div class="col-md-12">',
'                                        <div class="input-group contact__btn">',
'                                            <button type="submit" class="thm-btn contact-one__btn">Enviar</button>',
'                                            ',
'                                        </div>',
'                                    </div>',
'                                </div>',
'                            </form>',
'                        </div>',
'                    </div>',
'                </div>',
'            </div>',
'        </section>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.component_end;
end;
/
