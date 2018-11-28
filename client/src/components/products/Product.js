import React, { Component } from 'react';
import { getProducts } from '../../reducers/product'
import { connect } from 'react-redux'
import { Card, Icon, Image, Segment, Header} from 'semantic-ui-react';

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
        <Segment >
          <Card.Group centered doubling>
            { products.map( single => 
              <Card key={single.id}>
                <Image src={single.image} />
                <Card.Content>
                  <Card.Header>{single.title}</Card.Header>
                </Card.Content>
                <Card.Content extra>
                  <a>
                    <Icon name='user' />
                    ${single.price}
                  </a>
                </Card.Content>
              </Card>
            )}
          </Card.Group>
        </Segment>
      </div>
      
    );
  }
}

const mapStateToProps = state => {
  return { products: state.product };
};

export default connect(mapStateToProps)(Product);
