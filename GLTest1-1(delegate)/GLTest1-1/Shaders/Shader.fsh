//
//  Shader.fsh
//  GLTest1-1
//
//

varying lowp vec4 colorVarying;

void main()
{
    gl_FragColor = colorVarying;
}
