titleize = function(names, callback){
    let array = names.map(function(ele){
        "Mx. " + ele + " Jingleheimer Schmidt";
    });
    console.log(array)
    callback(array);

};

printCallback = function(array){
    array.forEach(function(el) {
        console.log(el);
    })
}

titleize(["Mary", "Brian", "Leo"], printCallback);

function Elephant(name, height, tricks){
    this.name = name;
    this.height = height;
    this.tricks = tricks;
}

Elephant.prototype.trumpet = function(){
    console.log(this.name + " the elephant goes 'phrRRRRRRRRRRR!!!!!!!'");
}

Elephant.prototype.grow = function(){
    this.height += 12
}

Elephant.prototype.addTrick= function(trick){
    this.tricks.push(trick)
}

Elephant.prototype.play = function (){

    this.tricks[getRandomInt(tricks.length)]
}