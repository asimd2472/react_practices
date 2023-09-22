import React from 'react';
import { BrowserRouter, Routes, Route, Navigate, useLocation, useParams} from "react-router-dom";
import Navbar from './includes/Navbar';
import Footer from './includes/Footer';
import Home from './pages/Home';
import BlogDetails from './pages/BlogDetails';
import PageNotFound from './pages/PageNotFound';
import BlogList from './admin/BlogList';
import AdminNav from './includes/AdminNav';
import AddBlog from './admin/AddBlog';

export default function RoutesWeb() {

  const routeParams = useParams();
  const location = useLocation();
  const isAdminPath = location.pathname.includes('/admin');


  return (
    <div>
        

        {isAdminPath ? <AdminNav/> : <Navbar/>}
        
        {/* <BrowserRouter> */}
          <Routes>
            <Route path="/" element={<Home />}/>
            <Route path="/blog-details/:slug" element={<BlogDetails/>} /> 
            <Route path="/404" element={<PageNotFound/>} />
            <Route path="*" element={<Navigate to="/404" />} />


            <Route path="/admin/blog-list" element={<BlogList/>} />
            <Route path="/admin/add-blog" element={<AddBlog/>} />
            
          </Routes>
          {/* </BrowserRouter> */}

          {isAdminPath ? '': <Footer/>}
        
    </div>
  )
}
