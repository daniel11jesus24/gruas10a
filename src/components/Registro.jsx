import { useState } from "react";

const Registro = () => {
    const [Nombre, setNombre] = useState("");
    const [App, setApp] = useState("");
    const [Apm, setApm] = useState("");
    const [Telefono, setTelefono] = useState("");
    const [Correo, setCorreo] = useState("");
    const [Passwort, setPasswort] = useState("");
    const [Tipo, setTipo] = useState("Operador");

    // Obtener el objeto del usuario desde la sessionStorage
    const storedUser = sessionStorage.getItem("user");
    const user2 = storedUser ? JSON.parse(storedUser) : null;

    //  usar la información del usuario en esta página
    const handleAdd = () => {
        // ... Tu código para obtener los datos del formulario ...

        var formdata = new FormData();
        formdata.append('Nombre', Nombre);
        formdata.append('App', App);
        formdata.append('Apm', Apm);
        formdata.append('Telefono', Telefono);
        formdata.append('Correo', Correo);
        formdata.append('Passwort', Passwort);
        formdata.append('Tipo', Tipo);


        var requestOptions = {
            method: 'POST',
            headers: {
                'Accept': 'application/json',
            },
            body: formdata,
            redirect: 'follow',
        };

        fetch('http://localhost/dwi-10a/index.php/Api/Usuarios/', requestOptions)
            .then((response) => response.text())
            .then((result) => {
                console.log(result);
                if (result === 'Registro exitoso') {
                    setMessage('Registro exitoso'); // Mostrar mensaje de éxito
                } else {
                    setMessage('Error'); // Mostrar mensaje de error
                }
            })
            .catch((error) => {
                console.log('error', error);
                setMessage('Error'); // Mostrar mensaje de error
            });
    };

    return (
        <>
            <div className="container mt-5">
                <div className="row">
                    <div className="col-md-6 offset-md-3">
                        <div className="card">
                            <div className="card-header text-white text-center" style={{ backgroundColor: "#C2BA98" }}>
                                <h4>Registrar Usuario</h4>
                            </div>
                            <div className="card-body">
                                <form>
                                    <div className="form-group">
                                        <label htmlFor="Nombre">Nombre/s</label>
                                        <input
                                            value={Nombre}
                                            onChange={event => setNombre(event.target.value)}
                                            type="text"
                                            className="form-control"
                                            id="Nombre" />
                                    </div>
                                    <div className="form-group">
                                        <label htmlFor="App">Apellido Paterno</label>
                                        <input
                                            value={App}
                                            onChange={event => setApp(event.target.value)}
                                            type="text"
                                            className="form-control"
                                            id="App" />
                                    </div>
                                    <div className="form-group">
                                        <label htmlFor="Apm">Apellido Materno</label>
                                        <input
                                            value={Apm}
                                            onChange={event => setApm(event.target.value)}
                                            type="text"
                                            className="form-control"
                                            id="Apm" />
                                    </div>
                                    <div className="form-group">
                                        <label htmlFor="Telefono">Teléfono</label>
                                        <input
                                            value={Telefono}
                                            onChange={event => {
                                                if (/^\d{0,10}$/.test(event.target.value)) {
                                                    setTelefono(event.target.value);
                                                }
                                            }}
                                            type="number"
                                            className="form-control"
                                            id="Telefono"
                                            maxLength={10}
                                        />
                                    </div>

                                    <div className="form-group">
                                        <label htmlFor="Correo">Correo Electrónico</label>
                                        <input
                                            value={Correo}
                                            onChange={event => setCorreo(event.target.value)}
                                            type="email"
                                            className="form-control"
                                            id="Correo" />
                                    </div>
                                    <div className="form-group">
                                        <label htmlFor="Passwort">Contraseña</label>
                                        <input
                                            value={Passwort}
                                            onChange={event => setPasswort(event.target.value)}
                                            type="password"
                                            className="form-control"
                                            id="Passwort" />
                                    </div>
                                    <div className="form-group">
                                        <label htmlFor="Tipo">Tipo</label>
                                        <select
                                            value={Tipo}
                                            onChange={event => setTipo(event.target.value)}
                                            className="form-control"
                                            id="Tipo"
                                        >
                                            <option value="Operador">Operador</option>
                                            <option value="Reportador">Reportador</option>
                                            <option value="Corralonero">Corralonero</option>
                                        </select>
                                    </div><br />
                                    <div className="text-center">
                                        <button
                                            onClick={() => handleAdd()}
                                            type="submit"
                                            className="btn"
                                            style={{
                                                backgroundColor: '#C2BA98',
                                                color: 'black',
                                                margin: '0',
                                                boxShadow: '0 0 5px rgba(0,0,0,0.2)',
                                            }}
                                        > Guardar
                                        </button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div><br />
            <footer>
                <div className="text-white text-center py-3" id="footer">
                    llama al: 00-0000-0000
                </div>
            </footer>
        </>
    )
}
export default Registro;