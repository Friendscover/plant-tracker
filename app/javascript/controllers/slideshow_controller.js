// src/controllers/slideshow_controller.js
import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = [ "slide" ]
  static values = { index: Number }

  next() {
    if (this.indexValue + 1 > this.slideTargets.length - 1) {
      this.indexValue = 0
    }
    else {
      this.indexValue++
    }
  }

  previous() {
    if (this.indexValue - 1 < 0) {
      this.indexValue = this.slideTargets.length - 1
    }
    else {
      this.indexValue-- 
    }
  }

  indexValueChanged() {
    this.showCurrentSlide()
  }

  showCurrentSlide() {
    this.slideTargets.forEach((element, index) => {
      element.hidden = index !== this.indexValue
    })
  }
}