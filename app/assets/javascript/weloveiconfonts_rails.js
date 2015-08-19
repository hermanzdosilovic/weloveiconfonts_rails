function weloveiconfonts() {
  function rgb2hex(rgb) {
    rgb = rgb.match(/^rgba?\((\d+),\s*(\d+),\s*(\d+)(?:,\s*([\d\.]+))?\)$/);
    function hex(x) { return ("0" + parseInt(x).toString(16)).slice(-2); }
    return (hex(rgb[1]) + hex(rgb[2]) + hex(rgb[3])).toUpperCase();
  };

  function mix(color_1, color_2, weight) {
    function d2h(d) { return d.toString(16); }
    function h2d(h) { return parseInt(h, 16); }
    weight = (typeof(weight) !== 'undefined') ? weight : 50;
    var color = "#";
    for(var i = 0; i <= 5; i += 2) {
      var v1 = h2d(color_1.substr(i, 2)),
          v2 = h2d(color_2.substr(i, 2)),
          val = d2h(Math.floor(v2 + (v1 - v2) * (weight / 100.0)));
      while(val.length < 2) { val = '0' + val; }
      color += val;
    }
    return color;
  };

  var iconBackgroundColor;
  $('.weloveiconfonts__icon.hoverable').hover(
    function(){
      iconBackgroundColor = this.style.backgroundColor;
      this.style.backgroundColor = mix($(this).attr('shade').substr(1), rgb2hex(iconBackgroundColor), 30);
    }, function() {
      this.style.backgroundColor = iconBackgroundColor;
    }
  );

  var iconForegroundColor;
  $(".weloveiconfonts__content.hoverable").hover(
    function() {
      iconForegroundColor = this.parentElement.style.color;
      this.parentElement.style.color = mix($(this.parentElement).attr('shade').substr(1), rgb2hex(iconForegroundColor), 30);
    },
    function() {
      this.parentElement.style.color = iconForegroundColor;
    }
  );
};

$(document).ready(function() {
  weloveiconfonts();
});
