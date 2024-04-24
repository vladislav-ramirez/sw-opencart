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

/* install/view/template/install/step_3.twig */
class __TwigTemplate_7bb1ac611029ae063cbf759dd621dbf1 extends Template
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
        echo "
<div id=\"content\">
  <div class=\"page-header\">
    <div class=\"container\">
      <div class=\"float-end\">";
        // line 5
        echo ($context["language"] ?? null);
        echo "</div>
      <h1>";
        // line 6
        echo ($context["heading_title"] ?? null);
        echo "</h1>
    </div>
  </div>
  <div class=\"container\">
    ";
        // line 10
        if (($context["error_warning"] ?? null)) {
            // line 11
            echo "      <div class=\"alert alert-danger\"><i class=\"fa-solid fa-circle-exclamation\"></i> ";
            echo ($context["error_warning"] ?? null);
            echo "</div>
    ";
        }
        // line 13
        echo "    <div class=\"card\">
      <div class=\"card-header\"><i class=\"fa-solid fa-cogs\"></i> ";
        // line 14
        echo ($context["text_step_3"] ?? null);
        echo "</div>
      <div class=\"card-body\">
        <form action=\"";
        // line 16
        echo ($context["action"] ?? null);
        echo "\" method=\"post\" enctype=\"multipart/form-data\">
          <fieldset>
            <legend>";
        // line 18
        echo ($context["text_db_connection"] ?? null);
        echo "</legend>

            <div class=\"row\">

              <div class=\"col-md-4 order-md-2\">
                <div class=\"alert alert-info\">
                  <p>";
        // line 24
        echo ($context["text_help"] ?? null);
        echo "</p>
                  <ul class=\"text-info\">

                    <li><strong><a href=\"https://beget.com/p169567/ru/kb/manual/mysql/\" target=\"_blank\">Beget - Настройка MySql</a></strong></li>
