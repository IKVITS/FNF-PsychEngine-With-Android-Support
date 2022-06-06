function onCreate()

	 makeAnimatedLuaSprite('back', 'weekcg/CGBG', -900,-830);
	 setLuaSpriteScrollFactor('back', 1.0, 1.0);
	scaleObject('back', 1.35,1.35);
	
	makeAnimatedLuaSprite('publico', 'weekcg/bopper1', -10, 280);
	scaleObject('publico', 1.32,1.32);
	
	makeAnimatedLuaSprite('publico2', 'weekcg/bopper2',  -170, 270);
	setLuaSpriteScrollFactor('publico2', 1.0, 1.0);
	scaleObject('publico2', 1.32,1.32);
	
	makeLuaSprite('overlay', 'weekcg/BGLAYER', 2,0);
	setLuaSpriteScrollFactor('overlay', 1.0, 1.0);
	scaleObject('overlay', 0.81,0.81);
	setObjectCamera('overlay', 'hud');

	makeLuaSprite('DOWN LIGHT', 'weekcg/DOWN LIGHT', 2,0);
	scaleObject('DOWN LIGHT', 0.81,1.01);
	setObjectCamera('DOWN LIGHT', 'hud');
	
	makeLuaSprite('LEFT LIGHT', 'weekcg/LEFT LIGHT', 2,0);
	scaleObject('LEFT LIGHT', 0.81,1.01);
	setObjectCamera('LEFT LIGHT', 'hud');

	makeLuaSprite('RIGHT LIGHT', 'weekcg/RIGHT LIGHT', 2,0);
	scaleObject('RIGHT LIGHT', 0.81,1.01);
	setObjectCamera('RIGHT LIGHT', 'hud');

	makeLuaSprite('UP LIGHT', 'weekcg/UP LIGHT', 2,0);
	scaleObject('UP LIGHT', 0.81,1.01);
	setObjectCamera('UP LIGHT', 'hud');
	
	makeLuaText('watermark', "Recreation By SION | Port By IKVI TS", 0, -2, 550); -- You can edit the created by Prisma Text just dont change anything else
    setTextSize('watermark',18);
    addLuaText('watermark');
  
	addLuaSprite('back', false);
	addAnimationByPrefix('back', 'idle', 'new', 20, true);
	addLuaSprite('publico', false);
	addAnimationByPrefix('publico', 'idle', 'crowd', 15, true);
	addLuaSprite('publico2', false);
	addAnimationByPrefix('publico2', 'idle', 'crowd', 15, true);
	addLuaSprite('overlay', true);
	addLuaSprite('DOWN LIGHT', true);
	addLuaSprite('LEFT LIGHT', true);
	addLuaSprite('RIGHT LIGHT', true);
	addLuaSprite('UP LIGHT', true);
	setProperty('DOWN LIGHT.visible', false);
    setProperty('LEFT LIGHT.visible', false);
	setProperty('RIGHT LIGHT.visible', false);
	setProperty('UP LIGHT.visible', false);
end
function onUpdate(elapsed)
	-- start of "update", some variables weren't updated yet
	if keyJustPressed('left') then
	setProperty('DOWN LIGHT.visible', false);
    setProperty('LEFT LIGHT.visible', true);
	setProperty('RIGHT LIGHT.visible', false);
	setProperty('UP LIGHT.visible', false);

	elseif keyJustPressed('down') then
	setProperty('DOWN LIGHT.visible', true);
    setProperty('LEFT LIGHT.visible', false);
	setProperty('RIGHT LIGHT.visible', false);
	setProperty('UP LIGHT.visible', false);

	elseif keyJustPressed('up') then
	setProperty('DOWN LIGHT.visible', false);
    setProperty('LEFT LIGHT.visible', false);
	setProperty('RIGHT LIGHT.visible', false);
	setProperty('UP LIGHT.visible', true);

	elseif keyJustPressed('right') then
	setProperty('DOWN LIGHT.visible', false);
    setProperty('LEFT LIGHT.visible', false);
	setProperty('RIGHT LIGHT.visible', true);
	setProperty('UP LIGHT.visible',false);

	end
end