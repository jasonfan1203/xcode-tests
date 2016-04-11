/*

HostSlide V2.0

CodeCanyon Licensed
Regular License @ http://codecanyon.net/licenses/terms/regular
Extended License @ http://codecanyon.net/licenses/terms/extended

Copyright (C) 2015 WebAboard @ CodeCanyon

*/
(function($) {

    $.fn.hostslide = function(type, plans, currentplan, id, orientation) {
        if (typeof type != 'string') {
            console.error("HostSlide: 'type' is not a string");
            return false;
        }
        if (plans[0].length < 2) {
            console.error("HostSlide: Not enough plans provided");
            return false;
        }
        if (typeof currentplan != 'number') {
            console.error("HostSlide: 'currentplan' is not a number");
            return false;
        }
        if (typeof id != 'string') {
            console.error("HostSlide: 'id' is not a string");
            return false;
        }
        if (typeof orientation != 'string') {
            console.error("HostSlide: 'orientation' is not a string");
            return false;
        }
        if (orientation != 'horizontal' && orientation != 'vertical') {
            console.error("HostSlide: " + orientation + " is not a valid slider orientation.");
            return false;
        }
        if (type === "single") {
            for (var i = 0, tot = plans.length; i < tot; i++) {
                $("." + id + i).each(function() {
                    if ($(this).is("input")) {
                        $(this).val(plans[i][currentplan - 1]);
                    } else {
                        $(this).html(plans[i][currentplan - 1]);
                    }
                });
            }
            this.slider({
                orientation: orientation,
                value: currentplan,
                range: "min",
                min: 1,
                max: plans[0].length,
                step: 1,
                slide: function(event, ui) {
                    for (var i = 0, tot = plans.length; i < tot; i++) {
                        $("." + id + i).each(function() {
                            if ($(this).is("input")) {
                                $(this).val(plans[i][ui.value - 1]);
                            } else {
                                $(this).html(plans[i][ui.value - 1]);
                            }
                        });
                    }
                }
            });
            return this;
        } else if (type === "multiple") {
            for (var i = 0, tot = plans.length; i < tot; i++) {
                (function(i) {
                    $("." + id + i + "data").each(function() {
                        if ($(this).is("input")) {
                            $(this).val(plans[i][currentplan - 1]);
                        } else {
                            $(this).html(plans[i][currentplan - 1]);
                        }
                    });
                    $("." + id + i).slider({
                        orientation: orientation,
                        value: currentplan,
                        range: "min",
                        min: 1,
                        max: plans[i].length,
                        step: 1,
                        slide: function(event, ui) {
                            $("." + id + i + "data").each(function() {
                                if ($(this).is("input")) {
                                    $(this).val(plans[i][ui.value - 1]);
                                } else {
                                    $(this).html(plans[i][ui.value - 1]);
                                }
                            });
                        }
                    });
                })(i);
            }
            return this;
        } else {
            console.error("HostSlide: " + type + " is not a valid slider type.");
            return false;
        }

    };

}(jQuery));