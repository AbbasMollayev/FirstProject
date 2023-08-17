import getJoke from "@salesforce/apex/reviewJokeController.getJoke";
import { LightningElement, wire } from "lwc";
export default class ReviewJoke extends LightningElement {
    // joke = "Something Funny";

    @wire(getJoke)
    joke;

    handleClick(){
        console.log('Clicking Get Joke Button');
    }
}