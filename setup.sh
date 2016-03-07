# Pixi
git clone https://github.com/pixijs/pixi.js
git clone https://github.com/pixijs/examples.git

# Install Django and Django REST framework
pip install Django==1.9.2
pip install djangorestframework

# Set up a new project with a single application
django-admin.py startproject mysite .
cd mysite
django-admin.py startapp pixi_polls
cd ..

# Sync db for the first time to create initial tables
python manage.py migrate

# Create initial user 
python manage.py createsuperuser

# Create new Serializers module
touch mysite/pixi_polls/serializers.py
