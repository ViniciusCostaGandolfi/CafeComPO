from django.db import models


class Speaker(models.Model):
    name = models.CharField(default='Em Breve', max_length=100)
    photo = models.FileField(null=True)
    description = models.TextField(default='', max_length=500)

    def __str__(self):
        return f"{self.name}"

class Event(models.Model):
    CATEGORY = [
        ('PO', 'PO'),
        ('IA', 'IA'),
        ('MODE', 'Modelagem'),
        ('MCDA', 'MCDA'),
        ('DS', 'Data Science'),
        ('SIMU', 'Simulação')
    ]

    category = models.CharField(max_length=5, choices=CATEGORY)
    date = models.DateField()
    hour = models.TimeField()
    locale = models.CharField(max_length=100)
    title = models.CharField(default='Em Breve', max_length=100, blank=True)
    speaker_id = models.ForeignKey(Speaker, null=True, blank=True, on_delete=models.CASCADE)
    description = models.TextField(default='', max_length=500)

    def __str__(self):
        return f"{self.category} - {self.date} - {self.title}"
    
    
