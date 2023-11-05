import React, { useState } from 'react';
import { useNavigate } from 'react-router-dom';
import { Link } from 'react-router-dom'; 

function Login() {
    const [email, setEmail] = useState('');
    const [passwort, setPassword] = useState('');
    const history = useNavigate();
    const [message, setMessage] = useState('');

    const handleLogin = async () => {
        try {
            const response = await fetch('http://localhost/dwi-10a/index.php/Api/Usuarios/');
            const data = await response.json();
            
            // Verificar si las credenciales coinciden con algún registro en la API.
            const user = data.find((user) => user.Correo ===email  && user.Passwort ===passwort );
            console.log(user);
            if (user) {
                // Verificar si el ID de usuario existe en la tabla "reportador"
                const reportadorResponse = await fetch(`http://localhost/dwi-10a/index.php/Api/Reportador/`);
                const reportadorData = await reportadorResponse.json();

                if (reportadorData && reportadorData.IDUsuario_f === user.IDUsuario) {
                    // Inicio de sesión exitoso y el usuario tiene permiso
                    const user2 = {
                        nombre: user.Nombre,
                        tipo: user.Tipo
                    };
                    console.log(user2);

                    // Guardar el objeto del usuario en la sessionStorage
                    sessionStorage.setItem("user", JSON.stringify(user2));
                    history('/for');
                } else {
                    // Mostrar un mensaje de error al usuario en caso de que no tenga permiso.
                    setTimeout(() => {
                        setMessage('Inicio de sesión denegado. No tienes permiso.');
                    }, 1000);
                }
            } else {
                // Mostrar un mensaje de error al usuario en caso de inicio de sesión fallido.
                setTimeout(() => {
                    setMessage('Inicio de sesión fallido. Comprueba tu email y contraseña');
                }, 1000);
            }

        } catch (error) {
            setTimeout(() => {
                setMessage('Error al iniciar sesión');
            }, 1000);
            console.error('Error al iniciar sesión:', error);
            // Manejar errores o mostrar mensajes de error al usuario.
        }
    };


    return (
        <>
        
            <div className="content-header">
                <div className="content">
                    
                    <div className="container">
                        <div className='row  justify-content-center'>
                             
                            <div className='col-xs-12 col-md-12 col-lg-5'>
                                <div className='card card-primary'>
                                    <div className='card bg-dark text-white'>
                                        <h4 className='card-text'>
                                            <i className="fas fa-user-circle mr-2"></i>
                                            Iniciar sesion
                                        </h4>
                                    </div>
                                    <div className='card-body'>
                                        <div className='form-group'>
                                            <label>Correo</label>
                                            <input
                                                type="email"
                                                placeholder="Email"
                                                className='form-control'
                                                value={email}
                                                onChange={(e) => setEmail(e.target.value)}
                                                required
                                            />
                                        </div>

                                        <div className='form-group'>
                                            <label>Contraseña</label>
                                            <input
                                                type="password"
                                                placeholder="Contraseña"
                                                value={passwort}
                                                className='form-control'
                                                onChange={(e) => setPassword(e.target.value)}
                                                required
                                            />
                                        </div>
                                    </div>
                                    <div className='row  justify-content-center'>
                                        <button className='btn btn-primary' onClick={handleLogin}>Iniciar</button>
                                         
                                        <button className='btn btn-primary' id="btn-submit"><Link className="nav-link" to="/bie">Regresar</Link></button>

                                    </div>
                                    {message && <div className="row  justify-content-center">{message}</div>}
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </>

    );
}

export default Login;