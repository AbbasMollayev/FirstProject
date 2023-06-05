import { LightningElement } from "lwc";
import { ShowToastEvent } from "lightning/platformShowToastEvent";
export default class Practice13 extends LightningElement {
  showSpinner = false;

  handleClick() {
    // set the value of showSpinner to true
    this.showSpinner = true;
    // wait 3 seconds and make it false
    // eslint-disable-next-line @lwc/lwc/no-async-operation
    setTimeout(() => {
      this.showSpinner = false;
    }, 3000);
  }

  handleShowSuccessToast() {
    // Create show toast event object and provide details
    const event = new ShowToastEvent({
      title: "Awesome Success Title",
      message: "Your awesome actions has succeed! HIRED!!",
      variant: "success"
    });
    // eventually dispatch this event manually so it can show the toast message
    this.dispatchEvent(event);
  }

  handleShowErrorToast() {
    // create showToastEvent object and provide details
    const event = new ShowToastEvent({
      title: "Awesome Error Title",
      message: "Your awesome actions has failed! TRY AGAIN!!",
      variant: "error"
    });
    // eventually dispatch this event manually so it can show the toast message
    this.dispatchEvent(event);
  }
}
