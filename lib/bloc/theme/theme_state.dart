part of 'theme_cubit.dart';

@immutable
class ThemeState extends Equatable {
  final ThemeData theme;
  const ThemeState(this.theme);

  @override
  List<Object?> get props => [theme];
}
