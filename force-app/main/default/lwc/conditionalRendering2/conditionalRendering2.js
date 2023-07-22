import { LightningElement } from "lwc";
export default class ConditionalRendering2 extends LightningElement {
    country;

    changeHandler(event){
        this.country = event.target.value;
    }
}