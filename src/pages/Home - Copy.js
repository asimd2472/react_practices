import React, { useState, useEffect } from "react";
import axios from "axios";
import './home.css';
import { LazyLoadImage } from 'react-lazy-load-image-component';
import 'react-lazy-load-image-component/src/effects/blur.css';

const baseURL = "http://127.0.0.1:8000/api/";
const imageURL = 'https://images.unsplash.com/';    

export default function Home() {

    const [posts, setPosts] = useState([]);

    useEffect(() => {
        getPosts();
    }, []);

    const getPosts = async () => {
        axios.get(baseURL+'getallblog')
          .then((response) => {
            if (response.status === 200) {
                // console.log(response.data);
              setPosts(response.data.blog);
            }
          })
          .catch((error) => {
              console.log(error);
          });
      }

  return (
    <div>
        <section className="container">
            <div className='row'>
                {posts && posts.map((post, keys) => (
                    <div className="col-lg-4 card-container" key={keys}>
                        <div className="card-image">
                            
                        {/* <img src={`${imageURL}${post.blogimage}`} alt={post.title} /> */}
                        <LazyLoadImage
                        src={`${imageURL}${post.blogimage}`}
                        alt={post.title}
                        effect="blur"
                        />
                        </div>
                        <div className="card-body">
                        <span className="card-badge card-badge-blue">{post.category_id}</span>
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
        </section>
    </div>
  )
}
