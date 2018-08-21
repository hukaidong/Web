import * as d3 from "d3"

vis = d3.select("#vis")
w = vis.node().getBoundingClientRect().width
vis.append("svg")
    .attr("width", w)
    .attr("height", w * 0.6)

console.log(vis)

