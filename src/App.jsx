import React, { useCallback, useEffect, useState } from "react"
import logo from "./assets/logo.svg"
import "./App.css"
import { counter, supplier } from "./agent"



class App extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
          firstname: "",
          lastname: "",
    };
  }

  async getUserProfiles() {
   const users = supplier.showUserProfiles();
   console.log(users);
  }

  async onSubmit(e) {
    e.preventDefault();
    console.log(this.state);
    supplier.addUserProfile({firstName: this.state.firstname, lastName: this.state.lastname});
    console.log(this.getUserProfiles())
  }

  render() {
    return (
      <form onSubmit={e => this.onSubmit(e)}>
        <label>
          First Name:
          <input type="text" name="firstname" id="firstname" value={this.state.firstname} onChange={e => this.setState({firstname: e.target.value})} />
        </label>
        <label>
          Last Name:
          <input type="text" name="lastname" id="firstname" value={this.state.lastname} onChange={e => this.setState({lastname: e.target.value})} />
        </label>
        <input type="submit" value="Submit" />
      </form>
    );
  }
}


export default App
