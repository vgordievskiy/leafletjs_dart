// Copyright (c) 2015, <your name>. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

// This file is only used by Dart Editor. It displays errors and warnings after
// analyzing a polymer.dart app.

import 'package:js_wrapping/generators/js_interface_generator.dart';
import 'package:source_gen/source_gen.dart';

main(List<String> args) async {
  f(List<String> args) async => await build(args, [new JsInterfaceGenerator()],
      librarySearchPaths: ['lib/leafletjs_js_bindings']);
  await f(args);
  print(await f(args));
}
