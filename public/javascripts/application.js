// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
document.observe("dom:loaded", function() {
	wordCount('micropost_content', 140);
	$('micropost_content').observe("keyup", function() {
		wordCount('micropost_content',140); 
	});
})

function wordCount(element, limit) {
	var count = $(element).getValue().length;
	$('char-count').update(limit - count);
	if (count >= (limit - (limit / 4))) {
		$('char-count').setStyle({ color: '#dd0000' });
	}
	else {
		$('char-count').setStyle({ color: '#aaa' });
	}
}