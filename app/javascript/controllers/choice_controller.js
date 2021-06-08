import { Controller } from "stimulus"

export default class extends Controller {
    static targets = ["modal"]

    show() {
        this.modalTarget.classList.remove('hidden');
      }
    
    close() {
        this.modalTarget.classList.add('hidden');
    }
}

