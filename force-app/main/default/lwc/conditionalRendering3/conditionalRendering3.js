import { LightningElement } from "lwc";

export default class ConditionalRendering3 extends LightningElement {
  showContent = false;
  clickHandler() {
    this.showContent = !this.showContent;
  }
}
