
/*
 * MonsterEntity
 * Created by Eqela Studio 2.0b7.4
 */

public class MonsterEntity: SEEntity
{
	SESprite monster;
	int w;
	int h;
	int speed;
	
	public void initialize(SEResourceCache rsc) {
		base.initialize(rsc);
		w = get_scene_width();
		h = get_scene_height();
		rsc.prepare_image("monster", "samus", 0.15*w, 0.3*h);
		monster = add_sprite_for_image(SEImage.for_resource("monster"));
		monster.move(Math.random(0,w), Math.random(0,h));
		speed = Math.random(5,10)*10;
	}

	public void tick(TimeVal now, double delta) {
		base.tick(now, delta);
		monster.move(monster.get_x()+(MainScene.x-monster.get_x())/speed, monster.get_y()+(MainScene.y-monster.get_y())/speed);
		if((monster.get_x()+0.15*w >= MainScene.x && monster.get_x() <= MainScene.x) && (monster.get_y()+0.15*h >= MainScene.y && monster.get_y() <= MainScene.y)) {
			MainScene.collide=true;
		} 
		
	}

	public void cleanup() {
		base.cleanup();
	}
}
