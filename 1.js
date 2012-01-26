(function() {
  var num;

  console.log(((function() {
    var _results;
    _results = [];
    for (num = 0; num <= 999; num++) {
      if (num % 5 === 0 || num % 3 === 0) _results.push(num);
    }
    return _results;
  })()).reduce(function(t, s) {
    return t + s;
  }));

}).call(this);
