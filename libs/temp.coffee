module.exports = () ->
  browser.get 'https://www.angularjs.org/'
  element(By.model('yourName')).sendKeys('Cartaphilus')
  greeting = element(By.binding('yourName'))