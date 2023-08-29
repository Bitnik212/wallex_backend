<template>
  <div class="wrapper">
    <div class="top">
      <top-component></top-component>
    </div>
    <div v-for="pay in mainPayments">
      <div>
        <payment-card :currency="pay.currency" :balance="pay.balance" :bank-name="pay.bankName"></payment-card>
      </div>
      <p class="subHeader">Привязанные карты:</p>
    </div>
    <div v-for="pay in payments">
      <div>
        <payment-card :currency="pay.currency" :balance="pay.balance" :bank-name="pay.bankName"></payment-card>
      </div>
    </div>
    <div class="add">
      <img width="48" height="48" src="https://img.icons8.com/pulsar-line/48/add.png" alt="add"/>
      <p class="addText">
        Привязать новую карту
      </p>
    </div>
    <wallex-card></wallex-card>

  </div>
</template>

<script>

import TabComponent from "@/components/TabComponent";
import TopComponent from "@/components/TopComponent";
import PaymentCard from "@/components/PaymentCard";
import WallexCard from "@/components/WallexCard";


export default {
  name: 'HomeView',
  components: {
    TopComponent,
TabComponent,
    PaymentCard,
    WallexCard
  },
  data(){
    return {
      tabs: [{
        text: 'Главная',
        backgroundColor: 'lightgray',
        colorText: 'black',
        image:"https://img.icons8.com/pulsar-line/48/home.png",
        index: 0
      },
        {
          text: 'Платежи',
          backgroundColor: '',
          colorText: 'black',
          image: "https://img.icons8.com/pulsar-line/48/money.png",
          index: 1
        }],
      homePage: true,
      paymentPage: false,
      mainPayments: [{
        currency: "https://img.icons8.com/pulsar-line/48/ruble.png",
        bankName: "Финбанк *0000",
        balance: 1000
      }],
      payments: [
        {
          currency: "https://img.icons8.com/pulsar-line/48/ruble.png",
          bankName: 'Сбербанк *0000',
          balance: 10000
        },
        {
          currency: "https://img.icons8.com/pulsar-line/48/ruble.png",
          bankName: 'Тинькофф *0000',
          balance: 10000
        },
      ]
    }
  },
  methods: {
    clickTab(i){
      if(i===0){
        this.home = true
        this.payments = false
      }
      else {
        this.home = false
        this.payments = true
      }

    }
  }
}
</script>
<style scoped>

.subHeader{
  margin: 8px 32px;
  font-size: 20px;
  font-weight: bold;
}
.add{
  width: 100%;
  display: flex;
  flex-direction: column;
  align-items: center;
}

.addText{
  margin: 0;
  line-height: 30px;
}
</style>