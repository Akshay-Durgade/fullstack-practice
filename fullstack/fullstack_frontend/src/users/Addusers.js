import axios from "axios";
import React, { useState } from "react";
import { Link, useNavigate } from "react-router-dom";

export default function AddUsers() {
  let navigate = useNavigate()
  const [user, setUser] = useState({
    name: "",
    username: "",
    email: "",
  });

  const { name, username, email } = user;

  const onInputChange = (e) => {
    setUser({ ...user, [e.target.name]: e.target.value });
  };

  const onSubmit = async(e) => {
    e.preventDefault();
    await axios.post('http://localhost:8080/user',user)
    navigate("/")
  };

  return (
    <div className="container">
      <div className="row">
        <div className="col-md-6 offset-md-3 border rounded p-4 mt-2 shadow">
          <h2 className="text-center m-4">Register User</h2>
          <form onSubmit={(e) => onSubmit(e)}>
            <div className="mb-3">
              <label htmlFor="Name" class="form-label">
                Name
              </label>
              <input
                type="text"
                className="form-control"
                name="name"
                placeholder="Enter Your Name"
                value={name}
                onChange={(e) => onInputChange(e)}
              />
            </div>
            <div class="mb-3">
              <label htmlFor="UserName" className="form-label">
                User Name
              </label>
              <input
                class="form-control"
                name="username"
                value={username}
                rows="3"
                placeholder="Enter Your User Name"
                onChange={(e) => onInputChange(e)}
              ></input>
            </div>
            <div class="mb-3">
              <label htmlFor="Email" className="form-label">
                Email
              </label>
              <input
                class="form-control"
                name="email"
                rows="3"
                placeholder="Enter Your Email Id"
                value={email}
                onChange={(e) => onInputChange(e)}
              ></input>
            </div>
            <button type="submit" className="btn btn-outline-primary">
              Submit
            </button>
            <Link type="submit" className="btn btn-outline-danger mx-2" to={'/'}>
              Cancel
            </Link>
          </form>
        </div>
      </div>
    </div>
  );
}
