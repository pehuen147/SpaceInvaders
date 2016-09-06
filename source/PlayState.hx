package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import sprites.Enemy;
import sprites.Player;
import sprites.Bullet;

class PlayState extends FlxState
{
	private var player:Player;
	
	private var enemy1:Enemy;
	private var enemy2:Enemy;
	private var enemy3:Enemy;
	private var enemy4:Enemy;
	private var enemy5:Enemy;
	private var enemy6:Enemy;
	
	override public function create():Void
	{
		super.create();
		
		player = new Player(65,120);
		add (player);
		
		enemy1 = new Enemy(10, 10);
		add (enemy1);
		
		enemy2 = new Enemy(30, 10);
		add (enemy2);
		
		enemy3 = new Enemy(50, 10);
		add (enemy3);
		
		enemy4 = new Enemy(70, 10);
		add (enemy4);
		
		enemy5 = new Enemy(90, 10);
		add (enemy5);
		
		enemy6 = new Enemy(110, 10);
		add (enemy6);
		
		
		
		
	}

	override public function update(elapsed:Float):Void
	{
		super.update(elapsed);
	}
}
