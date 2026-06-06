export function merge(params) {
  let params1 = params.toArray()
  return Object.assign({}, ...params1)
}