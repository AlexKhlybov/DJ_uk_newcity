# Generated by Django 2.2.17 on 2021-04-29 02:53

import datetime
from django.db import migrations, models
from django.utils.timezone import utc


class Migration(migrations.Migration):

    dependencies = [
        ('authnapp', '0004_auto_20210429_0251'),
    ]

    operations = [
        migrations.AlterField(
            model_name='user',
            name='activation_key_expires',
            field=models.DateTimeField(default=datetime.datetime(2021, 5, 1, 2, 53, 55, 644066, tzinfo=utc), verbose_name='Актуальность ключа'),
        ),
    ]