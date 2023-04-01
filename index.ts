import express, { Express, Request, Response } from 'express'
import dotenv from 'dotenv'

dotenv.config()

const app: Express = express()
const port = process.env.PORT || 3000

app.get('/', (req: Request, res: Response) => {
	console.log("Request received");
	res.send('Response from GKE node server container')
})

app.listen(port, () => {
	console.log(`⚡⚡⚡️️️️️️️️️ Server is running at http://localhost:${port}`)
})