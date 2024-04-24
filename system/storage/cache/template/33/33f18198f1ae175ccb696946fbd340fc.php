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

/* admin/view/template/design/theme_history.twig */
class __TwigTemplate_e643d08d8ee33088435f0b455e92fe02 extends Template
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
        echo "<div class=\"table-responsive\">
  <table class=\"table table-bordered\">
    <thead>
      <tr>
        <td class=\"text-start\">";
        // line 5
        echo ($context["column_store"] ?? null);
        echo "</td>
        <td class=\"text-start\">";
        // line 6
        echo ($context["column_route"] ?? null);
        echo "</td>
        <td class=\"text-start\">";
        // line 7
        echo ($context["column_date_added"] ?? null);
        echo "</td>
        <td class=\"text-end\">";
        // line 8
        echo ($context["column_action"] ?? null);
        echo "</td>
      </tr>
    </thead>
    <tbody>
      ";
        // line 12
        if (($context["histories"] ?? null)) {
            // line 13
            echo "        ";
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(($context["histories"] ?? null));
            foreach ($context['_seq'] as $context["_key"] => $context["history"]) {
                // line 14
                echo "          <tr>
            <td class=\"text-start\">";
                // line 15
                echo twig_get_attribute($this->env, $this->source, $context["history"], "store", [], "any", false, false, false, 15);
                echo "
              <input type=\"hidden\" name=\"store_id\" value=\"";
                // line 16
                echo twig_get_attribute($this->env, $this->source, $context["history"], "store_id", [], "any", false, false, false, 16);
                echo "\"/></td>
            <td class=\"text-start\">";
                // line 17
                echo twig_get_attribute($this->env, $this->source, $context["history"], "route", [], "any", false, false, false, 17);
                echo "
              <input type=\"hidden\" name=\"path\" value=\"";
                // line 18
                echo twig_get_attribute($this->env, $this->source, $context["history"], "route", [], "any", false, false, false, 18);
                echo "\"/></td>
            <td class=\"text-start\">";
                // line 19
                echo twig_get_attribute($this->env, $this->source, $context["history"], "date_added", [], "any", false, false, false, 19);
                echo "</td>
            <td class=\"text-end text-nowrap\"><a href=\"";
                // line 20
                echo twig_get_attribute($this->env, $this->source, $context["history"], "edit", [], "any", false, false, false, 20);
                echo "\" data-bs-toggle=\"tooltip\" title=\"";
                echo ($context["button_edit"] ?? null);
                echo "\" class=\"btn btn-primary\"><i class=\"fa-solid fa-pencil\"></i></a> <a href=\"";
                echo twig_get_attribute($this->env, $this->source, $context["history"], "delete", [], "any", false, false, false, 20);
                echo "\" data-bs-toggle=\"tooltip\" title=\"";
                echo ($context["button_delete"] ?? null);
                echo "\" class=\"btn btn-danger\"><i class=\"fa-regular fa-trash-can\"></i></a></td>
          </tr>
        ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['history'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 23
            echo "      ";
        } else {
            // line 24
            echo "        <tr>
          <td class=\"text-center\" colspan=\"4\">";
            // line 25
            echo ($context["text_no_results"] ?? null);
            echo "</td>
        </tr>
      ";
        }
        // line 28
        echo "    </tbody>
  </table>
</div>
<div class=\"row\">
  <div class=\"col-sm-6 text-start\">";
        // line 32
        echo ($context["pagination"] ?? null);
        echo "</div>
  <div class=\"col-sm-6 text-end\">";
        // line 33
        echo ($context["results"] ?? null);
        echo "</div>
</div>
";
    }

    public function getTemplateName()
    {
        return "admin/view/template/design/theme_history.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  129 => 33,  125 => 32,  119 => 28,  113 => 25,  110 => 24,  107 => 23,  92 => 20,  88 => 19,  84 => 18,  80 => 17,  76 => 16,  72 => 15,  69 => 14,  64 => 13,  62 => 12,  55 => 8,  51 => 7,  47 => 6,  43 => 5,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("", "admin/view/template/design/theme_history.twig", "C:\\server\\domains\\loc\\opencart.loc\\public_html\\admin\\view\\template\\design\\theme_history.twig");
    }
}
