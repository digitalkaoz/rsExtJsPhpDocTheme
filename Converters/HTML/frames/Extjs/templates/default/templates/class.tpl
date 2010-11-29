{include file="header.tpl" top3=true}
{assign var=loc value="http://dev.sencha.com/deploy/dev/docs/resources"}

<div class="body-wrap" xmlns:ext="http://www.extjs.com">

<!-- toolbar -->
<div class="top-tools">
    <a class="inner-link" href="#{$class_name}-properties"><img src="{$loc}/s.gif" class="item-icon icon-event">Constants</a>
    <a class="inner-link" href="#{$class_name}-methods"><img src="{$loc}/s.gif" class="item-icon icon-method">Methods</a>
    <a class="inner-link" href="#{$class_name}-vars"><img src="{$loc}/s.gif" class="item-icon icon-event">Variables</a>
    <a class="inner-link" href="#{$class_name}-properties"><img src="{$loc}/s.gif" class="item-icon icon-config">Config Options</a>
    <a class="bookmark" href="http://dev.sencha.com/deploy/dev/docs/docs/?class={$class_name}"><img src="{$loc}/s.gif" class="item-icon icon-fav">Direct Link</a>
</div>

<!-- inheritance block here -->
<div class="inheritance res-block">
	<pre class="res-block-inner">
    {section name=tree loop=$class_tree.classes}
{if $class_tree.classes[tree] != $class_name}
	{$class_tree.classes[tree]}
{/if}
    {/section}
    </pre>
</div>

<!-- header -->
<h1 class="class-name"><a href="{$page_link}"><img src="{$subdir}images/{if $abstract}{if $access == 'private'}AbstractPrivate{else}Abstract{/if}{else}{if $access == 'private'}Private{/if}{/if}{if $is_interface}Interface{else}Class{/if}_logo.png"
														alt="{if $abstract}{if $access == 'private'}AbstractPrivate{else}Abstract{/if}{else}{if $access == 'private'}Private{/if}{/if} Class"
														title="{if $abstract}{if $access == 'private'}AbstractPrivate{else}Abstract{/if}{else}{if $access == 'private'}Private{/if}{/if} Class"
														style="vertical-align: middle">{if $is_interface}Interface{/if} {$class_name}</a>
</h1>

<!-- meta information -->
<table cellspacing="0">
    <tbody>
        <tr><td class="label">Package:</td><td class="hd-info">{$package}</td></tr>
        <tr><td class="label">Source:</td><td class="hd-info">{if $class_slink}{$class_slink|replace:"$line_number":"$class_name"}{else}{$class_name}{/if}</td></tr>
        <!--<tr><td class="label">Subclasses:</td><td class="hd-info"><a href="http://dev.sencha.com/deploy/dev/docs/output/output/Ext.grid.EditorGridPanel.html" ext:cls="Ext.grid.EditorGridPanel">EditorGridPanel</a>,<a href="http://dev.sencha.com/deploy/dev/docs/output/output/Ext.grid.PivotGrid.html" ext:cls="Ext.grid.PivotGrid">PivotGrid</a></td></tr>-->
        <tr><td class="label">Extends:</td><td class="hd-info">
            {section name=tree loop=$class_tree.classes}
                { if $class_tree.classes[tree] != $class_name}
                    {$class_tree.classes[tree]}
                {/if}
            {/section}
        </td></tr>
    </tbody>
</table>

<!-- description -->
<div class="description">
    {include file="docblock.tpl" type="class" sdesc=$sdesc desc=$desc}
</div>

<!-- consts -->
{if $consts}
<div class="hr"></div>
<a id="{$class_name}-properties"></a>
<h2>Constants</h2>
<table class="member-table" cellspacing="0"><tbody>        
    <tr><th colspan="2" class="sig-header">Constant</th><th class="msource-header">Defined By</th></tr>    
    {include file="const.tpl" consts=$consts iconsts=$iconsts class_name=$class_name}
</tbody></table>
{/if}

<!-- vars -->
{if $vars || $ivars}
<div class="hr"></div>
<a id="{$class_name}-vars"></a>
<h2>Variables</h2>

<table class="member-table" cellspacing="0"><tbody>
    <tr><th colspan="2" class="sig-header">Variable</th><th class="msource-header">Defined By</th></tr>    
    {include file="var.tpl" methods=$vars ivars=$ivars class_name=$class_name}
</tbody></table>
{/if}

<!-- methods -->
{if $methods || $imethods}
<div class="hr"></div>
<a id="{$class_name}-methods"></a>
<h2>Methods</h2>

<table class="member-table" cellspacing="0"><tbody>      
    <tr><th colspan="2" class="sig-header">Method</th><th class="msource-header">Defined By</th></tr>
    {include file="method.tpl" methods=$methods imethods=$imethods class_name=$class_name}
</tbody></table>

{/if}
</div>


{include file="footer.tpl" index=true}
