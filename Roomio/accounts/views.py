from django.shortcuts import render

# Create your views here.
from django.contrib.auth.forms import UserCreationForm
from django.urls import reverse_lazy
from django.views import generic
from django.shortcuts import render, redirect
from django.contrib.auth import login, logout, authenticate
from .forms import UserRegistrationForm
from .models import User


class SignUpView(generic.CreateView):
    form_class = UserRegistrationForm
    success_url = reverse_lazy("login")
    template_name = "registration/signup.html"