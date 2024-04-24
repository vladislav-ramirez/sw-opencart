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

/* admin/view/template/cms/comment_list.twig */
class __TwigTemplate_a3b9e12065dee5bcd88d6cb3308d7dd6 extends Template
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
        if (($context["comments"] ?? null)) {
            // line 2
            echo "  ";
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(($context["comments"] ?? null));
            foreach ($context['_seq'] as $context["_key"] => $context["comment"]) {
                // line 3
                echo "    <table class=\"table table-bordered\">

      <tr>
        <td class=\"align-text-top\">

          <h4><a href=\"";
                // line 8
                echo twig_get_attribute($this->env, $this->source, $context["comment"], "filter_blog", [], "any", false, false, false, 8);
                echo "\" target=\"_blank\">";
                echo twig_get_attribute($this->env, $this->source, $context["comment"], "title", [], "any", false, false, false, 8);
                echo "</a></h4>
          <p><a href=\"";
                // line 9
                echo twig_get_attribute($this->env, $this->source, $context["comment"], "filter_member", [], "any", false, false, false, 9);
                echo "\" target=\"_blank\">";
                echo twig_get_attribute($this->env, $this->source, $context["comment"], "customer", [], "any", false, false, false, 9);
                echo "</a> - ";
                echo twig_get_attribute($this->env, $this->source, $context["comment"], "date_added", [], "any", false, false, false, 9);
                echo "</p>
          <p>";
                // line 10
                echo twig_get_attribute($this->env, $this->source, $context["comment"], "comment", [], "any", false, false, false, 10);
                echo "</p>

        </td>

        <td class=\"w-25 align-text-top\">

          ";
                // line 16
                if (twig_get_attribute($this->env, $this->source, $context["comment"], "approve", [], "any", false, false, false, 16)) {
                    // line 17
                    echo "            <button type=\"button\" value=\"";
                    echo twig_get_attribute($this->env, $this->source, $context["comment"], "approve", [], "any", false, false, false, 17);
                    echo "\" class=\"btn btn-success btn-block\"><i class=\"fas fa-check-circle\"></i> ";
                    echo ($context["button_approve"] ?? null);
                    echo "</button>
          ";
                } else {
                    // line 19
                    echo "            <button type=\"button\" class=\"btn btn-success btn-block\" disabled><i class=\"fas fa-check-circle\"></i> ";
                    echo ($context["button_approve"] ?? null);
                    echo "</button>
          ";
                }
                // line 21
                echo "
          <button type=\"button\" value=\"";
                // line 22
                echo twig_get_attribute($this->env, $this->source, $context["comment"], "spam", [], "any", false, false, false, 22);
                echo "\" class=\"btn btn-warning btn-block\"><i class=\"fas fas fa-ban\"></i> ";
                echo ($context["button_spam"] ?? null);
                echo "</button>
          <button type=\"button\" value=\"";
                // line 23
                echo twig_get_attribute($this->env, $this->source, $context["comment"], "delete", [], "any", false, false, false, 23);
                echo "\" class=\"btn btn-danger btn-block\"><i class=\"fas fa-trash-alt\"></i> ";
                echo ($context["button_delete"] ?? null);
                echo "</button>

        </td>
      </tr>
    </table>
  ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['comment'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 29
            echo "  <div class=\"row\">
    <div class=\"col-sm-6 text-start\">";
            // line 30
            echo ($context["pagination"] ?? null);
            echo "</div>
    <div class=\"col-sm-6 text-end\">";
            // line 31
            echo ($context["results"] ?? null);
            echo "</div>
  </div>
";
        } else {
            // line 34
            echo "  <table class=\"table\">
    <tr>
      <td class=\"text-center\">No results!</td>
    </tr>
  </table>
";
        }
    }

    public function getTemplateName()
    {
        return "admin/view/template/cms/comment_list.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  126 => 34,  120 => 31,  116 => 30,  113 => 29,  99 => 23,  93 => 22,  90 => 21,  84 => 19,  76 => 17,  74 => 16,  65 => 10,  57 => 9,  51 => 8,  44 => 3,  39 => 2,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("", "admin/view/template/cms/comment_list.twig", "C:\\server\\domains\\loc\\opencart.loc\\public_html\\admin\\view\\template\\cms\\comment_list.twig");
    }
}
