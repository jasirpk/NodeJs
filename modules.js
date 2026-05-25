function sayHello() {
    console.log("hello Good morning");
}

// module.exports = sayHello;


// anonymus function

// const hello = function(){
//     console.log("hello Good afternoon");
// }

// module.exports = hello;


const hello = {
    name: "john",
    age: 30,
    city: "New York",
    greet: function () {
        console.log('I am ' + this.name + ' from ' + this.city + ' and I am ' + this.age + ' years old');
    }
}

module.exports = hello;