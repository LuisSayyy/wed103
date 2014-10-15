
/*
 * GameOver
 * Created by Eqela Studio 2.0b7.4
 */

public class GameOver: SEScene
{
		SESprite text1;
		SESprite text2;
		public void initialize(SEResourceCache rsc) {
			base.initialize(rsc);
			add_entity(SESpriteEntity.for_color(Color.instance("#FF6633"), get_scene_width(), get_scene_height()));
			rsc.prepare_font("myfont", "arial bold color=white", 80);
			text1 = add_sprite_for_text("GAME OVER", "myfont");
			text1.move(0.375*get_scene_width(), 0.45*get_scene_height());
			text2 = add_sprite_for_text("Click the screen to restart again", "myfont");
			text2.move(0.20*get_scene_width(), 0.60*get_scene_height());
			AudioClipManager.prepare("gameover");
			AudioClipManager.play("gameover");
		}

		public void on_pointer_press(SEPointerInfo pi) {
			base.on_pointer_press(pi);
			if(pi.is_inside(0,0, get_scene_width(), get_scene_height())) {
				switch_scene(new StartScene());
			}

		}

		public void cleanup() {
			base.cleanup();
		}
}
