.class public Lti/modules/titanium/android/notificationmanager/NotificationManagerModule;
.super Lorg/appcelerator/kroll/KrollModule;
.source "NotificationManagerModule.java"


# static fields
.field public static final DEFAULT_ALL:I = -0x1

.field public static final DEFAULT_LIGHTS:I = 0x4

.field public static final DEFAULT_SOUND:I = 0x1

.field public static final DEFAULT_VIBRATE:I = 0x2

.field public static final FLAG_AUTO_CANCEL:I = 0x10

.field public static final FLAG_INSISTENT:I = 0x4

.field public static final FLAG_NO_CLEAR:I = 0x20

.field public static final FLAG_ONGOING_EVENT:I = 0x2

.field public static final FLAG_ONLY_ALERT_ONCE:I = 0x8

.field public static final FLAG_SHOW_LIGHTS:I = 0x1

.field private static final LCAT:Ljava/lang/String; = "TiNotificationManager"

.field protected static final PENDING_INTENT_FOR_ACTIVITY:I = 0x0

.field protected static final PENDING_INTENT_FOR_BROADCAST:I = 0x2

.field protected static final PENDING_INTENT_FOR_SERVICE:I = 0x1

.field protected static final PENDING_INTENT_MAX_VALUE:I = 0x1

.field public static final STREAM_DEFAULT:I = -0x1


# direct methods
.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 0
    .parameter "tiContext"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lorg/appcelerator/kroll/KrollModule;-><init>(Lorg/appcelerator/titanium/TiContext;)V

    .line 45
    return-void
.end method

.method private getManager(Lorg/appcelerator/kroll/KrollInvocation;)Landroid/app/NotificationManager;
    .locals 2
    .parameter "invocation"

    .prologue
    .line 57
    invoke-virtual {p1}, Lorg/appcelerator/kroll/KrollInvocation;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/app/NotificationManager;

    return-object p0
.end method


# virtual methods
.method public cancel(Lorg/appcelerator/kroll/KrollInvocation;I)V
    .locals 1
    .parameter "invocation"
    .parameter "id"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lti/modules/titanium/android/notificationmanager/NotificationManagerModule;->getManager(Lorg/appcelerator/kroll/KrollInvocation;)Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 64
    return-void
.end method

.method public cancelAll(Lorg/appcelerator/kroll/KrollInvocation;)V
    .locals 1
    .parameter "invocation"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lti/modules/titanium/android/notificationmanager/NotificationManagerModule;->getManager(Lorg/appcelerator/kroll/KrollInvocation;)Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    .line 70
    return-void
.end method

.method public createNotification(Lorg/appcelerator/kroll/KrollInvocation;[Ljava/lang/Object;)Lti/modules/titanium/android/notificationmanager/NotificationProxy;
    .locals 2
    .parameter "invocation"
    .parameter "args"

    .prologue
    .line 50
    new-instance v0, Lti/modules/titanium/android/notificationmanager/NotificationProxy;

    invoke-virtual {p1}, Lorg/appcelerator/kroll/KrollInvocation;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v1

    invoke-direct {v0, v1}, Lti/modules/titanium/android/notificationmanager/NotificationProxy;-><init>(Lorg/appcelerator/titanium/TiContext;)V

    .line 51
    .local v0, notification:Lti/modules/titanium/android/notificationmanager/NotificationProxy;
    invoke-virtual {v0, p0, p2}, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->handleCreationArgs(Lorg/appcelerator/kroll/KrollModule;[Ljava/lang/Object;)V

    .line 52
    return-object v0
.end method

.method public notify(Lorg/appcelerator/kroll/KrollInvocation;ILti/modules/titanium/android/notificationmanager/NotificationProxy;)V
    .locals 2
    .parameter "invocation"
    .parameter "id"
    .parameter "notificationProxy"

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lti/modules/titanium/android/notificationmanager/NotificationManagerModule;->getManager(Lorg/appcelerator/kroll/KrollInvocation;)Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {p3}, Lti/modules/titanium/android/notificationmanager/NotificationProxy;->getNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 76
    return-void
.end method
