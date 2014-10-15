
/*
 * StartScene
 * Created by Eqela Studio 2.0b7.4
 */

public class StartScene: SEScene
{
		SESprite text;
		public void initialize(SEResourceCache rsc) {
			base.initialize(rsc);
			add_entity(SESpriteEntity.for_color(Color.instance("#FF6633"), get_scene_width(), get_scene_height()));
			rsc.prepare_font("myfont", "arial bold color=white", 80);
			text = add_sprite_for_text("Click the screen to Start", "myfont");
			text.move(0.25*get_scene_width(), 0.40*get_scene_height());
			AudioClipManager.prepare("start");
			AudioClipManager.play("start");
		}

		public void on_pointer_press(SEPointerInfo pi) {
			base.on_pointer_press(pi);
			if(pi.is_inside(0,0, get_scene_width(), get_scene_height())) {
				switch_scene(new MainScene());
			}

		}

		public void cleanup() {
			base.cleanup();
		}
}
