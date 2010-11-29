{if $consts}
{section name=consts loop=$consts}
{if $consts[consts].static}
    {include file="short_const.tpl" const=$consts[consts] definedby=$class_name class_name=$class_name}    
{/if}
{/section}
{/if}

{if $iconsts}
{section name=iconsts loop=$iconsts}
{if $iconsts[iconsts].static}
    {section name=iconsts2 loop=$iconsts[iconsts].iconsts}
        {include file="short_const.tpl" const=$iconsts[iconsts].iconsts[iconsts2] definedby=$iconsts[iconsts].parent_class class_name=$class_name}    
    {/section}
{/if}
{/section}
{/if}

{if $consts}
{section name=consts loop=$consts}
{if !$consts[consts].static}
    {include file="short_const.tpl" const=$consts[consts] definedby=$class_name class_name=$class_name}    
{/if}
{/section}
{/if}

{if $iconsts}
{section name=iconsts loop=$iconsts}
{if !$iconsts[iconsts].static}
    {section name=iconsts2 loop=$iconsts[iconsts].iconsts}
        {include file="short_const.tpl" const=$iconsts[iconsts].iconsts[iconsts2] definedby=$iconsts[iconsts].parent_class class_name=$class_name}    
    {/section}
{/if}
{/section}
{/if}