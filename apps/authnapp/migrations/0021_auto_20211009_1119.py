# Generated by Django 2.2.24 on 2021-10-09 11:19

import datetime
from django.db import migrations, models
from django.utils.timezone import utc


class Migration(migrations.Migration):

    dependencies = [
        ('authnapp', '0020_auto_20210907_2018'),
    ]

    operations = [
        migrations.AlterField(
            model_name='user',
            name='activation_key_expires',
            field=models.DateTimeField(default=datetime.datetime(2021, 10, 11, 11, 19, 39, 916302, tzinfo=utc), verbose_name='Актуальность ключа'),
        ),
    ]
