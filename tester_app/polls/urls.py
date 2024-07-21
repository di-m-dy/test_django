from django.urls import path, include
from . import views

urlpatterns = [
    path('', views.quizzes_list, name='quizzes_list'),
    path('quiz/<int:quiz_id>/', views.take_quiz, name='take_quiz'),
    path('profile/', views.user_profile, name='user_profile'),
    path('users/', views.user_list, name='user_list'),
    path('signup/', views.signup, name='signup'),
    path('accounts/logout/', views.logout_view, name='logout')
]
