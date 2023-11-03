import { useState } from "react";

const Registro = () => {
    const [Tipo, setTipo] = useState();
    const [Passw, setPassw] = useState();
    const [Nombre, setNombre] = useState();
    const [Usuario, setUsuario] = useState();
    const [Correo, setCorreo] = useState();
    const [message, setMessage] = useState('');

     
    return (
        <> 
            <div className="content"> 
                <div className="container">
                    <div className='row  justify-content-center'>
                    <div className='col-xs-10 col-md-10 col-lg-7 '>
                        <div className='card card-primary'>
                            <div className='card bg-dark text-white'>
                                <h4 className='card-text'>
                                    Registro
                                </h4>
                            </div>
                            <div className='card-body'>
                                <div className='row '>
                                    <div className='col-xs-6 col-md-8 col-lg-4'>
                                        <h6>Nombre</h6>
                                    </div>
                                    <div className='col-xs-6 col-md-8 col-lg-8'>
                                        <input type='text' name='' id=''
                                            value={Nombre}

                                            min="0" className='form-control' placeholder='Introduzca...' />
                                    </div>
                                </div>
                                <div className='row '>
                                    <div className='col-xs-6 col-md-8 col-lg-4'>
                                        <h6>Correo</h6>
                                    </div>
                                    <div className='col-xs-6 col-md-8 col-lg-8'>
                                        <input type='email' name='' id=''
                                            value={Correo}

                                            min="0" className='form-control' placeholder='Introduzca...' />
                                    </div>
                                </div>
                                <div className='row '>
                                    <div className='col-xs-6 col-md-8 col-lg-4'>
                                        <h6>Usuario</h6>
                                    </div>
                                    <div className='col-xs-6 col-md-8 col-lg-8'>
                                        <input type='email' name='' id=''
                                            value={Usuario}

                                            min="0" className='form-control' placeholder='Introduzca...' />
                                    </div>
                                </div>
                                <div className='row '>
                                    <div className='col-xs-6 col-md-8 col-lg-4'>
                                        <h6>Tipo</h6>
                                    </div>
                                    <div className="col-xs-6 col-md-8 col-lg-8">
                                        <select
                                            name="tipo"
                                            id="tipo"
                                            value={Tipo}

                                            className="form-control"
                                        >
                                            <option value="">Seleccionar Tipo</option>
                                            <option value="Tipo A">Tipo A</option>
                                            <option value="Tipo B">Tipo B</option>
                                            <option value="Tipo C">Tipo C</option>
                                        </select>
                                    </div>
                                </div>
                                <div className='row '>
                                    <div className='col-xs-6 col-md-8 col-lg-4'>
                                        <h6>Contraseña</h6>
                                    </div>
                                    <div className='col-xs-6 col-md-8 col-lg-8'>
                                        <input type='password' name='' id=''
                                            value={Passw}

                                            min="0" className='form-control' placeholder='Introduzca...' />
                                    </div>
                                </div>


                            </div>
                            <div className='row  justify-content-center'>
                                <button className='btn btn-dark ' onClick={() => handleAdd()}>Registrar</button>

                            </div>

                        </div>
                    </div>
                    </div>
                </div>
            </div>
        </>
    )
}

export default Registro;