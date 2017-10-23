var router = function(routes){
	var links = document.getElementsByTagName('a');
	var routes = routes || {};
	routes['else'] = "There is nothing to watch!";

	for(var i = 0; i < links.length; i++){
		links[i].addEventListener('click', function(event){
			event.preventDefault();
			var url = event.target.getAttribute('href');
			var state = {url: url};
			history.pushState(state, '', url);
			stateChange(state);
		});
	}
	window.onpopstate = function(event){
		stateChange(event.state);
	}
	window.onload = function(){
		var pn = window.location.pathname;
		console.log(pn);
		if(history.state){
			if(history.state.url == pn)
				stateChange(history.state);
			else {
				history.pushState({url: pn}, '', pn);
			}
		} else {
			history.pushState({url: pn}, '', pn);
			stateChange({url: pn});
		}
	}
	function stateChange(state){
		content = routes[state.url];
		if(content == undefined){
			content = routes['else'];
		}
		document.getElementById('content').innerHTML = content;				
	}
}