\t\t
                    <li><strong><a href=\"https://docs.cpanel.net/cpanel/databases/mysql-databases/\" target=\"_blank\">";
        // line 29
        echo ($context["text_cpanel"] ?? null);
        echo "</a></strong></li>
                    <li><strong><a href=\"https://support.plesk.com/hc/en-us/articles/115004263014-How-to-create-a-database-in-Plesk\" target=\"_blank\">";
        // line 30
        echo ($context["text_plesk"] ?? null);
        echo "</a></strong></li>
                  </ul>
                </div>
              </div>
              <div class=\"col-md-8 order-md-1\">

                <div class=\"row mb-3\">
                  <div class=\"col\">
                    <label for=\"input-db-driver\" class=\"form-label\">";
        // line 38
        echo ($context["entry_db_driver"] ?? null);
        echo "</label>
                    <select name=\"db_driver\" id=\"input-db-driver\" class=\"form-control\">
                      ";
        // line 40
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["drivers"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["driver"]) {
            // line 41
            echo "                        <option value=\"";
            echo twig_get_attribute($this->env, $this->source, $context["driver"], "value", [], "any", false, false, false, 41);
            echo "\"";
            if ((($context["db_driver"] ?? null) == twig_get_attribute($this->env, $this->source, $context["driver"], "value", [], "any", false, false, false, 41))) {
                echo " selected";
            }
            echo ">";
            echo twig_get_attribute($this->env, $this->source, $context["driver"], "text", [], "any", false, false, false, 41);
            echo "</option>
                      ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['driver'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 43
        echo "                    </select>
                    ";
        // line 44
        if (($context["error_db_driver"] ?? null)) {
            // line 45
            echo "                      <div class=\"text-danger\">";
            echo ($context["error_db_driver"] ?? null);
            echo "</div>
                    ";
        }
        // line 47
        echo "                  </div>
                  <div class=\"col required\">
                    <label for=\"input-db-hostname\" class=\"form-label\">";
        // line 49
        echo ($context["entry_db_hostname"] ?? null);
        echo "</label>
                    <input type=\"text\" name=\"db_hostname\" value=\"";
        // line 50
        echo ($context["db_hostname"] ?? null);
        echo "\" id=\"input-db-hostname\" class=\"form-control\"/>
                    ";
        // line 51
        if (($context["error_db_hostname"] ?? null)) {
            // line 52
            echo "                      <div class=\"text-danger\">";
            echo ($context["error_db_hostname"] ?? null);
            echo "</div>
                    ";
        }
        // line 54
        echo "                  </div>
                </div>

                <div class=\"row mb-3\">
                  <div class=\"col required\">
                    <label for=\"input-db-username\" class=\"form-label\">";
        // line 59
        echo ($context["entry_db_username"] ?? null);
        echo "</label>
                    <input type=\"text\" name=\"db_username\" value=\"";
        // line 60
        echo ($context["db_username"] ?? null);
        echo "\" id=\"input-db-username\" class=\"form-control\"/>
                    ";
        // line 61
        if (($context["error_db_username"] ?? null)) {
            // line 62
            echo "                      <div class=\"text-danger\">";
            echo ($context["error_db_username"] ?? null);
            echo "</div>
                    ";
        }
        // line 64
        echo "                  </div>
                  <div class=\"col\">
                    <label for=\"input-db-password\" class=\"form-label\">";
        // line 66
        echo ($context["entry_db_password"] ?? null);
        echo "</label>
                    <input type=\"password\" name=\"db_password\" value=\"";
        // line 67
        echo ($context["db_password"] ?? null);
        echo "\" id=\"input-db-password\" class=\"form-control\" autocomplete=\"new-password\"/>
                  </div>
                </div>

                <div class=\"row mb-3\">

                  <div class=\"col-6 required\">
                    <label for=\"input-db-database\" class=\"text-bold form-label\">";
        // line 74
        echo ($context["entry_db_database"] ?? null);
        echo "</label>
                    <input type=\"text\" name=\"db_database\" value=\"";
        // line 75
        echo ($context["db_database"] ?? null);
        echo "\" id=\"input-db-database\" class=\"form-control\"/>
                    ";
        // line 76
        if (($context["error_db_database"] ?? null)) {
            // line 77
            echo "                      <div class=\"text-danger\">";
            echo ($context["error_db_database"] ?? null);
            echo "</div>
                    ";
        }
        // line 79
        echo "                  </div>

                  <div class=\"col-3\">
                    <label for=\"input-db-prefix\" class=\"form-label\">";
        // line 82
        echo ($context["entry_db_prefix"] ?? null);
        echo "</label>
                    <input type=\"text\" name=\"db_prefix\" value=\"";
        // line 83
        echo ($context["db_prefix"] ?? null);
        echo "\" id=\"input-db-prefix\" class=\"form-control\"/>
                    ";
        // line 84
        if (($context["error_db_prefix"] ?? null)) {
            // line 85
            echo "                      <div class=\"text-danger\">";
            echo ($context["error_db_prefix"] ?? null);
            echo "</div>
                    ";
        }
        // line 87
        echo "                  </div>

                  <div class=\"col-3 required\">
                    <label for=\"input-db-port\" class=\"form-label\">";
        // line 90
        echo ($context["entry_db_port"] ?? null);
        echo "</label>
                    <input type=\"text\" name=\"db_port\" value=\"";
        // line 91
        echo ($context["db_port"] ?? null);
        echo "\" id=\"input-db-port\" class=\"form-control\"/>
                    ";
        // line 92
        if (($context["error_db_port"] ?? null)) {
            // line 93
            echo "                      <div class=\"text-danger\">";
            echo ($context["error_db_port"] ?? null);
            echo "</div>
                    ";
        }
        // line 95
        echo "                  </div>

                </div>
              </div>
            </div>
          </fieldset>
          <fieldset>
            <legend>";
        // line 102
        echo ($context["text_db_administration"] ?? null);
        echo "</legend>
            <div class=\"row mb-3\">
              <div class=\"col required\">
                <label for=\"input-username\" class=\"form-label\">";
        // line 105
        echo ($context["entry_username"] ?? null);
        echo "</label>
                <input type=\"text\" name=\"username\" value=\"";
        // line 106
        echo ($context["username"] ?? null);
        echo "\" id=\"input-username\" class=\"form-control\"/>
                ";
        // line 107
        if (($context["error_username"] ?? null)) {
            // line 108
            echo "                  <div class=\"text-danger\">";
            echo ($context["error_username"] ?? null);
            echo "</div>
                ";
        }
        // line 110
        echo "              </div>
              <div class=\"col required\">
                <label for=\"input-password\" class=\"form-label\">";
        // line 112
        echo ($context["entry_password"] ?? null);
        echo "</label>
                <input type=\"text\" name=\"password\" value=\"";
        // line 113
        echo ($context["password"] ?? null);
        echo "\" id=\"input-password\" class=\"form-control\"/>
                ";
        // line 114
        if (($context["error_password"] ?? null)) {
            // line 115
            echo "                  <div class=\"text-danger\">";
            echo ($context["error_password"] ?? null);
            echo "</div>
                ";
        }
        // line 117
        echo "              </div>
            </div>
            <div class=\"required\">
              <label for=\"input-email\" class=\"form-label\">";
        // line 120
        echo ($context["entry_email"] ?? null);
        echo "</label> <input type=\"text\" name=\"email\" value=\"";
        echo ($context["email"] ?? null);
        echo "\" id=\"input-email\" class=\"form-control\"/>
              ";
        // line 121
        if (($context["error_email"] ?? null)) {
            // line 122
            echo "                <div class=\"text-danger\">";
            echo ($context["error_email"] ?? null);
            echo "</div>
              ";
        }
        // line 124
        echo "            </div>
          </fieldset>
          <div class=\"row\">
            <div class=\"col\"><a href=\"";
        // line 127
        echo ($context["back"] ?? null);
        echo "\" class=\"btn btn-light\">";
        echo ($context["button_back"] ?? null);
        echo "</a></div>
            <div class=\"col text-end\"><input type=\"submit\" value=\"";
        // line 128
        echo ($context["button_continue"] ?? null);
        echo "\" class=\"btn btn-primary\"/></div>
          </div>
        </form>
      </div>
    </div>
  </div>
</div>
";
        // line 135
        echo ($context["footer"] ?? null);
        echo "
";
    }

    public function getTemplateName()
    {
        return "install/view/template/install/step_3.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  353 => 135,  343 => 128,  337 => 127,  332 => 124,  326 => 122,  324 => 121,  318 => 120,  313 => 117,  307 => 115,  305 => 114,  301 => 113,  297 => 112,  293 => 110,  287 => 108,  285 => 107,  281 => 106,  277 => 105,  271 => 102,  262 => 95,  256 => 93,  254 => 92,  250 => 91,  246 => 90,  241 => 87,  235 => 85,  233 => 84,  229 => 83,  225 => 82,  220 => 79,  214 => 77,  212 => 76,  208 => 75,  204 => 74,  194 => 67,  190 => 66,  186 => 64,  180 => 62,  178 => 61,  174 => 60,  170 => 59,  163 => 54,  157 => 52,  155 => 51,  151 => 50,  147 => 49,  143 => 47,  137 => 45,  135 => 44,  132 => 43,  117 => 41,  113 => 40,  108 => 38,  97 => 30,  93 => 29,  85 => 24,  76 => 18,  71 => 16,  66 => 14,  63 => 13,  57 => 11,  55 => 10,  48 => 6,  44 => 5,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("", "install/view/template/install/step_3.twig", "C:\\server\\domains\\loc\\opencart.loc\\public_html\\install\\view\\template\\install\\step_3.twig");
    }
}
