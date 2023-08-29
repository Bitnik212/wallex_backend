__author__ = "Николай Витальевич Никоноров (Bitnik212)"
__date__ = "29.08.2023 16:25"

from rest_framework import serializers

from bank.models import BankAccountModel


class BankAccountSerializer(serializers.ModelSerializer):

    class Meta:
        model = BankAccountModel
        fields = ["name", "currency", "amount"]

