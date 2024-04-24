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

/* catalog/view/template/information/gdpr.twig */
class __TwigTemplate_8fec3db22d52d8ea48aeff6013fd6504 extends Template
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
<div id=\"account-gdpr\" class=\"container\">
  <ul class=\"breadcrumb\">
    ";
        // line 4
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["breadcrumbs"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["breadcrumb"]) {
            // line 5
            echo "      <li class=\"breadcrumb-item\"><a href=\"";
            echo twig_get_attribute($this->env, $this->source, $context["breadcrumb"], "href", [], "any", false, false, false, 5);
            echo "\">";
            echo twig_get_attribute($this->env, $this->source, $context["breadcrumb"], "text", [], "any", false, false, false, 5);
            echo "</a></li>
    ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['breadcrumb'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 7
        echo "  </ul>
  ";
        // line 8
        if (($context["success"] ?? null)) {
            // line 9
            echo "    <div class=\"alert alert-success alert-dismissible\"><i class=\"fa-solid fa-circle-check\"></i> ";
            echo ($context["success"] ?? null);
            echo " <button type=\"button\" class=\"btn-close\" data-bs-dismiss=\"alert\"></button></div>
  ";
        }
        // line 11
        echo "  <div class=\"row\">";
        echo ($context["column_left"] ?? null);
        echo "
    <div id=\"content\" class=\"col\">";
        // line 12
        echo ($context["content_top"] ?? null);
        echo "
      <h1>";
        // line 13
        echo ($context["heading_title"] ?? null);
        echo "</h1>
      <p>";
        // line 14
        echo twig_sprintf(($context["text_gdpr"] ?? null), ($context["store"] ?? null), ($context["gdpr"] ?? null), ($context["title"] ?? null));
        echo "</p>
      <form action=\"";
        // line 15
        echo ($context["action"] ?? null);
        echo "\" method=\"post\" data-oc-toggle=\"ajax\">
        <fieldset>
          <legend id=\"account\">";
        // line 17
        echo ($context["text_verification"] ?? null);
        echo "</legend>
          <div class=\"mb-3\">
            <p><label for=\"input-email\" class=\"form-check-label\">";
        // line 19
        echo ($context["text_email"] ?? null);
        echo "</label></p>
            <div class=\"input-group\">
              <input type=\"text\" name=\"email\" value=\"";
        // line 21
        echo ($context["email"] ?? null);
        echo "\" placeholder=\"";
        echo ($context["entry_email"] ?? null);
        echo "\" id=\"input-email\" class=\"form-control\"/>
              <div class=\"input-group-text\"><i class=\"fa-solid fa-envelope\"></i></div>
            </div>
            <div id=\"error-email\" class=\"invalid-feedback\"></div>
          </div>
        </fieldset>
        <fieldset>
          <legend id=\"action\">";
        // line 28
        echo ($context["text_action"] ?? null);
        echo "</legend>

          <div class=\"mb-3\">
            <div class=\"form-check\">
              <input type=\"radio\" name=\"action\" value=\"export\" id=\"input-export\" checked class=\"form-check-input\"/> <label for=\"input-export\" class=\"form-check-label\"><strong>";
        // line 32
        echo ($context["text_export"] ?? null);
        echo "</strong></label>
            </div>
            <div class=\"form-check\">
              <input type=\"radio\" name=\"action\" value=\"remove\" id=\"input-remove\" class=\"form-check-input\"/> <label for=\"input-remove\" class=\"form-check-label\"><strong>";
        // line 35
        echo ($context["text_remove"] ?? null);
        echo "</strong></label>
            </div>
          </div>

          <div id=\"collapse-remove\" class=\"alert alert-warning collapse\">
            <p><i class=\"fa-solid fa-triangle-exclamation\"></i> ";
        // line 40
        echo ($context["text_warning"] ?? null);
        echo "</p>
            <ul>
              <li>";
        // line 42
        echo twig_sprintf(($context["text_access"] ?? null), ($context["store"] ?? null));
        echo "</li>
              <li>";
        // line 43
        echo ($context["text_history"] ?? null);
        echo "</li>
              <li>";
        // line 44
        echo twig_sprintf(($context["text_limit"] ?? null), ($context["limit"] ?? null));
        echo "</li>
            </ul>
          </div>
        </fieldset>
        <div class=\"row\">
          <div class=\"col\">
            <a href=\"";
        // line 50
        echo ($context["cancel"] ?? null);
        echo "\" class=\"btn btn-light\">";
        echo ($context["button_cancel"] ?? null);
        echo "</a>
          </div>
          <div class=\"col text-end\">
            <button type=\"submit\" class=\"btn btn-primary\">";
        // line 53
        echo ($context["button_continue"] ?? null);
        echo "</button>
          </div>
        </div>
      </form>
      ";
        // line 57
        echo ($context["content_bottom"] ?? null);
        echo "</div>
    ";
        // line 58
        echo ($context["column_right"] ?? null);
        echo "</div>
</div>
<script type=\"text/javascript\"><!--
\$('input[name=\\'action\\']').on('change', function () {
    if (this.value == 'remove') {
        \$('#collapse-remove').slideDown();
    } else {
        \$('#collapse-remove').slideUp();
    }
});
//--></script>
";
        // line 69
        echo ($context["footer"] ?? null);
        echo "
";
    }

    public function getTemplateName()
    {
        return "catalog/view/template/information/gdpr.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  189 => 69,  175 => 58,  171 => 57,  164 => 53,  156 => 50,  147 => 44,  143 => 43,  139 => 42,  134 => 40,  126 => 35,  120 => 32,  113 => 28,  101 => 21,  96 => 19,  91 => 17,  86 => 15,  82 => 14,  78 => 13,  74 => 12,  69 => 11,  63 => 9,  61 => 8,  58 => 7,  47 => 5,  43 => 4,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("", "catalog/view/template/information/gdpr.twig", "C:\\server\\domains\\loc\\opencart.loc\\public_html\\catalog\\view\\template\\information\\gdpr.twig");
    }
}
