import { LightningElement, wire } from "lwc";
import getOppWithMaxAmount from "@salesforce/apex/OppController.getOppWithMaxAmount";
export default class OppWithHighestAmount extends LightningElement {
  opportunity;
  error;

  @wire(getOppWithMaxAmount)
  wiredOppWithMaxAmount({ error, data }) {
    if (data) {
      this.opportunity = data;
      this.error = undefined;
    } else if (error) {
      this.error = error.message;
      this.opportunity = undefined;
    }
  }
}
