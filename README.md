# Brunch-Django Examples

## Todos

This is an adaptation of the official
[Brunch Todos application](https://github.com/brunch/todos) using
[Django](http://djangoproject.com) and
[Django-rest-framework](http://django-rest-framework.org/) for the
REST-API and data persistence.

The credits for the original Todos application comes to
[Jérôme Gravel-Niquet](http://jgn.me/).

### Install and setup Django 1.3.1

In a Python virtual environment:

    pip install -r requirements.txt
    
    cd todos
    python manage.py syncdb
    python manage.py runserver

### Install and setup Brunch 1.0

You will need [node.js](http://nodejs.org/) 0.6.10+.

Install CoffeeScript if not done yet:

    npm install -g coffeescript

Install Brunch:

    npm install -g brunch

In the `frontend` folder, once you have
[brunch](https://github.com/brunch) 1.x installed, you can install
dependencies to `node_modules` directory:

    npm install
    
And build the project with:

    brunch build

And you are good to go on http://127.0.0.1:8000
