background_cheetah_plains = codesters.Sprite("plains_birds_eye_view_correct_one_8b2")
background_cheetah_plains.set_size(1.7)
background_cheetah_plains.set_y(145)
background_cheetah_jungle = codesters.Sprite("jungle_birds_eye_view_f7d")
background_cheetah_jungle.set_size(2)
background_cheetah_jungle.set_y(130)
background_cheetah_jungle.hide()
#sets the background for the cheetah
background_lion_plains = codesters.Sprite("plains_birds_eye_view_correct_one_8b2")
background_lion_plains.set_size(1.7)
background_lion_plains.set_y(-145)
background_lion_jungle = codesters.Sprite("jungle_birds_eye_view_f7d")
background_lion_jungle.set_size(2)
background_lion_jungle.set_y(-170)
background_lion_jungle.hide()
#sets the background for the lion
cheetah = codesters.Sprite("55c334d0476746bcb089bb588c7b772a")
cheetah.set_x(180)
cheetah.set_y(150)
lion = codesters.Sprite("Lion_290")
lion.set_size(0.50)
lion.go_to(190,-160)
lion.set_size(1.2)
line = codesters.Line(-250, 0, 250, 0, "black")
line.set_line_thickness(10)
#sets the sprites
cheetah_x = random.randint(-110,70)
print(cheetah_x*2)
lion_x = random.randint(-110,70)
print(lion_x*2)
#sets the location of the questions, and makes it easier to debug
global x
x = 1
global y
y = 1
def left_key():
    global x
    cheetah.move_left(2)
    while cheetah.x==cheetah_x*2:
        cheetah.move_right(2)
        q1c= cheetah.ask("In what country would you find the great wall(Only First letter should be capital letter)")
        if q1c=="China":
            cheetah.move_left(100)
        elif q1c=="china":
            cheetah_text = codesters.Text("I'll take it, but next time \n I will take off points for that!! Listen to my directions", cheetah_x*2, 175)

            cheetah.move_left(100)
        else:
            cheetah.say("You have entered a invalid answer. Go back 95 spaces")
            cheetah.goto(cheetah.x+95,150)
    if cheetah.x < -245:
        cheetah.set_x(245)
        if x == 1:
            x += 1
            background_cheetah_jungle.show()
            

def up_key():
    global y
    lion.move_left(2)
    while lion.x==lion_x*2:
        lion.move_right(2)
        q1c= lion.ask("How many dots are on a six-sided dice?(The answer is a number)")
        if q1c=="21":
            lion.move_left(100)
        else:
            lion.say("You are incorrect, You will move \n backwords 95 spaces")
            lion.goto(lion.x+95,-160)
    if lion.x < -245:
        lion.set_x(245)
        if y == 1:
            y += 1
            background_lion_jungle.show()
 
 
stage.event_key("left", left_key)  
stage.event_key("up", up_key)
 
 
   
 
 
 
##sprite = codesters.Sprite("4175ab25f00f4a72b3702a74a235e925")



