({
	changeHandler : function(component, event) {
        var myEvent = $A.get("e.cc02:AlcoholSelectionChange");
        myEvent.setParams({ "minAlcohol": event.target.value});
        myEvent.fire();
	},
	changingHandler : function(component, event) {
		var sliderLabel = document.getElementById("sliderLevel");
        sliderLabel.style.left = "" + ((456 / 15 * event.target.value) - 9) + "px";
        component.set("v.minAlcohol", event.target.value);
	}
})