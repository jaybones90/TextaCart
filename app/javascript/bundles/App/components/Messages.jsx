import React from 'react';

export default class Messages extends React.Component {
  constructor(props, _railsContext) {
    super(props);
  }

  render() {
    return (
      <h1>Hello, {this.props}!</h1>
    );
  }
}
