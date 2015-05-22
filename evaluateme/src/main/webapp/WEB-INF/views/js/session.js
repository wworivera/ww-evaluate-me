$(document).ready(function () {
	
	$.sessionTimeout({
	    logoutUrl		: window.location.pathname.substring(0, window.location.pathname.indexOf("/", 2)) + '/login',
	    logoutButton	: 'Logout',
	    redirUrl		: window.location.pathname.substring(0, window.location.pathname.indexOf("/", 2)) + '/session/expired',
	    keepAliveUrl	: window.location.pathname.substring(0, window.location.pathname.indexOf("/", 2)) + '/session/keepAlive',
	    keepAliveButton	: 'Stay Connected',
	    warnAfter		: 900000,//600 000,
	    redirAfter		: 1210000,//900 000,//180 000,
//	    onWarn: function() {
//	    	//alert('Your session will soon expire!');
//	    },
//	    onRedir: function() {
//	        alert('Your session has expired!');
//	    }
	});
});
