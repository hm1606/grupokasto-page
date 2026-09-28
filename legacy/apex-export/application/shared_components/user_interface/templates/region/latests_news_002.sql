prompt --application/shared_components/user_interface/templates/region/latests_news_002
begin
--   Manifest
--     REGION TEMPLATE: LATESTS_NEWS
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2020.03.31'
,p_release=>'20.1.0.00.13'
,p_default_workspace_id=>1829437844690909
,p_default_application_id=>102
,p_default_id_offset=>0
,p_default_owner=>'XXPOKASTO'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(403435429972374794)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="col-xl-4 col-lg-5">',
'    <div class="sidebar">',
'        <div class="sidebar__single sidebar__post">',
unistr('            <h3 class="sidebar__title">\00DAltimas Publicaciones</h3>'),
'            <ul class="sidebar__post-list list-unstyled">',
'                <li>',
'                    <div class="sidebar__post-image">',
'                        <img src="#APP_IMAGES#news_19_img_header.png" alt="" style="width: 80px; height: 60px;">',
'                    </div>',
'                    <div class="sidebar__post-content">',
'                        <h3>',
'                            <a href="#" class="sidebar__post-content_meta"><i class="far fa-user-circle"></i>',
unistr('                                Comunicaci\00F3n</a>'),
unistr('                            <a href="https://www.grupokasto.com/ords/PDB1/f?p=102:41:&SESSION.">La Expo Agr\00EDcola GK es un evento anual'),
'                                que se lleva a cabo en las instalaciones de Agroindustrias La Barca,',
unistr('                                en el municipio de La Barca, Jalisco, M\00E9xico, desde el 2023, donde se re\00FAnen Empresas l\00EDderes en el Sector Agr\00EDcola con agricultores de la Regi\00F3n.</a>'),
'                        </h3>',
'                    </div>',
'                </li>',
'                <li>',
'                    <div class="sidebar__post-image">',
'                        <img src="#APP_IMAGES#news_18_img_header.png" alt="" style="width: 80px; height: 60px;">',
'                    </div>',
'                    <div class="sidebar__post-content">',
'                        <h3>',
'                            <a href="#" class="sidebar__post-content_meta"><i class="far fa-user-circle"></i>',
unistr('                                Comunicaci\00F3n</a>'),
unistr('                            <a href="https://www.grupokasto.com/ords/PDB1/f?p=102:40:&SESSION.">GKM Planta Central llev\00F3 a cabo una capacitaci\00F3n fundamental '),
unistr('                                para su equipo de brigadistas 2025, con el objetivo de fortalecer la preparaci\00F3n ante emergencias y afianzar su compromiso con la seguridad y '),
unistr('                                el bienestar de sus colaboradores, as\00ED como con la comunidad en general </a>'),
'                        </h3>',
'                    </div>',
'                </li>',
'                <li>',
'                    <div class="sidebar__post-image">',
'                        <img src="#APP_IMAGES#news_17_img_header.jpg" alt="" style="width: 80px; height: 60px;">',
'                    </div>',
'                    <div class="sidebar__post-content">',
'                        <h3>',
'                            <a href="#" class="sidebar__post-content_meta"><i class="far fa-user-circle"></i>',
unistr('                                Comunicaci\00F3n</a>'),
unistr('                            <a href="https://www.grupokasto.com/ords/PDB1/f?p=102:39:&SESSION.">As\00ED se llevo a cabo el'),
unistr('                                cierre de nuestro programa entorno saludable, autoridades sanitarias de la Secretar\00EDa de'),
unistr('                                Salud Jalisco, develaron la placa de certificaci\00F3n mediante la cual, se reconoce a Grupo'),
'                                Kasto Molinos: Planta Guadalajara como Entorno Laboral Saludable y Seguro (ENLASSE).</a>',
'                        </h3>',
'                    </div>',
'                </li>',
'            </ul>',
'        </div>',
'        <div class="sidebar__single sidebar__tags">',
'            <h3 class="sidebar__title">Etiquetas Populares</h3>',
'            <div class="sidebar__tags-list">',
'                <a href="#">Agricultura,</a>',
unistr('                <a href="#">Alimentaci\00F3n,</a>'),
unistr('                <a href="#">Econom\00EDa</a>'),
'            </div>',
'        </div>',
'    </div>',
'</div>',
'</div>',
'</div>',
'</section>'))
,p_page_plug_template_name=>'Copy of Latest news'
,p_internal_name=>'LATESTS_NEWS'
,p_theme_id=>42
,p_theme_class_id=>13
,p_preset_template_options=>'margin-bottom-none:t-Form--noPadding'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
);
wwv_flow_api.component_end;
end;
/
