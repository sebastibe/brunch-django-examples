from django.views.generic.base import TemplateView
from django.conf.urls.defaults import patterns, include, url

from todos.views import TaskList, TaskDetail

# Uncomment the next two lines to enable the admin:
# from django.contrib import admin
# admin.autodiscover()

urlpatterns = patterns('',
    # Examples:
    url(r'^$', TemplateView.as_view(template_name='index.html'), name='home'),
    url(r'^api/tasks/$', TaskList.as_view(), name='task-list'),
    url(r'^api/tasks/(?P<pk>[0-9]+)/$', TaskDetail.as_view(), name='task-detail'),

    # Uncomment the next line to enable the admin:
    # url(r'^admin/', include(admin.site.urls)),
)

from django.contrib.staticfiles.urls import staticfiles_urlpatterns
urlpatterns += staticfiles_urlpatterns()
