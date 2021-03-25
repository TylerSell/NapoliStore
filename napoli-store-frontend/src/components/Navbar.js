import React, { Component } from 'react';
import { Link } from 'react-router-dom'


class Navbar extends Component {
    render() {
      return(
        <header className='navbar'>
          <Link to="/" className='navbar__title navbar__item'>
            <img src="https://i.ibb.co/W09jqpN/Napoli-Black-Logo.png" alt="Napoli Logo" className="header__logo"/>
          </Link>
            <Link to="/" className='navbar__item'>HOME</Link>
            <Link to="/catalog" className='navbar__item'>CATALOG</Link>
            <Link to="/account" className='navbar__item'>ACCOUNT</Link>
            <Link to="/cart" className='navbar__item navbar__end'>CART</Link>        
        </header>
      )
    }
  }
  
export default Navbar;