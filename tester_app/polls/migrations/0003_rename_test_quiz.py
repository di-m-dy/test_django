# Generated by Django 5.0.7 on 2024-07-20 18:07

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('polls', '0002_useranswer_userprofile'),
    ]

    operations = [
        migrations.RenameModel(
            old_name='Test',
            new_name='Quiz',
        ),
    ]