# Generated by Django 4.2 on 2023-06-06 08:40

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('hello', '0008_alter_room_href_img'),
    ]

    operations = [
        migrations.AlterIndexTogether(
            name='room',
            index_together=None,
        ),
        migrations.RemoveField(
            model_name='room',
            name='category',
        ),
        migrations.DeleteModel(
            name='Category',
        ),
        migrations.DeleteModel(
            name='Room',
        ),
    ]
