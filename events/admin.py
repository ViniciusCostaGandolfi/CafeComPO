from django.contrib import admin
from .models import BlogPost

class BlogPostAdmin(admin.ModelAdmin):
    list_display = ['title', 'date', 'category']
    list_filter = ['date', 'category']
    search_fields = ['title']

admin.site.register(BlogPost, BlogPostAdmin)