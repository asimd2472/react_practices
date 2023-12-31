import React from 'react';
import { Link} from "react-router-dom";

export default function AdminNav() {
    return (
        <div>
            <nav className="navbar navbar-expand-lg navbar-light bg-light">
                <div className="container-fluid">
                    <Link className="navbar-brand" to={"/"}>Asd007</Link>
                    <button className="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span className="navbar-toggler-icon"></span>
                    </button>
                    <div className="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul className="navbar-nav me-auto mb-2 mb-lg-0">
                            <li className="nav-item">
                            <Link className="nav-link active" to={"/"}>Home</Link>
                            </li>
                            <li className="nav-item">
                            <Link className="nav-link" to={"/admin/blog-list"}>Blog List</Link>
                            
                            </li>
                            <li>
                                <Link className="nav-link" to={"/admin/add-blog"}>Add New Blog</Link>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
        </div>
      )
}
