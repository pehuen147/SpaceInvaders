package sprites;

import flixel.FlxSprite;
import flixel.system.FlxAssets.FlxGraphicAsset;
import flixel.FlxG;

class Bullet extends FlxSprite
{
	
	public function new(?X:Float=0, ?Y:Float=0, ?SimpleGraphic:FlxGraphicAsset) 
	{
		super(X, Y, SimpleGraphic);
		
		makeGraphic(1, 3, 0xFFFF0000);
		
		velocity.y = -80;
	}
	
	override public function update(elapsed:Float):Void
	{
		super.update(elapsed);
		
		if (y < 0)
		{
		destroy(); // destruye la bala cuando llega a arriba
		}
	}
	
}