var component;
var object;

function start() {

    component = Qt.createComponent("RadioModel.qml");

    if(component.status === component.Ready) {
        finish()
    } else {
        finish()
        component.statusChanged.connect(finish)
    }

}

function finish() {
    for(var x=0; x< 5; x++)
    object = component.createObject(radioCont, {"x": 0, "y": 0});
}
