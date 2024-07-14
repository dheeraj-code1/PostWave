
from django.urls import path,include

from . import views

urlpatterns = [
    path('', views.tweet_list,name='tweet_list'),
    path('create/', views.create_tweet,name='create_tweet'),
    path('<int:tweet_id>/edit/', views.update_tweet,name='update_tweet'),
    path('<int:tweet_id>/delete/', views.delete_tweet,name='delete_tweet'),
    path('register/',views.register,name="register") 
] 