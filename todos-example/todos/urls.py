from django.conf.urls.defaults import patterns, url

from djangorestframework.views import ListOrCreateModelView, InstanceModelView
from .resources import TodoResource

urlpatterns = patterns('',
    url(r'^todos/$',
        ListOrCreateModelView.as_view(resource=TodoResource),
        name='todo-resources'),
    url(r'^todos/(?P<pk>[0-9]+)/$',
        InstanceModelView.as_view(resource=TodoResource),
        name='todo-resources'),
)
