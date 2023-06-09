import { getRecord } from "lightning/uiRecordApi";
import { LightningElement, wire } from "lwc";
import NAME_FIELD from "@salesforce/schema/Opportunity.Name";
import STAGE_FIELD from "@salesforce/schema/Opportunity.StageName";
import CLOSE_DATE_FIELD from "@salesforce/schema/Opportunity.CloseDate";
export default class Practice26 extends LightningElement {
  recordId = "006Dn00000AHFqrIAH";
  // according to above recordId get the entire opp record and wire into below property
  // salesforce provide set of javascript methods to get single data
  // create data , update data , also known as wire adaptor
  // basically it saves you from writing apex methods for common operations like this
  // one common js method is getRecord( recordId , fields you want in array)
  // and we need to use @wire to wire that into property or function
  @wire(getRecord, {
    recordId: "$recordId",
    fields: [NAME_FIELD, STAGE_FIELD, CLOSE_DATE_FIELD]
  })
  opp;

  // Create a getter to get string version of opp property above
  get oppInString() {
    return JSON.stringify(this.opp, null, 2);
  }
}
