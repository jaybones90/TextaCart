import ReactOnRails from 'react-on-rails';

import HelloWorld from '../bundles/HelloWorld/components/HelloWorld';
import Messages from '../bundles/App/components/Messages'

// This is how react_on_rails can see the HelloWorld in the browser.
ReactOnRails.register({
  Messages
});
