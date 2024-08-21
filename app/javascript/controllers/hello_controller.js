// src/controllers/hello_controller.js
import { Controller } from "@hotwired/stimulus"

export default class extends Controller {

  connect() {
    super.connect();
    console.log("Hello, Stimulus!")
  }
}