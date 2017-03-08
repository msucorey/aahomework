import React from 'react';
import { Provider } from 'react-redux';

import GiphysSearchContainer from './giphys_search_container';

const Root = ({ store }) => {
  return (
    <Provider store={store}>
      <h3>root</h3>
    </Provider>
  );
};

export default Root;


// <GiphysSearchContainer />
