#include "distance_measure_factory.hpp"

#if defined(_0)
#include "baseline_distance.hpp"
#define METHOD BaselineDistance
#elif defined(_128)
#include "__m128d__distance.hpp"
#define METHOD __m128d__Distance
#elif defined(_256)
#include "__m256d__distance.hpp"
#define METHOD __m256d__Distance
#else
#include "baseline_distance.hpp"
#define METHOD BaselineDistance
#endif

DistanceMeasure *
DistanceMeasureFactory::produce()
{
    return DistanceMeasureFactory::provider<METHOD>();
}

template<class DM>
DistanceMeasure *
DistanceMeasureFactory::provider()
{
    return new DM();
}
