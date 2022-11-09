// import the data from data.js

const tableData = data;

// Reference the html table using d3

var tbody = d3.select("tbody");

// Create function to build table

function buildTable(data) {

    // clear out existing data
    
    tbody.html("");

// Loop through each object in the data

// append a row and cells for each value in row

data.forEach((dataRow) => {
    
    // append row to table body

    let row = tbody.append("tr");


    // Loop through each field in dataRow and add
    // each value as a table cell (td)

    Object.values(dataRow).forEach((val) => {
        
        let cell = row.append("td");
        
        cell.text(val);

        }
    );

});
}

function handleClick() {

    // Grab datetime value from the filter

    let date = d3.select("datetime").property("value");

    let filteredData = tableData;

}