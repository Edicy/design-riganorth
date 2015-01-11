<div id="sidebar">
	<div class="lang">
  {% if site.has_many_languages? %}<p>
  {% for language in site.languages %}
   <a href="{{ language.url }}" {% if language.selected? %}class="active"{% endif %}>{{ language.title }}</a>
  {% endfor %}
  {% endif %}
                {% if editmode %}{%languageadd%}</p>{% else %}{% if site.has_many_languages? %}</p>{% endif %}{% endif %}
	</div>	
{% if site.search.enabled %}<div class="search">
<form action="">
<div>
<input id="onpage_search" class="textbox" type="text"/>
</div>
</form>
</div>{% endif %}
  {% for article in site.latest_articles limit:1 %}
	<div class="latestnews">
  <h2>{{"latest_news"|lc}}</h2>
  {% for article in site.latest_4_articles %}
   <span class="date small">{{ article.created_at | date:"%d.%m" }}</span>
   <span class="newstitle right"><a href="{{ article.url }}" class="title">{{ article.title }}</a></span>
   <div class="clearer"></div>
  {% endfor %}   
	</div>
   {% endfor %}
</div>