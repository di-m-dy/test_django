from django.shortcuts import render, get_object_or_404, redirect
from django.contrib.auth.decorators import login_required
from .models import Quiz, Question, Choice, UserAnswer, UserProfile
from django.contrib.auth.forms import UserCreationForm
from django.contrib.auth import login, logout, authenticate
from .forms import SignupForm


def signup(request):
    if request.method == 'POST':
        form = SignupForm(request.POST)
        if form.is_valid():
            form.save()
            UserProfile.objects.create(user=form.instance)
            return redirect('login')
    else:
        form = SignupForm()
    return render(request, 'registration/signup.html', {'form': form})


def logout_view(request):
    logout(request)
    return redirect('quizzes_list')


@login_required
def quizzes_list(request):
    quizzes = Quiz.objects.all()
    answers = UserAnswer.objects.filter(user=request.user)
    quizzes_done = [answer.question.quiz for answer in answers]
    quizzes_available = [quiz for quiz in quizzes if quiz not in quizzes_done]
    return render(request, 'quizzes_list.html', {'quizzes': quizzes_available, 'answers': answers})


@login_required
def take_quiz(request, quiz_id):
    quiz = get_object_or_404(Quiz, pk=quiz_id)
    profile = request.user.userprofile
    if request.method == 'POST':
        for question in quiz.question_set.all():
            choice_id = request.POST.get(f'question_{question.id}')
            if choice_id:
                choice = Choice.objects.get(pk=choice_id)
                result = False
                if choice.correct:
                    profile.currency += 2
                    profile.save()
                    result = True
                UserAnswer.objects.create(user=request.user, question=question, choice=choice, result=result)

        return redirect('quizzes_list')

    else:
        questions = quiz.question_set.all()
        return render(request, 'take_quiz.html', {'quiz': quiz, 'questions': questions})


@login_required
def user_profile(request):
    try:
        profile = request.user.userprofile
    except Exception as e:
        profile = UserProfile.objects.create(user=request.user)
    answers = len(UserAnswer.objects.filter(user=request.user))
    right_answers = len(UserAnswer.objects.filter(user=request.user, result=True))

    if request.method == 'POST':
        profile.background_color = request.POST.get('background_color', profile.background_color)
        profile.border_color = request.POST.get('border_color', profile.border_color)
        profile.currency = profile.currency - 20  # Стоимость смены цвета
        profile.save()
    return render(request, 'user_profile.html', {'profile': profile, 'answers': answers, 'right_answers': right_answers})


def user_list(request):
    users = UserProfile.objects.all().select_related('user')
    answers = UserAnswer.objects.all()
    return render(request, 'user_list.html', {'users': users})
