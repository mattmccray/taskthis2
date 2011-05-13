(function() {
  var _helper;
  _helper = function(obj, meth) {
    var ctx, func, noop;
    ctx = window[obj] || {};
    func = false;
    noop = new Function;
    if (func = ctx[meth]) {
      return function() {
        return func.apply(ctx, arguments);
      };
    } else {
      return noop;
    }
  };
  this.log = _helper('console', 'log');
  this.inspect = _helper('console', 'dir');
  $(function() {
    return log("Ready.");
  });
  this.debug = function() {
    return $('body').toggleClass('debug');
  };
}).call(this);
