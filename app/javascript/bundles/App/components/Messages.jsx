import React from 'react';
import Message from './Message.jsx'
// import Conversation from './Conversation.jsx'

/**
 * @param props - Comes from your rails view.
 */

export default class Messages extends React.Component {
  constructor(props) {
    super(props);

// How to set initial state in ES6 class syntax
// https://facebook.github.io/react/docs/reusable-components.html#es6-classes
    this.state = { messages: this.props.messages };
  }


  render() {
    var messages = this.state.messages.map(function(message){
      return (
        <Message message={message} ></Message>

      );
    });
    return (
      <div>
        { messages }
      </div>
    );
  }
}
