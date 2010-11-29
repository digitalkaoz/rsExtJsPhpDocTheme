<tr class="config-row expandable inherited">
    <td class="micon"><a href="#expand" class="exi">&nbsp;</a></td>
    <td class="sig">
        
<a name="{$var.var_name}" id="{$var.var_name}"><!-- --></a>
<div class="mdesc">
    
    {if $var.abstract}abstract&nbsp;{/if}{if $var.static}static&nbsp;{/if}{$var.access}        
    {php}
    $var= $this->get_template_vars('var'); 
    $definedby= $this->get_template_vars('definedby');
    $link = isset($var['slink']) ? $var['slink'] : $var['link'];
    
    $this->assign('search', ">".strip_tags($link)."<");
    $this->assign('replace', ">".(isset($var['var_name']) ? $var['var_name'] : $var['name'])."<");
    
    $this->assign('link',$link);
    {/php}
    <b>{if $link}{$link|replace:$search:$replace}{else}{if $var.var_name}{$var.var_name}{else}{$var.name}{/if}{/if}</b>
    {if $var.var_default} = <code class="var-type">{$var.var_default}</code>{/if}    
    <div class="short">{$var.sdesc}</div>

    <div class="long">    
        {$var.sdesc}
        <p><b>{$var.desc}</b></p>
        {include file="docblock.tpl" tags=$var.tags sdesc=false desc=false}
	        <div class="mdetail-params">

            {if $var.var_implements}
                <strong>Implemented from :</strong>
                    <ul>
                        {section name=imp loop=$var.var_implements}
                                <li>{$var.var_implements[imp].link}
                                {if $var.var_implements[imp].sdesc}
                                  :{$var.var_implements[imp].sdesc}
                                {/if}
                                </li>
                        {/section}
                    </ul>
            {/if}                
                
            {if $var.var_overrides}
                <strong>Overrides:</strong>
                <ul>
                    <li>{$var.var_overrides.link} {if $var.var_overrides.sdesc} : {$var.var_overrides.sdesc}{/if}</li>
                </ul>
            {/if}
            {if $var.descvar}
                <strong>Overridden in :</strong>
                <ul>
                {section name=dm loop=$var.descvar}
                    <li>
                        {$var.descvar[dm].link}
                        {if $var.descvar[dm].sdesc}
                        : {$var.descvar[dm].sdesc}
                        {/if}
                    </li>
                {/section}
                </ul>
            {/if}                                
        </div>
    </div>
</div>
        
    </td>
    <td class="{if $definedby != $class_name}msource{else}sig{/if}">{$definedby}</td>
    </tr>


