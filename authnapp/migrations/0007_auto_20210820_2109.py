# Generated by Django 2.2.24 on 2021-08-20 21:09

import datetime
from django.db import migrations, models
from django.utils.timezone import utc


class Migration(migrations.Migration):

    dependencies = [
        ('authnapp', '0006_auto_20210820_2109'),
    ]

    operations = [
        migrations.AlterField(
            model_name='user',
            name='activation_key_expires',
            field=models.DateTimeField(default=datetime.datetime(2021, 8, 22, 21, 9, 44, 181601, tzinfo=utc), verbose_name='Актуальность ключа'),
        ),
    ]