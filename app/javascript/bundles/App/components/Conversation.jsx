import React from 'react';

/**
 * @param props - Comes from your rails view.
 */

export default class Messages extends React.Component {
  constructor(props) {
    super(props);

    // How to set initial state in ES6 class syntax
    // https://facebook.github.io/react/docs/reusable-components.html#es6-classes
    // this.state = { name: this.props.name };
  }
  render() {
    console.log(this.props.messages)
    messagesParent = this.props.messages.map(function(message){
      return (
        <div key={message.id}>
          <p>{message.from_number}</p>
          <p>{message.content}</p>
        </div>
      );
    });
    return (
      <Messages messages={messages}></Messages>
    );
  }
}
