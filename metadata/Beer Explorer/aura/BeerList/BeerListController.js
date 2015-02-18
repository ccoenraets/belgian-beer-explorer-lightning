({
    locationChange : function(component, event, helper) {
        helper.getBeers(component);
    },
    pageChange: function(component, event, helper) {
		var page = component.get("v.page") || 1;
        var direction = event.getParam("direction");
        page = direction === "previous" ? (page - 1) : (page + 1);
        helper.getBeers(component, page);
	},
    alcoholSelectionChange: function(component, event, helper) {
        helper.minAlcohol = event.getParam("minAlcohol");
        helper.getBeers(component);
	}
})