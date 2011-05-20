{include file="header.tpl" top3=true}

<body scroll="no" id="docs">
  <div id="loading-mask" style=""></div>
  <div id="loading">
    <div class="loading-indicator"><img src="http://dev.sencha.com/deploy/ext-3.3.1/docs/resources/extanim32.gif" width="32" height="32" style="margin-right:8px;" align="absmiddle"/>Loading...</div>
  </div>

  <div id="header">
    <div style="float:right; margin-top: 15px;margin-right: 10px;color: #CCC">
    </div>
 	<div class="api-title">API | {$title}</div>
  </div>

  <div id="classes"></div>

  <div id="main"></div>
  
  <select id="search-options" style="display:none">
    <option>Starts with</option>
    <option>Ends with</option>
    <option>Any Match</option>
  </select>
  
{include file="footer.tpl" index=true}
