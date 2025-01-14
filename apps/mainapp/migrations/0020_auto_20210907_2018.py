# Generated by Django 2.2.24 on 2021-09-07 20:18

import datetime
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('mainapp', '0019_auto_20210907_1925'),
    ]

    operations = [
        migrations.AlterField(
            model_name='averageсalculationbuffer',
            name='period',
            field=models.DateField(default=datetime.datetime(2021, 9, 1, 20, 18, 19, 611452), verbose_name='Период'),
        ),
        migrations.AlterField(
            model_name='currentcounter',
            name='period',
            field=models.DateField(default=datetime.datetime(2021, 9, 1, 20, 18, 19, 604478), verbose_name='Период'),
        ),
        migrations.AlterField(
            model_name='historycounter',
            name='period',
            field=models.DateField(default=datetime.datetime(2021, 9, 1, 20, 18, 19, 605293), verbose_name='Период'),
        ),
        migrations.AlterField(
            model_name='housecurrent',
            name='period',
            field=models.DateField(default=datetime.datetime(2021, 9, 1, 20, 18, 19, 601912), verbose_name='Период'),
        ),
        migrations.AlterField(
            model_name='househistory',
            name='period',
            field=models.DateField(default=datetime.datetime(2021, 9, 1, 20, 18, 19, 602761), verbose_name='Период'),
        ),
        migrations.AlterField(
            model_name='mainbook',
            name='period',
            field=models.DateField(default=datetime.datetime(2021, 9, 1, 20, 18, 19, 609235), verbose_name='Период'),
        ),
        migrations.AlterField(
            model_name='paymentorder',
            name='period',
            field=models.DateField(default=datetime.datetime(2021, 9, 1, 20, 18, 19, 609989), verbose_name='Период'),
        ),
        migrations.AlterField(
            model_name='recalculations',
            name='period',
            field=models.DateField(default=datetime.datetime(2021, 9, 1, 20, 18, 19, 606056), verbose_name='Период'),
        ),
        migrations.AlterField(
            model_name='standart',
            name='period',
            field=models.DateField(default=datetime.datetime(2021, 9, 1, 20, 18, 19, 603662), verbose_name='Период'),
        ),
        migrations.AlterField(
            model_name='variablepayments',
            name='period',
            field=models.DateField(default=datetime.datetime(2021, 9, 1, 20, 18, 19, 607568), verbose_name='Период'),
        ),
    ]
