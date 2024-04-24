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

/* admin/view/template/cms/comment.twig */
class __TwigTemplate_1df85b6e2911fd6215c496f3178ead1c extends Template
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
      <h1>";
        // line 5
        echo ($context["heading_title"] ?? null);
        echo "</h1>
      <ol class=\"breadcrumb\">
        ";
        // line 7
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["breadcrumbs"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["breadcrumb"]) {
            // line 8
            echo "          <li class=\"breadcrumb-item\"><a href=\"";
            echo twig_get_attribute($this->env, $this->source, $context["breadcrumb"], "href", [], "any", false, false, false, 8);
            echo "\">";
            echo twig_get_attribute($this->env, $this->source, $context["breadcrumb"], "text", [], "any", false, false, false, 8);
            echo "</a></li>
        ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['breadcrumb'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 10
        echo "      </ol>
    </div>
  </div>
  <div class=\"container-fluid\">
    <div class=\"row\">
      <div id=\"filter-comment\" class=\"col-lg-3 col-md-12 order-lg-last d-none d-lg-block mb-3\">
        <div class=\"card\">
          <div class=\"card-header\"><i class=\"fa fa-filter\"></i> ";
        // line 17
        echo ($context["text_filter"] ?? null);
        echo "</div>
          <div class=\"card-body\">
            <div class=\"mb-3\">
              <label for=\"input-keyword\" class=\"form-label\">";
        // line 20
        echo ($context["entry_keyword"] ?? null);
        echo "</label>
              <input type=\"text\" name=\"filter_keyword\" value=\"\" placeholder=\"";
        // line 21
        echo ($context["entry_keyword"] ?? null);
        echo "\" id=\"input-keyword\" class=\"form-control\"/>
            </div>
            <div class=\"mb-3\">
              <label for=\"input-article\" class=\"form-label\">";
        // line 24
        echo ($context["entry_article"] ?? null);
        echo "</label>
              <input type=\"text\" name=\"filter_article\" value=\"\" placeholder=\"";
        // line 25
        echo ($context["entry_article"] ?? null);
        echo "\" id=\"input-article\" class=\"form-control\"/>
            </div>
            <div class=\"mb-3\">
              <label for=\"input-customer\" class=\"form-label\">";
        // line 28
        echo ($context["entry_customer"] ?? null);
        echo "</label>
              <input type=\"text\" name=\"filter_customer\" value=\"\" placeholder=\"";
        // line 29
        echo ($context["entry_customer"] ?? null);
        echo "\" id=\"input-customer\" class=\"form-control\"/>
            </div>
            <div class=\"mb-3\">
              <label for=\"input-status\" class=\"form-label\">";
        // line 32
        echo ($context["entry_status"] ?? null);
        echo "</label>
              <select name=\"filter_status\" class=\"form-control\">
                <option value=\"\"></option>
                <option value=\"0\">";
        // line 35
        echo ($context["text_disabled"] ?? null);
        echo "</option>
                <option value=\"1\">";
        // line 36
        echo ($context["text_enabled"] ?? null);
        echo "</option>
              </select>
            </div>
            <div class=\"mb-3\">
              <label for=\"input-date-added\" class=\"form-label\">";
        // line 40
        echo ($context["entry_date_added"] ?? null);
        echo "</label>
              <div class=\"input-group\">
                <input type=\"text\" name=\"filter_date_added\" value=\"";
        // line 42
        echo ($context["filter_date_added"] ?? null);
        echo "\" placeholder=\"";
        echo ($context["entry_date_added"] ?? null);
        echo "\" data-date-format=\"YYYY-MM-DD\" id=\"input-date-added\" class=\"form-control date\"/>
                <div class=\"input-group-text\"><i class=\"fas fa-calendar\"></i></div>
              </div>
            </div>
            <div class=\"text-end\">
              <button type=\"button\" id=\"button-filter\" class=\"btn btn-light\"><i class=\"fa fa-filter\"></i> ";
        // line 47
        echo ($context["button_filter"] ?? null);
        echo "</button>
            </div>
          </div>
        </div>
      </div>
      <div class=\"col-lg-9 col-md-12\">
        <div class=\"card\">
          <div class=\"card-header\"><i class=\"fa fa-list\"></i> ";
        // line 54
        echo ($context["text_list"] ?? null);
        echo "</div>
          <div class=\"card-body\">
            <div id=\"comment\">";
        // line 56
        echo ($context["list"] ?? null);
        echo "</div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<script type=\"text/javascript\"><!--
\$('#comment').on('click', '.pagination a', function(e) {
    e.preventDefault();

    \$('#comment').load(this.href);
});

\$('#comment').on('click', '.btn-success, .btn-danger', function() {
    var element = this;

    \$.ajax({
        url: \$(element).val(),
        dataType: 'json',
        beforeSend: function() {
            \$(element).button('loading');
        },
        complete: function() {
            \$(element).button('reset');
        },
        success: function(json) {
            \$('.alert-dismissible').remove();

            if (json['error']) {
                \$('#alert').before('<div class=\"alert alert-danger alert-dismissible\"><i class=\"fas fa-exclamation-circle\"></i> ' + json['error'] + ' <button type=\"button\" class=\"close\" data-dismiss=\"alert\">&times;</button></div>');
            }

            if (json['success']) {
                \$('#alert').before('<div class=\"alert alert-success alert-dismissible\"><i class=\"fas fa-check-circle\"></i> ' + json['success'] + ' <button type=\"button\" class=\"close\" data-dismiss=\"alert\">&times;</button></div>');
            }
        },
        error: function(xhr, ajaxOptions, thrownError) {
            alert(thrownError + \"\\r\\n\" + xhr.statusText + \"\\r\\n\" + xhr.responseText);
        }
    });
});

\$('#button-filter').on('click', function() {
    var url = '';

    var filter_keyword = \$('input-keyword').val();

    if (filter_keyword) {
        url += '&filter_keyword=' + encodeURIComponent(filter_keyword);
    }

    var filter_article = \$('input-article').val();

    if (filter_article) {
        url += '&filter_article=' + encodeURIComponent(filter_article);
    }

    var filter_customer = \$('input-customer').val();

    if (filter_customer) {
        url += '&filter_customer=' + encodeURIComponent(filter_customer);
    }

    var filter_status = \$('input-status').val();

    if (filter_status) {
        url += '&filter_status=' + filter_status;
    }

    var filter_date_added = \$('input-date-added').val();

    if (filter_date_added) {
        url += '&filter_date_added=' + encodeURIComponent(filter_date_added);
    }

    \$('#comment').load('index.php?route=cms/comment.list&user_token=";
        // line 132
        echo ($context["user_token"] ?? null);
        echo "' + url);
});

\$('#input-customer').autocomplete({
    'source': function (request, response) {
        \$.ajax({
            url: 'index.php?route=customer/customer.autocomplete&user_token=";
        // line 138
        echo ($context["user_token"] ?? null);
        echo "&filter_name=' + encodeURIComponent(request),
            dataType: 'json',
            success: function (json) {
                response(\$.map(json, function (item) {
                    return {
                        label: item['name'],
                        value: item['customer_id']
                    }
                }));
            }
        });
    },
    'select': function (item) {
        \$('#input-customer').val(item['label']);
    }
});

\$('#input-email').autocomplete({
    'source': function (request, response) {
        \$.ajax({
            url: 'index.php?route=customer/customer.autocomplete&user_token=";
        // line 158
        echo ($context["user_token"] ?? null);
        echo "&filter_email=' + encodeURIComponent(request),
            dataType: 'json',
            success: function (json) {
                response(\$.map(json, function (item) {
                    return {
                        label: item['email'],
                        value: item['customer_id']
                    }
                }));
            }
        });
    },
    'select': function (item) {
        \$('#input-email').val(item['label']);
    }
});
//--></script>
";
        // line 175
        echo ($context["footer"] ?? null);
        echo "
";
    }

    public function getTemplateName()
    {
        return "admin/view/template/cms/comment.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  288 => 175,  268 => 158,  245 => 138,  236 => 132,  157 => 56,  152 => 54,  142 => 47,  132 => 42,  127 => 40,  120 => 36,  116 => 35,  110 => 32,  104 => 29,  100 => 28,  94 => 25,  90 => 24,  84 => 21,  80 => 20,  74 => 17,  65 => 10,  54 => 8,  50 => 7,  45 => 5,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("", "admin/view/template/cms/comment.twig", "C:\\server\\domains\\loc\\opencart.loc\\public_html\\admin\\view\\template\\cms\\comment.twig");
    }
}
