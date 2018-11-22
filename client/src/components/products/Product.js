import React, { Component } from 'react';
import { getProducts } from '../../reducers/product'
import { connect } from 'react-redux'
import { List, Icon, Button, Label, Segment, Header} from 'semantic-ui-react';

class Product extends Component {

  componentDidMount() {
    const { dispatch } = this.props
    dispatch(getProducts())
  }


  render() {

    const { products } = this.props

    return (
      <div>
        <Header as='h1' textAlign='center'>Product Component</Header>
        <Segment inverted>
          <List divided inverted relaxed verticalAlign='middle'>
          { products.map( single => 
            <List.Item key={single.id}>
              <List.Content floated='right'>
                  {single.title}
                </List.Content>
              <List.Content>
                <Label style={{paddingLeft: '15px'}} color="blue" image>
                  {single.price}
                </Label>
                <div style={{paddingLeft: '20px', display: 'inline-flex'}}>
                  <Header as="h5" >Price: ${single.price}</Header>
                </div>
                <div style={{paddingLeft: '20px', display: 'inline-flex'}}>
                  {/* <Header as="h5" color="orange">${single.price_per_person}/person</Header> */}
                </div>
              </List.Content>
            </List.Item>
              )}
          </List>
        </Segment>
      </div>
      
    );
  }
}

const mapStateToProps = state => {
  return { products: state.product };
};

export default connect(mapStateToProps)(Product);
