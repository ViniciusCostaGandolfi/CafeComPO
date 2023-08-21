from django.db import models



class BlogPost(models.Model):
    CATEGORY = [
        ('PO', 'PO'),
        ('IA', 'IA'),
        ('MCDA', 'MCDA')
    ]

    category = models.CharField(max_length=5, choices=CATEGORY)
    date = models.DateField()
    hour = models.TimeField()
    locale = models.CharField(max_length=100)
    title = models.CharField(max_length=100)
    description = models.TextField(default='')

    def __str__(self):
        return f"{self.category} - {self.date} - {self.title}"
