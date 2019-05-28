# Generated by Django 2.1.7 on 2019-03-29 10:50

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Users',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('uname', models.CharField(max_length=20, verbose_name='用户名')),
                ('uemail', models.EmailField(max_length=254, verbose_name='电子邮箱')),
                ('upwd', models.CharField(max_length=20, verbose_name='密码')),
            ],
            options={
                'verbose_name': '用户',
                'verbose_name_plural': '用户',
                'db_table': 'user',
            },
        ),
    ]
