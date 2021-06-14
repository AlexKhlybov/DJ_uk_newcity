# Generated by Django 2.2.17 on 2021-06-14 07:08

import datetime
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('mainapp', '0003_auto_20210613_1140'),
    ]

    operations = [
        migrations.AddField(
            model_name='constantpayments',
            name='pre_total',
            field=models.DecimalField(decimal_places=3, default=1, max_digits=8, verbose_name='Сумма'),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='variablepayments',
            name='pre_total',
            field=models.DecimalField(decimal_places=2, default=0, max_digits=7, verbose_name='Итого'),
        ),
        migrations.AlterField(
            model_name='currentcounter',
            name='period',
            field=models.DateField(default=datetime.datetime(2021, 6, 1, 7, 8, 6, 399322), verbose_name='Создан'),
        ),
        migrations.AlterField(
            model_name='historycounter',
            name='period',
            field=models.DateField(default=datetime.datetime(2021, 6, 1, 7, 8, 6, 400259), verbose_name='Создан'),
        ),
        migrations.AlterField(
            model_name='housecurrent',
            name='period',
            field=models.DateField(default=datetime.datetime(2021, 6, 1, 7, 8, 6, 394709), verbose_name='Создан'),
        ),
        migrations.AlterField(
            model_name='househistory',
            name='period',
            field=models.DateField(default=datetime.datetime(2021, 6, 1, 7, 8, 6, 395592), verbose_name='Создан'),
        ),
        migrations.AlterField(
            model_name='mainbook',
            name='period',
            field=models.DateField(default=datetime.datetime(2021, 6, 1, 7, 8, 6, 408422), verbose_name='Создан'),
        ),
        migrations.AlterField(
            model_name='profit',
            name='period',
            field=models.DateField(default=datetime.datetime(2021, 6, 1, 7, 8, 6, 406916), verbose_name='Создан'),
        ),
        migrations.AlterField(
            model_name='recalculations',
            name='period',
            field=models.DateField(default=datetime.datetime(2021, 6, 1, 7, 8, 6, 401038), verbose_name='Создан'),
        ),
        migrations.AlterField(
            model_name='standart',
            name='period',
            field=models.DateField(default=datetime.datetime(2021, 6, 1, 7, 8, 6, 396458), verbose_name='Создан'),
        ),
        migrations.AlterField(
            model_name='variablepayments',
            name='period',
            field=models.DateField(default=datetime.datetime(2021, 6, 1, 7, 8, 6, 404435), verbose_name='Создан'),
        ),
    ]
