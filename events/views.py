import json
from django.http import HttpRequest
from django.views import View
from django.shortcuts import render

from events.models import BlogPost

class HomeEventView(View):
    
    template_name = 'home/index.html'

    def get(self, request: HttpRequest, *args, **kwargs):
        blog_posts = BlogPost.objects.all()
        if len(blog_posts) < 1:
            blog_posts = [
                {
                    "category": "PO",
                    "date": "2023-08-17",
                    "hour": "12:30:00",
                    "locale": "New York",
                    "title": "Introduction to PO",
                    "description": "This is an introduction to the concept of PO."
                },
                {
                    "category": "IA",
                    "date": "2023-07-20",
                    "hour": "15:45:00",
                    "locale": "London",
                    "title": "Advanced IA Techniques",
                    "description": "Explore advanced techniques in IA."
                },
                {
                    "category": "MCDA",
                    "date": "2023-09-05",
                    "hour": "10:00:00",
                    "locale": "Paris",
                    "title": "Understanding MCDA",
                    "description": "Learn about Multiple Criteria Decision Analysis."
                }
            ]
        
        
        return render(request, self.template_name, {"blog_posts": blog_posts})


class AboutUsEventView(View):
    
    template_name = 'about-us/index.html'

    def get(self, request: HttpRequest, *args, **kwargs):
        return render(request, self.template_name)