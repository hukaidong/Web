import React from 'react'
import ReactDOM from 'react-dom/client'
import Navigator from "./components/Navigator"

const OnScreenLoading = () => {
    const app = document.createElement("root")
    document.body.insertBefore(app, document.body.firstChild)
    const root = ReactDOM.createRoot(app);
    root.render(<Navigator />)
}

document.addEventListener("DOMContentLoaded", OnScreenLoading);
