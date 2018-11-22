import React, { Component } from 'react';
import { Header } from 'semantic-ui-react';
import { getProducts } from '../../reducers/product'
import { connect } from 'react-redux'

class Product extends Component {

  componentDidMount() {
    const { dispatch } = this.props
    dispatch(getProducts())
  }


  render() {
    return (
      <div>
        <Header as='h1' textAlign='center'>Product Component</Header>

      </div>
      
    );
  }
}

const mapStateToProps = state => {
  return { products: state.products };
};

export default connect(mapStateToProps)(Product);
