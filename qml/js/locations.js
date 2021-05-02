/*
 * This file is part of harbour-meteoswiss.
 * Copyright (C) 2018-2019  Mirian Margiani
 *
 * harbour-meteoswiss is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * harbour-meteoswiss is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with harbour-meteoswiss.  If not, see <http://www.gnu.org/licenses/>.
 *
 */

//.import "cities.js" as Cities

function httpRequest(url, callback) {
    var doc = new XMLHttpRequest();
    doc.onreadystatechange = function() {
        if (doc.readyState === XMLHttpRequest.DONE) {
            callback(doc);
        }
    }
    doc.open("GET", url);
    doc.send();
}

function getDetails(token) {
    return {
        name: name,
        latitude: lat,
        longitude: lon,
    }
}

function search(string) {
    var ret = [];
    for (var i = 0; i < Locations.LocationsList.length; i++) {
        if (string != "" && Locations.LocationsList[i].indexOf(string) >= 0) {
            ret.push({"name": Locations.LocationsList[i]});
        }
        if (ret.length == 50) break;
    }
    return ret;
}
