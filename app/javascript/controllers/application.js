import { Application } from "@hotwired/stimulus"

const application = Application.start()

// Configure Stimulus development experience
console.log("Stimulus is running in development mode. For production, set process.env.NODE_ENV to 'production'")
application.debug = false
window.Stimulus   = application

export { application }
