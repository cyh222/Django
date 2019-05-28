from django.db import models

# Create your models here.
class Trade(models.Model):
    name = models.CharField(max_length=10,verbose_name="交易人")
    phone = models.CharField(max_length=15,verbose_name="电话号码")
    card = models.CharField(max_length=20, verbose_name="身份证号码")
    type = models.CharField(max_length=10,verbose_name="房屋类型")
    describe = models.TextField(verbose_name="房屋描述")
    address = models.CharField(max_length=10,verbose_name="房源地点")
    village = models.CharField(max_length=10,verbose_name="小区名")
    time = models.DateTimeField(auto_now=True,verbose_name="交易时间")
    person = models.CharField(max_length=10,verbose_name="委托人")
    entrust = models.CharField(max_length=10,verbose_name="委托类型")
    status = models.CharField(max_length=10,verbose_name="处理状态")

    def __str__(self):
        return self.name

    class Meta:
        db_table = "trade"
        verbose_name = "交易记录"
        verbose_name_plural = verbose_name