[![Build Status](https://travis-ci.org/machzqcq/page-object_framework.svg?branch=master)](https://travis-ci.org/machzqcq/page-object_framework)



Page Object Framework
=====================

This project is being used to demonstrate page object pattern for Test Automation in Ruby. From a very high level, the capabilities covered:   

1. [Data-driven framework concepts] (http://www.seleniumframework.com/data-driven-framework/what-is-data-driven-framework/) using data_helper.rb  
2. [Page Object] (http://www.seleniumframework.com/hybrid-framework/what-is-page-object/)  
3. [Page Factory] (http://www.seleniumframework.com/hybrid-framework/what-is-page-factory/)  
4. [Modeling Page Objects] (http://www.seleniumframework.com/hybrid-framework/modeling-page-objects/) [the most important one]  
5. [A shopping cart workflow automated] (http://www.seleniumframework.com/hybrid-framework/implement-page-object-pattern/) using Page Objects  
6. [Waits and Synchronization] (http://www.seleniumframework.com/basic-tutorial/wait_commands/) concepts applied
7. [Executing on Selenium GRID] (http://www.seleniumframework.com/intermediate-tutorial/what-is-selenium-grid/)

How to
=======
Read - http://www.seleniumframework.com/hybrid-framework/what-is-page-object/  


Instructions to use
=====================

1. Checkout the project (`git clone <repo_url>`)
2. Run `bundle install`
3. Go through `.feature` files
4. Check step defnition  

Issues observed so far
=========================

1. If you get firefox native events error when hovering over top menu, it is a firefox issue. If you run it on remote webdriver, it should work fine  
2. IE really depends on which version you use, however I verified with IE11 on GRID and it ran fine


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
