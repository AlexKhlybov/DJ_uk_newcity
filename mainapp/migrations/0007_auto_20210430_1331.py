# Generated by Django 2.2.17 on 2021-04-30 13:31

import datetime

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ("mainapp", "0006_auto_20210429_0258"),
    ]

    operations = [
        migrations.AlterField(
            model_name="appartament",
            name="add_number",
            field=models.CharField(blank=True, default=0, max_length=2, null=True, verbose_name="Комната"),
        ),
        migrations.AlterField(
            model_name="appartament",
            name="sq_appart",
            field=models.DecimalField(
                blank=True, decimal_places=2, default=0, max_digits=5, null=True, verbose_name="Площадь"
            ),
        ),
        migrations.AlterField(
            model_name="housecurrent",
            name="period",
            field=models.DateField(default=datetime.datetime(2021, 4, 1, 13, 31, 10, 242413), verbose_name="Создан"),
        ),
        migrations.AlterField(
            model_name="househistory",
            name="period",
            field=models.DateField(default=datetime.datetime(2021, 4, 1, 13, 31, 10, 243088), verbose_name="Создан"),
        ),
    ]
