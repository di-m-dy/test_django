from django.db import models
from django.contrib.auth.models import User


# Create your models here.
class Quiz(models.Model):
    name = models.CharField(max_length=200)
    description = models.TextField()

    def __str__(self):
        return self.name


class Question(models.Model):
    quiz = models.ForeignKey(Quiz, on_delete=models.CASCADE)
    question_text = models.CharField(max_length=200)
    pub_date = models.DateTimeField("created_at")

    def __str__(self):
        return self.question_text


class Choice(models.Model):
    question = models.ForeignKey(Question, on_delete=models.CASCADE)
    choice_text = models.CharField(max_length=200)
    correct = models.BooleanField(default=False)

    def __str__(self):
        return self.choice_text

    def is_correct(self):
        return self.correct


class UserAnswer(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    question = models.ForeignKey(Question, on_delete=models.CASCADE)
    choice = models.ForeignKey(Choice, on_delete=models.CASCADE)
    result = models.BooleanField(default=False)

    def __str__(self):
        return f'{self.user}: {self.question} = {self.choice}'


class UserProfile(models.Model):
    user = models.OneToOneField(User, on_delete=models.CASCADE)
    currency = models.IntegerField(default=0)
    background_color = models.CharField(max_length=7, default='#FFFFFF')
    border_color = models.CharField(max_length=7, default='#000000')

    def __str__(self):
        return self.user.username
