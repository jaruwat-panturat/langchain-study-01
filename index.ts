import { createServer } from 'node:http';
import { Client } from 'pg';

const hostname = '127.0.0.1';
const port = 3000;

const client = new Client({
  host: process.env.DB_HOST || 'localhost',
  port: 5432,
  database: 'langchain_db',
  user: 'admin',
  password: 'password'
});

const server = createServer(async (req, res) => {
  res.setHeader('Content-Type', 'application/json');
  
  try {
    const result = await client.query('SELECT * FROM books');
    res.statusCode = 200;
    res.end(JSON.stringify(result.rows));
  } catch (error) {
    res.statusCode = 500;
    res.end(JSON.stringify({ error: 'Database error' }));
  }
});

client.connect().then(() => {
  server.listen(port, hostname, () => {
    console.log(`Server running at http://${hostname}:${port}/`);
  });
});