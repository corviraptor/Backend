package net.dredgesmp.dredgetweaks.mixin;

import net.minecraft.entity.EntityType;
import net.minecraft.entity.projectile.ExplosiveProjectileEntity;
import net.minecraft.entity.projectile.WitherSkullEntity;
import net.minecraft.world.World;
import net.minecraft.world.explosion.Explosion;
import org.spongepowered.asm.mixin.Mixin;
import org.spongepowered.asm.mixin.injection.At;
import org.spongepowered.asm.mixin.injection.ModifyVariable;

import static net.dredgesmp.dredgetweaks.DredgeTweaks.DISABLE_WITHER_GRIEF;

@Mixin(WitherSkullEntity.class)
public class AntiWitherSkullGriefMixin extends ExplosiveProjectileEntity {
    protected AntiWitherSkullGriefMixin(EntityType<? extends ExplosiveProjectileEntity> entityType, World world) {
        super(entityType, world);
    }

    @ModifyVariable(at = @At("STORE"), method = "onCollision")
    Explosion.DestructionType updateDestructionType(Explosion.DestructionType destructionType) {
        return this.world.getGameRules().getBoolean(DISABLE_WITHER_GRIEF) ? Explosion.DestructionType.NONE : destructionType;
    }
}
