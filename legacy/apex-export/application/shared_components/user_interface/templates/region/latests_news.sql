prompt --application/shared_components/user_interface/templates/region/latests_news
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
 p_id=>wwv_flow_api.id(364504265777560493)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="col-xl-4 col-lg-5">',
'    <style>',
'        .sidebar__post-content h3 a {',
'            text-align: justify;',
'            display: block;',
'            line-height: 1.5;',
'        }',
'',
'        .sidebar__post-content h3 a:last-child {',
'            display: -webkit-box;',
'            -webkit-line-clamp: 4;',
'            -webkit-box-orient: vertical;',
'            overflow: hidden;',
'            text-overflow: ellipsis;',
'            font-size: 15px;',
'            color: #333;',
'        }',
'',
'        .sidebar__post-content_meta {',
'            font-weight: bold;',
'            color: #5b8c51;',
'            font-size: 14px;',
'            margin-bottom: 4px;',
'            display: inline-block;',
'        }',
'',
'        .sidebar__post-list li {',
'            display: flex;',
'            gap: 12px;',
'            margin-bottom: 24px;',
'        }',
'',
'        .sidebar__post-image img {',
'            width: 100px;',
'            height: 75px;',
'            object-fit: cover;',
'            border-radius: 4px;',
'        }',
'',
'        .sidebar__post-content {',
'            flex: 1;',
'        }',
'    </style>',
'',
'    <div class="sidebar">',
'        <div class="sidebar__single sidebar__post">',
unistr('            <h3 class="sidebar__title">\00DAltimas Publicaciones</h3>'),
'            <ul class="sidebar__post-list list-unstyled">',
'                <li>',
'                    <div class="sidebar__post-image">',
'                        <img src="#APP_IMAGES#news_22_img_header.png" alt="">',
'                    </div>',
'                    <div class="sidebar__post-content">',
'                        <h3>',
unistr('                            <a href="#" class="sidebar__post-content_meta"><i class="far fa-user-circle"></i> Comunicaci\00F3n</a>'),
'                            <a href="https://www.grupokasto.com/ords/PDB1/f?p=102:44:&SESSION.">',
unistr('                                Grupo Kasto celebr\00F3 con \00E9xito la Jornada de voluntariado para el cuidado de los bosques.'),
'                            </a>',
'                        </h3>',
'                    </div>',
'                </li>',
'                <li>',
'                    <div class="sidebar__post-image">',
'                        <img src="#APP_IMAGES#news_21_img_header.png" alt="">',
'                    </div>',
'                    <div class="sidebar__post-content">',
'                        <h3>',
unistr('                            <a href="#" class="sidebar__post-content_meta"><i class="far fa-user-circle"></i> Comunicaci\00F3n</a>'),
'                            <a href="https://www.grupokasto.com/ords/PDB1/f?p=102:43:&SESSION.">',
unistr('                                Grupo Kasto celebr\00F3 con \00E9xito la Semana de la Seguridad 2025 con actividades l\00FAdicas, pl\00E1ticas del IMSS y din\00E1micas en todas sus divisiones, reforzando el compromiso con la prevenci\00F3n y el bienestar laboral.'),
'                            </a>',
'                        </h3>',
'                    </div>',
'                </li>',
'                <li>',
'                    <div class="sidebar__post-image">',
'                        <img src="#APP_IMAGES#news_20_img_header.png" alt="">',
'                    </div>',
'                    <div class="sidebar__post-content">',
'                        <h3>',
unistr('                            <a href="#" class="sidebar__post-content_meta"><i class="far fa-user-circle"></i> Comunicaci\00F3n</a>'),
'                            <a href="https://www.grupokasto.com/ords/PDB1/f?p=102:42:&SESSION.">',
unistr('                                Simulacro Nacional refuerza cultura de prevenci\00F3n en Planta Central; el 29 de abril se ejecut\00F3 exitosamente el primer simulacro con participaci\00F3n activa del personal y coordinaci\00F3n del equipo de Seguridad y brigadas in')
||'ternas.',
'                            </a>',
'                        </h3>',
'                    </div>',
'                </li>',
'                <!-- <li>',
'                    <div class="sidebar__post-image">',
'                        <img src="#APP_IMAGES#news_19_img_header.png" alt="">',
'                    </div>',
'                    <div class="sidebar__post-content">',
'                        <h3>',
unistr('                            <a href="#" class="sidebar__post-content_meta"><i class="far fa-user-circle"></i> Comunicaci\00F3n</a>'),
'                            <a href="https://www.grupokasto.com/ords/PDB1/f?p=102:41:&SESSION.">',
unistr('                                La Expo Agr\00EDcola GK se celebra en Agroindustrias La Barca desde 2023, reuniendo a empresas l\00EDderes del sector agr\00EDcola con productores de la regi\00F3n en Jalisco, M\00E9xico.'),
'                            </a>',
'                        </h3>',
'                    </div>',
'                </li> -->',
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
'',
'',
'</div>',
'</div>',
'</section>'))
,p_page_plug_template_name=>'Latest news'
,p_internal_name=>'LATESTS_NEWS'
,p_theme_id=>42
,p_theme_class_id=>13
,p_preset_template_options=>'margin-bottom-none:t-Form--noPadding'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'Y'
);
wwv_flow_api.component_end;
end;
/
