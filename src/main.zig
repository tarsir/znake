const rl = @import("raylib");

const Snake = struct {
    x: i32,
    y: i32,
    size: i32,

    pub fn init(opts: Options) Snake {
        return Snake{
            .x = opts.width / 2,
            .y = opts.height / 2,
            .size = 1,
        };
    }
};

const Options = struct {
    width: i32,
    height: i32,
};

pub fn main() anyerror!void {
    // Initialization
    //--------------------------------------------------------------------------------------
    const screenWidth = 1200;
    const screenHeight = 680;

    rl.initWindow(screenWidth, screenHeight, "znake");
    defer rl.closeWindow(); // Close window and OpenGL context

    rl.setTargetFPS(60); // Set our game to run at 60 frames-per-second
    //--------------------------------------------------------------------------------------

    // Main game loop
    while (!rl.windowShouldClose()) { // Detect window close button or ESC key
        // Update
        //----------------------------------------------------------------------------------
        // TODO: Update your variables here
        //----------------------------------------------------------------------------------

        // Draw
        //----------------------------------------------------------------------------------
        rl.beginDrawing();
        defer rl.endDrawing();

        rl.clearBackground(rl.Color.black);

        rl.drawRectangleLines(20, 20, screenWidth - 40, screenHeight - 40, rl.Color.white);

        rl.drawText("Congrats! You created your first window!", 190, screenHeight / 2, 24, rl.Color.light_gray);
        //----------------------------------------------------------------------------------
    }
}
