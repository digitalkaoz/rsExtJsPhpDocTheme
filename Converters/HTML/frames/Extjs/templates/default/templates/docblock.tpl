{if $sdesc}{$sdesc}{/if}
{if $desc}{$desc}{/if}
{if $tags}
<pre>
{section name=tags loop=$tags}{if $tags[tags].keyword != 'access'}
<b>{$tags[tags].keyword}:</b>{$tags[tags].data}
{/if}{/section}
</pre>
{/if}
