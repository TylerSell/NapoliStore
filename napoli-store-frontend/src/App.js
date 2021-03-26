import React, { Component } from 'react';
import { BrowserRouter as Router, Switch, Route } from "react-router-dom";
import Navbar from './components/Navbar';
import Footer from './components/Footer';


class App extends Component {
  render() {
    return (
      <Router>
        <div className="App">
          <Switch>
            <Route path="/">
              <Navbar />
              <Footer />
            </Route>
          </Switch>
        </div>
      </Router>
    );
  }
}

export default App;
