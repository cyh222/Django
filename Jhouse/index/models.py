from django.db import models

# Create your models here.
class Entrust(models.Model):
    name = models.CharField(max_length=10,verbose_name="预约人")
    phone = models.CharField(max_length=15,verbose_name="电话号码")
    type = models.CharField(max_length=10,verbose_name="房屋类型")
    describe = models.TextField(verbose_name="房屋描述")
    address = models.CharField(max_length=10,verbose_name="预约地点")
    village = models.CharField(max_length=10,verbose_name="小区名")
    time = models.CharField(max_length=20,verbose_name="预约时间")
    person = models.CharField(max_length=10,verbose_name="委托人")
    entrust = models.CharField(max_length=10,verbose_name="委托类型")
    status = models.CharField(max_length=10,verbose_name="处理状态")

    def __str__(self):
        return self.name

    class Meta:
        db_table = "entrust"
        verbose_name = "委托记录"
        verbose_name_plural = verbose_name

class Advice(models.Model):
    email = models.CharField(max_length=20,verbose_name="电子邮箱")
    name = models.CharField(max_length=10,verbose_name="姓名")
    title = models.CharField(max_length=10,verbose_name="标题")
    advice = models.TextField(verbose_name="意见")

    def __str__(self):
        return self.name

    class Meta:
        db_table = "advice"
        verbose_name = "反馈建议"
        verbose_name_plural = verbose_name