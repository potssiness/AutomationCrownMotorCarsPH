def open_browser(url):
    from selenium import webdriver
    driver = webdriver.Chrome()
    driver.get(url)
    return driver

def click_element(driver, locator):
    element = driver.find_element(*locator)
    element.click()

def close_browser(driver):
    driver.quit()