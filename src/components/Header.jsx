import logo from '../img/logo.png'; 
import { Link } from 'react-router-dom';
function Header() {
    return (  
            <>
            <nav className="main-header navbar  navbar-light " id='hea'>
                <div className="container">
                    <div className="row align-items-center">
                        <div className="col-md-10 col-lg-9 text-right">
                            <img src={logo} alt="Logo" className="img-fluid" width="100" />
                        </div>
                    </div>
                    <div className="row rigth-items-center">
                        <div className="col-md-2 col-lg-3">
                            <ul className="navbar-nav">
                                <li className="nav-item">
                                        <Link className="nav-link" to="/bie" >
                                            Salir
                                        </Link>  
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </nav>

            </>
    );
}

export default Header;
