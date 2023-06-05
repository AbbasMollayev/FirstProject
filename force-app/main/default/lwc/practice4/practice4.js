import { LightningElement } from "lwc";

export default class Practice4 extends LightningElement {
  num1 = 0;
  num2 = 0;

  value1 = 0;
  value2 = 0;

  get sumResult() {
    return this.num1 + this.num2;
  }

  get subtractionResult() {
    return this.num1 - this.num2;
  }

  get multiplicationResult() {
    return this.num1 * this.num2;
  }

  get divisionResult() {
    if (this.num2 === 0) {
      return 0;
      // eslint-disable-next-line no-else-return
    } else {
      let result = this.num1 / this.num2;
      // this is how we can only get 2 digit out of decimal numbers
      return result.toFixed(2);
    }
  }

  handleNum1Change(event) {
    //set the value of num1 to what user typed
    // eslint-disable-next-line radix
    this.num1 = parseFloat(event.target.value);
  }
  handleNum2Change(event) {
    // eslint-disable-next-line radix
    this.num2 = parseFloat(event.target.value);
  }

  handleReset() {
    this.num1 = 0;
    this.num2 = 0;
  }
}
