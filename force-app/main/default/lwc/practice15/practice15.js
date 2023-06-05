import { LightningElement, wire } from "lwc";
import getAccountWithAnnualRevenue from "@salesforce/apex/AccountController.getAccountWithAnnualRevenue";
export default class Practice15 extends LightningElement {
  accounts;
  error;

  @wire(getAccountWithAnnualRevenue)
  getDataFromApex({ data, error }) {
    //destructing the result we got from apex into data and error

    if (data) {
      this.accounts = data;
      this.error = undefined;
    } else if (error) {
      this.error = error;
      this.data = undefined;
    }
  }
}
