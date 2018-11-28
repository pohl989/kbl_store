import axios from 'axios'
import { setFlash } from './flash'

const GET_PRODUCTS = "GET_PRODUCTS"
const GET_PRODUCT = "GET_PRODUCT"


export const getProducts = () => {
  return(dispatch) => {
    axios.get(`/api/products`)
    .then( res => {
      dispatch({ type: GET_PRODUCTS, products: res.data })
    })
    .catch(error => {
      const message = error.response.data.errors;
      dispatch(setFlash(message, 'red'))
    })
  }
}

export const getProduct = (id) => {
  return(dispatch) => {
    axios.get(`/api/products/${id}`)
    .then( res => {
      dispatch({ type: GET_PRODUCT, product: res.data })
    })
    .catch(error => {
      const message = error.response.data.errors;
      dispatch(setFlash(message, 'red'))
    })
  }
}

export default (state = [], action) => {
  switch(action.type) {
    case GET_PRODUCTS:
      return action.products
    case GET_PRODUCT:
      return action.product
    default: return state
  }
}
