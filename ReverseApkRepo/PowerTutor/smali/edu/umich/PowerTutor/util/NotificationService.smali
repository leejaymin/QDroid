.class public Ledu/umich/PowerTutor/util/NotificationService;
.super Ljava/lang/Object;
.source "NotificationService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ledu/umich/PowerTutor/util/NotificationService$DefaultReceiver;,
        Ledu/umich/PowerTutor/util/NotificationService$NotificationForwarder;,
        Ledu/umich/PowerTutor/util/NotificationService$PrintNotifications;
    }
.end annotation


# static fields
.field private static final STATE_HOOK_FAILED:I = 0x2

.field private static final STATE_HOOK_INSTALLED:I = 0x1

.field private static final STATE_INIT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "NotificationService"

.field private static hookState:I

.field private static hooks:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ledu/umich/PowerTutor/PowerNotifications;",
            ">;"
        }
    .end annotation
.end field

.field private static methodGetService:Ljava/lang/reflect/Method;

.field private static notifier:Landroid/os/Binder;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 49
    sput v2, Ledu/umich/PowerTutor/util/NotificationService;->hookState:I

    .line 50
    new-instance v2, Ledu/umich/PowerTutor/util/NotificationService$NotificationForwarder;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ledu/umich/PowerTutor/util/NotificationService$NotificationForwarder;-><init>(Ledu/umich/PowerTutor/util/NotificationService$NotificationForwarder;)V

    sput-object v2, Ledu/umich/PowerTutor/util/NotificationService;->notifier:Landroid/os/Binder;

    .line 52
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 51
    sput-object v2, Ledu/umich/PowerTutor/util/NotificationService;->hooks:Ljava/util/Vector;

    .line 58
    :try_start_0
    const-string v2, "android.os.ServiceManager"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 59
    .local v0, classServiceManager:Ljava/lang/Class;
    const-string v2, "getService"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Ledu/umich/PowerTutor/util/NotificationService;->methodGetService:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 35
    :goto_0
    return-void

    .line 60
    :catch_0
    move-exception v1

    .line 61
    .local v1, e:Ljava/lang/NoSuchMethodException;
    const-string v2, "NotificationService"

    const-string v3, "Could not find method gerService"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 62
    .end local v1           #e:Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v1

    .line 63
    .local v1, e:Ljava/lang/ClassNotFoundException;
    const-string v2, "NotificationService"

    const-string v3, "Could not find class android.os.ServiceManager"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()Ljava/util/Vector;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Ledu/umich/PowerTutor/util/NotificationService;->hooks:Ljava/util/Vector;

    return-object v0
.end method

