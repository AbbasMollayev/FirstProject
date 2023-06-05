import { LightningElement, wire } from "lwc";
import getOppsAmountGreaterThan from "@salesforce/apex/OppController.getOppsAmountGreaterThan";
export default class OpportunitySearch extends LightningElement {
  columns = [
    { label: "Opportunity Name", fieldName: "Name" },
    { label: "Amount", fieldName: "Amount" }
  ];

  sliderValue = 0;

  @wire(getOppsAmountGreaterThan, { minAmount: "$sliderValue" })
  myOpps;

  handleSliderChange(event) {
    this.sliderValue = event.target.value;
  }
}
