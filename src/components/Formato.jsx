
const Formato = () => {
     
    return (
        <>
        <div className="container mt-5">
        <h2 className="text-center">Formato de Solicitud</h2>
        <h4>Punto de Recolección</h4>
        <form>
            <div className="form-group">
                <label htmlFor="folio">Folio:</label>
                <input type="text" className="form-control" id="folio" />
            </div>
            <div className="form-group">
                <label htmlFor="lugarRecoleccion">Lugar de Recolección:</label>
                <input type="text" className="form-control" id="lugarRecoleccion" />
            </div>
            <div className="form-group">
                <label htmlFor="codigoPostal">Código Postal:</label>
                <input type="text" className="form-control" id="codigoPostal" />
            </div>
            <div className="form-group">
                <label htmlFor="localidadColonia">Localidad o Colonia:</label>
                <input type="text" className="form-control" id="localidadColonia" />
            </div>
            <div className="form-group">
                <label htmlFor="municipio">Municipio:</label>
                <input type="text" className="form-control" id="municipio" />
            </div>
            <h4>Asignacion de Almacén</h4>
            <div className="form-group">
                <label htmlFor="region">Región:</label>
                <input type="text" className="form-control" id="region" />
            </div>
            <div className="form-group">
                <label htmlFor="almacen">Almacén:</label>
                <input type="text" className="form-control" id="almacen" />
            </div>
            <div className="form-group">
                <label htmlFor="ubicacionAlmacen">Ubicación de Almacén:</label>
                <input type="text" className="form-control" id="ubicacionAlmacen" />
            </div>
            <div className="form-group">
                <label htmlFor="contacto">Contacto:</label>
                <input type="text" className="form-control" id="contacto" />
            </div>
            <div className="form-group">
                <label htmlFor="telefono">Teléfono:</label>
                <input type="tel" className="form-control" id="telefono" />
            </div>
            <div className="text-center">
                <button
                    type="submit"
                    className="btn "
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
    </div><br/>
    <footer>
            <div className="text-white text-center py-3" id="footer">
                llama al: 00-0000-0000
            </div>
        </footer>
        </>
    )
}

export default Formato;