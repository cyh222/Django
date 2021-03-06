# Generated by Django 2.1.7 on 2019-04-12 10:50

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('index', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='Advice',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('email', models.CharField(max_length=20, verbose_name='电子邮箱')),
                ('name', models.CharField(max_length=10, verbose_name='姓名')),
                ('title', models.CharField(max_length=10, verbose_name='标题')),
                ('advice', models.TextField(verbose_name='意见')),
            ],
            options={
                'verbose_name': '反馈建议',
                'verbose_name_plural': '反馈建议',
                'db_table': 'advice',
            },
        ),
    ]
