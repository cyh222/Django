from django.db import models

# Create your models here.

class rentHouse(models.Model):
    title = models.CharField(max_length=10,verbose_name="房屋类型")
    money = models.IntegerField(verbose_name="价格")
    picture = models.ImageField(upload_to='static/images/renthouse',null=True,verbose_name='房屋图片')
    describe = models.TextField(verbose_name='房屋描述')
    addr = models.CharField(max_length=10,verbose_name='地址')
    village = models.CharField(max_length=10,verbose_name='小区')
    standard = models.CharField(max_length=10,verbose_name='规格')
    area = models.CharField(max_length=10,verbose_name='面积')
    direction = models.CharField(max_length=10,verbose_name='朝向')
    elevator = models.CharField(max_length=10,verbose_name='有无电梯')
    floor_stand = models.CharField(max_length=10,verbose_name='楼层高低')
    floor = models.CharField(max_length=10,verbose_name="层数")
    bulid_time = models.CharField(max_length=10,verbose_name="建楼时间")
    point1 = models.CharField(max_length=10,verbose_name="优点1")
    point2 = models.CharField(max_length=10, verbose_name="优点2")
    point3 = models.CharField(max_length=10, verbose_name="优点3")

    def __str__(self):
        return self.title

    def to_rent_dict(self):
        dic = {
            'title':self.title,
            'money':self.money.__str__(),
            'picture':self.picture.__str__(),
            'describe':self.describe,
            'addr':self.addr,
            'village':self.village,
            'standard':self.standard,
            'area':self.area,
            'direction':self.direction,
            'elevator':self.elevator,
            'floor_stand':self.floor_stand,
            'floor':self.floor,
            'bulid_time':self.bulid_time,
            'point1':self.point1,
            'point2':self.point2,
            'point3':self.point3,
        }
        return dic

    class Meta:
        db_table = "rent_house"
        verbose_name = "租房"
        verbose_name_plural = verbose_name