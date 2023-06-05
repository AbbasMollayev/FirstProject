import { LightningElement, api } from "lwc";
import ACCOUNT_OBJECT from "@salesforce/schema/Account";
import { ShowToastEvent } from "lightning/platformShowToastEvent";
export default class Practice22 extends LightningElement {
  objectApiName = ACCOUNT_OBJECT;

  @api
  recordId; // = "001Dn00000TXHi9IAH";

  handleSuccess(event) {
    const showToastEvent = new ShowToastEvent({
      title: "Successfully Created",
      message: "You have created account successfully " + event.detail.id,
      variant: "success"
    });

    this.dispatchEvent(showToastEvent);
  }
}
