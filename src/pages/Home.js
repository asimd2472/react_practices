import React, { useState, useEffect, useRef } from 'react';
import axios from "axios";
import './home.css';
import { LazyLoadImage } from 'react-lazy-load-image-component';
import 'react-lazy-load-image-component/src/effects/blur.css';
import { Link} from "react-router-dom";

const baseURL = "http://127.0.0.1:8000/api/";
const imageURL = 'https://images.unsplash.com/';    

export default function Home() {

    const [items, setItems] = useState([]);
    const [isLoading, setIsLoading] = useState(false);
    const [error, setError] = useState(null);
    const [page, setPage] = useState(1);
    const [perPage, setPerPage] = useState(12);
    const [totalRecord, settotalRecord] = useState(0);
    const [totaldisplayRecord, settotaldisplayRecord] = useState(0);

    const fetchData = async () => {
        setIsLoading(true);
        setError(null);
      
        try {
          const response = await fetch(`http://127.0.0.1:8000/api/getallblog?page=${page}&perPage=${perPage}`);
            const dataOne = await response.json();
            // console.log(dataOne.blog.data);
            const data = dataOne.blog.data;
            setItems(prevItems => [...prevItems, ...data]);
            setPage(page + 1);
            settotalRecord(dataOne.blog.total);
            settotaldisplayRecord(dataOne.blog.to);

        } catch (error) {
        setError(error);
        } finally {
        setIsLoading(false);
        }
    };

    useEffect(() => {
        fetchData();
        
    }, []);

    const handleScroll = () => {
        if (window.innerHeight + document.documentElement.scrollTop !== document.documentElement.offsetHeight || isLoading) {
          return;
        }
        if(page!=1){
            if(totalRecord>totaldisplayRecord){
                fetchData();
            }
        }else{
            fetchData();
        }
        
    };
      
    useEffect(() => {
    window.addEventListener('scroll', handleScroll);
    return () => window.removeEventListener('scroll', handleScroll);
    }, [isLoading]);

  return (
    <div>
        <section className="container">
            <div className='row'>
                {items && items.map((post, keys) => (
                    <div className="col-lg-4 card-container" key={keys}>
                        <div className="card-image">
                            
                        {/* <img src={`${imageURL}${post.blogimage}`} alt={post.title} /> */}
                        <Link to={"/blog-details/"+post.slug}>
                        <LazyLoadImage
                        src={`${imageURL}${post.blogimage}`}
                        alt={post.title}
                        effect="blur"
                        />
                        </Link>
                        </div>
                        <div className="card-body">
                        <span className="card-badge card-badge-blue">{`${post.category_id} ${post.id}`}</span>
                        <h1>
                            {post.title}
                        </h1>
                        <p className="card-subtitle">
                            {post.blogdesc}
                        </p>
                        <div className="card-author">
                            <img src={`${imageURL}${post.blogimage}`} alt={post.title} loading="lazy"/>
                            <div className="author-info">
                            <p className="author-name">John Doe</p>
                            <p className="post-timestamp">2h ago</p>
                            </div>
                        </div>
                        </div>
                    </div>
                ))}
            </div>
            {isLoading && <p>Loading...</p>}
        </section>
    </div>
  )
}
