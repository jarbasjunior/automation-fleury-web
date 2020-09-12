# Automation Fleury Web

  Automation Fleury Web is a software test automation project, which will use the following tools:

  
  - **[Ruby](https://www.ruby-lang.org/en/)** as a programming language for writing tests;
  - **[Caybara](https://github.com/teamcapybara/capybara)** to simulate user actions with web applications;
  - **[BDD](https://cucumber.io/docs/gherkin)** (Behavior Driven Development) with **[Cucumber](https://cucumber.io)** as tool for Behavior-Driven Development;
  - **[Page Objects](https://github.com/SeleniumHQ/selenium/wiki/PageObjects)** as a test development standard; and
  - **[HTTParty](https://github.com/jnunemaker/httparty)** for Api integration.


## Prerequisites: **[Ruby](https://gorails.com/setup/ubuntu/18.04)** installed


## Installing WebDrivers in Debian/Ubuntu

  ### Geckodriver (Firefox)

  1 - Go to the geckodriver releases page. Find the latest version of the driver for your platform and download it. For example:

  ```
  wget https://github.com/mozilla/geckodriver/releases/download/v0.26.0/geckodriver-v0.26.0-linux64.tar.gz
  ```

  2 - Extract the file with:

  ```
  tar -xvzf geckodriver-v0.26.0-linux64.tar.gz
  ```

  3 - Make it executable:

  ```
  chmod +x geckodriver
  ```

  4 - Move the geckodrive to /usr/local/bin/:

  ```
  sudo mv geckodriver /usr/local/bin/
  ```

  ### ChromeDriver (Google Chrome - 85º version)

  1 - Go to the ChromeDriver releases page. Find the latest version of the driver for your platform and download it. For example:

  ```
  wget https://chromedriver.storage.googleapis.com/85.0.4183.83/chromedriver_linux64.zip
  ```

  2 - Extract the file with:

  ```
  unzip chromedriver_linux64.zip
  ```

  3 - Make it executable:

  ```
  sudo mv chromedriver /usr/bin/chromedriver
  sudo chown root:root /usr/bin/chromedriver
  sudo chmod +x /usr/bin/chromedriver
  ```

### Installing Ruby gems

Inside the project folder, run: `bundle install`

### Installing [Ruby Solargraph](https://marketplace.visualstudio.com/items?itemName=castwide.solargraph) extension (optional)

Solargraph is a language server that provides intellisense, code completion, and inline documentation for Ruby.

1 - Inside the project folder, run: `solargraph config .`;

2 - Check the `.solargraph.yml` file created, in the root project;

3 - Ways to go to a method or variable's definition:

- **Right-click** and select "Go to Definition" from the context menu; or
- Press F12 for the definition at the cursor; ou
- Move the cursor to the method, press **Ctrl** and click to see the context.

### Run the tests inside the ~/automation-fleury-web folder

- **All tests** cucumber
- **Run tests CI mode** cucumber -p ci
- **Specific test of .feature files** cucumber -t @tag_name
- **Executes all tests, except tests *tag one*** cucumber -t 'not @tag_one'
- **executes tests of *tag two* and does not execute tests of *tag one*** cucumber -t 'not @tag_one and (@tag_two)'
