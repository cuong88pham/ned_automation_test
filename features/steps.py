import time

from lettuce import step, world

from lettuce_webdriver.util import assert_true
from lettuce_webdriver.util import AssertContextManager
from selenium.webdriver.common.action_chains import ActionChains
from selenium.webdriver.support.ui import Select
from selenium_button import SeleniumButton

selenim_buttons = SeleniumButton()
buttons = selenim_buttons.buttons

@step(u'I visit \'([^\']*)\' page')
def go_to(step, url):
  world.browser.get(url)

@step(u'The title of the page should become "([^"]*)"')
def the_title_of_the_page_should_become(step, result):
    title = world.browser.title
    print title
    assert_true(step, title == result)

@step(u'And I press key "([^"]*)"')
def and_i_press_key(step, key):
    actions = ActionChains(world.browser)
    actions.send_keys(buttons.get(key))
    actions.perform()

@step(u'when I fill in "([^"]*)" with "([^"]*)"')
def when_i_fill_in(step, locator, username):
    try:
        world.browser.find_element_by_name(locator).sendkeys(username)
    except AssertionError as e:
        world.browser.quit()

@step(u'when I fill in id "([^"]*)" with "([^"]*)"')
def when_i_fill_in_id(step, locator, username):
    try:
        elm = world.browser.find_element_by_id(locator).send_keys(username)

    except AssertionError as e:
        world.browser.quit()

@step(u'when I checked in id "([^"]*)"')
def when_i_fill_in_id(step, locator):
    try:
        world.browser.find_element_by_id(locator).click()
    except AssertionError as e:
        world.browser.quit()


@step(u'when I select in id "([^"]*)" with "([^"]*)"')
def when_i_select_in_id(step, locator, username):
    try:
        Select(world.browser.find_element_by_name(locator)).select_by_value('"'+username+'"')

    except AssertionError as e:
        world.browser.quit()

@step(u'when I fill in data "([^"]*)" with "([^"]*)"')
def when_i_data_in_id(step, locator,username):
    try:
       elm =  world.browser.find_element_by_xpath("//span[@data-fieldname='"+locator+"']/div/input").send_keys(username)

    except AssertionError as e:
        world.browser.quit()

@step(u'when I fill text in data "([^"]*)" with "([^"]*)"')
def when_i_data_in_id(step, locator, username):
    try:
        world.browser.find_element_by_xpath("//div[@data-fieldname='"+locator+"']/textarea[@name='name'][1]").send_keys(username)
    except AssertionError as e:
        world.browser.quit()



@step(u'And I fill input in "([^"]*)" with "([^"]*)" using "([^"]*)"')
def when_i_fill_in_using(step, locator, username, attribute):
    try:
        world.browser.find_element_by_xpath("//input[@"+attribute+"='"+locator+"'][1]").send_keys(username)
    except AssertionError as e:
        world.browser.quit()


@step(u'When I click "([^"]*)"')
def when_i_press(step, locator):
    try:
        world.browser.find_element_by_link_text(locator).click()
    except AssertionError as e:
        world.browser.quit()

@step(u'When I click by class "([^"]*)"')
def when_i_press(step, locator):
    world.browser.find_element_by_class_name(locator).click()


@step(u'the browser should close')
def browser_should_close(step):
    world.browser.quit()