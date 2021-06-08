# Generated by Django 2.2.17 on 2021-04-30 13:37

import datetime

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ("mainapp", "0008_auto_20210430_1332"),
    ]

    operations = [
        migrations.AlterField(
            model_name="appartament",
            name="add_number",
            field=models.PositiveIntegerField(default=0, verbose_name="Комната"),
        ),
        migrations.AlterField(
            model_name="housecurrent",
            name="period",
            field=models.DateField(default=datetime.datetime(2021, 4, 1, 13, 37, 54, 624146), verbose_name="Создан"),
        ),
        migrations.AlterField(
            model_name="househistory",
            name="period",
            field=models.DateField(default=datetime.datetime(2021, 4, 1, 13, 37, 54, 624849), verbose_name="Создан"),
        ),
    ]