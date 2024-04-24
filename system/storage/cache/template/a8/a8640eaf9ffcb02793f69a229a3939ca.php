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

/* admin/view/template/common/filemanager_list.twig */
class __TwigTemplate_9a0d992df87b12968ce87998567b6473 extends Template
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
        echo "<div class=\"row mb-3\">
  <div class=\"col-sm-5\">
    <a href=\"";
        // line 3
        echo ($context["parent"] ?? null);
        echo "\" id=\"button-parent\" data-bs-toggle=\"tooltip\" title=\"";
        echo ($context["button_parent"] ?? null);
        echo "\" class=\"btn btn-light\"><i class=\"fa-solid fa-level-up-alt\"></i></a>
    <a href=\"";
        // line 4
        echo ($context["refresh"] ?? null);
        echo "\" id=\"button-refresh\" data-bs-toggle=\"tooltip\" title=\"";
        echo ($context["button_refresh"] ?? null);
        echo "\" class=\"btn btn-light\"><i class=\"fa-solid fa-rotate\"></i></a>
    <button type=\"button\" data-bs-toggle=\"tooltip\" title=\"";
        // line 5
        echo ($context["button_upload"] ?? null);
        echo "\" id=\"button-upload\" class=\"btn btn-primary\"><i class=\"fa-solid fa-upload\"></i></button>
    <button type=\"button\" data-bs-toggle=\"tooltip\" title=\"";
        // line 6
        echo ($context["button_folder"] ?? null);
        echo "\" id=\"button-folder\" class=\"btn btn-light\"><i class=\"fa-solid fa-folder\"></i></button>
    <button type=\"button\" data-bs-toggle=\"tooltip\" title=\"";
        // line 7
        echo ($context["button_delete"] ?? null);
        echo "\" id=\"button-delete\" class=\"btn btn-danger\"><i class=\"fa-regular fa-trash-can\"></i></button>
    <input type=\"hidden\" name=\"directory\" value=\"";
        // line 8
        echo ($context["directory"] ?? null);
        echo "\" id=\"input-directory\"/>
  </div>
  <div class=\"col-sm-7\">
    <div class=\"input-group\">
      <input type=\"text\" name=\"search\" value=\"";
        // line 12
        echo ($context["filter_name"] ?? null);
        echo "\" placeholder=\"";
        echo ($context["entry_search"] ?? null);
        echo "\" id=\"input-search\" class=\"form-control\">
      <button type=\"button\" id=\"button-search\" data-bs-toggle=\"tooltip\" title=\"";
        // line 13
        echo ($context["button_search"] ?? null);
        echo "\" class=\"btn btn-primary\"><i class=\"fa-solid fa-search\"></i></button>
    </div>
  </div>
</div>
<div id=\"modal-folder\" class=\"row mb-3\" style=\"display: none;\">
  <div class=\"col-sm-12\">
    <div class=\"input-group\">
      <div class=\"input-group\">
        <input type=\"text\" name=\"folder\" value=\"\" placeholder=\"";
        // line 21
        echo ($context["entry_folder"] ?? null);
        echo "\" id=\"input-folder\" class=\"form-control\">
        <button type=\"button\" title=\"";
        // line 22
        echo ($context["button_folder"] ?? null);
        echo "\" id=\"button-create\" class=\"btn btn-primary\"><i class=\"fa-solid fa-plus-circle\"></i></button>
      </div>
    </div>
  </div>
</div>
<hr/>

