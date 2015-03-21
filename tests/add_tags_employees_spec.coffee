###
Loading libraries.
###
chai = require 'chai'
chaiAsPromised = require 'chai-as-promised'
chai.use chaiAsPromised
expect = chai.expect

temp = require '../temp/temp'

###
Run tests on angularjs page.
###
describe 'angular homepage', ->
  it 'should greet the name user', ->
    #browser.get 'https://www.angularjs.org/'
    #element(By.model('yourName')).sendKeys('Cartaphilus')
    #greeting = element(By.binding('yourName'))

    greeting = temp

    expect(greeting.getText()).to.eventually.equal('Hello Cartaphilus!')

  ###
  Verify if data in angular loops
  ###
  describe 'todo list', ->
    todoList = null

    beforeEach ->
      browser.get 'https://www.angularjs.org/'
      todoList = element.all(By.repeater('todo in todos'))

    it 'should list todos', ->
      expect(todoList.count()).to.eventually.equal(2)
      expect(todoList.get(1).getText()).to.eventually.equal('build an angular app')

    it 'should list todos', ->
      addTodo = element(By.model('todoText'))
      addButton = element(By.css('[value="add"]'))

      addTodo.sendKeys 'write a protractor test'
      addButton.click()

      expect(todoList.count()).to.eventually.equal(3)
      expect(todoList.get(2).getText()).to.eventually.equal('write a protractor test')
