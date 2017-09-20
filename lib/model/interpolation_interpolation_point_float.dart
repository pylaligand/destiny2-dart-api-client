part of destiny2_api.api;

@Entity()
class InterpolationInterpolationPointFloat {
  
  @Property(name: 'value')
  double value = null;
  

  @Property(name: 'weight')
  double weight = null;
  
  InterpolationInterpolationPointFloat();

  @override
  String toString()  {
    return 'InterpolationInterpolationPointFloat[value=$value, weight=$weight, ]';
  }
}

