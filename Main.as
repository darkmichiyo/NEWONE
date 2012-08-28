package
{
	import flash.display.Sprite;
	import net.flashpunk.FP;
	import net.flashpunk.Engine;
	public class Main extends Engine
	{
		public function Main()
		{
			super(640, 480, 50, false);
			FP.world = new MainWorld;
		}
	}
}