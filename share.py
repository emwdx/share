from bottle import *
import pickle, random


def makeFile(filename,question):
    outFile = open(filename,'wb')
    pickle.dump([question],outFile)
    outFile.close()

HOST = '192.168.0.198'

@route('/static/<filepath:path>')
def server_static(filepath):
    return static_file(filepath, root = '/Users/weinbergmath/Sites')
       
@get('/')
@get('/share/')
def askGroup():

     return template('makeroom.tpl' )

@post('/share/')
def makeRoom():
    question = request.forms.get('question')
    roomnumber=str(random.randint(0,40059))
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
 
run(host = HOST, port = 8080)





