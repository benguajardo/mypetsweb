# Generated by Django 3.1.2 on 2023-06-25 16:42

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('user', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='user',
            name='imagen',
            field=models.ImageField(blank=True, default=1, upload_to=''),
            preserve_default=False,
        ),
    ]
