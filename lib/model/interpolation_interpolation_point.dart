part of destiny2_api.api;

@Entity()
class InterpolationInterpolationPoint {
  
  @Property(name: 'value')
  int value = null;
  

  @Property(name: 'weight')
  int weight = null;
  
  InterpolationInterpolationPoint();

  @override
  String toString()  {
    return 'InterpolationInterpolationPoint[value=$value, weight=$weight, ]';
  }
}

