@ProfileApp = React.createClass

  onClick: (event) ->
    event.preventDefault()
    obj = event.currentTarget.parentNode
    classes = obj.getAttribute('class').split(' ')
    pos = classes.indexOf('active')

    if pos > -1
      classes.splice pos, 1
    else
      classes.push 'active'

    console.log classes
    obj.setAttribute 'class', classes.join(' ')

  render: ->
    <div className="profile">
      <a href="#" onClick={ this.onClick }>
        <ProfilePhoto avatar={ this.props.avatar } />
        <ProfileInfo name={ this.props.name } location={ this.props.location } />
      </a>
      <div className="menu">
        <ul>
          <ProfileMenu text="Action" link="#" />
          <ProfileMenu text="Another action" link="#" />
          <ProfileMenu text="Something else here" link="#" />
          <ProfileMenu text="Sign out" link="#" />
        </ul>
      </div>
    </div>