.method public static addHook(Ledu/umich/PowerTutor/PowerNotifications;)V
    .locals 3
    .parameter "notif"

    .prologue
    .line 89
    sget-object v1, Ledu/umich/PowerTutor/util/NotificationService;->hooks:Ljava/util/Vector;

    monitor-enter v1

    .line 90
    :try_start_0
    sget v0, Ledu/umich/PowerTutor/util/NotificationService;->hookState:I

    if-nez v0, :cond_0

    .line 91
    invoke-static {}, Ledu/umich/PowerTutor/util/NotificationService;->installHook()V

    .line 93
    :cond_0
    sget v0, Ledu/umich/PowerTutor/util/NotificationService;->hookState:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    .line 94
    const-string v0, "NotificationService"

    const-string v2, "Attempted to add hook though no notification service available"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :goto_0
    monitor-exit v1

    .line 100
    return-void

    .line 97
    :cond_1
    sget-object v0, Ledu/umich/PowerTutor/util/NotificationService;->hooks:Ljava/util/Vector;

    invoke-virtual {v0, p0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 89
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static available()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 80
    sget-object v2, Ledu/umich/PowerTutor/util/NotificationService;->hooks:Ljava/util/Vector;

    monitor-enter v2

    .line 81
    :try_start_0
    sget v3, Ledu/umich/PowerTutor/util/NotificationService;->hookState:I

    if-nez v3, :cond_1

    .line 82
    invoke-static {}, Ledu/umich/PowerTutor/util/NotificationService;->getBatteryService()Landroid/os/IBinder;

    move-result-object v3

    if-eqz v3, :cond_0

    :goto_0
    monitor-exit v2

    .line 84
    :goto_1
    return v0

    :cond_0
    move v0, v1

    .line 82
    goto :goto_0

    .line 84
    :cond_1
    sget v3, Ledu/umich/PowerTutor/util/NotificationService;->hookState:I

    if-ne v3, v0, :cond_2

    :goto_2
    monitor-exit v2

    goto :goto_1

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    move v0, v1

    .line 84
    goto :goto_2
.end method

.method private static getBatteryService()Landroid/os/IBinder;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 68
    sget-object v1, Ledu/umich/PowerTutor/util/NotificationService;->methodGetService:Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    move-object v1, v2

    .line 76
    :goto_0
    return-object v1

    .line 70
    :cond_0
    :try_start_0
    sget-object v1, Ledu/umich/PowerTutor/util/NotificationService;->methodGetService:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "batteryhook"

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 71
    :catch_0
    move-exception v0

    .line 72
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    const-string v1, "NotificationService"

    const-string v3, "Call to get service failed"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0           #e:Ljava/lang/reflect/InvocationTargetException;
    :goto_1
    move-object v1, v2

    .line 76
    goto :goto_0

    .line 73
    :catch_1
    move-exception v0

    .line 74
    .local v0, e:Ljava/lang/IllegalAccessException;
    const-string v1, "NotificationService"

    const-string v3, "Call to get service failed"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private static installHook()V
    .locals 6

    .prologue
    .line 109
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 110
    .local v2, outBinder:Landroid/os/Parcel;
    sget-object v3, Ledu/umich/PowerTutor/util/NotificationService;->notifier:Landroid/os/Binder;

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 111
    const/4 v3, 0x2

    sput v3, Ledu/umich/PowerTutor/util/NotificationService;->hookState:I

    .line 113
    :try_start_0
    invoke-static {}, Ledu/umich/PowerTutor/util/NotificationService;->getBatteryService()Landroid/os/IBinder;

    move-result-object v0

    .line 114
    .local v0, batteryHook:Landroid/os/IBinder;
    if-nez v0, :cond_0

    .line 118
    const-string v3, "NotificationService"

    const-string v4, "No power notification hook service installed"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    .end local v0           #batteryHook:Landroid/os/IBinder;
    :goto_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 128
    return-void

    .line 119
    .restart local v0       #batteryHook:Landroid/os/IBinder;
    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_1
    invoke-interface {v0, v3, v2, v4, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 120
    const-string v3, "NotificationService"

    const-string v4, "Failed to register forwarder"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 124
    .end local v0           #batteryHook:Landroid/os/IBinder;
    :catch_0
    move-exception v1

    .line 125
    .local v1, e:Landroid/os/RemoteException;
    const-string v3, "NotificationService"

    const-string v4, "Failed to register forwarder"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 122
    .end local v1           #e:Landroid/os/RemoteException;
    .restart local v0       #batteryHook:Landroid/os/IBinder;
    :cond_1
    const/4 v3, 0x1

    :try_start_2
    sput v3, Ledu/umich/PowerTutor/util/NotificationService;->hookState:I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method

.method public static removeHook(Ledu/umich/PowerTutor/PowerNotifications;)V
    .locals 2
    .parameter "notif"

    .prologue
    .line 103
    sget-object v1, Ledu/umich/PowerTutor/util/NotificationService;->hooks:Ljava/util/Vector;

    monitor-enter v1

    .line 104
    :try_start_0
    sget-object v0, Ledu/umich/PowerTutor/util/NotificationService;->hooks:Ljava/util/Vector;

    invoke-virtual {v0, p0}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 103
    monitor-exit v1

    .line 106
    return-void

    .line 103
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
