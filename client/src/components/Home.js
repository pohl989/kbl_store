import React, { Component } from 'react';
import { Header } from 'semantic-ui-react';
import Product from './products/Product';


class Home extends Component {
  render() {
    return (
      <div>
        <Header as='h1' textAlign='center'>Home Component</Header>
        <Product/>
      </div>
    )
  }
}

export default Home;
