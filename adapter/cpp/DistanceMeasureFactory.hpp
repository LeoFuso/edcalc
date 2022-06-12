#ifndef DISTANCE_MEASURE_FACTORY_HPP
#define DISTANCE_MEASURE_FACTORY_HPP
#include "../../distance-measure/distance_measure.hpp"

class DistanceMeasureFactory
{
public:
    DistanceMeasure *
    produce();
private:
    template<class DM>
    DistanceMeasure *
    provider();
};
#endif //DISTANCE_MEASURE_FACTORY_HPP
