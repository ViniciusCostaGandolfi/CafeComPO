import json
from django.http import HttpRequest
from django.views import View
from django.shortcuts import get_object_or_404, render

from events.models import Event

from django.utils import timezone

class HomeEventView(View):
    
    template_name = 'home/index.html'

    def get(self, request: HttpRequest, *args, **kwargs):
        
        carousels: list[dict[str, str]] = [
            {'title': 'PO', 'description': 'Algoritmos de pesquisa operacional, metodologias, heurísticas e meta-heurísticas'},
            {'title': 'IA', 'description': 'Algoritmos de inteligência artificial para regressão e clusterização'},
            {'title': 'Data Science', 'description': 'Ciência da análise de quantidades massivas de dados, probabilidade e estatística'},
            {'title': 'Modelagem', 'description': 'Modelagem matemática, técnicas avançadas de otimização e métodos de resolução'},
            {'title': 'MCDA', 'description': 'Algoritmos de apoio à decisão multicritério para ordenamento e classificação'},
            {'title': 'Simulação', 'description': 'Simulação de eventos discretos, modelos probabilísticos e teoria de filas'},
            
            
        ]
        
        future_events = Event.objects.filter(date__gte=timezone.now()).order_by('date')
        
        past_events = Event.objects.filter(date__lt=timezone.now()).order_by('-date')
        
        blog_posts = list(future_events) + list(past_events)
        
        for post in blog_posts:
            if len(post.title) > 100:
                post.title = post.title[:100] + "..."
            if len(post.description) > 100:
                post.description = post.description[:100] + "..."
                
        return render(request, self.template_name, {"blog_posts": blog_posts, "carousels": carousels})  
    
    
    
      
class EventsView(View):
    template_list = 'events/events_list.html'
    template_detail = 'events/event_detail.html'
    
    def get(self, request, event_id=None):
        if event_id is None:
            # Caso nenhum ID de evento seja fornecido, mostra todos os eventos
            events = Event.objects.all()
            template = self.template_list
            context = {'events': events}
        else:
            # Caso contrário, mostra os detalhes do evento específico
            event = get_object_or_404(Event, pk=event_id)
            template = self.template_detail
            context = {'event': event}
    
        return render(request, template, context)



class AboutUsEventView(View):
    
    template_name = 'about-us/index.html'

    def get(self, request: HttpRequest, *args, **kwargs):
        persons = [
            {"name": "Vinicius",  "description": "Aluno de graduação na FCA-Unicamp", "photo": "images/organization/vinicius.jpeg", "email": "v245274@dac.unicamp.br"},
            {"name": "Washington", "description": "Doscente na FCA-Unicamp","photo": "images/organization/washington.jpg", "email": "washington.oliveira@fca.unicamp.br"},
            {"name": "Nilmara",  "description": "Aluno de pós graduação na FCA-Unicamp", "photo": "images/organization/nilmara.jpg", "email": "nilmarabiscaia@gmail.com"},

        ]
        return render(request, self.template_name, {"persons": persons})