#include "DistanceMeasureFactory.hpp"

/* Resolve here based on compiler flags */
#if defined(_0)
#include "../../distance-measure/baseline_distance.hpp"
#define _METHOD BaselineDistance
#elif defined(_128)
#include "../../distance-measure/__m128d__distance.hpp"
#define _METHOD __m128d__Distance
#elif defined(_256)
#include "../../distance-measure/__m256d__distance.hpp"
#define _METHOD __m256d__Distance
#else
#include "../../distance-measure/baseline_distance.hpp"
#define _METHOD BaselineDistance
#endif

DistanceMeasure *
DistanceMeasureFactory::produce()
{
    return DistanceMeasureFactory::provider<_METHOD>();
}

template<class DM>
DistanceMeasure *
DistanceMeasureFactory::provider()
{
    return new DM();
}
