rsconf4 = {
  _id: "replicaSet",
  members: [
    { _id: 0, host: ip1 },
    { _id: 1, host: ip2 },
    { _id: 2, host: ip3 }
   ],
  settings: {
    getLastErrorDefaults : { w: 2, j: false }
  }
}

rs.reconfig(rsconf4)
