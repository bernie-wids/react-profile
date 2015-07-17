@Button = React.createClass

  onClick: ->
    alert "You clicked on Button.onClick"

  render: ->
    <button onClick={ this.onClick }>{ this.props.text }</button>
