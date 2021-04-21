# Generated by Django 2.2.17 on 2021-04-21 03:55

import datetime
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('mainapp', '0002_auto_20210420_1224'),
    ]

    operations = [
        migrations.AddField(
            model_name='standart',
            name='created',
            field=models.DateTimeField(auto_now_add=True, default=1, verbose_name='Создан'),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='standart',
            name='updated',
            field=models.DateTimeField(auto_now=True, verbose_name='Обновлен'),
        ),
        migrations.AlterField(
            model_name='housecurrent',
            name='period',
            field=models.DateField(default=datetime.datetime(2021, 4, 1, 3, 55, 24, 630731), verbose_name='Создан'),
        ),
        migrations.AlterField(
            model_name='househistory',
            name='created',
            field=models.DateTimeField(auto_now_add=True, verbose_name='Создан'),
        ),
        migrations.AlterField(
            model_name='househistory',
            name='period',
            field=models.DateField(default=datetime.datetime(2021, 4, 1, 3, 55, 24, 631516), verbose_name='Создан'),
        ),
        migrations.AlterField(
            model_name='househistory',
            name='updated',
            field=models.DateTimeField(auto_now=True, verbose_name='Обновлен'),
        ),
    ]
