{if $methods}
{section name=methods loop=$methods}
{if $methods[methods].static}
    {include file="short_method.tpl" method=$methods[methods] definedby=$class_name class_name=$class_name}    
{/if}
{/section}
{/if}

{if $imethods}
{section name=imethods loop=$imethods}
{if $imethods[imethods].static}
    {section name=imethods2 loop=$imethods[imethods].imethods}
        {include file="short_method.tpl" method=$imethods[imethods].imethods[imethods2] definedby=$imethods[imethods].parent_class class_name=$class_name}    
    {/section}
{/if}
{/section}
{/if}

{if $methods}
{section name=methods loop=$methods}
{if !$methods[methods].static}
    {include file="short_method.tpl" method=$methods[methods] definedby=$class_name class_name=$class_name}    
{/if}
{/section}
{/if}

{if $imethods}
{section name=imethods loop=$imethods}
{if !$imethods[imethods].static}
    {section name=imethods2 loop=$imethods[imethods].imethods}
            {include file="short_method.tpl" method=$imethods[imethods].imethods[imethods2] definedby=$imethods[imethods].parent_class class_name=$class_name}    
    {/section}
{/if}
{/section}
{/if}
