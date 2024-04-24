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

/* admin/view/template/cms/antispam_list.twig */
class __TwigTemplate_2e020d515ca826153b3da1ae18187484 extends Template
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
        echo "<form id=\"form-antispam\" method=\"post\" data-oc-toggle=\"ajax\" data-oc-load=\"";
        echo ($context["action"] ?? null);
        echo "\" data-oc-target=\"#antispam\">
  <div class=\"table-responsive\">
    <table class=\"table table-bordered table-hover\">
      <thead>
        <tr>
          <td class=\"text-center\" style=\"width: 1px;\"><input type=\"checkbox\" onclick=\"\$('input[name*=\\'selected\\']').prop('checked', \$(this).prop('checked'));\" class=\"form-check-input\"/></td>
          <td class=\"text-start\"><a href=\"";
        // line 7
        echo ($context["sort_keyword"] ?? null);
        echo "\"";
        if ((($context["sort"] ?? null) == "keyword")) {
            echo " class=\"";
            echo twig_lower_filter($this->env, ($context["order"] ?? null));
            echo "\"";
        }
        echo ">";
        echo ($context["column_keyword"] ?? null);
        echo "</a></td>
          <td class=\"text-end\">";
        // line 8
        echo ($context["column_action"] ?? null);
        echo "</td>
        </tr>
      </thead>
      <tbody>
        ";
        // line 12
        if (($context["antispams"] ?? null)) {
            // line 13
            echo "          ";
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(($context["antispams"] ?? null));
            foreach ($context['_seq'] as $context["_key"] => $context["antispam"]) {
                // line 14
                echo "            <tr>
              <td class=\"text-center\"><input type=\"checkbox\" name=\"selected[]\" value=\"";
                // line 15
                echo twig_get_attribute($this->env, $this->source, $context["antispam"], "antispam_id", [], "any", false, false, false, 15);
                echo "\" class=\"form-check-input\"/></td>
              <td class=\"text-start\">";
                // line 16
                echo twig_get_attribute($this->env, $this->source, $context["antispam"], "keyword", [], "any", false, false, false, 16);
                echo "</td>
              <td class=\"text-end\"><a href=\"";
                // line 17
                echo twig_get_attribute($this->env, $this->source, $context["antispam"], "edit", [], "any", false, false, false, 17);
                echo "\" data-bs-toggle=\"tooltip\" title=\"";
                echo ($context["button_edit"] ?? null);
                echo "\" class=\"btn btn-primary\"><i class=\"fa-solid fa-pencil\"></i></a></td>
            </tr>
          ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['antispam'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 20
            echo "        ";
        } else {
            // line 21
            echo "          <tr>
            <td class=\"text-center\" colspan=\"3\">";
            // line 22
            echo ($context["text_no_results"] ?? null);
            echo "</td>
          </tr>
        ";
        }
        // line 25
        echo "      </tbody>
    </table>
  </div>
  <div class=\"row\">
    <div class=\"col-sm-6 text-start\">";
        // line 29
        echo ($context["pagination"] ?? null);
        echo "</div>
    <div class=\"col-sm-6 text-end\">";
        // line 30
        echo ($context["results"] ?? null);
        echo "</div>
  </div>
</form>";
    }

    public function getTemplateName()
    {
        return "admin/view/template/cms/antispam_list.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  117 => 30,  113 => 29,  107 => 25,  101 => 22,  98 => 21,  95 => 20,  84 => 17,  80 => 16,  76 => 15,  73 => 14,  68 => 13,  66 => 12,  59 => 8,  47 => 7,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("", "admin/view/template/cms/antispam_list.twig", "C:\\server\\domains\\loc\\opencart.loc\\public_html\\admin\\view\\template\\cms\\antispam_list.twig");
    }
}
