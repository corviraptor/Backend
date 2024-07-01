package net.dredgesmp.dredgeclient;

import io.github.apace100.apoli.power.PowerType;
import io.github.apace100.apoli.power.PowerTypeReference;
import net.dredgesmp.dredgeclient.block.SoulPumpkin;
import net.fabricmc.api.ModInitializer;

import net.dredgesmp.dredgeclient.effect.ChargedStatusEffect;
import net.dredgesmp.dredgeclient.power.DredgePowerFactories;
import net.fabricmc.fabric.api.item.v1.FabricItemSettings;
import net.fabricmc.fabric.api.itemgroup.v1.ItemGroupEvents;
import net.fabricmc.fabric.api.object.builder.v1.block.FabricBlockSettings;
import net.minecraft.block.Block;
import net.minecraft.block.Blocks;
import net.minecraft.block.MapColor;
import net.minecraft.entity.effect.StatusEffect;
import net.minecraft.item.BlockItem;
import net.minecraft.item.ItemGroups;
import net.minecraft.registry.Registries;
import net.minecraft.sound.SoundEvent;
import net.minecraft.util.Identifier;
import net.minecraft.registry.Registry;

public class DredgeClient implements ModInitializer {
	public static final String MOD_ID = "dredgeclient";
	public static final String ADAPTED_MOD_ID = "adaptedorigins";

	public static final StatusEffect CHARGED = new ChargedStatusEffect();

	 public static final PowerType<?> WALK_ON_SNOW = new PowerTypeReference<>(new Identifier(MOD_ID, "walk_on_snow"));

	public static final Block SOUL_PUMPKIN = new SoulPumpkin(
			FabricBlockSettings.copyOf(Blocks.CARVED_PUMPKIN)
					.strength(1.0f)
					.mapColor(MapColor.BLACK)
	);

	public static final BlockItem SOUL_PUMPKIN_BI = new BlockItem(SOUL_PUMPKIN, new FabricItemSettings());

	public static final Identifier PHOENIX_CALL_ID = new Identifier(ADAPTED_MOD_ID, "phoenix_call");
	public static SoundEvent PHOENIX_CALL = SoundEvent.of(PHOENIX_CALL_ID);

	@Override
	public void onInitialize() {
		Registry.register(
				Registries.STATUS_EFFECT,
				new Identifier(MOD_ID, "charged"),
				CHARGED
		);
		Registry.register(
				Registries.BLOCK,
				new Identifier(ADAPTED_MOD_ID, "soul_pumpkin"),
				SOUL_PUMPKIN
		);
		Registry.register(
				Registries.ITEM,
				new Identifier(ADAPTED_MOD_ID, "soul_pumpkin"),
				SOUL_PUMPKIN_BI
		);
		Registry.register(
				Registries.SOUND_EVENT,
				PHOENIX_CALL_ID,
				PHOENIX_CALL
		);
		ItemGroupEvents.modifyEntriesEvent(ItemGroups.BUILDING_BLOCKS).register(content -> {
			content.add(SOUL_PUMPKIN_BI);
		});
		DredgePowerFactories.register();
	}
}