import * as React from "react";
import {AppBar, Box, Button, IconButton, Toolbar, Typography} from "@mui/material";
import {Menu} from "@mui/icons-material";

export default function Navigator({states}) {
  return (
      <Box>
        <AppBar position="static">
          <Toolbar >
              <IconButton size="large" edge="start" color="inherit" aria-label="menu" onClick={()=>{states.setState(true)}}>
                  <Menu/>
              </IconButton>
          </Toolbar>
        </AppBar>
      </Box>
  );
}

