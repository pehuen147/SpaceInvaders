package sprites;

import flixel.FlxSprite;
import flixel.system.FlxAssets.FlxGraphicAsset;
import flixel.FlxG;

class Player extends FlxSprite
{
	public var dispara:Bool;

	public function new(?X:Float=0, ?Y:Float=0, ?SimpleGraphic:FlxGraphicAsset) 
	{
		super(X, Y, SimpleGraphic);
		
		loadGraphic("assets/images/Navesita.png");// navesita
	}
	
	override public function update(elapsed:Float):Void
	{
		super.update(elapsed);
		
		if (FlxG.keys.pressed.D)//movimiendo de navesita derecha
			x += 2;
		if (FlxG.keys.pressed.A)//movimiendo de navesita izquierda
			x -= 2;
			
			
		if (x>FlxG.width-width)
			x = FlxG.width - width;//limite de pantalla a la derecha
		if (x < 0)
			x = 0;// limite de izquierda
		
		if (FlxG.keys.justPressed.J)
		{
			var b:Bullet = new Bullet();
			b.x = x + width / 2;
			b.y = y;
			FlxG.state.add(b);
			dispara = false;
		}
	}
}