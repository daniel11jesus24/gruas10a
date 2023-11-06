import React from 'react';
import { Link } from 'react-router-dom';
import logo from '../img/logo.png';
function Bienvenida() {
    return (
        <>
            <div className="container-fluid">
                <div className="row">
                    <nav id="sidebar" className="col-md-3 col-lg-2 bg-9D2449 sidebar">
                        <div className="position-sticky">
                            <img src={logo} alt="Logo" className="img-fluid" width="100" />
                            <ul className="nav flex-column">
                                <li className="nav-item">
                                    <Link className="nav-link" to="/bie">Bienvenida</Link>
                                </li>
                                <li className="nav-item">
                                    <Link className="nav-link" to="/log">Inicio de sesión</Link>
                                </li>
                                <li className="nav-item">
                                    <Link className="nav-link" to="/reg">Registro de usuarios</Link>
                                </li>
                                <li className="nav-item">
                                    <Link className="nav-link" to="/for">Formato</Link>
                                </li>
                                <li className="nav-item">
                                    <Link className="nav-link" to="/con">Consulta</Link>
                                </li>
                            </ul>
                        </div>
                    </nav>

                    <main className="col-md-9 ms-sm-auto col-lg-10 px-md-4 content">
                        <div className="container mt-3">
                            <div className="row">
                                <div className="col-md-6 offset-md-3 col-sm-12">
                                    <div>
                                        <h2 className="mt-4">¡Bienvenido!</h2>
                                        <p id='texto'>
                                            En nuestro portal, te damos la bienvenida a descubrir la eficiencia y la conveniencia de utilizar grúas y rutas automatizadas en el hermoso estado de Puebla.

                                            Sabemos que en ocasiones pueden surgir situaciones imprevistas en las carreteras, lo que puede ser una fuente de estrés y preocupación. Es por eso que ponemos a tu disposición un servicio de grúas de confianza y rutas automatizadas diseñadas para brindarte la tranquilidad que necesitas.

                                            Nuestro compromiso es ayudarte a superar obstáculos en el camino de manera rápida y segura. Ya sea que necesites asistencia con tu vehículo, o estés buscando la ruta más conveniente hacia el corralón más cercano en Puebla, estamos aquí para facilitarte el proceso.

                                            En esta página, encontrarás información valiosa sobre cómo nuestras grúas y rutas automatizadas pueden hacer tu vida más fácil. Explora nuestros servicios y descubre cómo podemos ser tu aliado en situaciones inesperadas en las carreteras de Puebla.

                                            Estamos a tu disposición para responder a tus preguntas y proporcionarte la asistencia que necesitas. ¡Gracias por visitarnos!
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </main>
                </div>
            </div>
        </>
    );
}

export default Bienvenida;
