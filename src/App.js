import React, { useState, useEffect } from 'react';
import './App.css';
import "../node_modules/bootstrap/dist/css/bootstrap.min.css";

import RoutesWeb from './RoutesWeb';
import Loader from './pages/Loader';


function App() {

  const [isLoading, setIsLoading] = useState(true);

  useEffect(() => {
    setTimeout(() => {
      setIsLoading(false);
    }, 1000);
  }, []);


  return (
    <div className="App">
        <RoutesWeb/>
        {isLoading ? <Loader /> : ''}
    </div>
  );
}

export default App;
