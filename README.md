### Django - DjangoRestFramework - PixiJS

This is poll app for commenting and voting on pixijs API examples.  The intent is to build a stack including django, a database, django restframework and pixijs.

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

Test Pixi examples with simple http server

    cd ../examples
    python -m SimpleHTTPServer 8000

Create a front-end directory

    cd ../
    mkdir client
