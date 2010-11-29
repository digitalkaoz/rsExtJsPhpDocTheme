<tr class="config-row expandable inherited">
    <td class="micon"><a href="#expand" class="exi">&nbsp;</a></td>
    <td class="sig">
        
<a name="{$method.function_name}" id="{$method.function_name}"><!-- --></a>
<div class="mdesc">
    {if $method.abstract}abstract&nbsp;{/if}{if $method.static}static&nbsp;{/if}{$method.access}    
    {php}
    $var= $this->get_template_vars('method'); 
    $definedby= $this->get_template_vars('definedby');
    $link = isset($var['slink']) ? $var['slink'] : $var['link'];
    
    $this->assign('search', ">".strip_tags($link)."<");
    $this->assign('replace', ">".(isset($var['function_name']) ? $var['function_name'] : $var['name'])."<");
    
    $this->assign('link',$link);
    {/php}
    <b>{if $link}{$link|replace:$search:$replace}{else}{if $method.function_name}{$method.function_name}{else}{$method.name}{/if}{/if}</b>
    {php}
$method = $this->get_template_vars('method');
$this->assign('params',is_array($method['function_call']) ? $method['function_call']['params'] : $method['ifunction_call']['params']);
    {/php}
    ({if count($params)}
        {section name=params loop=$params}
            {if $smarty.section.params.iteration != 1}, {/if}
            {if $params[params].hasdefault}{/if}
            <code class="var-type">{$params[params].type}</code>
            <code class="var-name">{$params[params].name}</code>
            {if $params[params].hasdefault} = <code class="var-default">{$params[params].default}</code>{/if}
        {/section}
    {/if})    
    {if $method.function_return != 'void'} : {$method.function_return}{/if}
            
    <div class="short">{$method.sdesc}</div>
    
    <div class="long">            
<pre style="display:none;">{php}    print_r($this->get_template_vars('method'));{/php}</pre>
        {$method.sdesc}
        {if $method.desc}<p><b>{$method.desc}</b></p>{/if}
        {include file="docblock.tpl" tags=$method.tags}
        <div class="mdetail-params">
            
            {if $params}
                <strong>Parameters:</strong>
                <ul>
                {section name=params loop=$params}
                    <li>
                        <span class="var-type">{$params[params].type}</span>
                        <span class="var-name">{$params[params].name}</span>{if $params[params].description}<span class="var-description">: {$params[params].description}</span>{/if}
                        {if $params[params].hasdefault} = <span class="var-default">{$params[params].default}</span>{/if}
                    </li>
                {/section}
                </ul>
            {/if}
            
            {if $method.method_implements}
                <strong>Implemented from :</strong>
                    <ul>
                        {section name=imp loop=$method.method_implements}
                                <li>{$method.method_implements[imp].link}
                                {if $method.method_implements[imp].sdesc}
                                  :{$method.method_implements[imp].sdesc}
                                {/if}
                                </li>
                        {/section}
                    </ul>
            {/if}                
                
            {if $method.method_overrides}
                <strong>Overrides:</strong>
                <ul>
                    <li>{$method.method_overrides.link} {if $method.method_overrides.sdesc} : {$method.method_overrides.sdesc}{/if}</li>
                </ul>
            {/if}
            {if $method.descmethod}
                <strong>Overridden in :</strong>
                <ul>
                {section name=dm loop=$method.descmethod}
                    <li>
                        {$method.descmethod[dm].link}
                        {if $method.descmethod[dm].sdesc}
                        : {$method.descmethod[dm].sdesc}
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
