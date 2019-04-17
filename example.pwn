#include <a_samp>

#include "components.inc"

main() 
{
    new modelid, componentid, count, array[MAX_VEHICLE_COMPONENTS], name[MAX_VEHICLE_COMPONENT_NAME];

    for (new i; i < MAX_VEHICLES_MODELS; i++)
    {
        modelid = i + 400;

        if (DoesVehicleHaveUpgrades(modelid)) {
            GetVehicleCompatibleUpgrades(modelid, array, sizeof(array), count);
        }

        for (new j; j < count; j++)
        {
            componentid = array[j];

            if (IsVehicleUpgradeCompatible(modelid, componentid))
            {
                GetVehicleComponentName(componentid, name, sizeof(name));

                printf("Modelid: %d, Componentid: %d, Name: %s, Cost: %d", modelid, componentid, name, GetVehicleComponentCost(componentid));
            }
        }
    }
}
