const tlsopt = require("tlsopt");
const systemd = require("systemd");
const express = require("express");

const app = express();
const server = tlsopt.createServerSync(app);
const port = server.tls ? 443 : 80;

app.get("*", (req, res) => {
    res.end(req.originalUrl)
});

server.listen(process.env.LISTEN_PID ? "systemd" : port);
