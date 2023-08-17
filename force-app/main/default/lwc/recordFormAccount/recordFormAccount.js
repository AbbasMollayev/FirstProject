import { LightningElement } from "lwc";
import { ShowToastEvent } from 'lightning/platformShowToastEvent';

import Name from "@salesforce/schema/Account.Name";
import Type from "@salesforce/schema/Account.Type";
import Industry from "@salesforce/schema/Account.Industry";
import AnnualRevenue from "@salesforce/schema/Account.AnnualRevenue";
import ACCOUNT_OBJECT from '@salesforce/schema/Account';
export default class RecordFormAccount extends LightningElement {
    fields = [Name, Type, Industry, AnnualRevenue];
    objectName = ACCOUNT_OBJECT;
    recordId;

    successHandler(){
        const successEvent  = new ShowToastEvent({
            title: 'Success',
            message: 'Account record has been saved successfully',
            variant: 'success'
        });
        this.dispatchEvent(successEvent);
    }
}