<ol class=\"breadcrumb mb-0\">
\t<li class=\"breadcrumb-item\"><i class=\"fa fa-home\"></i></li>\t  
\t";
        // line 31
        if (($context["dirs"] ?? null)) {
            // line 32
            echo "\t\t";
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(($context["dirs"] ?? null));
            foreach ($context['_seq'] as $context["_key"] => $context["dir"]) {
                // line 33
                echo "\t\t\t<li class=\"breadcrumb-item\">";
                echo $context["dir"];
                echo "</li>
\t\t";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['dir'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 35
            echo "\t";
        }
        // line 36
        echo "\t<li></li>
</ol>
<hr />
\t\t
<div class=\"row row-cols-sm-3 row-cols-lg-4\">
  ";
        // line 41
        $context["path_row"] = 0;
        // line 42
        echo "  ";
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["directories"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["directory"]) {
            // line 43
            echo "    <div class=\"mb-3\">
      <div class=\"mb-1\" style=\"min-height: 140px;\">
        <a href=\"";
            // line 45
            echo twig_get_attribute($this->env, $this->source, $context["directory"], "href", [], "any", false, false, false, 45);
            echo "\" class=\"directory mb-1\"><i class=\"fa-solid fa-folder fa-5x\"></i></a>
      </div>
      <div class=\"form-check\">
        <label for=\"input-path-";
            // line 48
            echo ($context["path_row"] ?? null);
            echo "\" class=\"form-check-label\">";
            echo twig_get_attribute($this->env, $this->source, $context["directory"], "name", [], "any", false, false, false, 48);
            echo "</label>
        <input type=\"checkbox\" name=\"path[]\" value=\"";
            // line 49
            echo twig_get_attribute($this->env, $this->source, $context["directory"], "path", [], "any", false, false, false, 49);
            echo "\" id=\"input-path-";
            echo ($context["path_row"] ?? null);
            echo "\" class=\"form-check-input\"/>
      </div>
    </div>
    ";
            // line 52
            $context["path_row"] = (($context["path_row"] ?? null) + 1);
            // line 53
            echo "  ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['directory'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 54
        echo "  ";
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["images"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["image"]) {
            // line 55
            echo "    <div class=\"mb-3\">
      <div class=\"mb-1\" style=\"min-height: 140px;\">
        <a href=\"";
            // line 57
            echo twig_get_attribute($this->env, $this->source, $context["image"], "href", [], "any", false, false, false, 57);
            echo "\" class=\"thumbnail mb-1\"><img src=\"";
            echo twig_get_attribute($this->env, $this->source, $context["image"], "thumb", [], "any", false, false, false, 57);
            echo "\" alt=\"";
            echo twig_get_attribute($this->env, $this->source, $context["image"], "name", [], "any", false, false, false, 57);
            echo "\" title=\"";
            echo twig_get_attribute($this->env, $this->source, $context["image"], "name", [], "any", false, false, false, 57);
            echo "\" class=\"img-thumbnail\"/></a>
      </div>
      <div class=\"form-check\">
        <label for=\"input-path-";
            // line 60
            echo ($context["path_row"] ?? null);
            echo "\" class=\"form-check-label\">";
            echo twig_get_attribute($this->env, $this->source, $context["image"], "name", [], "any", false, false, false, 60);
            echo "</label>
        <input type=\"checkbox\" name=\"path[]\" value=\"";
            // line 61
            echo twig_get_attribute($this->env, $this->source, $context["image"], "path", [], "any", false, false, false, 61);
            echo "\" id=\"input-path-";
            echo ($context["path_row"] ?? null);
            echo "\" class=\"form-check-input\"/>
      </div>
    </div>
    ";
            // line 64
            $context["path_row"] = (($context["path_row"] ?? null) + 1);
            // line 65
            echo "  ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['image'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 66
        echo "</div>
";
        // line 67
        if (($context["pagination"] ?? null)) {
            // line 68
            echo "  <div class=\"modal-footer\">";
            echo ($context["pagination"] ?? null);
            echo "</div>
";
        }
    }

    public function getTemplateName()
    {
        return "admin/view/template/common/filemanager_list.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  218 => 68,  216 => 67,  213 => 66,  207 => 65,  205 => 64,  197 => 61,  191 => 60,  179 => 57,  175 => 55,  170 => 54,  164 => 53,  162 => 52,  154 => 49,  148 => 48,  142 => 45,  138 => 43,  133 => 42,  131 => 41,  124 => 36,  121 => 35,  112 => 33,  107 => 32,  105 => 31,  93 => 22,  89 => 21,  78 => 13,  72 => 12,  65 => 8,  61 => 7,  57 => 6,  53 => 5,  47 => 4,  41 => 3,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("", "admin/view/template/common/filemanager_list.twig", "C:\\server\\domains\\loc\\opencart.loc\\public_html\\admin\\view\\template\\common\\filemanager_list.twig");
    }
}
