# Generated by Django 4.2.4 on 2023-08-28 14:09

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('events', '0002_blogpost_description_alter_blogpost_locale_and_more'),
    ]

    operations = [
        migrations.AddField(
            model_name='blogpost',
            name='speaker',
            field=models.CharField(default='Em Breve', max_length=100),
        ),
        migrations.AlterField(
            model_name='blogpost',
            name='category',
            field=models.CharField(choices=[('PO', 'PO'), ('IA', 'IA'), ('MCDA', 'MCDA'), ('SIMU', 'Simulação')], max_length=5),
        ),
        migrations.AlterField(
            model_name='blogpost',
            name='description',
            field=models.TextField(default='', max_length=500),
        ),
        migrations.AlterField(
            model_name='blogpost',
            name='title',
            field=models.CharField(default='Em Breve', max_length=100),
        ),
    ]
