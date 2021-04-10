# Generated by Django 2.2.17 on 2021-04-10 21:06

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('mainapp', '0001_initial'),
    ]

    operations = [
        migrations.AlterModelOptions(
            name='appartament',
            options={'verbose_name': 'Квартира', 'verbose_name_plural': 'Квартиры'},
        ),
        migrations.AlterModelOptions(
            name='city',
            options={'verbose_name': 'Город', 'verbose_name_plural': 'Города'},
        ),
        migrations.AlterModelOptions(
            name='constantpayments',
            options={'verbose_name': 'Платеж (постоянные)', 'verbose_name_plural': 'Платежи (постоянные)'},
        ),
        migrations.AlterModelOptions(
            name='currentcounter',
            options={'verbose_name': 'Индивид. счетчик (текущий)', 'verbose_name_plural': 'Индивид. счетчики (текущие)'},
        ),
        migrations.AlterModelOptions(
            name='historycounter',
            options={'ordering': ('-period',), 'verbose_name': 'Индивид. счетчик (история)', 'verbose_name_plural': 'Индивид. счетчики (история)'},
        ),
        migrations.AlterModelOptions(
            name='house',
            options={'verbose_name': 'Дом', 'verbose_name_plural': 'Дома'},
        ),
        migrations.AlterModelOptions(
            name='housecurrent',
            options={'verbose_name': 'Домовой счетчик (текущий)', 'verbose_name_plural': 'Домовые счетчики (текущие)'},
        ),
        migrations.AlterModelOptions(
            name='payment',
            options={'ordering': ('-period',), 'verbose_name': 'Оплата', 'verbose_name_plural': 'Оплаты'},
        ),
        migrations.AlterModelOptions(
            name='privileges',
            options={'ordering': ('-updated',), 'verbose_name': 'Льгота', 'verbose_name_plural': 'Льготы'},
        ),
        migrations.AlterModelOptions(
            name='profit',
            options={'ordering': ('-period',), 'verbose_name': 'Начисление', 'verbose_name_plural': 'Начисления'},
        ),
        migrations.AlterModelOptions(
            name='recalculations',
            options={'ordering': ('-period',), 'verbose_name': 'Перерасчет', 'verbose_name_plural': 'Перерасчеты'},
        ),
        migrations.AlterModelOptions(
            name='services',
            options={'verbose_name': 'Услугу', 'verbose_name_plural': 'Услуги'},
        ),
        migrations.AlterModelOptions(
            name='servicescategory',
            options={'verbose_name': 'Категория услуг', 'verbose_name_plural': 'Категории услуг'},
        ),
        migrations.AlterModelOptions(
            name='street',
            options={'verbose_name': 'Улица', 'verbose_name_plural': 'Улицы'},
        ),
        migrations.AlterModelOptions(
            name='subsidies',
            options={'ordering': ('-updated',), 'verbose_name': 'Субсидия', 'verbose_name_plural': 'Субсидии'},
        ),
        migrations.AlterModelOptions(
            name='uk',
            options={'verbose_name': 'Управляющая компания', 'verbose_name_plural': 'Управляющая компании'},
        ),
        migrations.AlterModelOptions(
            name='userprofile',
            options={'verbose_name': 'Профиль', 'verbose_name_plural': 'Профили'},
        ),
        migrations.AlterModelOptions(
            name='variablepayments',
            options={'verbose_name': 'Платеж (перепенные)', 'verbose_name_plural': 'Платежи (переменные)'},
        ),
        migrations.CreateModel(
            name='HouseHistory',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('period', models.DateTimeField(auto_now_add=True, verbose_name='Создан')),
                ('col_water', models.PositiveIntegerField(null=True, verbose_name='Хол.вода')),
                ('hot_water', models.PositiveIntegerField(null=True, verbose_name='Гор.вода')),
                ('electric_day', models.PositiveIntegerField(null=True, verbose_name='Электр.день')),
                ('electric_night', models.PositiveIntegerField(null=True, verbose_name='Электр.ночь')),
                ('created', models.DateTimeField(auto_now_add=True, verbose_name='Создан')),
                ('updated', models.DateTimeField(auto_now=True, verbose_name='Обновлен')),
                ('house', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='mainapp.House')),
                ('street', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='mainapp.Street')),
            ],
            options={
                'verbose_name': 'Домовой счетчик (история)',
                'verbose_name_plural': 'Домовые счетчики (история)',
            },
        ),
    ]
