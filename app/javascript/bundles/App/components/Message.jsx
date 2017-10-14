import React from 'react';

/**
 * @param props - Comes from your rails view.
 */

export default class Message extends React.Component {
  constructor(props) {
    super(props);

// How to set initial state in ES6 class syntax
// https://facebook.github.io/react/docs/reusable-components.html#es6-classes
// this.state = { name: this.props.name };
  }
  render() {
    return (
      <div key={this.props.message.id}>
        <p>{this.props.message.from_number}</p>
        <p>{this.props.message.content}</p>
      </div>
    );
  }
}
