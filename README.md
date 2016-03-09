### Django - DjangoRestFramework - PixiJS

This is a working project for a website for commenting and voting on pixijs API examples.  The intent is to build a stack that includes django, a database, django restframework and pixijs.

Create project directory

    mkdir django_pixi
    cd django_pixi

Create a virtualenv and activate it and add the new path

    virtualenv env
    source env/bin/activate
    export VIRTUAL_ENV="$(pwd)"/env
    export PATH="$VIRTUAL_ENV/bin:$PATH"

Verify the path is now pointing to the virtual env

    which python

Initial setup once virtualenv is active

    ../setup.sh

Test Django server

    python manage.py runserver 0.0.0.0:8000

Create a front-end directory

    cd ../
    mkdir mypixi

Create git subtree of Pixijs and Pixi Examples in front-end directory

    git remote add -f mypixi/bundle/pixi.js https://github.com/pixijs/pixi.js.git
    git remote add -f mypixi/bundle/examples https://github.com/pixijs/examples.git
    git subtree add --prefix mypixi/bundle/pixi.js https://github.com/pixijs/pixi.js.git master --squash
    git subtree add --prefix mypixi/bundle/examples https://github.com/pixijs/examples.git gh-pages --squash

Test Pixi examples with simple http server

    cd mypixi/bundle/examples
    python -m SimpleHTTPServer 8000

Create and edit files in front-end directory with AJAX calls to database managed by django

    # Create new front-end html
    touch index.html
