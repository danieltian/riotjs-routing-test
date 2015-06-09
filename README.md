# riotjs-routing-test
Standard navigation in RiotJS. This project shows a way of using the [RiotJS](https://muut.com/riotjs/) router to do traditional navbar navigation.

### Install

Clone the repo and run the following in the repo folder:

    npm install
    npm install webpack-dev-server --global

### Run

Run the following command in the repo folder:

    npm start
    
then point your browser to [http://localhost:8080](http://localhost:8080).

### Dev Notes

RiotJS comes with a [basic router](https://muut.com/riotjs/api/#router), but it's very bare bones and only allows you to read and modify the hashes on the URL (i.e. [http://localhost:8080/#about-us](http://localhost:8080/#about-us)). We still need to handle the processing of the hash ourselves. In order to mimic the behavior of typical website navigation, we add a div to the main layout (see `app.tag`) that we will render a RiotJS tag into. When any link is clicked in the navbar (`navbar.tag`), the old tag is unmounted and the new tag is mounted into this div.
