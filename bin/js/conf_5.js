rsconf4 = {
  _id: "replSet",
  members: [
    { _id: 0, host: ip1 },
    { _id: 1, host: ip2 },
    { _id: 2, host: ip3 }
   ],
  settings: {
    getLastErrorDefaults : { w: 2, j: true }
  }
}

rs.reconfig(rsconf4)
