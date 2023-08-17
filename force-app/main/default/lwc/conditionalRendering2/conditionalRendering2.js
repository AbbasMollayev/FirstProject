import { LightningElement } from "lwc";
export default class ConditionalRendering2 extends LightningElement {
  country;

  changeHandler(event) {
    this.country = event.target.value;
  }

  get showContent() {
    if(this.country === "United States" || this.country === 'US') {
      return true;
    // eslint-disable-next-line no-else-return
    }else{
      return false;
    } 
  }
}
