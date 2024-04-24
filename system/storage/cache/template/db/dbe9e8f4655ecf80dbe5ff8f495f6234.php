<?php

use Twig\Environment;
use Twig\Error\LoaderError;
use Twig\Error\RuntimeError;
use Twig\Extension\SandboxExtension;
use Twig\Markup;
use Twig\Sandbox\SecurityError;
use Twig\Sandbox\SecurityNotAllowedTagError;
use Twig\Sandbox\SecurityNotAllowedFilterError;
use Twig\Sandbox\SecurityNotAllowedFunctionError;
use Twig\Source;
use Twig\Template;

/* admin/view/template/marketplace/marketplace_list.twig */
class __TwigTemplate_4fedc5809b9413d377d549d8d33d49d6 extends Template
{
    private $source;
    private $macros = [];

    public function __construct(Environment $env)
    {
        parent::__construct($env);

        $this->source = $this->getSourceContext();

        $this->parent = false;

        $this->blocks = [
        ];
    }

    protected function doDisplay(array $context, array $blocks = [])
    {
        $macros = $this->macros;
        // line 1
        echo ($context["header"] ?? null);
        echo ($context["column_left"] ?? null);
        echo "
<div id=\"content\">
  <div class=\"page-header\">
    <div class=\"container-fluid\">
      <div class=\"float-end\">

        ";
        // line 7
        if (($context["signature"] ?? null)) {
            // line 8
            echo "          <button type=\"button\" id=\"button-api\" data-bs-toggle=\"tooltip\" title=\"";
            echo ($context["button_api"] ?? null);
            echo "\" class=\"btn btn-info\"><i class=\"fa-solid fa-cog\"></i></button>
        ";
        } else {
            // line 10
            echo "          <button type=\"button\" id=\"button-api\" data-bs-toggle=\"tooltip\" title=\"";
            echo ($context["button_api"] ?? null);
            echo "\" data-placement=\"left\" class=\"btn btn-danger\"><i class=\"fa-solid fa-triangle-exclamation\"></i></button>
        ";
        }
        // line 12
        echo "
      </div>
      <h1>";
        // line 14
        echo ($context["heading_title"] ?? null);
        echo "</h1>
      <ol class=\"breadcrumb\">
        ";
        // line 16
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["breadcrumbs"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["breadcrumb"]) {
            // line 17
            echo "          <li class=\"breadcrumb-item\"><a href=\"";
            echo twig_get_attribute($this->env, $this->source, $context["breadcrumb"], "href", [], "any", false, false, false, 17);
            echo "\">";
            echo twig_get_attribute($this->env, $this->source, $context["breadcrumb"], "text", [], "any", false, false, false, 17);
            echo "</a></li>
        ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['breadcrumb'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 19
        echo "      </ol>
    </div>
  </div>
  <div class=\"container-fluid\">

    ";
        // line 24
        if (($context["error_warning"] ?? null)) {
            // line 25
            echo "    <div class=\"alert alert-danger\"><i class=\"fa-solid fa-triangle-exclamation\"></i> ";
            echo ($context["error_warning"] ?? null);
            echo "</div>
    ";
        }
        // line 27
        echo "    
    <div class=\"card\">
      <div class=\"card-header\"><i class=\"fa-solid fa-puzzle-piece\"></i> ";
        // line 29
        echo ($context["text_list"] ?? null);
        echo "</div>
      <div class=\"card-body\">
        <div class=\"card bg-light\">
          <div class=\"card-body\">
            <div id=\"extension-filter\" class=\"input-group dropdown\">
              <input type=\"text\" name=\"filter_search\" value=\"";
        // line 34
        echo ($context["filter_search"] ?? null);
        echo "\" placeholder=\"";
        echo ($context["text_search"] ?? null);
        echo "\" id=\"input-search\" class=\"form-control\"/>
              ";
        // line 35
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["categories"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["category"]) {
            // line 36
            echo "                ";
            if ((twig_get_attribute($this->env, $this->source, $context["category"], "value", [], "any", false, false, false, 36) == ($context["filter_category"] ?? null))) {
                // line 37
                echo "                  <button type=\"button\" class=\"btn btn-outline-secondary dropdown-toggle dropdown-toggle-split\" data-bs-toggle=\"dropdown\">";
                echo ($context["text_category"] ?? null);
                echo " (";
                echo twig_get_attribute($this->env, $this->source, $context["category"], "text", [], "any", false, false, false, 37);
                echo ") <i class=\"fa-solid fa-caret-down\"></i></button>
                ";
            }
            // line 39
            echo "              ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['category'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 40
        echo "              <div class=\"dropdown-menu dropdown-menu-end\">
                ";
        // line 41
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["categories"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["category"]) {
            // line 42
            echo "                  <a href=\"";
            echo twig_get_attribute($this->env, $this->source, $context["category"], "href", [], "any", false, false, false, 42);
            echo "\" class=\"dropdown-item\">";
            echo twig_get_attribute($this->env, $this->source, $context["category"], "text", [], "any", false, false, false, 42);
            echo "</a>
                ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['category'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 44
        echo "              </div>
              <button type=\"button\" id=\"button-filter\" data-bs-toggle=\"tooltip\" title=\"";
        // line 45
        echo ($context["button_filter"] ?? null);
        echo "\" class=\"btn btn-primary\"><i class=\"fa-solid fa-filter\"></i></button>
            </div>
            <input type=\"hidden\" name=\"filter_category_id\" value=\"";
        // line 47
        echo ($context["filter_category_id"] ?? null);
        echo "\" class=\"form-control\"/> <input type=\"hidden\" name=\"filter_download_id\" value=\"";
        echo ($context["filter_download_id"] ?? null);
        echo "\" class=\"form-control\"/> <input type=\"hidden\" name=\"filter_rating\" value=\"";
        echo ($context["filter_rating"] ?? null);
        echo "\" class=\"form-control\"/> <input type=\"hidden\" name=\"filter_license\" value=\"";
        echo ($context["filter_license"] ?? null);
        echo "\" class=\"form-control\"/> <input type=\"hidden\" name=\"filter_partner\" value=\"";
        echo ($context["filter_partner"] ?? null);
        echo "\" class=\"form-control\"/> <input type=\"hidden\" name=\"sort\" value=\"";
        echo ($context["sort"] ?? null);
        echo "\" class=\"form-control\"/>
          </div>
        </div>
        <br/>
        <div class=\"row mb-4\">
          <div class=\"col-sm-auto me-sm-auto mb-2 mb-lg-0\">
            <div class=\"btn-group\">";
        // line 53
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["licenses"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["license"]) {
            // line 54
            echo "                ";
            if ((twig_get_attribute($this->env, $this->source, $context["license"], "value", [], "any", false, false, false, 54) == ($context["filter_license"] ?? null))) {
                // line 55
                echo "                  <a href=\"";
                echo twig_get_attribute($this->env, $this->source, $context["license"], "href", [], "any", false, false, false, 55);
                echo "\" class=\"btn btn-light active\">";
                echo twig_get_attribute($this->env, $this->source, $context["license"], "text", [], "any", false, false, false, 55);
                echo "</a>";
            } else {
                echo "<a href=\"";
                echo twig_get_attribute($this->env, $this->source, $context["license"], "href", [], "any", false, false, false, 55);
                echo "\" class=\"btn btn-light\">";
                echo twig_get_attribute($this->env, $this->source, $context["license"], "text", [], "any", false, false, false, 55);
                echo "</a>";
            }
            // line 56
            echo "                ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['license'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 57
        echo "                <a href=\"https://shop.opencart-russia.ru/\" target=\"_blank\" class=\"btn btn-light\">Расширения c opencart-russia.ru</a>
            </div>
          </div>
          <div class=\"col-xl-3 col-lg-5 col-sm-auto\">
            <div class=\"input-group float-end\">
              <div class=\"input-group-text\"><i class=\"fa-solid fa-arrow-down-short-wide\"></i></div>
              <select onchange=\"location = this.value;\" class=\"form-select\">
                ";
        // line 64
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable($context["sorts"]);
        foreach ($context['_seq'] as $context["_key"] => $context["sorts"]) {
            // line 65
            echo "                  <option value=\"";
            echo twig_get_attribute($this->env, $this->source, $context["sorts"], "href", [], "any", false, false, false, 65);
            echo "\"";
            if ((twig_get_attribute($this->env, $this->source, $context["sorts"], "value", [], "any", false, false, false, 65) == ($context["sort"] ?? null))) {
                echo " selected";
            }
            echo ">";
            echo twig_get_attribute($this->env, $this->source, $context["sorts"], "text", [], "any", false, false, false, 65);
            echo "</option>
                ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['sorts'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 67
        echo "              </select>
            </div>
          </div>
        </div>
        <div>
          ";
        // line 72
        if (($context["promotions"] ?? null)) {
            // line 73
            echo "            <h3>";
            echo ($context["text_featured"] ?? null);
            echo "</h3>
            <div class=\"row\">
              ";
            // line 75
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(($context["promotions"] ?? null));
            foreach ($context['_seq'] as $context["_key"] => $context["extension"]) {
                // line 76
                echo "                ";
                if ($context["extension"]) {
                    // line 77
                    echo "                  <div class=\"col-lg-3 col-md-4 col-sm-6 col-12\">
                    <section>
                      <div class=\"extension-preview text-center\">
                        <a href=\"";
                    // line 80
                    echo twig_get_attribute($this->env, $this->source, $context["extension"], "href", [], "any", false, false, false, 80);
                    echo "\">
                          <div class=\"extension-description\">

                          </div>
                          <img src=\"";
                    // line 84
                    echo twig_get_attribute($this->env, $this->source, $context["extension"], "image", [], "any", false, false, false, 84);
                    echo "\" alt=\"";
                    echo twig_get_attribute($this->env, $this->source, $context["extension"], "name", [], "any", false, false, false, 84);
                    echo "\" title=\"";
                    echo twig_get_attribute($this->env, $this->source, $context["extension"], "name", [], "any", false, false, false, 84);
                    echo "\" class=\"img-fluid\"/></a>
                      </div>
                      <div class=\"extension-name\">
                        <h4><a href=\"";
                    // line 87
                    echo twig_get_attribute($this->env, $this->source, $context["extension"], "href", [], "any", false, false, false, 87);
                    echo "\">";
                    echo twig_get_attribute($this->env, $this->source, $context["extension"], "name", [], "any", false, false, false, 87);
                    echo "</a></h4>
                        ";
                    // line 88
                    echo twig_get_attribute($this->env, $this->source, $context["extension"], "price", [], "any", false, false, false, 88);
                    echo "</div>
                      <div class=\"extension-rate\">
                        <div class=\"row\">
                          <div class=\"col-6\">";
                    // line 91
                    $context['_parent'] = $context;
                    $context['_seq'] = twig_ensure_traversable(range(1, 5));
                    foreach ($context['_seq'] as $context["_key"] => $context["i"]) {
                        // line 92
                        echo "                              ";
                        if ((twig_get_attribute($this->env, $this->source, $context["extension"], "rating", [], "any", false, false, false, 92) < $context["i"])) {
                            echo "<i class=\"fa-regular fa-star\"></i>";
                        } else {
                            echo "<i class=\"fa-solid fa-star\"></i>";
                        }
                        // line 93
                        echo "                            ";
                    }
                    $_parent = $context['_parent'];
                    unset($context['_seq'], $context['_iterated'], $context['_key'], $context['i'], $context['_parent'], $context['loop']);
                    $context = array_intersect_key($context, $_parent) + $_parent;
                    echo "</div>
                          <div class=\"col-6\">
                            <div class=\"text-end\">";
                    // line 95
                    echo twig_get_attribute($this->env, $this->source, $context["extension"], "rating_total", [], "any", false, false, false, 95);
                    echo " ";
                    echo ($context["text_reviews"] ?? null);
                    echo "</div>
                          </div>
                        </div>
                      </div>
                    </section>
                  </div>
                ";
                }
                // line 102
                echo "              ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['extension'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 103
            echo "            </div>
            <hr/>
          ";
        }
        // line 106
        echo "          ";
        if (($context["extensions"] ?? null)) {
            // line 107
            echo "            <div class=\"row\">
              ";
            // line 108
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(($context["extensions"] ?? null));
            foreach ($context['_seq'] as $context["_key"] => $context["extension"]) {
                // line 109
                echo "                ";
                if ($context["extension"]) {
                    // line 110
                    echo "                  <div class=\"col-lg-3 col-md-4 col-sm-6 col-12\">
                    <section>
                      <div class=\"extension-preview text-center\"><a href=\"";
                    // line 112
                    echo twig_get_attribute($this->env, $this->source, $context["extension"], "href", [], "any", false, false, false, 112);
                    echo "\">
                          <div class=\"extension-description\"></div>
                          <img src=\"";
                    // line 114
                    echo twig_get_attribute($this->env, $this->source, $context["extension"], "image", [], "any", false, false, false, 114);
                    echo "\" alt=\"";
                    echo twig_get_attribute($this->env, $this->source, $context["extension"], "name", [], "any", false, false, false, 114);
                    echo "\" title=\"";
                    echo twig_get_attribute($this->env, $this->source, $context["extension"], "name", [], "any", false, false, false, 114);
                    echo "\" class=\"img-fluid\"/></a></div>
                      <div class=\"extension-name\">
                        <h4><a href=\"";
                    // line 116
                    echo twig_get_attribute($this->env, $this->source, $context["extension"], "href", [], "any", false, false, false, 116);
                    echo "\">";
                    echo twig_get_attribute($this->env, $this->source, $context["extension"], "name", [], "any", false, false, false, 116);
                    echo "</a></h4>
                        ";
                    // line 117
                    echo twig_get_attribute($this->env, $this->source, $context["extension"], "price", [], "any", false, false, false, 117);
                    echo "</div>
                      <div class=\"extension-rate\">
                        <div class=\"row\">
                          <div class=\"col-6\">";
                    // line 120
                    $context['_parent'] = $context;
                    $context['_seq'] = twig_ensure_traversable(range(1, 5));
                    foreach ($context['_seq'] as $context["_key"] => $context["i"]) {
                        // line 121
                        echo "                              ";
                        if ((twig_get_attribute($this->env, $this->source, $context["extension"], "rating", [], "any", false, false, false, 121) < $context["i"])) {
                            echo "<i class=\"fa-regular fa-star\"></i>";
                        } else {
                            echo "<i class=\"fa-solid fa-star\"></i>";
                        }
                        // line 122
                        echo "                            ";
                    }
                    $_parent = $context['_parent'];
                    unset($context['_seq'], $context['_iterated'], $context['_key'], $context['i'], $context['_parent'], $context['loop']);
                    $context = array_intersect_key($context, $_parent) + $_parent;
                    echo "</div>
                          <div class=\"col-6\">
                            <div class=\"text-end\">";
                    // line 124
                    echo twig_get_attribute($this->env, $this->source, $context["extension"], "rating_total", [], "any", false, false, false, 124);
                    echo " ";
                    echo ($context["text_reviews"] ?? null);
                    echo "</div>
                          </div>
                        </div>
                      </div>
                    </section>
                  </div>
                ";
                }
                // line 131
                echo "              ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['extension'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            echo "</div>
          ";
        } else {
            // line 133
            echo "            <p class=\"text-center\">";
            echo ($context["text_no_results"] ?? null);
            echo "</p>
          ";
        }
        // line 135
        echo "        </div>
        <div class=\"row\">
          <div class=\"col-sm-12 text-center\">";
        // line 137
        echo ($context["pagination"] ?? null);
        echo "</div>
        </div>
      </div>
    </div>
  </div>
</div>
<script type=\"text/javascript\"><!--
\$('#button-api').on('click', function (e) {
    \$('#modal-api').remove();

    \$.ajax({
        url: 'index.php?route=marketplace/api&user_token=";
        // line 148
        echo ($context["user_token"] ?? null);
        echo "',
        dataType: 'html',
        beforeSend: function () {
            \$('#button-api').button('loading');
        },
        complete: function () {
            \$('#button-api').button('reset');
        },
        success: function (html) {
            \$('body').append(html);

            \$('#modal-api').modal('show');
        },
        error: function (xhr, ajaxOptions, thrownError) {
            console.log(thrownError + \"\\r\\n\" + xhr.statusText + \"\\r\\n\" + xhr.responseText);
        }
    });
});
//--></script>
<script type=\"text/javascript\"><!--
\$('#button-filter').on('click', function (e) {
    var url = 'index.php?route=marketplace/marketplace&user_token=";
        // line 169
        echo ($context["user_token"] ?? null);
        echo "';

    var input = \$('#extension-filter :input');

    for (i = 0; i < input.length; i++) {
        if (\$(input[i]).val() !== '') {
            url += '&' + \$(input[i]).attr('name') + '=' + \$(input[i]).val()
        }
    }

    download();

    location = url;
});

\$('#input-search').keydown(function (e) {
    if (e.keyCode == 13) {
        e.preventDefault();

        \$('#button-filter').trigger('click');
    }
});
//--></script>
";
        // line 192
        echo ($context["footer"] ?? null);
        echo "
";
    }

    public function getTemplateName()
    {
        return "admin/view/template/marketplace/marketplace_list.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  495 => 192,  469 => 169,  445 => 148,  431 => 137,  427 => 135,  421 => 133,  412 => 131,  400 => 124,  391 => 122,  384 => 121,  380 => 120,  374 => 117,  368 => 116,  359 => 114,  354 => 112,  350 => 110,  347 => 109,  343 => 108,  340 => 107,  337 => 106,  332 => 103,  326 => 102,  314 => 95,  305 => 93,  298 => 92,  294 => 91,  288 => 88,  282 => 87,  272 => 84,  265 => 80,  260 => 77,  257 => 76,  253 => 75,  247 => 73,  245 => 72,  238 => 67,  223 => 65,  219 => 64,  210 => 57,  204 => 56,  191 => 55,  188 => 54,  184 => 53,  165 => 47,  160 => 45,  157 => 44,  146 => 42,  142 => 41,  139 => 40,  133 => 39,  125 => 37,  122 => 36,  118 => 35,  112 => 34,  104 => 29,  100 => 27,  94 => 25,  92 => 24,  85 => 19,  74 => 17,  70 => 16,  65 => 14,  61 => 12,  55 => 10,  49 => 8,  47 => 7,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("", "admin/view/template/marketplace/marketplace_list.twig", "C:\\server\\domains\\loc\\opencart.loc\\public_html\\admin\\view\\template\\marketplace\\marketplace_list.twig");
    }
}
