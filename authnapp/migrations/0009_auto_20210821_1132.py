# Generated by Django 2.2.24 on 2021-08-21 11:32

import datetime
from django.db import migrations, models
from django.utils.timezone import utc


class Migration(migrations.Migration):

    dependencies = [
        ('authnapp', '0008_auto_20210820_2222'),
    ]

    operations = [
        migrations.AlterField(
            model_name='user',
            name='activation_key_expires',
            field=models.DateTimeField(default=datetime.datetime(2021, 8, 23, 11, 32, 37, 469196, tzinfo=utc), verbose_name='Актуальность ключа'),
        ),
    ]