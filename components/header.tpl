<div id="header">
	<h1 class="clearfix">{% editable site.header %}</h1>
        <div id="mainmenu">
	<p>
  {% unless site.root_item.hidden? %}<a href="{{ site.root_item.url }}"{% if site.root_item.current? %} class="active"{% endif %}>{{site.root_item.title}}</a>{% endunless %}
  {% for item in site.visible_menuitems %}
  <a href="{{ item.url }}"{% unless item.translated? %} class="untranslated fci-editor-menuadd"{% endunless %}{% if item.selected? %} class="active"{% endif %}>{{ item.title }}</a>
  {% endfor %}
   {% if editmode %}<span>{% menubtn site.hidden_menuitems %}</span>{% endif %}
  {% if editmode %}<span>{% menuadd %}</span>{% endif %}
	</p>
</div>
  <div class="clearer"></div>
</div>
