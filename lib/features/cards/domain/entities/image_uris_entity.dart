class ImageUrisEntity {
  ImageUrisEntity({
    this.small,
    this.normal,
    this.large,
    this.png,
    this.artCrop,
    this.borderCrop,
  });

  String? small;
  String? normal;
  String? large;
  String? png;
  String? artCrop;
  String? borderCrop;

  String get smallest {
    if (small == null && normal == null) {
      return large ??
          'https://digitalmoove.com/wp-content/themes/ryse/assets/images/no-image/No-Image-Found-400x264.png';
    } else if (small == null) {
      return normal ??
          'https://digitalmoove.com/wp-content/themes/ryse/assets/images/no-image/No-Image-Found-400x264.png';
    } else {
      return small ??
          'https://digitalmoove.com/wp-content/themes/ryse/assets/images/no-image/No-Image-Found-400x264.png';
    }
  }

  String get largest {
    if (large != null) {
      return large!;
    } else if (normal != null) {
      return normal!;
    } else if (small != null) {
      return small!;
    } else {
      return 'https://digitalmoove.com/wp-content/themes/ryse/assets/images/no-image/No-Image-Found-400x264.png';
    }
  }
}
