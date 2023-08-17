import React from 'react';
import { BrowserRouter as Router,Routes, Route, Link } from 'react-router-dom';
import Navbar from './includes/Navbar';
import Footer from './includes/Footer';
import Home from './pages/Home';

export default function RoutesWeb() {
  return (
    <div>
        <Navbar/>
          <Home/>
        <Footer/>
    </div>
  )
}
