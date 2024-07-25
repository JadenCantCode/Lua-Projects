local function createDelay(delay)
    return function()
        local start_time = os.time()
        while os.time() - start_time < delay do

        end
    end
end

local wait3 = createDelay(3)
local wait2 = createDelay(2)
local wait0_5 = createDelay(0.5)
local wait0_1 = createDelay(0.1)


print("Welcome to \"Totally Fair\" Rock Paper Scissors")
wait3()
print("You will be playing against Jaden")
wait3()
print("What is your name?")
wait2()
io.write("Name: ")
local name = io.read()
print("Processing...")
wait3()
print("Would you like to start playing now, " ..name.. "?")
wait2()

while true do
    io.write("Yes/No: ")
    local YN = io.read()

    if YN == "Yes" then
        while true do
            print("Let's start!")
            wait2()
            print("Rock, Paper or Scissors. The choice is yours")
            wait2()
            io.write("Answer: ")
            local Y = io.read()
            wait0_5()
            print("Rock")
            wait0_5()
            print("Paper")
            wait0_5()
            print("Scissors")
            wait0_5()
            print("Shoot!")
            wait0_1()
            print(name .. ": " .. Y)
            if Y == "Rock" then
                print("Jaden: Paper")
                wait2()
                print("You lost!")
                os.exit()
            elseif Y == "Paper" then
                print("Jaden: Scissors")
                wait2()
                print("You lost!")
                os.exit()
            elseif Y == "Scissors" then
                print("Jaden: Rock")
                wait2()
                print("You lost!")
                os.exit()
            else
                local elY = {"Jaden: Rock", "Jaden: Paper", "Jaden: Scissors"}
                math.randomseed(os.time())
                local elY_random = elY[math.random(#elY)]
                print(elY_random)
                wait3()
                print("Jaden: What?")
                wait2()
                print("Jaden: Would you like to do that again?")
                while true do
                    io.write("Yes or No: ")
                    local again = io.read()
                    if again == "Yes" then
                        break
                    elseif again == "No" then
                        print("Jaden: Okay :(")
                        wait2()
                        os.exit()
                    else
                        print("Choose either Yes or No (Case sensitive)")
                    end
                end
            end
        end
    elseif YN == "No" then
        print("Okay :(")
        wait2()
        os.exit()
    else
        print("Choose either Yes or No (Case sensitive)")
    end
end
