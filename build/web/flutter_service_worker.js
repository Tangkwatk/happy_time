'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "assets/AssetManifest.json": "4110e390467d5bf51b03c0df77db9adc",
"assets/assets/images/boyfriend.jpg": "0afd93908395fedf81a3f43476678bf4",
"assets/assets/images/bracelet.jpg": "0ad150ec2fd305361f438d42545958d3",
"assets/assets/images/bracelet2.jpg": "2e262d1c0805f2f26ecad4816400d10a",
"assets/assets/images/cake1.jpg": "e6de24fc1e3aa732a2c184e7c3b4126c",
"assets/assets/images/cake2.jpg": "1cd909961a86dd67e380f691b8121706",
"assets/assets/images/cake3.jpg": "302a2f0de6988454a66690149f130080",
"assets/assets/images/cake4.jpg": "63e78d7d0425626bc011a7711bc84cff",
"assets/assets/images/child.jpg": "2ec80178ffd3036e9755669c7686dc98",
"assets/assets/images/choc_cake.jpg": "c7f120a8a3c90ca3ca68e80d12ccda1a",
"assets/assets/images/clock.jpg": "0fa802d31bd33f815755602ac767d48c",
"assets/assets/images/clock2.jpg": "1dde18762d4fad3cf6d9077952a37225",
"assets/assets/images/clock3.jpg": "f081e4b139dc54faebe8d4a943f718ad",
"assets/assets/images/cupcake.jpg": "ae3c037d39e7243d226b89834f893fca",
"assets/assets/images/cupcake2.jpg": "c811e281794101c37c5c5bd6e552b077",
"assets/assets/images/cupcake3jpg.jpg": "ee0f44f45d89ecf605e0972e93162fee",
"assets/assets/images/dress.jpg": "933effe1c95c1c62852f7136af5032f0",
"assets/assets/images/fam.jpg": "9e89420d5a7a2054f01c9dca8fa8e03c",
"assets/assets/images/friend.jpg": "4a2af6ccbb5478e2d7e78b97be2c2559",
"assets/assets/images/girl.jpg": "7d472ee6c903732af0cdcf0dc357cf51",
"assets/assets/images/headset.png": "52622ae4f3d5f8409ed75c73b3c5ef7c",
"assets/assets/images/headset2.jpg": "a1091a64cf602939c2f89b8cf6edf329",
"assets/assets/images/ice_cream_cake.jpg": "d1dd6ab627e1a1c325c2117bdab2dba3",
"assets/assets/images/images.png": "1fef7f068cfdf23a02ed5998e06c1025",
"assets/assets/images/in%2520ear2.jpg": "93f2934687d9884627efba0ce90e18d4",
"assets/assets/images/inear1.jpg": "c6225e9aa04d74553fdcfb7cce9c2546",
"assets/assets/images/light.jpg": "1e9ebfc4ca2954c81ddc65d0032de678",
"assets/assets/images/light2.jpg": "fe51b978099b62abc82d93e824db6146",
"assets/assets/images/mouse.jpg": "58ebd8fc843e3772d31625490f30f6c7",
"assets/assets/images/necklace1.jpg": "bd665bf3f33f89deac4dad4f49d98953",
"assets/assets/images/necklace2.jpg": "cd0394ced6c0d9459331177f4e26e810",
"assets/assets/images/parent.png": "cd9cd2ae778e71e060e8214f978c3b21",
"assets/assets/images/profile.png": "7e70df52b0fa814088630d70b3470061",
"assets/assets/images/set.jpg": "febb909d7527cb123ffee5d2709ecc36",
"assets/assets/images/snow1.jpg": "b585727efd1575be96845e1a68303483",
"assets/assets/images/snow2.png": "b0051cfc4494b9d4eee8ef80913b08ea",
"assets/assets/images/snow3.jpg": "db36e68770ce2a69af79e2bafed0516c",
"assets/assets/images/snow4.jpg": "d5d9d416a93c758aa7b67b1177485c8f",
"assets/assets/images/snow5.jpg": "2733d892e60fd60a3ac5e2e2fa0710d7",
"assets/assets/images/snow6.jpg": "5b59d071faec55b44c1ad05ad95c56d9",
"assets/assets/images/vanilla-cara.jpg": "eeec9e0b8af8ae43b77830b7a00b7b94",
"assets/assets/images/Vanilla-cupcake.jpg": "57cfd033e9c730c8832f1275cb25030b",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/fonts/MaterialIcons-Regular.otf": "4e6447691c9509f7acdbf8a931a85ca1",
"assets/NOTICES": "8b5f0b8e497484f7604f333baa4fbc5b",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "e6d8ed62630fc0b9550c0e1fdf55748d",
"/": "e6d8ed62630fc0b9550c0e1fdf55748d",
"main.dart.js": "bcde30bb1531f000822137fb45f26f32",
"manifest.json": "71464fd5a417ed37e1366103998d757d",
"version.json": "70b4efb06c018fdac6664cd1f81dd309"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "/",
"main.dart.js",
"index.html",
"assets/NOTICES",
"assets/AssetManifest.json",
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
        // lazily populate the cache.
        return response || fetch(event.request).then((response) => {
          cache.put(event.request, response.clone());
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
