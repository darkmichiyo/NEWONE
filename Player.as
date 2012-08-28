package  
{
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.Screen;
	import net.flashpunk.FP;
	import net.flashpunk.utils.Input;
	import net.flashpunk.utils.Key;
	public class Player extends Entity
	{
		private var Speed : int = 3;
		public function Player() 
		{
			graphic = new Image(ASSETSTORE.PLAYER);
			x = FP.screen.width / 2 - width/2
			y = FP.screen.height / 2 - height/2;
		}
		override public function update():void
		{
			//Character Controller
			if (Input.check(Key.Z)) y -= 1 * Speed;
			if (Input.check(Key.S)) y += 1 * Speed;
			if (Input.check(Key.D)) x += 1 * Speed;
			if (Input.check(Key.Q)) x -= 1 * Speed;
			
			//Character Area
			if (x < 0) x = 0;
			if (y < 0) y = 0;
			if (x > FP.screen.width - 20) x = FP.screen.width - 20;
			if (y > FP.screen.height - 20) y = FP.screen.height - 20;
			
		}
	}

}