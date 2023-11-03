
const Formato = () => {
     
    return (
        <>
        
            <div className="container">
                <div className="row justify-content-center"> 
                    <main className="col-md-9 ms-sm-auto col-lg-10 px-md-4 content">
                        <div className="container mt-3">
                            <div className="row">
                                <div className="col-lg-6 offset-lg-3 col-md-8 offset-md-2 col-sm-12">
                                    <div className="card">
                                        <div className="card-body">
                                            <h3 className="card-title">Formato de Solicitud</h3>
                                            <form>
                                                <div className="form-row">
                                                    <div className="form-group col-md-6">
                                                        <label htmlFor="folio" style={{ fontWeight: 'bold' }}>Punto de Recolección</label>
                                                    </div>
                                                    <div className="form-group col-md-6">
                                                        <label htmlFor="folio">Folio:</label>
                                                        <input type="text" className="form-control"  />
                                                    </div>
                                                    <div className="form-group col-md-6">
                                                        <label htmlFor="folio">Lugar de Recolección:</label>
                                                        <input type="text" className="form-control"  />
                                                    </div>
                                                    <div className="form-group col-md-6">
                                                        <label htmlFor="folio">Código Postal:</label>
                                                        <input type="text" className="form-control"  />
                                                    </div>
                                                    <div className="form-group col-md-6">
                                                        <label htmlFor="folio">Localidad o Colonia:</label>
                                                        <input type="text" className="form-control"  />
                                                    </div>
                                                    <div className="form-group col-md-6">
                                                        <label htmlFor="folio">Municipio:</label>
                                                        <input type="text" className="form-control"  />
                                                    </div>
                                                    <div className="form-group col-md-6">
                                                        <label htmlFor="folio" style={{ fontWeight: 'bold' }}>Asignacion de Almacén</label>
                                                    </div>
                                                    <div className="form-group col-md-6">
                                                        <label htmlFor="folio">Región:</label>
                                                        <input type="text" className="form-control"  />
                                                    </div>
                                                    <div className="form-group col-md-6">
                                                        <label htmlFor="folio">Almacén:</label>
                                                        <input type="text" className="form-control"  />
                                                    </div>
                                                    <div className="form-group col-md-6">
                                                        <label htmlFor="folio">Ubicación de Almacén:</label>
                                                        <input type="text" className="form-control"  />
                                                    </div>
                                                    <div className="form-group col-md-6">
                                                        <label htmlFor="folio">Contacto:</label>
                                                        <input type="text" className="form-control"  />
                                                    </div>
                                                    <div className="form-group col-md-6">
                                                        <label htmlFor="folio">Teléfono:</label>
                                                        <input type="text" className="form-control"  />
                                                    </div>
                                                    <a href="Maps.html" className="btn btn-primary" id="btn-submit" style={{ margin: '0 auto' }}>
                                                        Solicitar
                                                    </a>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div className="container mt-3">
                            <div className="row">
                                <div className="col-lg-6 offset-lg-3 col-md-8 offset-md-2 col-sm-12">
                                    <div className="card">
                                        <div className="card-body">
                                            <h3 className="card-title">Consultar Datos</h3>
                                            <form>
                                                <div className="form-row">
                                                    <div className="form-group col-md-6">
                                                        <label htmlFor="folio">Lugar de Recolección:</label>
                                                        <input type="text" className="form-control"  />
                                                    </div>
                                                    <div className="form-group col-md-6">
                                                        <label htmlFor="folio">Código Postal:</label>
                                                        <input type="text" className="form-control"  />
                                                    </div>
                                                    <a href="Maps.html" className="btn btn-primary" id="btn-submit" style={{ margin: '0 auto' }}>
                                                        Consultar
                                                    </a>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </main>
                </div>
            </div>
        </>
    )
}

export default Formato;