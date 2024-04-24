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

/* install/view/template/common/footer.twig */
class __TwigTemplate_e56fa949e6c6fb838a62c2226eb78f41 extends Template
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
        echo "<footer class=\"pb-4\">
\t<div class=\"container text-center\">
\t\t
            <a href=\"http://opencart-russia.ru\" target=\"_blank\">";
        // line 4
        echo ($context["text_project"] ?? null);
        echo "</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href=\"https://forum.opencart-russia.ru/threads/ustanovka.10297/\" target=\"_blank\">";
        echo ($context["text_documentation"] ?? null);
        echo "</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href=\"https://forum.opencart-russia.ru\" target=\"_blank\">";
        echo ($context["text_support"] ?? null);
        echo "</a>
\t\t
\t\t<br/>
\t\t";
        // line 7
        echo ($context["text_footer"] ?? null);
        echo "
\t</div>
</footer>
</div>
</body>
</html>
";
    }

    public function getTemplateName()
    {
        return "install/view/template/common/footer.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  52 => 7,  42 => 4,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("", "install/view/template/common/footer.twig", "C:\\server\\domains\\loc\\opencart.loc\\public_html\\install\\view\\template\\common\\footer.twig");
    }
}
