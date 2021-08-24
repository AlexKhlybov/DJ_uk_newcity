# Generated by Django 2.2.24 on 2021-08-21 11:32

import datetime
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('mainapp', '0008_auto_20210820_2222'),
    ]

    operations = [
        migrations.AddField(
            model_name='recalculations',
            name='is_auto',
            field=models.BooleanField(default=False, verbose_name='Автоматический'),
        ),
        migrations.AlterField(
            model_name='currentcounter',
            name='period',
            field=models.DateField(default=datetime.datetime(2021, 8, 1, 11, 32, 37, 481380), verbose_name='Создан'),
        ),
        migrations.AlterField(
            model_name='historycounter',
            name='period',
            field=models.DateField(default=datetime.datetime(2021, 8, 1, 11, 32, 37, 481898), verbose_name='Создан'),
        ),
        migrations.AlterField(
            model_name='housecurrent',
            name='period',
            field=models.DateField(default=datetime.datetime(2021, 8, 1, 11, 32, 37, 479588), verbose_name='Создан'),
        ),
        migrations.AlterField(
            model_name='househistory',
            name='period',
            field=models.DateField(default=datetime.datetime(2021, 8, 1, 11, 32, 37, 480102), verbose_name='Создан'),
        ),
        migrations.AlterField(
            model_name='mainbook',
            name='period',
            field=models.DateField(default=datetime.datetime(2021, 8, 1, 11, 32, 37, 484714), verbose_name='Создан'),
        ),
        migrations.AlterField(
            model_name='paymentorder',
            name='period',
            field=models.DateField(default=datetime.datetime(2021, 8, 1, 11, 32, 37, 485551), verbose_name='Создан'),
        ),
        migrations.AlterField(
            model_name='recalculations',
            name='period',
            field=models.DateField(default=datetime.datetime(2021, 8, 1, 11, 32, 37, 482479), verbose_name='Создан'),
        ),
        migrations.AlterField(
            model_name='standart',
            name='period',
            field=models.DateField(default=datetime.datetime(2021, 8, 1, 11, 32, 37, 480753), verbose_name='Создан'),
        ),
        migrations.AlterField(
            model_name='variablepayments',
            name='period',
            field=models.DateField(default=datetime.datetime(2021, 8, 1, 11, 32, 37, 483717), verbose_name='Создан'),
        ),
    ]