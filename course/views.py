from django.http import HttpResponse
from django.shortcuts import render

# Create your views here.

def learn_django(request):
    return HttpResponse('<h2>Hello, for deployment</h2')