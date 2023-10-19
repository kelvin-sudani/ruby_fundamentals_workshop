// show a demo on how to use while loop in TypeScript
let i: number = 0
while (i < 5) {
  console.log(`Value of i: ${i}`)
  i++
}

// Using a for loop
for (let j: number = 0; j < 5; j++) {
  console.log(`Value of j: ${j}`)
}

// Using a for loop with an array
const fruits: string[] = ['apple', 'banana', 'orange']
for (const fruit of fruits) {
  console.log(`I love ${fruit}s!`)
}

// show how to use `for...of` loop in TypeScript
for (let k: number = 0; k < 10; k++) {
  console.log(`Value of k: ${k}`)
}

// show how to use `for...of` loop in TypeScript
const moreFruits: string[] = ['apple', 'banana', 'orange']
for (const fruit of moreFruits) {
  console.log(`I love ${fruit}s!`)
}

// show how to use `for...of` loop with index in TypeScript
const evenMoreFruits: string[] = ['apple', 'banana', 'orange']
for (const [index, fruit] of evenMoreFruits.entries()) {
  console.log(`I love ${fruit}s at index ${index}`)
}
