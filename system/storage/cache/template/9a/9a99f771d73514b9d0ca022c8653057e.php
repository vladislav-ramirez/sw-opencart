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

/* admin/view/template/customer/gdpr.twig */
class __TwigTemplate_22b9c09ae5b6f29a9c7014137d4279b7 extends Template
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
        <button type=\"button\" data-bs-toggle=\"tooltip\" title=\"";
        // line 6
        echo ($context["button_filter"] ?? null);
        echo "\" onclick=\"\$('#filter-gdpr').toggleClass('d-none');\" class=\"btn btn-light d-md-none d-lg-none\"><i class=\"fa-solid fa-filter\"></i></button>
        <button type=\"submit\" form=\"form-gdpr\" formaction=\"";
        // line 7
        echo ($context["approve"] ?? null);
        echo "\" data-bs-toggle=\"tooltip\" title=\"";
        echo ($context["text_approve"] ?? null);
        echo "\" class=\"btn btn-success\"><i class=\"fa-solid fa-check\"></i></button>
        <button type=\"submit\" form=\"form-gdpr\" formaction=\"";
        // line 8
        echo ($context["deny"] ?? null);
        echo "\" data-bs-toggle=\"tooltip\" title=\"";
        echo ($context["text_deny"] ?? null);
        echo "\" class=\"btn btn-warning\"><i class=\"fa-solid fa-circle-xmark\"></i></button>
        <button type=\"submit\" form=\"form-gdpr\" formaction=\"";
        // line 9
        echo ($context["delete"] ?? null);
        echo "\" data-bs-toggle=\"tooltip\" title=\"";
        echo ($context["text_delete"] ?? null);
        echo "\" onclick=\"return confirm('";
        echo ($context["text_confirm"] ?? null);
        echo "');\" class=\"btn btn-danger\"><i class=\"fa-regular fa-trash-can\"></i></button>
      </div>
      <h1>";
        // line 11
        echo ($context["heading_title"] ?? null);
        echo "</h1>
      <ol class=\"breadcrumb\">
        ";
        // line 13
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["breadcrumbs"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["breadcrumb"]) {
            // line 14
            echo "          <li class=\"breadcrumb-item\"><a href=\"";
            echo twig_get_attribute($this->env, $this->source, $context["breadcrumb"], "href", [], "any", false, false, false, 14);
            echo "\">";
            echo twig_get_attribute($this->env, $this->source, $context["breadcrumb"], "text", [], "any", false, false, false, 14);
            echo "</a></li>
        ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['breadcrumb'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 16
        echo "      </ol>
    </div>
  </div>
  <div class=\"container-fluid\">
    <div class=\"alert alert-warning\"><i class=\"fa-solid fa-info-circle\"></i> ";
        // line 20
        echo ($context["text_info"] ?? null);
        echo "</div>
    <div class=\"row\">
      <div id=\"filter-gdpr\" class=\"col-lg-3 col-md-12 order-lg-last d-none d-lg-block mb-3\">
        <div class=\"card\">
          <div class=\"card-header\"><i class=\"fa-solid fa-filter\"></i> ";
        // line 24
        echo ($context["text_filter"] ?? null);
        echo "</div>
          <div class=\"card-body\">
            <div class=\"mb-3\">
              <label class=\"form-label\">";
        // line 27
        echo ($context["entry_email"] ?? null);
        echo "</label>
              <input type=\"text\" name=\"filter_email\" value=\"\" placeholder=\"";
        // line 28
        echo ($context["entry_email"] ?? null);
        echo "\" id=\"input-email\" data-oc-target=\"autocomplete-email\" class=\"form-control\" autocomplete=\"off\"/>
              <ul id=\"autocomplete-email\" class=\"dropdown-menu\"></ul>
            </div>
            <div class=\"mb-3\">
              <label for=\"input-action\" class=\"col-form-label\">";
        // line 32
        echo ($context["entry_action"] ?? null);
        echo "</label>
              <select name=\"filter_action\" id=\"input-action\" class=\"form-select\">
                <option value=\"\"></option>
                <option value=\"export\">";
        // line 35
        echo ($context["text_export"] ?? null);
        echo "</option>
                <option value=\"remove\">";
        // line 36
        echo ($context["text_remove"] ?? null);
        echo "</option>
              </select>
            </div>
            <div class=\"mb-3\">
              <label for=\"input-status\" class=\"form-label\">";
        // line 40
        echo ($context["entry_status"] ?? null);
        echo "</label>
              <select name=\"filter_status\" id=\"input-status\" class=\"form-select\">
                <option value=\"\"></option>
                <option value=\"0\">";
        // line 43
        echo ($context["text_unverified"] ?? null);
        echo "</option>
                <option value=\"1\">";
        // line 44
        echo ($context["text_pending"] ?? null);
        echo "</option>
                <option value=\"2\">";
        // line 45
        echo ($context["text_processing"] ?? null);
        echo "</option>
                <option value=\"3\">";
        // line 46
        echo ($context["text_complete"] ?? null);
        echo "</option>
                <option value=\"-1\">";
        // line 47
        echo ($context["text_denied"] ?? null);
        echo "</option>
              </select>
            </div>
            <div class=\"mb-3\">
              <label for=\"input-date-from\" class=\"form-label\">";
        // line 51
        echo ($context["entry_date_from"] ?? null);
        echo "</label>
              <div class=\"input-group\">
                <input type=\"text\" name=\"filter_date_from\" value=\"";
        // line 53
        echo ($context["filter_date_from"] ?? null);
        echo "\" placeholder=\"";
        echo ($context["entry_date_from"] ?? null);
        echo "\" id=\"input-date-from\" class=\"form-control date\"/>
                <div class=\"input-group-text\"><i class=\"fa-regular fa-calendar\"></i></div>
              </div>
            </div>
            <div class=\"mb-3\">
              <label for=\"input-date-to\" class=\"form-label\">";
        // line 58
        echo ($context["entry_date_to"] ?? null);
        echo "</label>
              <div class=\"input-group\">
                <input type=\"text\" name=\"filter_date_to\" value=\"";
        // line 60
        echo ($context["filter_date_to"] ?? null);
        echo "\" placeholder=\"";
        echo ($context["entry_date_to"] ?? null);
        echo "\" id=\"input-date-to\" class=\"form-control date\"/>
                <div class=\"input-group-text\"><i class=\"fa-regular fa-calendar\"></i></div>
              </div>
            </div>
            <div class=\"text-end\">
              <button type=\"button\" id=\"button-filter\" class=\"btn btn-light\"><i class=\"fa-solid fa-filter\"></i> ";
        // line 65
        echo ($context["button_filter"] ?? null);
        echo "</button>
            </div>
          </div>
        </div>
      </div>
      <div class=\"col-lg-9 col-md-12\">
        <div class=\"card\">
          <div class=\"card-header\"><i class=\"fa-solid fa-list\"></i> ";
        // line 72
        echo ($context["text_list"] ?? null);
        echo "</div>
          <div class=\"card-body\">
            <div id=\"gdpr\">";
        // line 74
        echo ($context["list"] ?? null);
        echo "</div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<script type=\"text/javascript\"><!--
\$('#gdpr').on('click', '.pagination a', function (e) {
    e.preventDefault();

    \$('#gdpr').load(this.href);
});

\$('#gdpr').on('click', '.btn-success, .btn-warning, .btn-danger', function (e) {
    e.preventDefault();

    var element = this;

    \$.ajax({
        url: \$(element).val(),
        dataType: 'json',
        beforeSend: function () {
            \$(element).button('loading');
        },
        complete: function () {
            \$(element).button('reset');
        },
        success: function (json) {
            \$('.alert-dismissible').remove();

            if (json['error']) {
                \$('#alert').prepend('<div class=\"alert alert-danger alert-dismissible\"><i class=\"fa-solid fa-circle-exclamation\"></i> ' + json['error'] + ' <button type=\"button\" class=\"btn-close\" data-bs-dismiss=\"alert\"></button></div>');
            }

            if (json['success']) {
                \$('#alert').prepend('<div class=\"alert alert-success alert-dismissible\"><i class=\"fa-solid fa-check-circle\"></i> ' + json['success'] + ' <button type=\"button\" class=\"btn-close\" data-bs-dismiss=\"alert\"></button></div>');

                \$('#gdpr').load(\$('#form-gdpr').attr('data-oc-load'));
            }
        },
        error: function (xhr, ajaxOptions, thrownError) {
            console.log(thrownError + \"\\r\\n\" + xhr.statusText + \"\\r\\n\" + xhr.responseText);
        }
    });
});

\$('#button-filter').on('click', function () {
    var url = '';

    var filter_email = \$('#input-email').val();

    if (filter_email) {
        url += '&filter_email=' + encodeURIComponent(filter_email);
    }

    var filter_action = \$('#input-action').val();

    if (filter_action !== '') {
        url += '&filter_action=' + filter_action;
    }

    var filter_status = \$('#input-status').val();

    if (filter_status !== '') {
        url += '&filter_status=' + filter_status;
    }

    var filter_date_from = \$('#input-date-from').val();

    if (filter_date_from) {
        url += '&filter_date_from=' + encodeURIComponent(filter_date_from);
    }

    var filter_date_to = \$('#input-date-to').val();

    if (filter_date_to) {
        url += '&filter_date_to=' + encodeURIComponent(filter_date_to);
    }

    window.history.pushState({}, null, 'index.php?route=customer/gdpr&user_token=";
        // line 154
        echo ($context["user_token"] ?? null);
        echo "' + url);

    \$('#gdpr').load('index.php?route=customer/gdpr.list&user_token=";
        // line 156
        echo ($context["user_token"] ?? null);
        echo "' + url);
});

\$('#input-email').autocomplete({
    'source': function (request, response) {
        \$.ajax({
            url: 'index.php?route=customer/customer.autocomplete&user_token=";
        // line 162
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
        // line 179
        echo ($context["footer"] ?? null);
        echo "
";
    }

    public function getTemplateName()
    {
        return "admin/view/template/customer/gdpr.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  329 => 179,  309 => 162,  300 => 156,  295 => 154,  212 => 74,  207 => 72,  197 => 65,  187 => 60,  182 => 58,  172 => 53,  167 => 51,  160 => 47,  156 => 46,  152 => 45,  148 => 44,  144 => 43,  138 => 40,  131 => 36,  127 => 35,  121 => 32,  114 => 28,  110 => 27,  104 => 24,  97 => 20,  91 => 16,  80 => 14,  76 => 13,  71 => 11,  62 => 9,  56 => 8,  50 => 7,  46 => 6,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("", "admin/view/template/customer/gdpr.twig", "C:\\server\\domains\\loc\\opencart.loc\\public_html\\admin\\view\\template\\customer\\gdpr.twig");
    }
}
