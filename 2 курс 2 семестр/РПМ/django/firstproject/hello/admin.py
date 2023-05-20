from django.contrib import admin
from .models import *
# Register your models here.
class PersonAdmin(admin.ModelAdmin):
    list_display = ('name', 'lastname')

class LogAdmin(admin.ModelAdmin):
    list_display = ('login', 'password', 'person')

class RoomAdmin(admin.ModelAdmin):
    list_display = ('id', 'name','href_img', 'workdays_price', 'weekends_price')

class Social_MediaAdmin(admin.ModelAdmin):
    list_display = ('id','name', 'href','href_img')
    
class EventAdmin(admin.ModelAdmin):
    list_display = ('name', 'time', 'description')
    
class ContactAdmin(admin.ModelAdmin):
    list_display = ('id', 'name', 'contact', 'type')
    
class PriceAdmin(admin.ModelAdmin):
    list_display = ('id', 'text', 'price', 'stopcheck')

class ManagerAdmin(admin.ModelAdmin):
    list_display = ('id', 'name', 'profession', 'telephone')

class CommentAdmin(admin.ModelAdmin):
    list_display = ('id', 'name', 'date', 'text')

admin.site.register(Person, PersonAdmin)
admin.site.register(Log, LogAdmin)
admin.site.register(Room, RoomAdmin)
admin.site.register(Social_Media, Social_MediaAdmin)
admin.site.register(Event, EventAdmin)
admin.site.register(Contact, ContactAdmin)
admin.site.register(Price, PriceAdmin)
admin.site.register(Manager, ManagerAdmin)
admin.site.register(Comment, CommentAdmin)