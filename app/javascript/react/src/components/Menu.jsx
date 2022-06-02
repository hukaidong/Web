import * as React from "react";
import {Box, Drawer, List, ListItem, ListItemButton, ListItemIcon, ListItemText} from "@mui/material";
import {Home, Mail} from "@mui/icons-material";

export default function Menu({states}) {
    return <Box>
        <Drawer anchor="left" open={states.state} onClose={()=>{states.setState(false);}}>
            <Box sx={{width: 250}}>
            <List>
                <ListItem key={1} disablePadding>
                    <ListItemButton href="/">
                        <ListItemIcon>
                            <Home />
                        </ListItemIcon>
                        <ListItemText primary={"Home"} />
                    </ListItemButton>
                </ListItem>

                <ListItem key={2} disablePadding>
                    <ListItemButton href="/fileserve">
                        <ListItemIcon>
                            <Mail />
                        </ListItemIcon>
                        <ListItemText primary={"File"} />
                    </ListItemButton>
                </ListItem>
            </List>
            </Box>
        </Drawer>
    </Box>

}