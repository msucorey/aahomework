const selectCurrency = (currency, xrates) => ({
  type: "SWITCH_CURRENCY",
  baseCurrency: currency,
  rates: xrates
});

export default selectCurrency;
