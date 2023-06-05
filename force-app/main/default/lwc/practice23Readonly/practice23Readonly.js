import { LightningElement } from "lwc";
import OPPORTUNITY_OBJECT from "@salesforce/schema/Opportunity";
import STAGE_FIELD from "@salesforce/schema/Opportunity.StageName";
import CloseDate_FIELD from "@salesforce/schema/Opportunity.CloseDate";
import NAME_FIELD from "@salesforce/schema/Opportunity.Name";
import AMOUNT_FIELD from "@salesforce/schema/Opportunity.Amount";

export default class Practice23_Readonly extends LightningElement {
  objectApiName = OPPORTUNITY_OBJECT;
  recordId = "006Dn00000AHEAkIAP";

  fields = [STAGE_FIELD, CloseDate_FIELD, NAME_FIELD, AMOUNT_FIELD];
}
