const functions = require("firebase-functions");
const admin = require('firebase-admin');
const { messaging } = require("firebase-admin");
admin.initializeApp();
const firestore = admin.firestore();

const message = (fcmToken, text) => ({
    notification: {
        title: '新しいメッセージがあります',
        body: `${text}`,
    },
    android: {
        priority: "high",
    },
    apns: {
        headers: {
            'apns-priority': '10'
        },
        payload: {
            aps: {
                contentAvailable: true,
                badge: 9999,
                sound: 'default'
            }
        }
    },
    data: {
        data: 'test',
    },
    token: fcmToken
});

exports.myPush = functions.region('asia-northeast1')
    .runWith({ memory: '512MB' })
    // .pubsub.schedule('every day 09:00')
    .pubsub.schedule('every 1 minutes')
    .timeZone('Asia/Tokyo')
    .onRun(async (context) => {

        var today = new Date();
        let day = today.getDate();
        let month = today.getMonth() + 1;
        let year = today.getFullYear();
        console.log('today =  ', `${year}年${month}月${day}日`)

        const collectionRef = firestore.collectionGroup('post');
        await collectionRef.get().then(snapshot => {
            snapshot.forEach(doc => {
                var timeStamp = doc.data()['notifyDate'];
                let date = (() => {
                    let s = timeStamp.seconds;
                    s = s - s % (60 * 60 * 24);
                    return new admin.firestore.Timestamp(s, 0);
                })();

                var notifyDate = date.toDate();
                let notifyYear = notifyDate.getFullYear();
                let notifyMonth = notifyDate.getMonth() + 1;
                let notifyDay = notifyDate.getDate() + 1;
                console.log('notifyDay =  ', `${notifyYear}年${notifyMonth}月${notifyDay}日`);

                if (notifyYear == year && notifyMonth == month && notifyDay == day) {
                    let fcmToken = doc.data()['fcmToken'];
                    let text = doc.data()['text'];
                    admin.messaging().send(message(fcmToken, text));
                }

            });
        });
    });
