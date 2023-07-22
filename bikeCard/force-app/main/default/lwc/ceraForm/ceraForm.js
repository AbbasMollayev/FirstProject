import { LightningElement, track } from "lwc";
import createLeadRecords from "@salesforce/apex/LeadController.createLeadRecords";
import { ShowToastEvent } from "lightning/platformShowToastEvent";

export default class CreateLead extends LightningElement {
  @track firstName = "";
  @track lastName = "";
  @track companyName = "";
  @track middleName = "";
  @track phoneNumber = "";
  @track selectedRecordType = "";
  @track showCourseLookup = false;
  @track showEventLookup = false;
  @track courseLookupValue = "";
  @track eventLookupValue = "";

  handleFirstNameChange(event) {
    this.firstName = event.target.value;
  }

  handleLastNameChange(event) {
    this.lastName = event.target.value;
  }

  handleMiddleNameChange(event) {
    this.middleName = event.target.value;
  }

  handleCompanyNameChange(event) {
    this.companyName = event.target.value;
  }

  handlePhoneNumberChange(event) {
    this.phoneNumber = event.target.value;
  }

  recordTypeOptions = [
    { label: "Course", value: "Course" },
    { label: "Event", value: "Event" }
  ];

  handleRecordTypeChange(event) {
    this.selectedRecordType = event.target.value;
    if (this.selectedRecordType === "Course") {
      this.showCourseLookup = true;
      this.showEventLookup = false;
    } else if (this.selectedRecordType === "Event") {
      this.showCourseLookup = false;
      this.showEventLookup = true;

    }
  }

  handleCourseLookupChange(event) {
    this.courseLookupValue = event.target.value;
  }

  handleEventLookupChange(event) {
    this.eventLookupValue = event.target.value;
  }

  createLead() {
    const leads = [
      {
        FirstName: this.firstName,
        LastName: this.lastName,
        Company: this.companyName,
        MiddleName: this.middleName,
        Phone: this.phoneNumber
      }
    ];

    createLeadRecords({ leads })
      .then((result) => {
        if (result.length > 0) {
          this.showToast("Success", "Leads created successfully.", "success");
        } else {
          this.showToast("Error", "Lead creation failed.", "error");
        }
      })
      .catch((error) => {
        console.error("Error creating leads: ", error);
        this.showToast("Error", "Lead creation failed.", "error");
      });
  }

  showToast(title, message, variant) {
    const toastEvent = new ShowToastEvent({
      title: title,
      message: message,
      variant: variant
    });
    this.dispatchEvent(toastEvent);
  }
}
