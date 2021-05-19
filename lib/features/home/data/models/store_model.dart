class StoreModel {
  String _nameStore;
  String _description;
  String _imageUrl;

  StoreModel(
    this._nameStore,
    this._description,
    this._imageUrl,
  );

  String get nameStore => _nameStore;

  set nameStore(String nameStore) {
    _nameStore = nameStore;
  }

  String get description => _description;

  set description(String description) {
    _description = description;
  }

  String get imageUrl => _imageUrl;

  set imageUrl(String imageUrl) {
    _imageUrl = imageUrl;
  }
}
