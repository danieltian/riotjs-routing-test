const riot = require('riot');
const RiotControl = require('riotcontrol');
global.jQuery = require('jquery');

var routeStore = require('./stores/route-store');
RiotControl.addStore(routeStore);

require('./tags/app.tag');
require('./tags/main-menu.tag');
require('./tags/about-us.tag');
require('./tags/navbar.tag');

riot.mount('app');

riot.route(function(a, b, c) {
  RiotControl.trigger('route:change', {
    collection: a,
    id: b,
    action: c
  });
});
