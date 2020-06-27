// YouTube IFrame API ////////////////////////////////////////////////////////////////
// https://developers.google.com/youtube/iframe_api_reference ////////////////////////
var player;
var _curClick = 0; // click array
function onYouTubeIframeAPIReady() {
	player = new YT.Player('player', {
//		height: '390',
//		width: '640',
		videoId: bgID[_curClick],
		playerVars: {
			'controls': 0,
			'wmode': "opaque"
		},
		events: {
			'onReady': onPlayerReady,
			'onStateChange': onPlayerStateChange
		}
	});
}
var done = false;
function onPlayerReady(event) {
	event.target.setVolume(0);
	event.target.playVideo();
	event.target.startSeconds(100);
}
function onPlayerStateChange(event) {
	if (event.data === 0) {
		_curClick++;
		if(parseInt(_curClick) > ($(".control li").size() - 1)) {
			_curClick = 0;
			$(".control li.on").removeClass("on");
			$(".control li:eq(0)").addClass("on");
			event.target.loadVideoById(bgID[parseInt(_curClick)]);
		} else {
			$(".control li.on").removeClass("on").next("li").addClass("on");
			event.target.loadVideoById(bgID[parseInt(_curClick)]);
		}
	}
}
//////////////////////////////////////////////////////////////////////////////////////

$(function(){
	// click event
	$(".control li").each(function(){
		$(this).live("click",function() {
			_curClick = $(this).index();
			$(".control li").removeClass("on");
			$(this).addClass("on");
			player.loadVideoById(bgID[parseInt(_curClick)]);
		});
	});

	$(".btn_pop").live("click",function() {
		player.pauseVideo();
		$(".pop_yt iframe").attr("src", "https://www.youtube.com/embed/"+ popID[_curClick] +"?rel=0&amp;autoplay=2;&amp;wmode=opaque");
		$(".pop_yt").show();
		$(".pop_overlay").show();
	});

	$(".pop_yt .close").live("click",function() {
		$(".pop_yt").hide();
		$(".pop_overlay").hide();
		$(".pop_yt iframe").attr("src", "");
		player.playVideo();
	});

	$(".btn_vol").live("click",function() {
		if($(this).hasClass("on")) {
			player.mute();
			$(this).removeClass("on").addClass("off");
		} else {
			player.unMute();
			$(this).removeClass("off").addClass("on");
		}
	});

	// check height
	if(location.href.indexOf("?h=600") > -1) {
		$(".top_box").css("height","600");
	}
});
