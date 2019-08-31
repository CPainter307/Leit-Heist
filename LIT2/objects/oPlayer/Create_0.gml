#macro ACCELERATION .5
#macro MAX_SPEED 2
#macro DASH_SPEED 30
#macro DASH_TIME 5

xdir = 0
ydir = 0

motionx = 0
motiony = 0

face = RIGHT
movement = IDLE

dir = 0



state = MOVE

dash_timer = 0


sprite[RIGHT, MOVE] = sBoyRight;
sprite[UP, MOVE] = sBoyUp;
sprite[LEFT, MOVE] = sBoyLeft;
sprite[DOWN, MOVE] = sBoyDown;

sprite[RIGHT, IDLE] = sBoyRight;
sprite[UP, IDLE] = sBoyUp;
sprite[LEFT, IDLE] = sBoyLeft;
sprite[DOWN, IDLE] = sBoyDown;

sprite[RIGHT, DASH] = sBoySprintRight;
sprite[UP, DASH] = sBoySprintUp;
sprite[LEFT, DASH] = sBoySprintLeft;
sprite[DOWN, DASH] = sBoySprintDown;

//sprite[RIGHT, DASH] = spr_player_roll_right;
//sprite[UP, DASH] = spr_player_roll_up;
//sprite[LEFT, DASH] = spr_player_roll_left;
//sprite[DOWN, DASH] = spr_player_roll_down;