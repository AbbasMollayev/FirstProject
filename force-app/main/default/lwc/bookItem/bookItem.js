import { LightningElement, api } from "lwc";
export default class BookItem extends LightningElement {
  // book = {
  //     Id    : 'CoolIdGoeHereEventually',
  //     Name  : "Awesome Book",
  //     Price__c : 100
  // }
  @api
  book;

  handleClick() {
    console.log(this.book);

    const myEvent = new CustomEvent('select', {detail: this.book.id});
    this.dispatchEvent(myEvent);
  }
}
