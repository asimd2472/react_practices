import React from 'react';
import './pagenotfound.css';
import { Link} from "react-router-dom";

export default function PageNotFound() {
  return (
    <div>
        <h1>404 Page not found</h1>
        <section class="error-container">
        <span>4</span>
        <span><span class="screen-reader-text">0</span></span>
        <span>4</span>
        </section>
        <div class="link-container">
        <Link to={"/"} class="more-link">Visit the original article</Link>
        </div>
    </div>
  )
}
