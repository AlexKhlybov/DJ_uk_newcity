# Generated by Django 2.2.17 on 2021-04-29 02:51

import datetime
from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('mainapp', '0003_auto_20210426_0225'),
    ]

    operations = [
        migrations.AlterField(
            model_name='appartament',
            name='house',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='mainapp.House', verbose_name='Дом'),
        ),
        migrations.AlterField(
            model_name='appartament',
            name='number',
            field=models.CharField(blank=True, default='-', max_length=3, null=True, verbose_name='Номер квартиры'),
        ),
        migrations.AlterField(
            model_name='appartament',
            name='user',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.SET_NULL, related_name='person', to=settings.AUTH_USER_MODEL, verbose_name='Жилец'),
        ),
        migrations.AlterField(
            model_name='housecurrent',
            name='period',
            field=models.DateField(default=datetime.datetime(2021, 4, 1, 2, 51, 18, 822276), verbose_name='Создан'),
        ),
        migrations.AlterField(
            model_name='househistory',
            name='period',
            field=models.DateField(default=datetime.datetime(2021, 4, 1, 2, 51, 18, 823214), verbose_name='Создан'),
        ),
    ]
