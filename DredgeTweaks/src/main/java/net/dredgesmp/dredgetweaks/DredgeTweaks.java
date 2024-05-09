package net.dredgesmp.dredgetweaks;

import net.fabricmc.api.ModInitializer;

import net.fabricmc.fabric.api.gamerule.v1.GameRuleFactory;
import net.fabricmc.fabric.api.gamerule.v1.GameRuleRegistry;
import net.minecraft.world.GameRules;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class DredgeTweaks implements ModInitializer {
	public static final String MOD_ID = "dredgetweaks";
    public static final Logger LOGGER = LoggerFactory.getLogger("alwaysdropxp");
	public static final GameRules.Key<GameRules.BooleanRule> ALWAYS_DROP_XP = GameRuleRegistry.register(
			"alwaysDropXP",
			GameRules.Category.PLAYER,
			GameRuleFactory.createBooleanRule(true)
	);
	public static final GameRules.Key<GameRules.BooleanRule> DISABLE_ENDERMAN_GRIEF = GameRuleRegistry.register(
			"disableEndermanGrief",
			GameRules.Category.MOBS,
			GameRuleFactory.createBooleanRule(true)
	);
	public static final GameRules.Key<GameRules.BooleanRule> DISABLE_WITHER_GRIEF = GameRuleRegistry.register(
			"disableWitherGrief",
			GameRules.Category.MOBS,
			GameRuleFactory.createBooleanRule(true)
	);

	@Override
	public void onInitialize() {
		LOGGER.info("Loading DredgeTweaks");


	}
}