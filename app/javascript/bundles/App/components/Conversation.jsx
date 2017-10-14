import React from 'react';
import Messages from './Messages.jsx'

/**
 * @param props - Comes from your rails view.
 */

export default class Conversation extends React.Component {

  constructor(props) {
    super(props);
    // How to set initial state in ES6 class syntax
    // https://facebook.github.io/react/docs/reusable-components.html#es6-classes
    this.state = { messages: this.props.messages }
  }


  render() {
    return (
      <div>
        <Messages messages={this.state.messages}></Messages>
      </div>

    );
  }
}
