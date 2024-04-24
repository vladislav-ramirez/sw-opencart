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

/* install/view/template/install/step_4.twig */
class __TwigTemplate_5cb5edbeefd8036dd03d9768773e723a extends Template
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
\t<div class=\"page-header\">
\t\t<div class=\"container\">
\t\t\t<h1>";
        // line 5
        echo ($context["heading_title"] ?? null);
        echo "</h1>
\t\t</div>
\t</div>
\t<div class=\"container\">
\t\t<div class=\"alert alert-danger\"><i class=\"fa-solid fa-circle-exclamation\"></i> ";
        // line 9
        echo ($context["error_warning"] ?? null);
        echo "</div>
\t\t<div class=\"card\">
\t\t\t<div class=\"card-header\"><i class=\"fa-solid fa-pencil\"></i> ";
        // line 11
        echo ($context["text_step_4"] ?? null);
        echo "</div>
\t\t\t<div class=\"card-body p-4\">
\t\t\t\t<div class=\"row mb-4\">
\t\t\t\t\t<div class=\"col-6 text-center\">
\t\t\t\t\t\t<a href=\"../\"><img src=\"view/image/catalog.jpg\" alt=\"OpenCart\" title=\"OpenCart\" class=\"img-thumbnail\"/></a>
\t\t\t\t\t\t<br/>
\t\t\t\t\t\t<a href=\"../\" class=\"btn btn-outline-secondary mt-3\">";
        // line 17
        echo ($context["text_catalog"] ?? null);
        echo "</a>
\t\t\t\t\t</div>
\t\t\t\t\t<div class=\"col-6 text-center\">
\t\t\t\t\t\t<a href=\"../admin/\" class=\"mb-3\"><img src=\"view/image/admin.jpg\" alt=\"OpenCart\" title=\"OpenCart\" class=\"img-thumbnail\"/></a>
\t\t\t\t\t\t<br/>
\t\t\t\t\t\t<a href=\"../admin/\" class=\"btn btn-outline-secondary mt-3\">";
        // line 22
        echo ($context["text_admin"] ?? null);
        echo "</a>
\t\t\t\t\t</div>
\t\t\t\t</div>
\t\t\t\t
\t\t\t\t<div class=\"row mb-4\">
\t\t\t\t\t<div class=\"col-4 text-center\">
\t\t\t\t\t\t<h3><a href=\"http://opencart-russia.ru/\" target=\"_blank\" class=\"icon transition\"><i class=\"fa fa-globe\"></i></a> ";
        // line 28
        echo ($context["text_facebook"] ?? null);
        echo "</h3>
\t\t\t\t\t\t<p>";
        // line 29
        echo ($context["text_facebook_description"] ?? null);
        echo "</p>
\t\t\t\t\t\t<a href=\"http://opencart-russia.ru/\" target=\"_blank\">";
        // line 30
        echo ($context["text_facebook_visit"] ?? null);
        echo "</a>
\t\t\t\t\t</div>
\t\t\t\t\t<div class=\"col-4 text-center\">
\t\t\t\t\t\t<h3><a href=\"https://forum.opencart-russia.ru/\" target=\"_blank\" class=\"icon transition\"><i class=\"fa fa-comments\"></i></a> ";
        // line 33
        echo ($context["text_forum"] ?? null);
        echo "</h3>
\t\t\t\t\t\t<p>";
        // line 34
        echo ($context["text_forum_description"] ?? null);
        echo "</p>
\t\t\t\t\t\t<a href=\"https://forum.opencart-russia.ru/\" target=\"_blank\">";
        // line 35
        echo ($context["text_forum_visit"] ?? null);
        echo "</a>
\t\t\t\t\t</div>
\t\t\t\t\t<div class=\"col-4 text-center\">
\t\t\t\t\t\t<h3><a href=\"https://forum.opencart-russia.ru/forums/poisk-ispolnitelei/\" target=\"_blank\" class=\"icon transition\"><i class=\"fa fa-user\"></i></a> ";
        // line 38
        echo ($context["text_commercial"] ?? null);
        echo "</h3>
\t\t\t\t\t\t<p>";
        // line 39
        echo ($context["text_commercial_description"] ?? null);
        echo "</p>
\t\t\t\t\t\t<a href=\"https://forum.opencart-russia.ru/forums/poisk-ispolnitelei/\" target=\"_blank\">";
        // line 40
        echo ($context["text_commercial_visit"] ?? null);
        echo "</a>
\t\t\t\t\t</div>
\t\t\t\t</div>
\t\t
\t\t\t</div>
\t\t</div>
\t</div>
</div>
";
        // line 48
        echo ($context["footer"] ?? null);
        echo "
";
    }

    public function getTemplateName()
    {
        return "install/view/template/install/step_4.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  129 => 48,  118 => 40,  114 => 39,  110 => 38,  104 => 35,  100 => 34,  96 => 33,  90 => 30,  86 => 29,  82 => 28,  73 => 22,  65 => 17,  56 => 11,  51 => 9,  44 => 5,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("", "install/view/template/install/step_4.twig", "C:\\server\\domains\\loc\\opencart.loc\\public_html\\install\\view\\template\\install\\step_4.twig");
    }
}
