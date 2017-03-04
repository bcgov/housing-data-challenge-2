// colours
var colours = [
  {
    "color": "blue",
    "rgba": {"opacity-0.9":"rgba(54,162,235,0.9)", "opacity-1":"rgba(54,162,235,1)", "opacity-0.2":"rgba(54,162,235,0.2)"}
  },
  {
    "color": "orange",
    "rgba": {"opacity-0.9":"rgba(255,159,64,0.9)", "opacity-1":"rgba(255,159,64,1)", "opacity-0.2":"rgba(255,159,64,0.2)"}
  },
  {
    "color": "yellow",
    "rgba": {"opacity-0.9":"rgba(244,232,66,0.9)", "opacity-1":"rgba(244,232,66,1)", "opacity-0.2":"rgba(244,232,66,0.2)"} 
  },
  {
    "color": "green",
    "rgba": {"opacity-0.9":"rgba(80,244,66,0.9)", "opacity-1":"rgba(80,244,66,1)", "opacity-0.2":"rgba(80,244,66,0.2)"}
  },
  {
    "color": "sky-blue",
    "rgba": {"opacity-0.9":"rgba(66,244,206,0.9)", "opacity-1":"rgba(66,244,206,1)", "opacity-0.2":"rgba(66,244,206,0.2)"}
  },
  {
    "color": "bluish-violet",
    "rgba": {"opacity-0.9":"rgba(153,102,255,0.9)", "opacity-1":"rgba(153,102,255,1)", "opacity-0.2":"rgba(153,102,255,0.2)"}
  },
  {
    "color": "purple",
    "rgba": {"opacity-0.9":"rgba(191,66,244,0.9)", "opacity-1":"rgba(191,66,244,1)", "opacity-0.2":"rgba(191,66,244,0.2)"}
  },
  {
    "color": "light-blue",
    "rgba": {"opacity-0.9":"rgba(75,192,192,0.9)", "opacity-1":"rgba(75,192,192,1)", "opacity-0.2":"rgba(75,192,192,0.2)"}
  },
  {
    "color": "grey",
    "rgba": {"opacity-0.9":"rgba(127,127,130,0.9)", "opacity-1":"rgba(127,127,130,1)", "opacity-0.2":"rgba(127,127,130,0.2)"} 
  },
  {
    "color": "pink",
    "rgba": {"opacity-0.9":"rgba(239,4,173,0.9)", "opacity-1":"rgba(239,4,173,1)", "opacity-0.2":"rgba(239,4,173,0.2)"} 
  },
  {
    "color": "red",
    "rgba": {"opacity-0.9":"rgba(255,99,132,0.9)", "opacity-1":"rgba(255,99,132,1)", "opacity-0.2":"rgba(255,99,132,0.2)"} 
  },
];



// chart options

// usage: vertical bar or line
function vertical_option_basic(beginAtZero) {
  return {
    responsive: true,
    scales: {
      yAxes: [{
        ticks: {
          beginAtZero: beginAtZero
        }
      }]
    }
  };
}

function vertical_option(y_label, y_value, y_symbol, beginAtZero) {
  return {
    responsive: true,
    scales: {
      yAxes: [{
        ticks: {
          beginAtZero: beginAtZero,
          callback: function(label, index, labels) {
            return label/y_value + y_symbol;
          }
        },
        scaleLabel: {
          display: true,
          labelString: y_label
        }
      }]
    },
    tooltips: {
      callbacks: {
        label: function(tooltipItem, data) {
          var dataset = data.datasets[tooltipItem.datasetIndex];
          return dataset.data[tooltipItem.index].toFixed(0).replace(/./g, function(c, i, a) {
            return i > 0 && c !== "." && (a.length - i) % 3 === 0 ? "," + c : c;
          });
        }
      }
    }
  };

}

// usage: horizontal bar
function horizontal_bar_option(x_label, x_value, x_symbol) {
  return {
    scales: {
      xAxes: [{
        ticks: {
          callback: function(label, index, labels) {
            return label/x_value + x_symbol;
          }
        },
        scaleLabel: {
          display: true,
          labelString: x_label
        }
      }]
    },
    tooltips: {
      callbacks: {
        label: function(tooltipItem, data) {
          return Number(tooltipItem.xLabel).toFixed(0).replace(/./g, function(c, i, a) {
            return i > 0 && c !== "." && (a.length - i) % 3 === 0 ? "," + c : c;
          });
        }
      }
    }
  };
}


// usage: vertical stacked bar
function vertical_stacked_bar_option(y_label, y_value, y_symbol, num) {
  return {
    responsive: true,
    scales: {
      xAxes: [{
        stacked: true
      }],
      yAxes: [{
        stacked: true,
        ticks: {
          callback: function(label, index, labels) {
            return label/y_value + y_symbol;
          }
        },
        scaleLabel: {
          display: true,
          labelString: y_label
        }
      }]
    },
    tooltips: {
      callbacks: {
        label: function(tooltipItem, data) {
          var dataset = data.datasets[tooltipItem.datasetIndex];
          var total = data.datasets[num].data[tooltipItem.index];

          var currentValue = dataset.data[tooltipItem.index];
          var commaValue = dataset.data[tooltipItem.index].toFixed(0).replace(/./g, function(c, i, a) {
            return i > 0 && c !== "." && (a.length - i) % 3 === 0 ? "," + c : c;
          });
          var precentage = Math.floor( ((currentValue/total) * 100) + 0.5 );
          return commaValue + " (" + precentage + "%)";
        }
      }
    }
  };
}


// usage: pie
function pie_option() {
  return {
    tooltips: {
      callbacks: {
        label: function(tooltipItem, data) {
          var dataset = data.datasets[tooltipItem.datasetIndex];
          var total = dataset.data.reduce(function(previousValue, currentValue, currentIndex, array) {
            return previousValue + currentValue;
          });
          var currentValue = dataset.data[tooltipItem.index];
          var commaValue = dataset.data[tooltipItem.index].toFixed(0).replace(/./g, function(c, i, a) {
            return i > 0 && c !== "." && (a.length - i) % 3 === 0 ? "," + c : c;
          });
          var precentage = Math.floor(((currentValue/total) * 100) + 0.5);
          return commaValue + " (" + precentage + "%)";
        }
      }
    }
  };
}



// usage: bubble
function bubble_option(x_label, x_value, x_symbol, y_label, y_value, y_symbol) {
  return {
    elements: {
      points: {
        borderWidth: 1,
        borderColor: 'rgb(0, 0, 0)'
      }
    },
    scales: {
      xAxes: [{
        ticks: {
          callback: function(label, index, labels) {
            return label/x_value + x_symbol;
          }
        },
        scaleLabel: {
          display: true,
          labelString: x_label
        }
      }],
      yAxes: [{
        ticks: {
          callback: function(label, index, labels) {
            return label/y_value + y_symbol;
          }
        },
        scaleLabel: {
            display: true,
            labelString: y_label
         }
       }]
    }
  };

}

// usage: radar
function radar_option() {
  return {
    scale: {
      reverse: true,
      ticks: {
        beginAtZero: true
      }
    }
  };
}

// usage: polar area
function polar_area_option() {
  return {
    elements: {
      arc: {borderColor: "#fff"}
    }
  };
}