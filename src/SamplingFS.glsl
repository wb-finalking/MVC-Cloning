#version 330 compatibility
#extension GL_texture_rectangle_ARB:enable

uniform sampler2DRect tex0;
uniform sampler2DRect tex1;
uniform sampler2DRect tex4;
varying vec4 membrane;

uniform int mode;

void main()
{
  vec4 target = texture2DRect(tex0, gl_TexCoord[0].st);
  vec4 source = texture2DRect(tex1, gl_TexCoord[1].st);
  float alpha = texture2DRect(tex4, gl_TexCoord[4].st).x;

  if (mode==1)
    gl_FragColor = source;
  else if(mode==2)
    gl_FragColor = membrane+0.5;
  else
	gl_FragColor = (source+membrane)*alpha +target*(1.0-alpha);
    //gl_FragColor = membrane+source;
}
