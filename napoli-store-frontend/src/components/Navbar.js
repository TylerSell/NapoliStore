import React, { Component } from 'react';

class Navbar extends Component {
    render() {
      return(
        <header className='navbar'>
            <div className='navbar__title navbar__item'>THENAPOLISTORE</div>
            <div className='navbar__item'>HOME</div>
            <div className='navbar__item'>CATALOG</div>
            <div className='navbar__item'>ACCOUNT</div>
            <div className='navbar__item navbar__end'>CART</div>        
        </header>
      )
    }
  }
  
export default Navbar;