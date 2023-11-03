import Bienvenida from './components/AddBienvenida';
import Login from './components/AddLogin';
import Registro from './components/AddRegistro';
import Formato from './components/AddFormato';
import './index.css';
import { BrowserRouter, Route, Routes } from 'react-router-dom';


const App = () => {
  return (
    <BrowserRouter>
      <Routes>
        <Route exact path='/' element={<Bienvenida />} />
        <Route path='/bie' element={<Bienvenida />} />
        <Route path='/log' element={<Login />} />
        <Route path='/reg' element={<Registro />} />
        <Route path='/for' element={<Formato />} />
      </Routes>
    </BrowserRouter>
  )
}

export default App;