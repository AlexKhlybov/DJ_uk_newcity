# Generated by Django 2.2.17 on 2021-04-12 13:39

from django.conf import settings
import django.contrib.postgres.fields.jsonb
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
    ]

    operations = [
        migrations.CreateModel(
            name='Appartament',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('number', models.PositiveIntegerField(verbose_name='Номер')),
                ('add_number', models.CharField(blank=True, default='-', max_length=2, null=True, verbose_name='Комната')),
                ('sq_appart', models.DecimalField(decimal_places=2, max_digits=5, verbose_name='Площадь')),
                ('num_owner', models.PositiveIntegerField(default=0, verbose_name='Кол-во проживающих')),
                ('is_active', models.BooleanField(db_index=True, default=True, verbose_name='Активный')),
                ('created', models.DateTimeField(auto_now_add=True, verbose_name='Создан')),
                ('updated', models.DateTimeField(auto_now=True, verbose_name='Обновлен')),
            ],
            options={
                'verbose_name': 'Квартира',
                'verbose_name_plural': 'Квартиры',
            },
        ),
        migrations.CreateModel(
            name='City',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('city', models.CharField(max_length=128, verbose_name='Город')),
                ('is_active', models.BooleanField(db_index=True, default=True, verbose_name='Активный')),
                ('created', models.DateTimeField(auto_now_add=True, verbose_name='Создан')),
                ('updated', models.DateTimeField(auto_now=True, verbose_name='Обновлен')),
            ],
            options={
                'verbose_name': 'Город',
                'verbose_name_plural': 'Города',
            },
        ),
        migrations.CreateModel(
            name='House',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('number', models.CharField(max_length=3, verbose_name='Номер')),
                ('add_number', models.CharField(blank=True, default='-', max_length=3, verbose_name='Корпус')),
                ('sq_home', models.DecimalField(decimal_places=2, max_digits=7, verbose_name='Площадь')),
                ('is_active', models.BooleanField(db_index=True, default=True, verbose_name='Активный')),
                ('created', models.DateTimeField(auto_now_add=True, verbose_name='Создан')),
                ('updated', models.DateTimeField(auto_now=True, verbose_name='Обновлен')),
            ],
            options={
                'verbose_name': 'Дом',
                'verbose_name_plural': 'Дома',
            },
        ),
        migrations.CreateModel(
            name='Metrics',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=32, verbose_name='Единица измерения')),
                ('is_active', models.BooleanField(db_index=True, default=True, verbose_name='Активная')),
                ('created', models.DateTimeField(auto_now_add=True, verbose_name='Создан')),
                ('updated', models.DateTimeField(auto_now=True, verbose_name='Обновлен')),
            ],
            options={
                'verbose_name': 'Единица измерения',
                'verbose_name_plural': 'Единицы измерения',
            },
        ),
        migrations.CreateModel(
            name='Services',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=256, verbose_name='Услуга')),
                ('rate', models.DecimalField(decimal_places=3, default=0, max_digits=7, verbose_name='Тариф')),
                ('factor', models.DecimalField(decimal_places=2, default=1, max_digits=3, verbose_name='Коэфициент')),
                ('const', models.BooleanField(db_index=True, default=True, verbose_name='Константа')),
                ('is_active', models.BooleanField(db_index=True, default=True, verbose_name='Активная')),
                ('created', models.DateTimeField(auto_now_add=True, verbose_name='Создан')),
                ('updated', models.DateTimeField(auto_now=True, verbose_name='Обновлен')),
            ],
            options={
                'verbose_name': 'Услугу',
                'verbose_name_plural': 'Услуги',
            },
        ),
        migrations.CreateModel(
            name='ServicesCategory',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=32, verbose_name='Название')),
                ('is_active', models.BooleanField(db_index=True, default=True, verbose_name='Активная')),
                ('created', models.DateTimeField(auto_now_add=True, verbose_name='Создан')),
                ('updated', models.DateTimeField(auto_now=True, verbose_name='Обновлен')),
            ],
            options={
                'verbose_name': 'Категория услуг',
                'verbose_name_plural': 'Категории услуг',
            },
        ),
        migrations.CreateModel(
            name='Street',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('street', models.CharField(max_length=128, verbose_name='Улица')),
                ('is_active', models.BooleanField(db_index=True, default=True, verbose_name='Активный')),
                ('created', models.DateTimeField(auto_now_add=True, verbose_name='Создан')),
                ('updated', models.DateTimeField(auto_now=True, verbose_name='Обновлен')),
            ],
            options={
                'verbose_name': 'Улица',
                'verbose_name_plural': 'Улицы',
            },
        ),
        migrations.CreateModel(
            name='UserProfile',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('type_electric_meter', models.CharField(choices=[('1', 'однотарифный'), ('2', 'двухтарифный'), ('3', 'многотарифный')], max_length=1, verbose_name='Тип счетчика')),
                ('is_active', models.BooleanField(db_index=True, default=True, verbose_name='Активный')),
                ('created', models.DateTimeField(auto_now_add=True, verbose_name='Создан')),
                ('updated', models.DateTimeField(auto_now=True, verbose_name='Обновлен')),
                ('appartament', models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, to='mainapp.Appartament')),
                ('user', models.OneToOneField(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL)),
            ],
            options={
                'verbose_name': 'Профиль',
                'verbose_name_plural': 'Профили',
            },
        ),
        migrations.CreateModel(
            name='VariablePayments',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('period', models.DateField(verbose_name='Период')),
                ('service', models.CharField(max_length=128, verbose_name='Услуга')),
                ('unit', models.CharField(max_length=32, verbose_name='Ед.измерения')),
                ('standart', models.DecimalField(blank=True, decimal_places=4, default='0', max_digits=8, verbose_name='Норматив')),
                ('rate', models.DecimalField(decimal_places=3, default=0, max_digits=7, verbose_name='Тариф')),
                ('accured', models.DecimalField(decimal_places=3, default=0, max_digits=7, verbose_name='Начислено')),
                ('volume', models.DecimalField(decimal_places=2, default=0, max_digits=7, verbose_name='Объем')),
                ('coefficient', models.DecimalField(decimal_places=2, default=1, max_digits=3, verbose_name='Коэфициент')),
                ('subsidies', models.DecimalField(decimal_places=2, default=0, max_digits=6, verbose_name='Субсидии')),
                ('privileges', models.DecimalField(decimal_places=2, default=0, max_digits=6, verbose_name='Льготы')),
                ('recalculations', models.DecimalField(decimal_places=2, default=0, max_digits=6, verbose_name='Перерасчет')),
                ('total', models.DecimalField(decimal_places=2, default=0, max_digits=7, verbose_name='Итого')),
                ('created', models.DateTimeField(auto_now_add=True, verbose_name='Создан')),
                ('updated', models.DateTimeField(auto_now=True, verbose_name='Обновлен')),
                ('user', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='mainapp.UserProfile')),
            ],
            options={
                'verbose_name': 'Платеж (перепенные)',
                'verbose_name_plural': 'Платежи (переменные)',
            },
        ),
        migrations.CreateModel(
            name='UK',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=128, verbose_name='Название')),
                ('num_building', models.CharField(max_length=3, verbose_name='Номер здания')),
                ('phone', models.CharField(max_length=20, verbose_name='Телефон')),
                ('email', models.CharField(max_length=128, verbose_name='e-mail')),
                ('inn', models.CharField(max_length=10, verbose_name='ИНН')),
                ('ps', models.CharField(max_length=20, verbose_name='Расчетный счет')),
                ('bik', models.CharField(max_length=10, verbose_name='БИК')),
                ('ks', models.CharField(max_length=20, verbose_name='Кор.счет')),
                ('bank', models.CharField(max_length=128, verbose_name='Банк')),
                ('web_addr', models.CharField(max_length=128, verbose_name='Сайт')),
                ('is_active', models.BooleanField(db_index=True, default=True, verbose_name='Активный')),
                ('created', models.DateTimeField(auto_now_add=True, verbose_name='Создан')),
                ('updated', models.DateTimeField(auto_now=True, verbose_name='Обновлен')),
                ('city', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='mainapp.City')),
                ('street', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='mainapp.Street')),
            ],
            options={
                'verbose_name': 'Управляющая компания',
                'verbose_name_plural': 'Управляющая компании',
            },
        ),
        migrations.CreateModel(
            name='Subsidies',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('sale', models.PositiveIntegerField(default=0, verbose_name='Субсидии')),
                ('is_active', models.BooleanField(db_index=True, default=True, verbose_name='Активный')),
                ('created', models.DateTimeField(auto_now_add=True, verbose_name='Создан')),
                ('updated', models.DateTimeField(auto_now=True, verbose_name='Обновлен')),
                ('desc', models.TextField(blank=True, null=True, verbose_name='Описание')),
                ('service', models.ForeignKey(on_delete=django.db.models.deletion.PROTECT, to='mainapp.Services')),
                ('user', models.ForeignKey(on_delete=django.db.models.deletion.PROTECT, to='mainapp.UserProfile')),
            ],
            options={
                'verbose_name': 'Субсидия',
                'verbose_name_plural': 'Субсидии',
                'ordering': ('-updated',),
            },
        ),
        migrations.CreateModel(
            name='Standart',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('period', models.DateTimeField(auto_now_add=True, verbose_name='Период')),
                ('col_water', models.PositiveIntegerField(null=True, verbose_name='Хол.вода')),
                ('hot_water', models.PositiveIntegerField(null=True, verbose_name='Гор.вода')),
                ('electric_day', models.PositiveIntegerField(null=True, verbose_name='Электр.день')),
                ('electric_night', models.PositiveIntegerField(null=True, verbose_name='Электр.ночь')),
                ('house', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='mainapp.House')),
            ],
            options={
                'verbose_name': 'Норматив',
                'verbose_name_plural': 'Нормативы',
                'ordering': ('-period',),
            },
        ),
        migrations.AddField(
            model_name='services',
            name='category',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='mainapp.ServicesCategory'),
        ),
        migrations.AddField(
            model_name='services',
            name='unit',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='mainapp.Metrics', verbose_name='Единицы'),
        ),
        migrations.CreateModel(
            name='Recalculations',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('period', models.DateField(verbose_name='Период')),
                ('recalc', models.DecimalField(decimal_places=2, default=0, max_digits=7, verbose_name='Сумма')),
                ('desc', models.TextField(blank=True, null=True, verbose_name='Описание')),
                ('created', models.DateTimeField(auto_now_add=True, verbose_name='Создан')),
                ('updated', models.DateTimeField(auto_now=True, verbose_name='Обновлен')),
                ('user', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='mainapp.UserProfile')),
            ],
            options={
                'verbose_name': 'Перерасчет',
                'verbose_name_plural': 'Перерасчеты',
                'ordering': ('-period',),
            },
        ),
        migrations.CreateModel(
            name='Profit',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('period', models.DateField(verbose_name='Период')),
                ('amount_profit', models.DecimalField(decimal_places=2, max_digits=7, verbose_name='Сумма')),
                ('variable', django.contrib.postgres.fields.jsonb.JSONField(verbose_name='variable')),
                ('created', models.DateTimeField(auto_now_add=True, verbose_name='Создан')),
                ('updated', models.DateTimeField(auto_now=True, verbose_name='Обновлен')),
                ('user', models.ForeignKey(on_delete=django.db.models.deletion.PROTECT, to='mainapp.UserProfile')),
            ],
            options={
                'verbose_name': 'Начисление',
                'verbose_name_plural': 'Начисления',
                'ordering': ('-period',),
            },
        ),
        migrations.CreateModel(
            name='Privileges',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('sale', models.PositiveIntegerField(default=0, verbose_name='Льготы')),
                ('is_active', models.BooleanField(db_index=True, default=True, verbose_name='Активный')),
                ('created', models.DateTimeField(auto_now_add=True, verbose_name='Создан')),
                ('updated', models.DateTimeField(auto_now=True, verbose_name='Обновлен')),
                ('desc', models.TextField(blank=True, null=True, verbose_name='Описание')),
                ('service', models.ForeignKey(on_delete=django.db.models.deletion.PROTECT, to='mainapp.Services')),
                ('user', models.ForeignKey(on_delete=django.db.models.deletion.PROTECT, to='mainapp.UserProfile')),
            ],
            options={
                'verbose_name': 'Льгота',
                'verbose_name_plural': 'Льготы',
                'ordering': ('-updated',),
            },
        ),
        migrations.CreateModel(
            name='Payment',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('period', models.DateField(verbose_name='Период')),
                ('amount_profit', models.DecimalField(decimal_places=2, max_digits=7, verbose_name='Сумма')),
                ('created', models.DateTimeField(auto_now_add=True, verbose_name='Создан')),
                ('updated', models.DateTimeField(auto_now=True, verbose_name='Обновлен')),
                ('user', models.ForeignKey(on_delete=django.db.models.deletion.PROTECT, to='mainapp.UserProfile')),
            ],
            options={
                'verbose_name': 'Оплата',
                'verbose_name_plural': 'Оплаты',
                'ordering': ('-period',),
            },
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
            ],
            options={
                'verbose_name': 'Домовой счетчик (история)',
                'verbose_name_plural': 'Домовые счетчики (история)',
            },
        ),
        migrations.CreateModel(
            name='HouseCurrent',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('period', models.DateField(auto_now_add=True, verbose_name='Создан')),
                ('col_water', models.PositiveIntegerField(null=True, verbose_name='Хол.вода')),
                ('hot_water', models.PositiveIntegerField(null=True, verbose_name='Гор.вода')),
                ('electric_day', models.PositiveIntegerField(null=True, verbose_name='Электр.день')),
                ('electric_night', models.PositiveIntegerField(null=True, verbose_name='Электр.ночь')),
                ('created', models.DateTimeField(auto_now_add=True, verbose_name='Создан')),
                ('updated', models.DateTimeField(auto_now=True, verbose_name='Обновлен')),
                ('house', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='mainapp.House')),
            ],
            options={
                'verbose_name': 'Домовой счетчик (текущий)',
                'verbose_name_plural': 'Домовые счетчики (текущие)',
            },
        ),
        migrations.AddField(
            model_name='house',
            name='category_rate',
            field=models.ForeignKey(default=1, on_delete=django.db.models.deletion.CASCADE, to='mainapp.ServicesCategory'),
        ),
        migrations.AddField(
            model_name='house',
            name='city',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='mainapp.City'),
        ),
        migrations.AddField(
            model_name='house',
            name='street',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='mainapp.Street'),
        ),
        migrations.AddField(
            model_name='house',
            name='uk',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='mainapp.UK'),
        ),
        migrations.CreateModel(
            name='HistoryCounter',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('period', models.DateField(verbose_name='Период')),
                ('hist_col_water', models.PositiveIntegerField(verbose_name='Гор.вода')),
                ('hist_hot_water', models.PositiveIntegerField(verbose_name='Хол.вода')),
                ('hist_electric_day', models.PositiveIntegerField(verbose_name='Электр.день')),
                ('hist_electric_night', models.PositiveIntegerField(verbose_name='Электр.ночь')),
                ('electric_single', models.PositiveIntegerField(blank=True, default='', null=True, verbose_name='Электр.однотариф')),
                ('created', models.DateTimeField(auto_now_add=True, verbose_name='Создан')),
                ('updated', models.DateTimeField(auto_now=True, verbose_name='Обновлен')),
                ('user', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='mainapp.UserProfile')),
            ],
            options={
                'verbose_name': 'Индивид. счетчик (история)',
                'verbose_name_plural': 'Индивид. счетчики (история)',
                'ordering': ('-period',),
            },
        ),
        migrations.CreateModel(
            name='CurrentCounter',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('col_water', models.PositiveIntegerField(null=True, verbose_name='Хол.вода')),
                ('hot_water', models.PositiveIntegerField(null=True, verbose_name='Гор.вода')),
                ('electric_day', models.PositiveIntegerField(null=True, verbose_name='Электр.день')),
                ('electric_night', models.PositiveIntegerField(null=True, verbose_name='Электр.ночь')),
                ('electric_single', models.PositiveIntegerField(blank=True, default='', null=True, verbose_name='Электр.однотариф')),
                ('created', models.DateTimeField(auto_now_add=True, verbose_name='Создан')),
                ('updated', models.DateTimeField(auto_now=True, verbose_name='Обновлен')),
                ('user', models.OneToOneField(on_delete=django.db.models.deletion.CASCADE, to='mainapp.UserProfile')),
            ],
            options={
                'verbose_name': 'Индивид. счетчик (текущий)',
                'verbose_name_plural': 'Индивид. счетчики (текущие)',
            },
        ),
        migrations.CreateModel(
            name='ConstantPayments',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('data', django.contrib.postgres.fields.jsonb.JSONField(verbose_name='data')),
                ('created', models.DateTimeField(auto_now_add=True, verbose_name='Создан')),
                ('updated', models.DateTimeField(auto_now=True, verbose_name='Обновлен')),
                ('user', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='mainapp.UserProfile')),
            ],
            options={
                'verbose_name': 'Платеж (постоянные)',
                'verbose_name_plural': 'Платежи (постоянные)',
            },
        ),
        migrations.AddField(
            model_name='appartament',
            name='house',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='mainapp.House'),
        ),
    ]
