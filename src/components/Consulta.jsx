import React, { useState } from 'react';

function Consulta() {
  const [folio, setFolio] = useState('');
  const [searchResults, setSearchResults] = useState([]);
  const apiUrl = 'http://localhost/dwi-10a/index.php/Api/formatsoli/';

  const handleSearch = () => {
    if (folio.trim() !== '') {
      // Realizar la solicitud GET a la API solo si el folio no está en blanco
      fetch(apiUrl + `?folio=${folio}`)
        .then((response) => response.json())
        .then((data) => {
          setSearchResults(data);

          // Programar una función para limpiar los resultados después de 20 segundos
          setTimeout(() => {
            setSearchResults([]);
          }, 20000);
        })
        .catch((error) => console.error('Error:', error));
    }
  };

  return (
    <div className="container-fluid d-flex flex-column justify-content-center align-items-center vh-100">
      <div className="container mt-">
        <h2 className="text-center">Consultar</h2>
        <form>
          <div className="form-group">
            <label htmlFor="folioConsultar">Folio:</label>
            <input
              type="text"
              className="form-control"
              id="folioConsultar"
              value={folio}
              onChange={(e) => setFolio(e.target.value)}
            />
          </div>
          <br />
          <div className="text-center">
            <button
               style={{
                backgroundColor: '#C2BA98',
                color: 'black',
                margin: '0',
                boxShadow: '0 0 5px rgba(0,0,0,0.2)',
            }}
              type="button"
              className="btn"
              onClick={handleSearch}
            >
              Consultar
            </button>
          </div>
        </form>
        {searchResults.length > 0 ? (
          <div className="table-responsive">
            <table className="table table-bordered table-striped table-sm my-4">
              <thead>
                <tr>
                  <th>IDFormatsoli</th>
                  <th>IDSiniestro_fk</th>
                  <th>IDCorralon_fk</th>
                  <th>IDVehiculo_fk</th>
                  <th>folio</th>
                </tr>
              </thead>
              <tbody>
                {searchResults
                  .filter((result) => result.folio === folio)
                  .map((result) => (
                    <tr key={result.IDFormatsoli}>
                      <td>{result.IDFormatsoli}</td>
                      <td>{result.IDSiniestro_fk}</td>
                      <td>{result.IDCorralon_fk}</td>
                      <td>{result.IDVehiculo_fk}</td>
                      <td>{result.folio}</td>
                    </tr>
                  ))
                }
              </tbody>
            </table>
          </div>
        ) : (
          <p className="text-center">
            Realiza tu búsqueda y toma 20 segundos para revisarla.
          </p>
        )}
      </div>
    </div>
  );
}

export default Consulta;
