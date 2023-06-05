import { LightningElement } from "lwc";
import OPPORTUNITY_OBJECT from "@salesforce/schema/Opportunity";
import STAGE_FIELD from "@salesforce/schema/Opportunity.StageName";
import CloseDate_FIELD from "@salesforce/schema/Opportunity.CloseDate";
import NAME_FIELD from "@salesforce/schema/Opportunity.Name";
import { ShowToastEvent } from "lightning/platformShowToastEvent";
export default class OpportunityCreate extends LightningElement {
  objectApiName = OPPORTUNITY_OBJECT;
  fields = [STAGE_FIELD, CloseDate_FIELD, NAME_FIELD];

  handleSuccess(event) {
    const showToastEvent = new ShowToastEvent({
      title: "Successfully Created",
      message: "You have created account successfully " + event.detail.id,
      variant: "success"
    });

    this.dispatchEvent(showToastEvent);
  }
}
