# Generated by Django 4.2.4 on 2023-08-28 16:56

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('events', '0004_alter_blogpost_category'),
    ]

    operations = [
        migrations.CreateModel(
            name='Event',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('category', models.CharField(choices=[('PO', 'PO'), ('IA', 'IA'), ('MODE', 'Modelagem'), ('MCDA', 'MCDA'), ('DS', 'Data Science'), ('SIMU', 'Simulação')], max_length=5)),
                ('date', models.DateField()),
                ('hour', models.TimeField()),
                ('locale', models.CharField(max_length=100)),
                ('title', models.CharField(default='Em Breve', max_length=100)),
                ('description', models.TextField(default='', max_length=500)),
            ],
        ),
        migrations.CreateModel(
            name='Speaker',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(default='Em Breve', max_length=100)),
                ('photo', models.FileField(null=True, upload_to='')),
                ('description', models.TextField(default='', max_length=500)),
            ],
        ),
        migrations.DeleteModel(
            name='BlogPost',
        ),
        migrations.AddField(
            model_name='event',
            name='speaker_id',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='events.speaker'),
        ),
    ]
