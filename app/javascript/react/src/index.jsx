import * as React from 'react';
import ReactDOM from 'react-dom/client';
import Navigator from "./components/Navigator"
import Menu from "./components/Menu";


function RootComponent() {
    const [state, setState] = React.useState(false);
    return <><Navigator states={{state, setState}}/><Menu states={{state, setState}}/></>;
}


const app = document.createElement("root");
document.body.insertBefore(app, document.body.firstChild);
const root = ReactDOM.createRoot(app);
root.render(<RootComponent />);
