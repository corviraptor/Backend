package net.dredgesmp.dredgetweaks.mixin;

import net.minecraft.entity.Entity;
import net.minecraft.entity.EntityType;
import net.minecraft.entity.player.PlayerEntity;
import net.minecraft.world.World;
import org.spongepowered.asm.mixin.Mixin;
import org.spongepowered.asm.mixin.Shadow;
import org.spongepowered.asm.mixin.injection.At;
import org.spongepowered.asm.mixin.injection.Inject;
import org.spongepowered.asm.mixin.injection.callback.CallbackInfoReturnable;

import static java.lang.Math.min;
import static net.dredgesmp.dredgetweaks.DredgeTweaks.ALWAYS_DROP_XP;

@Mixin(PlayerEntity.class)
public abstract class AlwaysDropXPMixin extends Entity {
	public AlwaysDropXPMixin(EntityType<?> type, World world) {
		super(type, world);
	}

	@Shadow public abstract boolean isSpectator();

	@Shadow public int experienceLevel;

	@Shadow public float experienceProgress;

	@Shadow public int totalExperience;

	@Inject(at = @At("HEAD"), method = "getXpToDrop", cancellable = true)
	public void onGetXpToDrop(CallbackInfoReturnable<Integer> cir) {
		if (this.world.getGameRules().getBoolean(ALWAYS_DROP_XP)) {
			if (!this.isSpectator()) {
				int xp_drop = min(this.experienceLevel * 7, 100);
				this.experienceLevel = 0;
				this.experienceProgress = 0f;
				this.totalExperience = 0;
				cir.setReturnValue(xp_drop);
			} else {
				cir.setReturnValue(0);
			}
		}
	}
}