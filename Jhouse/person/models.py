from django.db import models

# Create your models here.
class Person(models.Model):
    name = models.CharField(max_length=10,verbose_name="姓名")
    phone = models.CharField(max_length=15,verbose_name="电话")
    photo = models.ImageField(upload_to='static/images/person',null=True,verbose_name='人物图片')
    address = models.CharField(max_length=20,verbose_name="主营模块")
    position = models.CharField(max_length=10,verbose_name="职位")
    point = models.CharField(max_length=10,verbose_name='评分')
    comment = models.TextField(verbose_name="评论")

    def __str__(self):
        return self.name

    def to_person_dic(self):
        dic = {
            "name":self.name,
            "phone":self.phone,
            "photo":self.photo.__str__(),
            "address":self.address,
            "point":self.point,
            "comment":self.comment,
            "position":self.position,
        }
        return dic

    class Meta:
        db_table = 'person'
        verbose_name = "经纪人"
        verbose_name_plural = verbose_name