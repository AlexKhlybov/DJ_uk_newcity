# Generated by Django 2.2.24 on 2021-08-20 22:22

import datetime
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('mainapp', '0007_auto_20210820_2109'),
    ]

    operations = [
        migrations.AlterModelOptions(
            name='currentcounter',
            options={'ordering': ('-period',), 'verbose_name': 'Индивидуальный счетчик (текущий)', 'verbose_name_plural': 'Индивидуальные счетчики (текущие)'},
        ),
        migrations.AlterModelOptions(
            name='headerdata',
            options={'verbose_name': '(Платежка) данные шапки', 'verbose_name_plural': '(Платежка) данные шапок'},
        ),
        migrations.AlterModelOptions(
            name='historycounter',
            options={'ordering': ('-period',), 'verbose_name': 'Индивидуальный счетчик (история)', 'verbose_name_plural': '02 Индивидуальные счетчики (история)'},
        ),
        migrations.AlterModelOptions(
            name='househistory',
            options={'ordering': ('-updated',), 'verbose_name': 'Домовой счетчик (история)', 'verbose_name_plural': '01 Домовые счетчики (история)'},
        ),
        migrations.AlterModelOptions(
            name='paymentorder',
            options={'ordering': ('-period',), 'verbose_name': 'Платежка)', 'verbose_name_plural': '(Платежка)'},
        ),
        migrations.AlterField(
            model_name='currentcounter',
            name='period',
            field=models.DateField(default=datetime.datetime(2021, 8, 1, 22, 22, 44, 166967), verbose_name='Создан'),
        ),
        migrations.AlterField(
            model_name='historycounter',
            name='period',
            field=models.DateField(default=datetime.datetime(2021, 8, 1, 22, 22, 44, 167484), verbose_name='Создан'),
        ),
        migrations.AlterField(
            model_name='housecurrent',
            name='period',
            field=models.DateField(default=datetime.datetime(2021, 8, 1, 22, 22, 44, 165244), verbose_name='Создан'),
        ),
        migrations.AlterField(
            model_name='househistory',
            name='period',
            field=models.DateField(default=datetime.datetime(2021, 8, 1, 22, 22, 44, 165757), verbose_name='Создан'),
        ),
        migrations.AlterField(
            model_name='mainbook',
            name='period',
            field=models.DateField(default=datetime.datetime(2021, 8, 1, 22, 22, 44, 170348), verbose_name='Создан'),
        ),
        migrations.AlterField(
            model_name='paymentorder',
            name='period',
            field=models.DateField(default=datetime.datetime(2021, 8, 1, 22, 22, 44, 171090), verbose_name='Создан'),
        ),
        migrations.AlterField(
            model_name='recalculations',
            name='period',
            field=models.DateField(default=datetime.datetime(2021, 8, 1, 22, 22, 44, 168064), verbose_name='Создан'),
        ),
        migrations.AlterField(
            model_name='standart',
            name='period',
            field=models.DateField(default=datetime.datetime(2021, 8, 1, 22, 22, 44, 166354), verbose_name='Создан'),
        ),
        migrations.AlterField(
            model_name='variablepayments',
            name='period',
            field=models.DateField(default=datetime.datetime(2021, 8, 1, 22, 22, 44, 169345), verbose_name='Создан'),
        ),
    ]