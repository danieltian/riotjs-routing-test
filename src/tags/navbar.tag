nav-bar
  .ui.menu
    a.item(href="main-menu" onclick="{navigate}" class="{ active: currentTagName == 'main-menu' }")
      i.home.icon
      | Home
    a.item(href="about-us" onclick="{navigate}" class="{ active: currentTagName == 'about-us' }")
      i.info.circle.icon
      | About

  script.
    var RiotControl = require('riotcontrol');
    this.currentTagName = 'main-menu';

    navigate(e) {
      var tagName = e.target.getAttribute('href');
      this.currentTagName = tagName;
      console.log('navigate', tagName);
      RiotControl.trigger('navigate', tagName);
    }

  style(scoped).
    :scope { display: block; }

    .icon {
      pointer-events: none;
    }
