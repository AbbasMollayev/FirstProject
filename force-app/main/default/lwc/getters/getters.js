import { LightningElement } from "lwc";
export default class Getters extends LightningElement {
  fruits = ["Apple", "Banana", "Mango"];
  num1 = 10;
  num2 = 20;

  get sum() {
    return this.num1 + this.num2;
  }

  get firstFruit(){
    return this.fruits[0];
  }
}
