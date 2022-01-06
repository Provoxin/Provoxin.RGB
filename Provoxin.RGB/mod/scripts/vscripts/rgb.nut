global function rgb_init

void function rgb_init()
{
	thread rgb()
}

void function rgb()
{
	float r = 1;
	float g = 0;
	float b = 0;

	float dr = 0;
	float dg = 0;
	float db = 0;

	float lastTime = Time();

	while (true)
	{
		WaitFrame();
		
		float dt = Time() - lastTime;
		lastTime = Time();

		float speed = GetConVarFloat("rgb_cycle_speed");

		if (r == 1 && g == 0 && b == 0)
		{
			dr = 0; dg = 1; db = 0;
		}

		else if (r == 1 && g == 1 && b == 0)
		{
			dr = -1; dg = 0; db = 0;
		}

		else if (r == 0 && g == 1 && b == 0)
		{
			dr = 0; dg = 0; db = 1;
		}

		else if (r == 0 && g == 1 && b == 1)
		{
			dr = 0; dg = -1; db = 0;
		}

		else if (r == 0 && g == 0 && b == 1)
		{
			dr = 1; dg = 0; db = 0;
		}

		else if (r == 1 && g == 0 && b == 1)
		{
			dr = 0; dg = 0; db = -1;
		}

		else if (r > 0 && g > 0 && b > 0)
		{
			dr = 1; dg = -1; db = -1;
		}

		r += dr * speed * dt;
		g += dg * speed * dt;
		b += db * speed * dt;

		r = clamp(r, 0, 1);
		g = clamp(g, 0, 1);
		b = clamp(b, 0, 1);

		if (GetConVarBool("rgb_ally_rainbow"))
		{
			SetConVarString("idcolor_ally", r + " " + g + " " + b + " " + GetConVarString("rgb_ally_brightness"));
		}
		else
		{
			string col = GetConVarString("rgb_ally_color");
			if (col == "default") { col = "0.34 0.59 0.86 8"; }
			SetConVarString("idcolor_ally", col)
		}

		if (GetConVarBool("rgb_enemy_rainbow"))
		{
			SetConVarString("idcolor_enemy", r + " " + g + " " + b + " " + GetConVarString("rgb_enemy_brightness"));
		}
		else
		{
			string col = GetConVarString("rgb_enemy_color");
			if (col == "default") { col = "0.8 0.25 0.15 8"; }
			SetConVarString("idcolor_enemy", col)
		}
	}
}