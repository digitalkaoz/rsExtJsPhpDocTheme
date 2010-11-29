{if $vars}
{section name=vars loop=$vars}
{if $vars[vars].static}
    {include file="short_var.tpl" var=$vars[vars] definedby=$class_name class_name=$class_name}    
{/if}
{/section}
{/if}

{if $ivars}
{section name=ivars loop=$ivars}
{if $ivars[ivars].static}
    {section name=ivars2 loop=$ivars[ivars].ivars}
        {include file="short_var.tpl" var=$ivars[ivars].ivars[ivars2] definedby=$ivars[ivars].parent_class class_name=$class_name}    
    {/section}
{/if}
{/section}
{/if}

{if $vars}
{section name=vars loop=$vars}
{if !$vars[vars].static}
    {include file="short_var.tpl" var=$vars[vars] definedby=$class_name class_name=$class_name}    
{/if}
{/section}
{/if}

{if $ivars}
{section name=ivars loop=$ivars}
{if !$ivars[ivars].static}
    {section name=ivars2 loop=$ivars[ivars].ivars}
        {include file="short_var.tpl" var=$ivars[ivars].ivars[ivars2] definedby=$ivars[ivars].parent_class class_name=$class_name}    
    {/section}
{/if}
{/section}
{/if}
