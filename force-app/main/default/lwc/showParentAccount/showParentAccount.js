import { LightningElement, api } from "lwc";

export default class ShowParentAccount extends LightningElement {
	@api recordId;
	@api objectApiName;
}