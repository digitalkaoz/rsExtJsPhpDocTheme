<tr class="config-row expandable inherited">
    <td class="micon"><a href="#expand" class="exi">&nbsp;</a></td>
    <td class="sig">
        
<a name="{$const.const_name}" id="{$const.const_name}"><!-- --></a>
<div class="mdesc">
    
    {if $const.abstract}abstract&nbsp;{/if}{if $const.static}static&nbsp;{/if}{$const.access}        
    {php}
    $var= $this->get_template_vars('const'); 
    $definedby= $this->get_template_vars('definedby');
    $link = isset($var['slink']) ? $var['slink'] : $var['link'];
    
    $this->assign('search', ">".strip_tags($link)."<");
    $this->assign('replace', ">".(isset($var['const_name']) ? $var['const_name'] : $var['name'])."<");
    
    $this->assign('link',$link);
    {/php}
    <b>{if $link}{$link|replace:$search:$replace}{else}{if $const.const_name}{$const.const_name}{else}{$const.name}{/if}{/if}</b>
    {if $const.const_value} = <code class="const-type">{$const.const_value}</code>{/if}    
    <div class="short">{$const.sdesc}</div>

    <div class="long">    
        {$const.sdesc}
        <p><b>{$const.desc}</b></p>
        {include file="docblock.tpl" tags=$const.tags sdesc=false desc=false}
	        <div class="mdetail-params">

            {if $const.const_implements}
                <strong>Implemented from :</strong>
                    <ul>
                        {section name=imp loop=$const.const_implements}
                                <li>{$const.const_implements[imp].link}
                                {if $const.const_implements[imp].sdesc}
                                  :{$const.const_implements[imp].sdesc}
                                {/if}
                                </li>
                        {/section}
                    </ul>
            {/if}                
                
            {if $const.const_overrides}
                <strong>Overrides:</strong>
                <ul>
                    <li>{$const.const_overrides.link} {if $const.const_overrides.sdesc} : {$const.const_overrides.sdesc}{/if}</li>
                </ul>
            {/if}
            {if $const.descconst}
                <strong>Overridden in :</strong>
                <ul>
                {section name=dm loop=$const.descconst}
                    <li>
                        {$const.descconst[dm].link}
                        {if $const.descconst[dm].sdesc}
                        : {$const.descconst[dm].sdesc}
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


