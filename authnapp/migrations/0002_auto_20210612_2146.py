# Generated by Django 2.2.17 on 2021-06-12 21:46

import datetime
from django.db import migrations, models
from django.utils.timezone import utc


class Migration(migrations.Migration):

    dependencies = [
        ('authnapp', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='user',
            name='activation_key_expires',
            field=models.DateTimeField(default=datetime.datetime(2021, 6, 14, 21, 46, 14, 253990, tzinfo=utc), verbose_name='Актуальность ключа'),
        ),
    ]
