# -*- coding: utf-8 -*-
# Generated by Django 1.9.6 on 2018-06-06 17:10
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Horario',
            fields=[
                ('idHorario', models.IntegerField(primary_key=True, serialize=False)),
                ('dia', models.DateTimeField()),
                ('horaInicio', models.TimeField(help_text='Hora en que comienza el horario')),
                ('horaFinal', models.TimeField(help_text='Hora en que finaliza el horario')),
            ],
        ),
        migrations.CreateModel(
            name='Tutoria',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
            ],
        ),
    ]
