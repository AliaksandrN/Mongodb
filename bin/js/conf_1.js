rsconf1 = {
  _id: "replSet",
  members: [
    { _id: 0, host: ip1 },
    { _id: 1, host: ip2 },
    { _id: 2, host: ip3 }
   ]
}

rs.initiate(rsconf1)
rs.reconfig(rsconf1)
