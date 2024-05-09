package net.dredgesmp.dredgetweaks.mixin;

import net.minecraft.entity.mob.EndermanEntity;
import org.spongepowered.asm.mixin.Final;
import org.spongepowered.asm.mixin.Mixin;
import org.spongepowered.asm.mixin.Shadow;
import org.spongepowered.asm.mixin.injection.At;
import org.spongepowered.asm.mixin.injection.Inject;
import org.spongepowered.asm.mixin.injection.callback.CallbackInfoReturnable;

import static net.dredgesmp.dredgetweaks.DredgeTweaks.DISABLE_ENDERMAN_GRIEF;


@Mixin(targets = "net.minecraft.entity.mob.EndermanEntity$PlaceBlockGoal")
public class AntiEndermanPlaceGriefMixin {
    @Shadow @Final private EndermanEntity enderman;

    @Inject(at = @At("HEAD"), method = "canStart", cancellable = true)
    public void onCanStart(CallbackInfoReturnable<Boolean> ci) {
        if (this.enderman.world.getGameRules().getBoolean(DISABLE_ENDERMAN_GRIEF)) {
            ci.setReturnValue(false);
        }
    }
}
