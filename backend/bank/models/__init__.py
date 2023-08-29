__author__ = "Николай Витальевич Никоноров (Bitnik212)"
__date__ = "29.08.2023 02:56"

from enum import Enum

from .CurrencyModel import CurrencyModel
from .PaymentProcessingModel import PaymentProcessingModel
from .account.BankAccountCardModel import BankAccountCardModel
from .account.BankAccountModel import BankAccountModel


class Models(Enum):
    currency = CurrencyModel
    payment = PaymentProcessingModel
    account = BankAccountModel
    account_card = BankAccountCardModel
