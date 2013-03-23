from bottle import *
import pickle, random


def makeFile(filename,question):
    outFile = open(filename,'wb')
    pickle.dump([question],outFile)
    outFile.close()

HOST = '192.168.0.197'

def createroomList():
    outFile = open('roomlist','bw')
    pickle.dump([],outFile)
    outFile.close()

#createroomList()

@route('/static/<filepath:path>')
def server_static(filepath):
    return static_file(filepath, root = '/Users/weinbergmath/Sites/share/')
       
@get('/')
@get('/share/')
def askGroup():

     return template('makeroom.tpl' )

@post('/share/')
def makeRoom():
    question = request.forms.get('question')
    roomnumber=str(random.randint(0,99999))
    information = [question,roomnumber]
    
    outFile = open('roomlist','br')
    roomlist = pickle.load(outFile)
    outFile.close()
    roomlist.append(information)

    outFile = open('roomlist','bw')
    pickle.dump(roomlist,outFile)
    outFile.close()
    
    makeFile(roomnumber,question)
    return template('roommade.tpl',question = question, roomnumber = roomnumber)
    

@route('/share/<roomnumber>/')
@get('/share/<roomnumber>/results/')
def getInput(roomnumber):
        outFile = open(str(roomnumber),'br')
        question = pickle.load(outFile)[0]
        outFile.close()
        return template('input.tpl',question = question, roomnumber = roomnumber)

@post('/share/<roomnumber>/results/')
def collectAnswer(roomnumber):
     
     name = request.forms.get('name')
     answer = request.forms.get('answer')
     result =[name,answer]
     outFile = open(str(roomnumber),'br')
 
     results = pickle.load(outFile)
     question = results[0]
     outFile.close()
     results.append(result)

     outFile = open(str(roomnumber),'bw')
     pickle.dump(results,outFile)
          
     outFile.close()
     return template('results.tpl', results = results, question = question, roomnumber=roomnumber)

@get('/share/<roomnumber>/record/')
def showAnswers(roomnumber):
     
     outFile = open(str(roomnumber),'br')
 
     results = pickle.load(outFile)
     question = results[0]
     outFile.close()
     return template('record.tpl', results = results, question = question, roomnumber=roomnumber)

@get('/share/roomlist/')
def showRooms():
    outFile = open('roomlist','br')
    roomList = pickle.load(outFile)


    return template('roomlist.tpl',roomList = roomList)


    

run(host = HOST, port = 8080, debug = True)





