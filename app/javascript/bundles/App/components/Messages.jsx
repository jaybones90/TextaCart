import React from 'react';

export default class Messages extends React.Component {
  constructor(props) {
    super(props);

    // How to set initial state in ES6 class syntax
    // https://facebook.github.io/react/docs/reusable-components.html#es6-classes
    // this.state = { name: this.props.name };
  }

  render() {
    return (
      <div>
        <h1>Fuck it works</h1>
        <h1>Hello, {this.props.name}!</h1>
      </div>
    );
  }
}
