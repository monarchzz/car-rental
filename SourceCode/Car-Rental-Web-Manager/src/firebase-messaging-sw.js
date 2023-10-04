importScripts(
    "https://www.gstatic.com/firebasejs/9.0.1/firebase-app-compat.js"
);
importScripts(
    "https://www.gstatic.com/firebasejs/9.0.1/firebase-messaging-compat.js"
);

firebase.initializeApp({
    apiKey: "AIzaSyBSMHtxwcg5WBIlJIxPXo8PN2sZ793rLwg",
    authDomain: "car-rental-2e561.firebaseapp.com",
    projectId: "car-rental-2e561",
    storageBucket: "car-rental-2e561.appspot.com",
    messagingSenderId: "1089171419911",
    appId: "1:1089171419911:web:dfd4f7d6e21c3d5c6e8ba2",
    measurementId: "G-WBM1E5GV9Y",
});

const messaging = firebase.messaging();

messaging.onBackgroundMessage((payload) => {
    self.registration.getNotifications().then((notifications) => {
        const notificationTitle = payload.notification.title;
        const notificationOptions = {
            body: payload.notification.body,
            icon: "/assets/icons/icon-72x72.png",
            renotify: false,
            timestamp: Date.now(),
        };

        // Kiểm tra xem có thông báo nào đang được hiển thị hay không
        if (
            notifications.some(
                (notification) =>
                    notification.title === notificationTitle &&
                    notification.body === notificationOptions.body
            )
        ) {
            return;
        }

        // Hiển thị thông báo nếu không có thông báo nào đang được hiển thị
        self.registration.showNotification(
            notificationTitle,
            notificationOptions
        );
    });
});
