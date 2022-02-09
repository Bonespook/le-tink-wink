package;

import Controls.KeyboardScheme;
import flixel.FlxG;
import flixel.FlxObject;
import flixel.FlxSprite;
import flixel.effects.FlxFlicker;
import flixel.graphics.frames.FlxAtlasFrames;
import flixel.group.FlxGroup.FlxTypedGroup;
import flixel.text.FlxText;
import flixel.tweens.FlxEase;
import flixel.tweens.FlxTween;
import flixel.util.FlxColor;
import flixel.util.FlxTimer;
import io.newgrounds.NG;
import lime.app.Application;

#if windows
import Discord.DiscordClient;
#end

using StringTools;

class EndingScreen extends MusicBeatState
{
	public function new() 
	{
		super();
	}
	
	override function create() 
	{
		super.create();
		var screen:FlxSprite = new FlxSprite().loadGraphic(Paths.image("sneed"));
		#if desktop
		var screen:FlxSprite = new FlxSprite().loadGraphic(Paths.image("sneed"));
		#else
		var screen:FlxSprite = new FlxSprite().loadGraphic(Paths.image("sneed"));
		#end
	
		
		add(screen);
		
		
	}
	
	
	override function update(elapsed:Float) 
	{
		super.update(elapsed);
		
		if (controls.ACCEPT){
			FlxG.switchState(new MainMenuState());
		}
		
		
		
	}
	
}
