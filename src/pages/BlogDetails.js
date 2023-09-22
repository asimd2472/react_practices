import React, { useState, useEffect, useRef } from 'react';
import './blogdetails.css';
import { useParams } from 'react-router-dom';
import { LazyLoadImage } from 'react-lazy-load-image-component';
import 'react-lazy-load-image-component/src/effects/blur.css';

const baseURL = "http://127.0.0.1:8000/api/";
const imageURL = 'https://images.unsplash.com/';   

export default function BlogDetails() {

    const [items, setItems] = useState([]);
    const slug = useParams();
    // console.log(slug.slug);

    useEffect(() => {
        fetchData();
        
    }, []);

    const fetchData = async () => {
      
        try {
          const response = await fetch(`http://127.0.0.1:8000/api/blogdetails?slug=${slug.slug}`);
            const dataOne = await response.json();
            // console.log(dataOne);
            const data = dataOne;
            setItems(data);
            
        } catch (error) {
        
        } finally {
        
        }
    };


  return (
    <div>
      <div className="container">
  
  <div className="cs-blog-detail mt-5">
        <div className="cs-main-post">
            <figure>
                <LazyLoadImage
                src={`${imageURL}${items.blogimage}`}
                alt={items.title}
                effect="blur"
                />
            </figure>
        </div>
        <div className="cs-post-title">
            <div className="cs-author">
            {/* {`${imageURL}${items.blogimage}`} */}
                <figure>
                    <a href="#">
                        <LazyLoadImage
                        src={`${imageURL}${items.blogimage}`}
                        alt={items.title}
                        effect="blur"
                        width="32" 
                        height="32"
                        />
                    </a>
                </figure>
                <div className="cs-text">
                    <a href="#">Julia Andrason</a>
                </div>
            </div>
            <div className="post-option">
                <span className="post-date"><a href="#"><i className="cs-color icon-calendar6"></i>Nov 23, 2015</a></span>
                <span className="post-comment"><a href="#"><i className="cs-color icon-chat6"></i>4 Comments</a></span>
            </div>
        </div>
        <div className="cs-post-option-panel">
            <div className="rich-editor-text">
                <p>{items.blogdesc}</p>
            </div>
        </div>
        <div className="cs-tags">
            <div className="tags">
                <span>Tags</span>
                <ul>
                    <li><a rel="tag" href="#">College</a></li>
                    <li><a rel="tag" href="#">Job</a></li>
                    <li><a rel="tag" href="#">Search</a></li>
                    <li><a rel="tag" href="#">Teacher</a></li>
                </ul>
            </div>
        </div>
     
  </div>
  </div>
    </div>
  )
}
