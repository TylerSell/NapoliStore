import React from 'react'
import { Link } from 'react-router-dom'
import FacebookIcon from '@material-ui/icons/Facebook';
import InstagramIcon from '@material-ui/icons/Instagram';

function Footer() {
    return (
        <footer className="footer__centered">
            <div className="page__break">
                <hr className="hr__medLength"></hr>
            </div>
            <div className="footer__grid">
                <div className="footer__section">
                    <Link to="/" className="footer__link">HOME</Link>
                    <Link to="/catalog" className="footer__link">CATALOG</Link>
                    <Link to="/account" className="footer__link">ACCOUNT</Link>
                    <Link to="/cart" className="footer__link">CART</Link>
                </div>
                <div className="footer__section middle__section">
                    <div className="social__link">
                        <FacebookIcon className="icon__centered"/>
                        <Link to="https://www.facebook.com/BarNapoliSTL/" className="footer__socialLink">Facebook</Link>
                    </div>
                    <div className="social__link">
                        <InstagramIcon className="icon__centered"/>
                        <Link to="https://instagram.com/napolistl?igshid=by40smpzwfp4" className="footer__socialLink">Instagram</Link>
                    </div>
                </div>
                <div className="footer__section right__section">
                    <p className="footer__text">
                        &copy; 2021, The Napoli Store
                    </p>
                    <p className="footer__text">
                        Proudly made by Tyler Sell Design
                    </p>
                </div>
            </div>

        </footer>
    )
}

export default Footer
