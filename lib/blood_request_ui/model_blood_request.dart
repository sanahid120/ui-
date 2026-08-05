class BloodRequest {
  final String urgency;
  final String bloodType;
  final String hospital;
  final int units;

  const BloodRequest({
    required this.urgency,
    required this.bloodType,
    required this.hospital,
    required this.units,
  });
}