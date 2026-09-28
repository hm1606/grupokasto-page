prompt --application/pages/page_00045
begin
--   Manifest
--     PAGE: 00045
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
 p_id=>45
,p_user_interface_id=>wwv_flow_api.id(1954772723207063)
,p_name=>'Sostenibilidad-1'
,p_step_title=>'Sostenibilidad-1'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(1968417659227077)
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_last_updated_by=>'ADMINPOGK'
,p_last_upd_yyyymmddhh24miss=>'20260506144852'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(492736956995793132)
,p_plug_name=>'pdf-sostenibilidad'
,p_region_template_options=>'#DEFAULT#:margin-bottom-none:t-Form--noPadding'
,p_plug_template=>wwv_flow_api.id(1990753307084041)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!--',
'  PDF con PDF.js (sin iframe): evita doble scrollbar del visor de Chrome.',
'  APEX: si no carga, revisa CSP (script-src / worker-src) para cdnjs.cloudflare.com',
'  o sube pdf.min.js y pdf.worker.min.js a Static Application Files y cambia las URLs.',
unistr('  Regi\00F3n: evita max-height + overflow:auto en el mismo bloque si a\00FAn ves dos barras.'),
'-->',
'<style>',
'  /* Un solo scroll: el de la ventana. Sin iframe/object del visor PDF. */',
'  #pdf-responsive {',
'    width: 100%;',
'    max-width: 100%;',
'    overflow: visible;',
'    position: relative;',
'  }',
'',
'  #pdf-responsive canvas.gk-pdf-page {',
'    display: block;',
'    margin: 0 auto 14px auto;',
'    max-width: 100%;',
'    height: auto;',
'    vertical-align: top;',
'  }',
'',
'  #pdf-responsive .gk-pdf-loading,',
'  #pdf-responsive .gk-pdf-error {',
'    padding: 28px 16px;',
'    text-align: center;',
'    color: #555;',
'    font-size: 15px;',
'  }',
'',
'  #pdf-responsive .gk-pdf-error a {',
'    color: #2d6a4f;',
'    font-weight: 600;',
'  }',
'</style>',
'',
'<div id="pdf-responsive">',
unistr('  <div class="gk-pdf-loading" id="gk-pdf-status">Cargando documento\2026</div>'),
'</div>',
'',
'<script src="https://cdnjs.cloudflare.com/ajax/libs/pdf.js/3.11.174/pdf.min.js"></script>',
'<script>',
'(function () {',
'  var PDF_URL =',
'    "https://www.grupokasto.com/ords/PDB1/xxpokasto/r/102/files/static/v45/Modelo_de_Sostenibilidad_GK.pdf";',
'',
'  var container = document.getElementById("pdf-responsive");',
'  var statusEl  = document.getElementById("gk-pdf-status");',
'',
'  if (typeof pdfjsLib === "undefined") {',
'    if (statusEl) {',
'      statusEl.className = "gk-pdf-error";',
'      statusEl.innerHTML =',
'        "No se pudo cargar el visor PDF. <a href=\"" + PDF_URL + "\" target=\"_blank\" rel=\"noopener\">Abrir PDF</a>";',
'    }',
'    return;',
'  }',
'',
'  pdfjsLib.GlobalWorkerOptions.workerSrc =',
'    "https://cdnjs.cloudflare.com/ajax/libs/pdf.js/3.11.174/pdf.worker.min.js";',
'',
'  var renderToken = 0;',
'  var resizeTimer;',
'  /** Documento ya descargado (reutilizar al redimensionar) */',
'  var pdfDocumentCache = null;',
'',
'  function containerWidth() {',
'    if (!container) return window.innerWidth;',
'    var w = container.getBoundingClientRect().width;',
'    if (!w || w < 80) w = window.innerWidth;',
'    return w;',
'  }',
'',
'  function showError(msg) {',
'    if (!container) return;',
'    container.innerHTML =',
'      "<div class=\"gk-pdf-error\">" +',
'      msg +',
'      " <a href=\"" +',
'      PDF_URL +',
'      "\" target=\"_blank\" rel=\"noopener\">Descargar / abrir PDF</a></div>";',
'  }',
'',
'  async function renderPdf() {',
'    if (!container) return;',
'',
'    var myToken = ++renderToken;',
'    var targetW = containerWidth();',
'',
'    if (statusEl) {',
unistr('      statusEl.textContent = "Cargando documento\2026";'),
'    }',
'',
'    try {',
'      if (!pdfDocumentCache) {',
'        var loadingTask = pdfjsLib.getDocument({',
'          url: PDF_URL,',
'          withCredentials: false',
'        });',
'        pdfDocumentCache = await loadingTask.promise;',
'      }',
'      var pdf = pdfDocumentCache;',
'',
'      if (myToken !== renderToken) return;',
'',
'      container.innerHTML = "";',
'      var dpr = window.devicePixelRatio || 1;',
'',
'      for (var p = 1; p <= pdf.numPages; p++) {',
'        if (myToken !== renderToken) return;',
'',
'        var page = await pdf.getPage(p);',
'        var vp1 = page.getViewport({ scale: 1 });',
'        var scale = targetW / vp1.width;',
'        var viewport = page.getViewport({ scale: scale });',
'',
'        var canvas = document.createElement("canvas");',
'        canvas.className = "gk-pdf-page";',
'        canvas.setAttribute("role", "img");',
unistr('        canvas.setAttribute("aria-label", "P\00E1gina " + p + " de " + pdf.numPages);'),
'',
'        var ctx = canvas.getContext("2d", { alpha: false });',
'        var outW = Math.floor(viewport.width * dpr);',
'        var outH = Math.floor(viewport.height * dpr);',
'        canvas.width = outW;',
'        canvas.height = outH;',
'        canvas.style.width = Math.floor(viewport.width) + "px";',
'        canvas.style.height = Math.floor(viewport.height) + "px";',
'',
'        ctx.scale(dpr, dpr);',
'',
'        await page.render({',
'          canvasContext: ctx,',
'          viewport: viewport',
'        }).promise;',
'',
'        container.appendChild(canvas);',
'      }',
'    } catch (e) {',
'      console.error("PDF.js:", e);',
'      if (myToken === renderToken) {',
unistr('        showError("No se pudo mostrar el PDF en la p\00E1gina.");'),
'      }',
'    }',
'  }',
'',
'  function scheduleRender() {',
'    clearTimeout(resizeTimer);',
'    resizeTimer = setTimeout(renderPdf, 350);',
'  }',
'',
'  function init() {',
'    renderPdf();',
'',
'    if (typeof apex !== "undefined") {',
'      if (apex.event && apex.event.subscribe) {',
'        apex.event.subscribe("apexreadyend", scheduleRender);',
'      }',
'    }',
'  }',
'',
'  if (document.readyState === "loading") {',
'    document.addEventListener("DOMContentLoaded", init);',
'  } else {',
'    init();',
'  }',
'',
'  window.addEventListener("load", scheduleRender);',
'  window.addEventListener("resize", scheduleRender);',
'})();',
'</script>',
''))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1079774888348522293)
,p_plug_name=>'page-header'
,p_region_template_options=>'#DEFAULT#:margin-bottom-none:t-Form--noPadding'
,p_plug_template=>wwv_flow_api.id(1990753307084041)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="page-header" style="background-image: url(#APP_IMAGES#assets/images/certificaciones.jpg); style="width: 1343px;"">',
'    <div  style="text-align: center; position: relative;">',
'        <h2>Sosteniblidad</h2>',
'        <ul class="thm-breadcrumb list-unstyled button-right">',
'            <li><a href="https://www.grupokasto.com/ords/PDB1/f?p=102:1:&SESSION.">Inicio</a></li>',
'            <li><span>Sosteniblidad</span></li>',
'        </ul>',
'    </div>',
'</section>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.component_end;
end;
/
