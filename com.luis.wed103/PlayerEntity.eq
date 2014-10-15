
/*
 * PlayerEntity
 * Created by Eqela Studio 2.0b7.4
 */

public class PlayerEntity: SEEntity
{
	SESprite target;
	int w;
	int h;
	int wp;
	int hp;
	
	public void initialize(SEResourceCache rsc) {
		base.initialize(rsc);
		w = get_scene_width();
		h = get_scene_height();
		rsc.prepare_image("mychar", "ike", 0.15*w, 0.3*h);
		target = add_sprite_for_image(SEImage.for_resource("mychar"));
		wp = target.get_width();
		hp = target.get_height();
		target.move(0.5*w-0.5*wp, 0.5*h-0.5*hp);
	}

	public void tick(TimeVal now, double delta) {
		base.tick(now, delta);
		target.move(MainScene.x-0.5*wp, MainScene.y-0.5*hp);
	}

	public void cleanup() {
		base.cleanup();
	}
}
	