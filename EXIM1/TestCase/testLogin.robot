*** Settings ***
Library    SeleniumLibrary

Suite Setup        Log     EXIM1 Project
Suite Teardown     Log     Teardown
Test Setup         Log     Test Setup
Test Teardown      Log     Test Teardown    

Default Tags       sanity    

*** Test Case ***    
My1stTest
    [Tags]         smoke
    Log            1st Test 
    
My2ndTest
    [Tags]         example
    Log            2nd Test
    Set Tags       regression1
    Remove Tags    regression1
    
My3rdTest
    Log            3rd Test   
    
# loginTest
    # [Documentation]         This is a sample login test
    # Open Browser            ${URL}         chrome
    # LoginKW
    # Sleep                   2 
    # Click Button            id=btnClickMenu
    # Sleep                   2 
    # Click Element           xpath=//*[@id="myDropdown"]/a
    # Sleep                   2         
    # Log                     Login Test Completed!!
    # Log                     This test was executed by %{username} on %{os}
    
# *** Variables ***
# #SCALAR Variables
# ${URL}            https://exim1staffuat.exim.go.th/app/Account/Login      

# #LIST Variables
# @{CREDENTIALS}    yuwareek  bank@2021

# #DICTIONARY
# &{LOGINDATA}      userName=yuwareek    password=bank@2021

# *** Keywords ***
# LoginKW
    # Input Text                   id=userName    @{CREDENTIALS}[0]
    # Sleep                        2      
    # Input Text                   id=password    &{LOGINDATA}[password]
    # Sleep                        2  
    # Click Button                 id=btn_login
    
#===============================================================
# How to Set Tags From cmd
# Step 1 Open cmd
#        CD to change location of your project folder
# Step 2 Run Command
#        robot -t TestName location of testcase 
#        Ex. robot -t My1stTest TestCase\testLogin.robot
# Step 3 Add flat to set tags
#        -t TestName --settag=tagname location of testcase
#        Ex. robot -t My1stTest --settag=regression1 TestCase\testLogin.robot
# Step 4 Run tests with tags
#        1. 1 tag >> robot --include tagname location of testcase
#        Ex. robot --include smoke TestCase\testLogin.robot
#        2. More then 1 tags >> robot -i tagname -i tagname location of testcase
#        EX. robot -i sanity -i smoke TestCase\testLogin.robot
#        3. All Tags >> robot -i s* location of testcase
#        Ex. robot -i s* TestCase\testLogin.robot
# Step 5 Run test with excluding tags
#        1. 1 tag >> robot --exclude tagname location of testcase
#        Ex. robot --exclude smoke TestCase\testLogin.robot
#        2. More then 1 tags >> robot -e tagname -e tagname location of testcase
#        EX. robot -e sanity -e smoke TestCase\testLogin.robot
#        3. Specify tags >> robot -i tagname -e tagname location of testcase
#        EX. robot -i sanity -e smoke TestCase\testLogin.robot

# How to Run From cmd
# Step 1 Open cmd
#        CD to change location of your project folder
# Step 2 Run Command
#        1. 1 test case >> robot -t TestName location of testcase
#           EX. robot -t My1stTest TestCase\testLogin.robot
#        2. More then 1 test case >> robot -t TestName -t TestName location of testcase
#           EX. robot -t My1stTest -t My2ndTest TestCase\testLogin.robot
#        3. All test case >> robot location of testcase
#           Ex. robot TestCase\testLogin.robot

#How to add Robot Project on Git
# Step 1 Sign In and create a new repository
# Step 2 Eclipse > Windown > Perspective > Open perspective > other > Git > Open
# Step 3 Clone a Git repository
# Step 4 right click on project > Team > Share Project
# Step 5 Add to git >> right click on project > Team > Commit



