import React from 'react';
import ReactDOM from 'react-dom';
import Calculator from './calculator';

document.addEventListener("DOMContentLoaded", () => {
	const root = document.getElementById("root");
	ReactDOM.render(<Calculator/>, root);
});

// Delete MyComponent in your entry file. Import the Calculator component
// and set it to render in the DOM. Make sure 'Hello World' still shows
// up in the browser, this time from your Calculator component.
