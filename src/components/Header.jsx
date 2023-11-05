import logo from '../img/logo.png'; 
import { Link } from 'react-router-dom';
function Header() {
    // Obtener el objeto del usuario desde la sessionStorage
    const storedUser = sessionStorage.getItem("user");
    const user2 = storedUser ? JSON.parse(storedUser) : null;

    //visualizar paginas segun el rol
    const Admin = user2.tipo === 'Administrador';// Asegúrate de que coincida con el rol "administrador"
    const EncarCorralon = user2.tipo === 'Encargado_corralon';// Asegúrate de que coincida con el rol 
    const Operador = user2.tipo === 'Operador';
    const Reportador = user2.tipo === 'Reportador';// Asegúrate de que coincida con el rol 
 
    //eliminar el objeto de sesion
    const Eliminasesion = () => {
        sessionStorage.removeItem("user");

    }
    return (  
            <>
            <nav className="main-header navbar  navbar-light " id='hea'>
                <div className="container">
                    <div className="row align-items-center">
                        <div className="col-md-10 col-lg-9 text-right">
                            <img src={logo} alt="Logo" className="img-fluid" width="100" />
                        </div>
                    </div>
                    {/* ejemplo de opciones del menú visibles para el usuario admin */}
                    {Admin && <li className="nav-item ">
                        <div className="btn-group">
                            <button type="button" className="btn bg-white text-dark dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                Categoria
                            </button>
                            <div className="dropdown-menu">
                                <Link className="dropdown-item" to="/concat">Consulta</Link>
                                <Link className="dropdown-item" to="/regcat">Registro</Link>
                            </div>
                        </div>
                    </li>}
                    {/* ejemplo de opciones del menú visibles para el usuario encargado del corralon*/}
                    {EncarCorralon && <li className="nav-item">
                        <div className="btn-group">
                            <button type="button" className="btn bg-white text-dark dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                Categoria
                            </button>
                            <div className="dropdown-menu">
                                <Link className="dropdown-item" to="/concat">Consulta</Link>
                            </div>
                        </div>
                    </li>}
                    {/* ejemplo de opciones del menú visibles para el usuario operador*/}
                    {Operador && <li className="nav-item">
                        <div className="btn-group">
                            <button type="button" className="btn bg-white text-dark dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                Categoria
                            </button>
                            <div className="dropdown-menu">
                                <Link className="dropdown-item" to="/concat">Consulta</Link>
                                <Link className="dropdown-item" to="/regcat">Registro</Link>
                            </div>
                        </div>
                    </li>}
                    {/* ejemplo de opciones del menú visibles para el reportador*/}
                    {Reportador && <li className="nav-item">
                        <div className="btn-group">
                            <button type="button" className="btn bg-white text-dark dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                Categoria
                            </button>
                            <div className="dropdown-menu">
                                <Link className="dropdown-item" to="/concat">Consulta</Link>
                                <Link className="dropdown-item" to="/regcat">Registro</Link>
                            </div>
                        </div>
                    </li>}
                    {/* opcion del menu generico para todos los usuarios*/}
                    <div className="row rigth-items-center">
                        <div className="col-md-2 col-lg-3">
                            <ul className="navbar-nav">
                                <li className="nav-item">
                                    <Link className="nav-link" to="/bie" onClick={Eliminasesion}>Salir</Link>

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
