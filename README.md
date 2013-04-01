# Brunch-Django Examples

## Todos

This is an integration of the [Brunch] + [Chaplin] Todo application found in [TodoMVC] with a backend using [Django] and [Django REST Framework].

Once installed, the frontend is visible on http:127.0.0.1:8000 and the API is browsable on its endpoint http:127.0.0.1:8000/api/tasks/

### Install Django 1.3.5+ and Django Rest Framework 2.2.5+

In a Python virtual environment:

    $ pip install -r requirements.txt
    $ cd todos-example
    $ python manage.py syncdb
    $ python manage.py runserver

### Install Brunch 1.5

You will need [node.js](http://nodejs.org/) 0.6.10+.

Install CoffeeScript if not done yet:

    $ npm install -g coffee-script

Install [Brunch]:

    $ npm install -g brunch

Then in the `chaplin-brunch` folder, to install dependencies execute:

    $ npm install
    
And build the project with:

    $ brunch build

or if you want to continiously rebuild the app:

    $ brunch watch

# Authors

 * [@paulmillr](http://paulmillr.com) for the brunch-chaplin frontend.
 * [@sebastibe](http://github.com/sebastibe) for Django integration.


[Django]: http://djangoproject.com
[Django REST Framework]: http://django-rest-framework.org/
[Brunch]: http://brunch.io/
[Chaplin]: https://github.com/chaplinjs/chaplin
[TodoMVC]: https://github.com/addyosmani/todomvc
