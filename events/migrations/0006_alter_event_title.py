# Generated by Django 4.2.4 on 2023-08-28 17:18

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('events', '0005_event_speaker_delete_blogpost_event_speaker_id'),
    ]

    operations = [
        migrations.AlterField(
            model_name='event',
            name='title',
            field=models.CharField(blank=True, default='Em Breve', max_length=100),
        ),
    ]
