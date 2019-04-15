#include <a_samp>

#include "components.inc"

main() 
{
    new modelid, componentid, array[MAX_VEHICLE_COMPONENTS];

    for (new i; i < MAX_VEHICLES_MODELS; i++)
    {
        modelid = i + 400;

        if (IsVehicleHaveUpgrades(modelid)) {
            GetVehicleCompatibleUpgrades(modelid, array, sizeof(array));
        }

        for (new j; j < MAX_VEHICLE_COMPONENTS; j++)
        {
            componentid = array[j];

            if (IsVehicleUpgradeCompatible(modelid, componentid)) {
                printf("Modelid: %d, Componentid: %d, Name: %s, Cost: %d", modelid, componentid, GetVehicleComponentName(componentid), GetVehicleComponentCost(componentid));
            }
        }
    }
}
