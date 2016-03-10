# Install Django and Django REST framework
pip install Django==1.9.2
pip install djangorestframework

# Install IPython with iPython Notebook extensions
pip install "ipython[notebook]"

# Create a directory for the django project
mkdir mydjango
cd mydjango

# Set up a new project with a single application
django-admin startproject mysite 
cd mysite
python manage.py startapp polls

# Sync db for the first time to create initial tables
python manage.py migrate

# Create initial user 
python manage.py createsuperuser

# Create new Serializers module
touch polls/serializers.py

