'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"flutter_bootstrap.js": "d25e7dea5b4088317e1b77731cb41af2",
"version.json": "27f0cf65282805289da8db375227a5d1",
"index.html": "1fa89fde48ff5c1bacfefac869620664",
"/": "1fa89fde48ff5c1bacfefac869620664",
"main.dart.js": "cac60c98e58507ff222af8b43e15ff96",
"404.html": "3ec7e788032334e5b43d5ac9127078c8",
"flutter.js": "76f08d47ff9f5715220992f993002504",
"favicon.png": "95e6fab9c8c3625c6ee3c979cac878f0",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"manifest.json": "41fd1d18772a0a819c3e5fc84a22cfae",
"assets/AssetManifest.json": "b925d5ba49e4fa6da103b60359d1c143",
"assets/NOTICES": "a64381dbac2596617a5f52ef59a92c5e",
"assets/FontManifest.json": "5a32d4310a6f5d9a6b651e75ba0d7372",
"assets/AssetManifest.bin.json": "6cc4537b889a8e2bb1586a5df17deb07",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "33b7d9392238c04c131b6ce224e13711",
"assets/packages/font_awesome_flutter/lib/fonts/fa-solid-900.ttf": "03884bce4fbbae878004a3635a52ac65",
"assets/packages/font_awesome_flutter/lib/fonts/fa-regular-400.ttf": "bf21cd8fd775a3c59fd53afdee39e0e6",
"assets/packages/font_awesome_flutter/lib/fonts/fa-brands-400.ttf": "cdfb02dea76c7baa84be0f84d2214927",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/AssetManifest.bin": "1cf9d085edc59c081e888b2bc889b869",
"assets/fonts/MaterialIcons-Regular.otf": "33088ca7924dbe3f1bce3f464676b55f",
"assets/assets/images/me.png": "95e6fab9c8c3625c6ee3c979cac878f0",
"assets/assets/images/flask.png": "d8c2a2b6d5e6a2a5d3aaa82105e3879a",
"assets/assets/images/git.png": "042664999475fd8cc3672db6567e2e53",
"assets/assets/images/docker.png": "92b913c0eb1acf0d7035080cd533a337",
"assets/assets/images/kubernetes.png": "6d4833c9e68de96d5edcf7fa6472f54e",
"assets/assets/images/python.png": "ee47926e4b4d359d320c6b2058f06d7e",
"assets/assets/images/flutter.png": "d0515092173211776ceed19b39c2a041",
"assets/assets/images/cpp.png": "ac23f6b74e25e1404e079443ceddb10f",
"assets/assets/images/projects/sugamkrishi-folder/8.png": "9dd951e4a13493ef5f7610d751942cac",
"assets/assets/images/projects/sugamkrishi-folder/4.png": "84d78f85bf5fef3ff6f9e6b7abe9cad5",
"assets/assets/images/projects/sugamkrishi-folder/5.png": "a087e5c924f693fe4c4a94ad29c12264",
"assets/assets/images/projects/sugamkrishi-folder/7.png": "4fb32cb50a86333b8d3dd371ee1089e9",
"assets/assets/images/projects/sugamkrishi-folder/6.png": "1918a5fdd6b9b61f7f1888fe860bf0b4",
"assets/assets/images/projects/sugamkrishi-folder/2.png": "b7402f5207f6e9c6771f1ab6d8d88d2a",
"assets/assets/images/projects/sugamkrishi-folder/3.png": "301f0283b7470f30c6667e8b2f41f90c",
"assets/assets/images/projects/sugamkrishi-folder/1.png": "a7e3c1154e2ea6c76225ece58679d98a",
"assets/assets/images/projects/sugamkrishi-folder/0.png": "2c7e34278e7c7b88dad2bd2fc2e448ea",
"assets/assets/images/projects/homepage-mockup.png": "11b0546841d8196f2ce83ef7d51a381f",
"assets/assets/images/projects/passwordzzz.png": "27c2682e8a5985e836919188e6f12103",
"assets/assets/images/projects/sugamkrishi.png": "79d991440740c19144568576366b7a53",
"assets/assets/images/projects/parakeet.png": "3058c05e590457c3ce7bce158adcd9eb",
"assets/assets/images/projects/passwordzzz-logo.png": "984560a37a7cd819a94714426106a118",
"assets/assets/images/projects/pageprism.png": "0e74282cceafedd9a869c33d17b09617",
"assets/assets/images/projects/icons/github.png": "43ce87609eb221d09d4832a9c0e709d0",
"assets/assets/images/projects/icons/LinkedIn%2520Logo.zip": "84bf556c29aafc0e68f32dc0f00c0176",
"assets/assets/images/projects/icons/github.zip": "31d758d054497d3c3f4dab7ae7353a2a",
"assets/assets/images/projects/icons/linkedin.png": "1b18d461ce75c75fdb4d7b6ec08b3e65",
"assets/assets/images/projects/icons/playstore.png": "13eebf14772fb62c074be5e92b500b19",
"assets/assets/images/projects/homepage.png": "434853feb4fa21bb607ff41e886d5dc2",
"assets/assets/images/projects/passwordzzz-folder/4.png": "6a607ddf2a04264020a4fc6146838705",
"assets/assets/images/projects/passwordzzz-folder/5.png": "c2cbd6138b3b0ba1aba6fbf92b57f73b",
"assets/assets/images/projects/passwordzzz-folder/6.png": "bae5fbebdea24925367b146917d787c1",
"assets/assets/images/projects/passwordzzz-folder/2.png": "379db95be44a0a296951d653fdadc779",
"assets/assets/images/projects/passwordzzz-folder/3.png": "bc825ed7143b2d494cc51a600b965f5a",
"assets/assets/images/projects/passwordzzz-folder/1.png": "a7c19d80cee20509e6337ab0f46cb3e5",
"assets/assets/images/projects/passwordzzz-folder/0.png": "5df83e370dcde6c49b2937b6e252548f",
"assets/assets/images/projects/sugamkrishi-logo.png": "79d991440740c19144568576366b7a53",
"assets/assets/images/firebase.png": "32e2a74775eb650bcd25c08b8518118c",
"assets/assets/images/supabase.png": "67f3074a2f8e72fee097c7345d4ba60d",
"assets/assets/images/credits.txt": "fa182f60b8c99cd5292e823330c6c7b6",
"assets/assets/images/node.png": "0c6b42197ce99c4e961d0243bd037bc1",
"assets/assets/images/mysql.png": "d76ff1872d0f758b4739fdd4d27d0cac",
"assets/assets/images/html.png": "f754ab5bb8a08c8d101c35f5f9ef8e2b",
"assets/assets/images/react.png": "0bf02684a9d831fbb28b1ebeb0f5adba",
"assets/assets/images/me2.png": "216fda460adf78e78137e47b6f6bed70",
"assets/assets/images/me3.png": "67d2cb0f7e09ad534d7d48031847ef29",
"assets/assets/images/css.png": "b8db80dfac7977472df1a2f7e6de8d4e",
"assets/assets/images/sqlite.png": "3f4224e06851d31c4074c323bb974b80",
"canvaskit/skwasm_st.js": "d1326ceef381ad382ab492ba5d96f04d",
"canvaskit/skwasm.js": "f2ad9363618c5f62e813740099a80e63",
"canvaskit/skwasm.js.symbols": "80806576fa1056b43dd6d0b445b4b6f7",
"canvaskit/canvaskit.js.symbols": "68eb703b9a609baef8ee0e413b442f33",
"canvaskit/skwasm.wasm": "f0dfd99007f989368db17c9abeed5a49",
"canvaskit/chromium/canvaskit.js.symbols": "5a23598a2a8efd18ec3b60de5d28af8f",
"canvaskit/chromium/canvaskit.js": "34beda9f39eb7d992d46125ca868dc61",
"canvaskit/chromium/canvaskit.wasm": "64a386c87532ae52ae041d18a32a3635",
"canvaskit/skwasm_st.js.symbols": "c7e7aac7cd8b612defd62b43e3050bdd",
"canvaskit/canvaskit.js": "86e461cf471c1640fd2b461ece4589df",
"canvaskit/canvaskit.wasm": "efeeba7dcc952dae57870d4df3111fad",
"canvaskit/skwasm_st.wasm": "56c3973560dfcbf28ce47cebe40f3206"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
