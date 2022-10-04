export const anyToArray = (item) =>
  item ? (Array.isArray(item) ? item : [item]) : [];
