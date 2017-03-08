import React from 'react';

const BestRate = ({rates}) => {
  let maxRate = 0;
  Object.keys(rates).forEach(key => {
    if (rates[key] > maxRate) {
      maxRate = rates[key];
    }
  });

  return (
    <div>
      Max rate is {maxRate}
    </div>
  );
};

export default BestRate;
