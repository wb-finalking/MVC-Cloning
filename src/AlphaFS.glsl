uniform sampler2DRect tex0;
uniform sampler2DRect tex1;
uniform sampler2DRect tex4;
varying vec4 membrane;
//varying float alpha;
uniform int mode;


void main()
{
  vec4 target = texture2DRect(tex0, gl_TexCoord[0].st);
  vec4 source = texture2DRect(tex1, gl_TexCoord[1].st);
  vec4 alphaColor = texture2DRect(tex4, gl_TexCoord[4].st);
  float alpha = texture2DRect(tex4, alphapos).x;
  //alpha=alpha/255;
  //if(alpha!=0)
	//alpha=1;

  if (mode==1)
    gl_FragColor = alphaColor;
  else if(mode==2)
    gl_FragColor = membrane + 0.5;
  else
    gl_FragColor = (membrane+source)*alpha +target*(1.0-alpha);
}
