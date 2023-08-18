import React from 'react';
import { BrowserRouter, Routes, Route, Navigate} from "react-router-dom";
import Navbar from './includes/Navbar';
import Footer from './includes/Footer';
import Home from './pages/Home';
import BlogDetails from './pages/BlogDetails';
import PageNotFound from './pages/PageNotFound';

export default function RoutesWeb() {
  return (
    <div>
        <Navbar/>
        
        {/* <BrowserRouter> */}
          <Routes>
            <Route path="/" element={<Home />}/>
            <Route path="/blog-details/:slug" element={<BlogDetails/>} /> 
            <Route path="/404" element={<PageNotFound/>} />
            <Route path="*" element={<Navigate to="/404" />} />
          </Routes>
          {/* </BrowserRouter> */}

          <Footer/>
        
    </div>
  )
}
