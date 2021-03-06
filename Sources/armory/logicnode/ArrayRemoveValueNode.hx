package armory.logicnode;

class ArrayRemoveValueNode extends LogicNode {

 	var removedValue:Dynamic = null;

	public function new(tree:LogicTree) {
		super(tree);
	}

	override function run() {
		var ar:Array<Dynamic> = inputs[1].get();
		var val:Dynamic = inputs[2].get();

		removedValue = val;
		ar.remove(val);

		runOutputs(0);
	}

	override function get(from:Int):Dynamic {
		return removedValue;
	}
}
