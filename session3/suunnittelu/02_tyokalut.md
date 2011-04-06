!SLIDE bullets oneatatime
# Työkalut #

<script>
function piilotane(event) {
	$(event.target).find(".piilota").hide();
}
$(".oneatatime").bind("showoff:show", piilotane);
$(".oneatatime").bind("showoff:prev", piilotane);

// Tämä skripta näyttää järjestyksessä kolme kuvaa ja tekstiä
// ja päästää vasta sitten eteenpäin
$(".oneatatime").bind("showoff:next", function(event) {
	var pic = $(event.target).find("#ekakuva");
	if (pic.data('paljastettu') != true) {
		event.preventDefault();
		pic.fadeIn('slow');
		pic.data('paljastettu', true);
		return;
	}
	pic = $(event.target).find("#tokakuva");
	if (pic.data('paljastettu') != true) {
		event.preventDefault();
		pic.fadeIn('slow');
		pic.data('paljastettu', true);
		return;
	}
	var pic = $(event.target).find("#kolmaskuva");
	if (pic.data('paljastettu') != true) {
		event.preventDefault();
		pic.fadeIn('slow');
		pic.data('paljastettu', true);
		return;
	}
});
</script>

<div style="width:100%; text-align: center;">
<img src="product_backlog.png" id="ekakuva" class="piilota"
style="width:30%;"/>
<img src="sprint_backlog.png" id="tokakuva" class="piilota"
style="width:30%;"/>
<img src="features.png" id="kolmaskuva" class="piilota"
style="width:30%;"/>
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

!SLIDE center
# Burndown #

![Burndown](burndown.png)

