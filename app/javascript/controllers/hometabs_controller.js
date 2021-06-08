import { Controller } from "stimulus"

export default class extends Controller {
    static targets = [ "allTab", "allContent", "todayTab", "todayContent", "finishTab", "finishContent"];

    all() {
        this.allTabTarget.classList.replace('bg-gray-200', 'bg-gray-300');
        this.todayTabTarget.classList.replace('bg-gray-300', 'bg-gray-200');
        this.finishTabTarget.classList.replace('bg-gray-300', 'bg-gray-200');
    
        this.todayContentTarget.classList.add('hidden');
        this.finishContentTarget.classList.add('hidden');
    
        this.allContentTarget.classList.remove('hidden');
      }

    today() {
        this.allTabTarget.classList.replace('bg-gray-300', 'bg-gray-200');
        this.todayTabTarget.classList.replace('bg-gray-200', 'bg-gray-300');
        this.finishTabTarget.classList.replace('bg-gray-300', 'bg-gray-200');
    
        this.allContentTarget.classList.add('hidden');
        this.finishContentTarget.classList.add('hidden');
    
        this.todayContentTarget.classList.remove('hidden');
      }

    finish() {
        this.allTabTarget.classList.replace('bg-gray-300', 'bg-gray-200');
        this.todayTabTarget.classList.replace('bg-gray-300', 'bg-gray-200');
        this.finishTabTarget.classList.replace('bg-gray-200', 'bg-gray-300');
    
        this.allContentTarget.classList.add('hidden');
        this.todayContentTarget.classList.add('hidden');
    
        this.finishContentTarget.classList.remove('hidden');
      }
    
}