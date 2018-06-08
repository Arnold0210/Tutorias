from django.http import  JsonResponse
from apps.Materia.models import Materia
from apps.Horario.models import Horario

def get_materia(request):
    profesor_id = request.GET.get('id')
    materias = Materia.objects.none()
    options = '<option value="" selected="selected">Seleccione una materia</option>'
    if profesor_id:
        materias = Materia.objects.filter(usuario__profesor__materia_id = profesor_id)
    print(materias)
    for materia in materias:
        cadena ='<option value="'+materia.nombre+'">'+materia.nombre+'</option>'
        options += cadena % (
            materia.codigo,
            materia.materias
        )
    print(options)
    response = {}
    response['materias'] = options
    return JsonResponse(response)

def get_horario(request):
    profesor_id = request.GET.get('id')
    horarios = Horario.objects.none()
    options = '<option value="" selected="selected">Seleccione un horario</option>'
    if profesor_id:
        horarios = Materia.objects.filter(usuario__profesor__materia_id = profesor_id)
    print(horarios)
    for horario in horarios:
        options += '<option value="%s">%s</option>' % (
            horario.id_horario,
            horario.horario
        )
    print(options)
    response = {}
    response['horarios'] = options
    return JsonResponse(response)