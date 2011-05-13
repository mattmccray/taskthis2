_helper= (obj, meth)->
  ctx = window[obj] || {}
  func = false
  noop = new Function;
  if func = ctx[meth]
    ->
      func.apply(ctx, arguments)
  else
    noop


this.log= _helper('console', 'log')
this.inspect= _helper('console', 'dir')


$ ->
  log "Ready."


this.debug= ->
  $('body').toggleClass('debug')
