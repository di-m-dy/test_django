# Generated by Django 5.0.7 on 2024-07-20 20:39

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('polls', '0004_rename_test_question_quiz'),
    ]

    operations = [
        migrations.AddField(
            model_name='useranswer',
            name='result',
            field=models.BooleanField(default=False),
        ),
    ]