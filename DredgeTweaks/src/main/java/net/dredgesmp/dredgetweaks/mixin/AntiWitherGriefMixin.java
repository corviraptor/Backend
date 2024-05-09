package net.dredgesmp.dredgetweaks.mixin;

import net.minecraft.entity.EntityType;
import net.minecraft.entity.boss.WitherEntity;
import net.minecraft.entity.mob.HostileEntity;
import net.minecraft.world.GameRules;
import net.minecraft.world.World;
import net.minecraft.world.explosion.Explosion;
import org.spongepowered.asm.mixin.Mixin;
import org.spongepowered.asm.mixin.injection.At;
import org.spongepowered.asm.mixin.injection.ModifyVariable;
import org.spongepowered.asm.mixin.injection.Redirect;

import static net.dredgesmp.dredgetweaks.DredgeTweaks.DISABLE_WITHER_GRIEF;

@Mixin(WitherEntity.class)
public class AntiWitherGriefMixin extends HostileEntity {
    public AntiWitherGriefMixin(EntityType<? extends HostileEntity> entityType, World world) {
        super(entityType, world);
    }

    @ModifyVariable(at = @At("STORE"), method = "mobTick", ordinal = 0)
    Explosion.DestructionType updateDestructionType(Explosion.DestructionType destructionType) {
        return this.world.getGameRules().getBoolean(DISABLE_WITHER_GRIEF) ? Explosion.DestructionType.NONE : destructionType;
    }

    @Redirect(at = @At(value = "INVOKE", target = "Lnet/minecraft/world/GameRules;getBoolean(Lnet/minecraft/world/GameRules$Key;)Z", ordinal = 1), method = "mobTick")
    public boolean onCheckDoMobGriefing(net.minecraft.world.GameRules instance, GameRules.Key<GameRules.BooleanRule> rule) {
        if (this.world.getGameRules().getBoolean(DISABLE_WITHER_GRIEF)) {
            return false;
        } else {
            return this.world.getGameRules().getBoolean(rule);
        }
    }
}
