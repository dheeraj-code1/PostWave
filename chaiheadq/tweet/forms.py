from django import forms
from .models import Tweet
from django.contrib.auth.forms import UserCreationForm
from django.contrib.auth.models import User


class TweetForm(forms.ModelForm):
  class Meta:
    model = Tweet
    fields = ["text","photo"]
    
class UserRegisterationForm(UserCreationForm):
  email = forms.EmailField()
  class Meta:
    model = User
    fields = ("email","username","password1","password2")