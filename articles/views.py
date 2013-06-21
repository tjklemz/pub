from django.shortcuts import render

def hello(request, say):
    ppl = ["james", "ryan", "marcus"]
    person = say.lower() in ppl
    return render(request, 'index.html', {"say": say, "person": person})

