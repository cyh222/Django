# Generated by Django 2.1.7 on 2019-04-02 08:29

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Village',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('title', models.CharField(max_length=10, verbose_name='房屋类型')),
                ('money', models.IntegerField(verbose_name='价格')),
                ('picture', models.ImageField(null=True, upload_to='static/images/renthouse', verbose_name='房屋图片')),
                ('describe', models.TextField(verbose_name='房屋描述')),
                ('addr', models.CharField(max_length=10, verbose_name='地址')),
                ('village', models.CharField(max_length=10, verbose_name='小区')),
                ('standard', models.CharField(max_length=10, verbose_name='规格')),
                ('area', models.CharField(max_length=10, verbose_name='面积')),
                ('direction', models.CharField(max_length=10, verbose_name='朝向')),
                ('elevator', models.CharField(max_length=10, verbose_name='有无电梯')),
                ('floor_stand', models.CharField(max_length=10, verbose_name='楼层高低')),
                ('floor', models.CharField(max_length=10, verbose_name='层数')),
                ('bulid_time', models.CharField(max_length=10, verbose_name='建楼时间')),
                ('company', models.CharField(max_length=15, verbose_name='物业公司')),
                ('charge', models.CharField(max_length=10, verbose_name='物业费')),
                ('bulids', models.IntegerField(verbose_name='栋数')),
                ('rooms', models.IntegerField(verbose_name='房屋总数')),
                ('point1', models.CharField(max_length=10, verbose_name='优点1')),
                ('point2', models.CharField(max_length=10, verbose_name='优点2')),
                ('point3', models.CharField(max_length=10, verbose_name='优点3')),
            ],
            options={
                'verbose_name': '小区',
                'verbose_name_plural': '小区',
                'db_table': 'village',
            },
        ),
    ]
