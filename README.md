The website for the Jack Bush Catalogue Raisonné Project.


Building
========

In order to build this app, you'll need some node.js and Ruby dependencies.
(It's recommended that you use nvm and rvm, respectively, in order to get the
correct versions.)

To install the node dependencies, navigate to the project directory and run:

    npm install

Then install the Ruby dependencies by running the following command:

    bundle install

You can then build the site by running:

    grunt build


Development
===========

After installing the node and Ruby dependencies, you can develop by running the
following command:

    grunt dev

The site will then be accessible at <http://localhost:8000/>. CoffeeScript and
SASS files will be automatically recompiled as you make changes.
