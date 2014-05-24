$(document).ready(function() {
            $('div.chapter a[href*=izwebz]').each(function(index) {
                var $thisLink = $(this);
                $thisLink.attr({
                   'rel': 'external',
                   'id': 'izwebzLink-' + index, 
                   'title': 'know more about ' + $thisLink.text() + ' at izwebz'
                });
            });
        });