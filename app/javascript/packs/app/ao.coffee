'use strict';

import $ from "jquery"
import * as d3 from "d3"
import * as Victor from "victor"

redraw = () ->
  console.log("redrawing")
  vis = d3.select("#vis")
  w = vis.node()
    .getBoundingClientRect()
    .width
  h = w * 0.6

  vis.selectAll("svg").remove()
  svg = vis.append("svg")
  svg.attr("width", w)
    .attr("height", h)

  bg = svg.append("g")
  bg.append("rect")
    .classed("obstacle", true)
    .attr("width", w * 0.5)
    .attr("height", h)
  bg.append("rect")
    .classed("boundary", true)
    .attr("width", w)
    .attr("height", h)

  g = svg.append("g")
  t = d3.select("#dat")

  update = (x1, y1, x2, y2) ->
    console.log("updating")
    st = new Victor(x1, y1)
    ed = new Victor(x2, y2)
    d = ed.clone().subtract(st)
    len = d.length()
    mi = Math.round(len / 15)

    r = [0..mi].map((x) -> {
        coor: st.clone().mix(ed, x*1.0/mi),
        op: x*1.0/mi})

    cs = g.selectAll("circle").data(r)
    cs.exit().remove()
    cs.enter().append("circle")

    doubleEndIf = (t, f) ->
      (_, i) -> if (i == 0 or i == mi) then t else f

    g.selectAll("circle")
      .classed("agent", true)
      .attr('cx', (d) -> d.coor.x)
      .attr('cy', (d) -> d.coor.y)
      # .style("animation-name", "none")
      .style('animation-delay', (d) -> "#{d.op}s")
      .style('stroke', doubleEndIf("blue", "none"))
      # .style('fill-opacity', (d) -> d.op*0.8 + 0.2)


    bdx = () -> Math.min(Math.max(d3.event.x, 0), w)
    bdy = () -> Math.min(Math.max(d3.event.y, 0), h)
    draghead = d3.drag()
      .on("drag", () -> update(bdx(), bdy(), x2, y2))
    dragtail = d3.drag()
      .on("drag", () -> update(x1, y1, bdx(), bdy()))

    c = g.select("circle:nth-child(1)")
      .call(draghead)
    console.log(c)
    g.select("circle:nth-child(#{mi+1})")
      .call(dragtail)

    cost = -d.x*1.0-(st.x-w*0.5+2.5)
    t.html(
      "<p>Trajectory Length #{len} </p>
      <p>Agent Overlapping Cost #{cost} </p>"
    )


  update(w*0.6, h*0.5, w*0.4, h*0.5)

redraw()
$(window).resize(redraw)
