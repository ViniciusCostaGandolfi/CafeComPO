from django.contrib import admin
from .models import Event, Speaker

class EventAdmin(admin.ModelAdmin):
    list_display = ['title', 'date', 'category']
    list_filter = ['date', 'category']
    search_fields = ['title']
    
    
class SpeackerAdmin(admin.ModelAdmin):
    list_display = ['name']
    list_filter = ['name']
    search_fields = ['name']

admin.site.register(Speaker, SpeackerAdmin)
admin.site.register(Event, EventAdmin)