// get npm dependencies
const express = require("express");
const path = require("path");
const http = require("http");
var compression = require("compression");

const app = express();

// Parsers for POST data
app.use(compression());

// Point static path to dist
app.use(express.static(path.join(__dirname, "build")));

// Enable CORS from client-side
app.use(function(req, res, next) {
  res.header("Access-Control-Allow-Origin", "*");
  res.header("Access-Control-Allow-Methods", "PUT, GET, POST, DELETE, OPTIONS");
  res.header(
    "Access-Control-Allow-Headers",
    "Origin, X-Requested-With, Content-Type, Accept, Authorization, Access-Control-Allow-Credentials"
  );
  res.header("Access-Control-Allow-Credentials", "true");
  next();
});

// Catch all other routes and return the index file
app.get("*", (req, res) => {
  res.sendFile(path.join(__dirname, "build/index.html"));
});

/**
 * Get port from environment and store in Express.
 */
const port = process.env.PORT || "3030";
app.set("port", port);

/**
 * Create HTTP server.
 */
const server = http.createServer(app);

/**
 * Listen on provided port, on all network interfaces.
 */
server.listen(port, () => console.log(`API running on localhost:${port}`));
