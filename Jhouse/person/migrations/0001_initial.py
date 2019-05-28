# Generated by Django 2.1.7 on 2019-04-11 12:26

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Person',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=10, verbose_name='姓名')),
                ('phone', models.CharField(max_length=15, verbose_name='电话')),
                ('photo', models.ImageField(null=True, upload_to='static/images/person', verbose_name='人物图片')),
                ('address', models.CharField(max_length=20, verbose_name='主营模块')),
                ('position', models.CharField(max_length=10, verbose_name='职位')),
                ('point', models.CharField(max_length=10, verbose_name='评分')),
                ('comment', models.TextField(verbose_name='评论')),
            ],
            options={
                'verbose_name': '经纪人',
                'verbose_name_plural': '经纪人',
                'db_table': 'person',
            },
        ),
    ]