import React, { Component } from 'react';
import { Link } from 'react-router-dom'
import ShoppingCartOutlinedIcon from '@material-ui/icons/ShoppingCartOutlined';
import AccountCircleOutlinedIcon from '@material-ui/icons/AccountCircleOutlined';
import SearchOutlinedIcon from '@material-ui/icons/SearchOutlined';

class Navbar extends Component {
    render() {
      return(
        <header className='navbar'>
          <Link to="/" className='navbar__title navbar__item'>
            <img src="https://i.ibb.co/Ws8yh17/Logo-Black.png" alt="Napoli Logo" className="header__logo"/>
            <span className="logo__secondary">STORE</span>
          </Link>
          <Link to="/" className='navbar__item'>HOME</Link>
          <Link to="/catalog" className='navbar__item'>CATALOG</Link>
          <Link to="/account" className='navbar__item'><AccountCircleOutlinedIcon /></Link>
          <Link to="/search" className='navbar__item'><SearchOutlinedIcon /></Link>
          <Link to="/cart" className='navbar__item navbar__end'><ShoppingCartOutlinedIcon /></Link>        
        </header>
      )
    }
  }
  
export default Navbar;