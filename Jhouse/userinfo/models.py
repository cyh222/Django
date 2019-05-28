from django.db import models

# Create your models here.

class Users(models.Model):
    uname = models.CharField(max_length=20,verbose_name="用户名")
    uemail = models.EmailField(verbose_name="电子邮箱")
    upwd = models.CharField(max_length=20,verbose_name="密码")

    def __str__(self):
        return self.uname

    def to_dict(self):
        dic = {
            "id" : self.id,
            "uname":self.uname,
            "upwd" : self.upwd,
            "uemail" : self.uemail,
        }
        return dic

    class Meta:
        db_table = "user"
        verbose_name = "用户"
        verbose_name_plural = verbose_name
