!SLIDE bullets oneatatime
# Työkalut #

<script>
// Tämä skripta näyttää järjestyksessä kolme kuvaa ja tekstiä
// ja päästää vasta sitten eteenpäin
$(".oneatatime").bind("showoff:next", function(event) {
	var pic = $(event.target).find("#ekakuva");
	if (pic.css("visibility") === "hidden") {
		event.preventDefault();
		pic.css({visibility: "visible"});
		var el = $(event.target).find("#ekateksti");
		el.css({visibility: "visible"});
		return;
	}
	pic = $(event.target).find("#tokakuva");
	if (pic.css("visibility") === "hidden") {
		event.preventDefault();
		pic.css({visibility: "visible"});
		var el = $(event.target).find("#tokateksti");
		el.css({visibility: "visible"});
		return;
	}
	var pic = $(event.target).find("#kolmaskuva");
	if (pic.css("visibility") === "hidden") {
		event.preventDefault();
		pic.css({visibility: "visible"});
		var el = $(event.target).find("#kolmasteksti");
		el.css({visibility: "visible"});
		return;
	}
});
</script>

<div style="width:100%; text-align: center;">
<img src="folder_documents.png" id="ekakuva"
style="width:30%; visibility: hidden;"/>
<img src="folder_documents.png" id="tokakuva"
style="width:30%; visibility: hidden;"/>
<img src="binary.png" id="kolmaskuva"
style="width:30%; visibility: hidden;"/>
</div>

<div style="width:100%; text-align: center">
<span id="ekateksti"
style="font-size: 200%; margin-right: 200px; visibility: hidden">PBIt</span>
<span id="tokateksti"
style="font-size: 200%; visibility: hidden">Taskit</span>
<span id="kolmasteksti"
style="font-size: 200%; margin-left: 200px; visibility: hidden">Featuret</span>
</div>

!SLIDE center
# Storyja käsittelevä työkalu #

![Pivotal](pivotal.png)

!SLIDE center
# Planning Poker #

![Planning poker](poker.jpg)
(© Alan Dayley http://flickr.com/alandd)

!SLIDE center
# Kanban board #

![Kanban board](taskboard.jpg)
(© Drew Stephens, http://flickr.com/dinomite)
