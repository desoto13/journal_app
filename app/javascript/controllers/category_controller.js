import { Controller } from "stimulus"

export default class extends Controller {
    static targets = ["description"];

    show() {
        this.descriptionTarget.classList.remove('hidden');
    }

    hide() {
        this.descriptionTarget.classList.add('hidden');
    }

}