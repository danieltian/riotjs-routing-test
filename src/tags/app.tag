app
  .ui.segment
    nav-bar
    #maincontent
      //- default route if no URL
      main-menu

  script.
    var RiotControl = require('riotcontrol');
    var previousTag = null;

    RiotControl.on('navigate', (path) => {
      riot.route(path);

      if (previousTag) {
        previousTag.unmount(true)
      }

      previousTag = riot.mount('div#maincontent', path)[0];
    });
