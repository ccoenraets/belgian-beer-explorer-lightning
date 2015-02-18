<aura:application >

    <link href='/resource/beer/bootstrap/css/bootstrap.css' rel="stylesheet"/>

    <div class="navbar navbar-default navbar-static-top" role="navigation">
        <div class="container">
            <div class="navbar-header">Belgian Beer Explorer</div>
        </div>
    </div>

    <div class="container">
        <div class="row">
            <div class="center-block trim">
				<c:BeerSearchBar />
				<c:AlcoholSlider />
            </div>
        </div>
    </div>
    
    <c:BeerList />

</aura:application>