@ProfileMenu = React.createClass

  render: ->
    <li>
      <a href={ this.props.link }>{ this.props.text }</a>
    </li>