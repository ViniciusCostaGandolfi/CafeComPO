import json
from django.http import HttpRequest
from django.views import View
from django.shortcuts import render

from events.models import BlogPost

from django.utils import timezone

class HomeEventView(View):
    
    template_name = 'home/index.html'

    def get(self, request: HttpRequest, *args, **kwargs):
        
        carousels: list[dict[str, str]] = [
            {'title': 'PO', 'description': 'Algotimos de pesquisa operacional, heurísticas e meta-heurísticas'},
            {'title': 'IA', 'description': 'Algotimos de inteligencia artificial para regressão e classificação'},
            {'title': 'MCDA', 'description': 'Algotimos de apoio a decisão multicritério para ordenamento e classificação'},
            {'title': 'DS', 'description': 'Ciência da análise de quantidades massivas de dados, probabilidade e estatística'},
            {'title': 'SIMU', 'description': 'Simulação de eventos discretos, teria das filas, entre outros'}
            
            
        ]
        
        # Primeira parte da consulta: eventos futuros ordenados por data crescente
        future_events = BlogPost.objects.filter(date__gte=timezone.now()).order_by('date')
        
        # Segunda parte da consulta: eventos passados ordenados por data decrescente
        past_events = BlogPost.objects.filter(date__lt=timezone.now()).order_by('-date')
        
        # Combinando as duas partes da consulta
        blog_posts = list(future_events) + list(past_events)
        
        return render(request, self.template_name, {"blog_posts": blog_posts, "carousels": carousels})



class AboutUsEventView(View):
    
    template_name = 'about-us/index.html'

    def get(self, request: HttpRequest, *args, **kwargs):
        return render(request, self.template_name)