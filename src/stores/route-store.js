const riot = require('riot');

class RouteStore {
  constructor() {
    riot.observable(this);
  }
}

module.exports = new RouteStore();
