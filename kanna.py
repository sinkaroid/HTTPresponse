import requests
import json

channelID = "" # enable dev mode on discord, 
botToken = "dog"    # get from the bot page
baseURL = "https://discordapp.com/api/channels/{}/messages".format(channelID)
headers = { "Authorization":"Bot {}".format(botToken),
            "User-Agent":"myBotThing (http://some.url, v0.1)",
            "Content-Type":"application/json", }
file = open("C:/bash/HTTPResponse/dog.txt", "r")
 
message = file.read()

POSTedJSON =  json.dumps ( {"content":message} ) 
r = requests.post(baseURL, headers = headers, data = POSTedJSON)