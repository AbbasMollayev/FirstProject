import getMaxOppAmount from "@salesforce/apex/AccountController.getMaxOppAmount";
import { LightningElement, wire } from "lwc";
export default class Practice19 extends LightningElement {
  highestOppAmount;
  error;

  /**
   * {
   *  data: some data goes here if return successfully
   *  error : if you have error
   * }
   */
  @wire(getMaxOppAmount)
  wiringIntoThisMethodParam({ data, error }) {
    // destruct the wired result into 2 variables data, error

    console.log(data);

    if (data) {
      this.highestOppAmount = data;
      this.error = undefined;
    } else if (error) {
      this.error = error;
      this.highestOppAmount = undefined;
    }
  }
  //   @wire(getMaxOppAmount)
  //   wiringUsingMethod(result) {
  //     if (result.data) {
  //       this.highestOppAmount = result.data;
  //       this.error = undefined;
  //     } else if (result.error) {
  //       this.error = result.error;
  //       this.highestOppAmount = undefined;
  //     }
  //   }

  // @wire(getMaxOppAmount)
  // highestOppAmount;
  // get highestOppAmountInStr(){
  //     return JSON.stringify(this.highestOppAmount, null, 2);
  // }
}
