// Copyright 2023 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.






import 'package:device_preview_demo/main_delegate.dart';

void main() {
  // No need to directly call the enbironment config setup as it is
  // lazy loaded. In the story board case one uses overrides to
  // set isMockOverride and buildVariantOverride
  mainDelegate();
}
