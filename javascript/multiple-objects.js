function Hotel(name , rooms , booked) {
    this.name = name;
    this.rooms = rooms;
    this.booked = booked;
    this.checkAvalability = function () {
    return this.rooms - this.booked;
};
};

var quayHotel = new Hotel(name: 'Quay' , rooms:40 , booked:25);
var parkHotel = new Hotel(name: ' Park', rooms; 120,booked:77);

var details1 = quayHotel.name + ' rooms: ';
    details1 += quayHotel.checkAvalability();
var elHotel1 = document.getElementById('hotel1');
elHotel1.textContent = details1;


var detail2 = parkHotel.name + 'rooms: ';
    detail2 += parkHotel.checkAvalability();

var elHotel2 = document.getElementById('hotel2');
elHotel2.textContent = detail2;