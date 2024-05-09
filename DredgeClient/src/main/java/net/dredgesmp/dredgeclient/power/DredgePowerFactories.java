package net.dredgesmp.dredgeclient.power;

import io.github.apace100.apoli.power.Power;
import io.github.apace100.apoli.power.factory.PowerFactory;
import io.github.apace100.apoli.registry.ApoliRegistries;
import net.minecraft.util.Identifier;
import net.minecraft.util.registry.Registry;

import static net.dredgesmp.dredgeclient.DredgeClient.MOD_ID;

public class DredgePowerFactories {
    public static void register() {
        register(
                (PowerFactory<?>) Power.createSimpleFactory(
                        WalkOnSnowPower::new,
                        new Identifier(MOD_ID, "walk_on_snow")
                )
        );
    }

    public static void register(final PowerFactory<?> serializer) {
        Registry.register(ApoliRegistries.POWER_FACTORY, serializer.getSerializerId(), serializer);
    }
}
