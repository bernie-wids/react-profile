@ProfileInfo = React.createClass

  render: ->
    <div className="info">
      <div className="name">{ this.props.name }</div>
      <div className="location">{ this.props.location }</div>
    </div>