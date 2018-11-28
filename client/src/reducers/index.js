import { combineReducers } from 'redux';
import user from './user';
import flash from './flash';
import product from  './product'

const rootReducer = combineReducers({
  user,
  flash,
  product
});

export default rootReducer;
