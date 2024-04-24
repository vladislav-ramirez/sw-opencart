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

/* admin/view/template/design/seo_url_list.twig */
class __TwigTemplate_c2d208d85d731df9bffe2a121c543873 extends Template
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
        echo "<form id=\"form-seo-url\" method=\"post\" data-oc-toggle=\"ajax\" data-oc-load=\"";
        echo ($context["action"] ?? null);
        echo "\" data-oc-target=\"#seo-url\">
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
          <td class=\"text-start\"><a href=\"";
        // line 8
        echo ($context["sort_key"] ?? null);
        echo "\"";
        if ((($context["sort"] ?? null) == "key")) {
            echo " class=\"";
            echo twig_lower_filter($this->env, ($context["order"] ?? null));
            echo "\"";
        }
        echo ">";
        echo ($context["column_key"] ?? null);
        echo "</a></td>
          <td class=\"text-start\"><a href=\"";
        // line 9
        echo ($context["sort_value"] ?? null);
        echo "\"";
        if ((($context["sort"] ?? null) == "value")) {
            echo " class=\"";
            echo twig_lower_filter($this->env, ($context["order"] ?? null));
            echo "\"";
        }
        echo ">";
        echo ($context["column_value"] ?? null);
        echo "</a></td>
          <td class=\"text-start\"><a href=\"";
        // line 10
        echo ($context["sort_sort_order"] ?? null);
        echo "\"";
        if ((($context["sort"] ?? null) == "sort_order")) {
            echo " class=\"";
            echo twig_lower_filter($this->env, ($context["order"] ?? null));
            echo "\"";
        }
        echo ">";
        echo ($context["column_sort_order"] ?? null);
        echo "</a></td>
          <td class=\"text-start d-none d-lg-table-cell\"><a href=\"";
        // line 11
        echo ($context["sort_store"] ?? null);
        echo "\"";
        if ((($context["sort"] ?? null) == "store")) {
            echo " class=\"";
            echo twig_lower_filter($this->env, ($context["order"] ?? null));
            echo "\"";
        }
        echo ">";
        echo ($context["column_store"] ?? null);
        echo "</a></td>
          <td class=\"text-center d-none d-lg-table-cell\"><a href=\"";
        // line 12
        echo ($context["sort_language"] ?? null);
        echo "\"";
        if ((($context["sort"] ?? null) == "language")) {
            echo " class=\"";
            echo twig_lower_filter($this->env, ($context["order"] ?? null));
            echo "\"";
        }
        echo ">";
        echo ($context["column_language"] ?? null);
        echo "</a></td>
          <td class=\"text-end\">";
        // line 13
        echo ($context["column_action"] ?? null);
        echo "</td>
        </tr>
      </thead>
      <tbody>
        ";
        // line 17
        if (($context["seo_urls"] ?? null)) {
            // line 18
            echo "          ";
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(($context["seo_urls"] ?? null));
            foreach ($context['_seq'] as $context["_key"] => $context["seo_url"]) {
                // line 19
                echo "            <tr>
              <td class=\"text-center\"><input type=\"checkbox\" name=\"selected[]\" value=\"";
                // line 20
                echo twig_get_attribute($this->env, $this->source, $context["seo_url"], "seo_url_id", [], "any", false, false, false, 20);
                echo "\" class=\"form-check-input\"/></td>
              <td class=\"text-start\">";
                // line 21
                echo twig_get_attribute($this->env, $this->source, $context["seo_url"], "keyword", [], "any", false, false, false, 21);
                echo "</td>
              <td class=\"text-start\">";
                // line 22
                echo twig_get_attribute($this->env, $this->source, $context["seo_url"], "key", [], "any", false, false, false, 22);
                echo "</td>
              <td class=\"text-start\">";
                // line 23
                echo twig_get_attribute($this->env, $this->source, $context["seo_url"], "value", [], "any", false, false, false, 23);
                echo "</td>
              <td class=\"text-start\">";
                // line 24
                echo twig_get_attribute($this->env, $this->source, $context["seo_url"], "sort_order", [], "any", false, false, false, 24);
                echo "</td>
              <td class=\"text-start d-none d-lg-table-cell\">";
                // line 25
                echo twig_get_attribute($this->env, $this->source, $context["seo_url"], "store", [], "any", false, false, false, 25);
                echo "</td>
              <td class=\"text-center d-none d-lg-table-cell\"><img src=\"";
                // line 26
                echo twig_get_attribute($this->env, $this->source, $context["seo_url"], "image", [], "any", false, false, false, 26);
                echo "\" alt=\"";
                echo twig_get_attribute($this->env, $this->source, $context["seo_url"], "language", [], "any", false, false, false, 26);
                echo "\" title=\"";
                echo twig_get_attribute($this->env, $this->source, $context["seo_url"], "language", [], "any", false, false, false, 26);
                echo "\"></td>
              <td class=\"text-end\"><a href=\"";
                // line 27
                echo twig_get_attribute($this->env, $this->source, $context["seo_url"], "edit", [], "any", false, false, false, 27);
                echo "\" data-bs-toggle=\"tooltip\" title=\"";
                echo ($context["button_edit"] ?? null);
                echo "\" class=\"btn btn-primary\"><i class=\"fa-solid fa-pencil\"></i></a></td>
            </tr>
          ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['seo_url'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 30
            echo "        ";
        } else {
            // line 31
            echo "          <tr>
            <td class=\"text-center\" colspan=\"7\">";
            // line 32
            echo ($context["text_no_results"] ?? null);
            echo "</td>
          </tr>
        ";
        }
        // line 35
        echo "      </tbody>
    </table>
  </div>
  <div class=\"row\">
    <div class=\"col-sm-6 text-start\">";
        // line 39
        echo ($context["pagination"] ?? null);
        echo "</div>
    <div class=\"col-sm-6 text-end\">";
        // line 40
        echo ($context["results"] ?? null);
        echo "</div>
  </div>
</form>";
    }

    public function getTemplateName()
    {
        return "admin/view/template/design/seo_url_list.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  201 => 40,  197 => 39,  191 => 35,  185 => 32,  182 => 31,  179 => 30,  168 => 27,  160 => 26,  156 => 25,  152 => 24,  148 => 23,  144 => 22,  140 => 21,  136 => 20,  133 => 19,  128 => 18,  126 => 17,  119 => 13,  107 => 12,  95 => 11,  83 => 10,  71 => 9,  59 => 8,  47 => 7,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("", "admin/view/template/design/seo_url_list.twig", "C:\\server\\domains\\loc\\opencart.loc\\public_html\\admin\\view\\template\\design\\seo_url_list.twig");
    }
}
