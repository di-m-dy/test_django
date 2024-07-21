from django.contrib import admin
from .models import Quiz, Question, Choice, UserProfile, UserAnswer


# Register your models here.
class ChoiceInline(admin.TabularInline):
    model = Choice
    extra = 4


class QuestionAdmin(admin.ModelAdmin):
    inlines = [ChoiceInline]


admin.site.register(Quiz)
admin.site.register(Question, QuestionAdmin)
admin.site.register(UserProfile)
admin.site.register(UserAnswer)
