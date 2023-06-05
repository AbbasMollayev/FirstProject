import { LightningElement, wire } from "lwc";
import getAccountsIfRevenueLessThan from "@salesforce/apex/AccountController.getAccountsIfRevenueLessThan";

export default class Practice17 extends LightningElement {
  sliderValue = 100000;

  columns = [
    { label: "Account Name", fieldName: "Name" },
    { label: "Annual Revenue", fieldName: "AnnualRevenue" }
  ];
  // in order to make the apex method parameter value dynamic
  // using the property we need to use the '$propertyName' syntax
  // @wire(getAccountsIfRevenueLessThan ,{maxRevenue:1000000 })
  @wire(getAccountsIfRevenueLessThan, { maxRevenue: "$sliderValue" })
  myAccounts;

  handleSliderChange(event) {
    this.sliderValue = event.target.value;
  }
}
