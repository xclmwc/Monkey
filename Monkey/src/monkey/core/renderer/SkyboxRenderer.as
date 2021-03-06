package monkey.core.renderer {

	import monkey.core.entities.Mesh3D;
	import monkey.core.materials.Material3D;
	import monkey.core.scene.Scene3D;

	public class SkyboxRenderer extends MeshRenderer {
		
		public function SkyboxRenderer(mesh : Mesh3D, material : Material3D) {
			super(mesh, material);
		}
		
		override public function onDraw(scene:Scene3D):void {
			if (!material || !mesh) {
				return;
			}
			material.draw(scene, mesh);
		}
		
	}
}
