# Generated by Django 4.2.4 on 2023-09-05 14:17

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('events', '0008_alter_speaker_description_alter_speaker_photo'),
    ]

    operations = [
        migrations.AlterField(
            model_name='event',
            name='file',
            field=models.FileField(blank=True, null=True, upload_to='mediafiles/pdfs'),
        ),
    ]
