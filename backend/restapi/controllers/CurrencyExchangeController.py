__author__ = "Николай Витальевич Никоноров (Bitnik212)"
__date__ = "29.08.2023 18:40"

from rest_framework.views import APIView
from rest_framework import status
from rest_framework.permissions import IsAuthenticated
from rest_framework.request import Request
from rest_framework.response import Response
from rest_framework.authentication import SessionAuthentication
from rest_framework_simplejwt.authentication import JWTAuthentication

from restapi.serializers.CurrencyExchangeHistorySerializer import CurrencyExchangeHistorySerializer


class CurrencyExchangeController(APIView):
    authentication_classes = [SessionAuthentication, JWTAuthentication, IsAuthenticated]
    permission_classes = []
    serializer_class = CurrencyExchangeHistorySerializer

    def post(self, request: Request) -> Response:
        """
        Обмен валюты с счета на счет

        """
        serializer = CurrencyExchangeHistorySerializer(data=request.data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data, status=status.HTTP_201_CREATED)
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)

