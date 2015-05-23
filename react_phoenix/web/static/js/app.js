import {Socket} from "phoenix"

// let socket = new Socket("/ws")
// socket.connect()
// socket.join("topic:subtopic", {}).receive("ok", chan => {
// })

$(function() {
  React.render(
    <h2 className="jumbotron">Hello from React!</h2>,
    document.getElementById('hello_world')
  );
});

require('./comment.react');

let App = {
}

export default App
