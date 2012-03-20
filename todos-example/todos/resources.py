from djangorestframework.resources import ModelResource

from .models import Todo


class TodoResource(ModelResource):
    model = Todo
