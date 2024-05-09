package net.dredgesmp.dredgeclient;

import io.github.apace100.apoli.power.PowerType;
import io.github.apace100.apoli.power.PowerTypeReference;
import net.fabricmc.api.ModInitializer;

import net.dredgesmp.dredgeclient.effect.ChargedStatusEffect;
import net.dredgesmp.dredgeclient.power.DredgePowerFactories;
import net.minecraft.entity.effect.StatusEffect;
import net.minecraft.util.Identifier;
import net.minecraft.util.registry.Registry;

public class DredgeClient implements ModInitializer {
	public static final String MOD_ID = "dredgeclient";

	public static final StatusEffect CHARGED = new ChargedStatusEffect();

	 public static final PowerType<?> WALK_ON_SNOW = new PowerTypeReference<>(new Identifier(MOD_ID, "walk_on_snow"));

	@Override
	public void onInitialize() {
		Registry.register(Registry.STATUS_EFFECT, new Identifier(MOD_ID, "charged"), CHARGED);
		DredgePowerFactories.register();
	}
}