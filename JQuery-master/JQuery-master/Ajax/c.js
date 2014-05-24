var entries = [
{
"term": "CALAMITY",
"part": "n.",
"definition": "A more than commonly plain and..."
},
{
"term": "CANNIBAL",
"part": "n.",
"definition": "A gastronome of the old school who..."
},
{
"term": "CHILDHOOD",
"part": "n.",
"definition": "The period of human life intermediate..."
},
{
"term": "CLARIONET",
"part": "n.",
"definition": "An instrument of torture operated by..."
},
{
"term": "COMFORT",
"part": "n.",
"definition": "A state of mind produced by..."
},
{
"term": "CORSAIR",
"part": "n.",
"definition": "A politician of the seas."
}
];
var html = '';
$.each(entries, function() {
html += '<div class="entry">';
html += '<h3 class="term">' + this['term'] + '</h3>';
html += '<div class="part">' + this['part'] + '</div>';
html += '<div class="definition">' + this['definition'] + '</div>';
html += '</div>';
});

$('#dictionary').slideUp('slow',function(){
$('#dictionary').empty();
$('#dictionary').append(html);
$('#dictionary').slideDown('slow');
});


