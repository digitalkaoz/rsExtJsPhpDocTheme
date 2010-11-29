{include file="header.tpl" top3=true}

<body scroll="no" id="docs">
  <div id="loading-mask" style=""></div>
  <div id="loading">
    <div class="loading-indicator"><img src="http://dev.sencha.com/deploy/dev/docs/resources/extanim32.gif" width="32" height="32" style="margin-right:8px;" align="absmiddle"/>Loading...</div>
  </div>

  <div id="header">
    <div style="float:right; margin-top: 15px;margin-right: 10px;color: #CCC">
        <a href="http://staging.usedom.spot-media.net/" target="_blank" style="padding:5px">staging.intern</a> | 
        <a href="http://live.usedom.spot-media.net/" target="_blank" style="padding:5px">live.intern</a> | 
        <a href="http://staging-tms.reisen.tchibo.easynet.de" target="_blank" style="padding:5px">staging.extern</a> | 
        <a href="http://live-tms.reisen.tchibo.easynet.de" target="_blank" style="padding:5px">live.extern</a>
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
