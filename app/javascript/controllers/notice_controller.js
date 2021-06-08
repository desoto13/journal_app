import { Controller } from "stimulus"

export default class extends Controller {
    static targets = ["noticeMessage"];

    close() {
        this.noticeMessageTarget.classList.add('hidden');
    }
}