.class public Lccc71/utils/android/ccc71_service;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field private static final a:[Ljava/lang/Class;

.field private static final b:[Ljava/lang/Class;

.field private static final c:[Ljava/lang/Class;


# instance fields
.field private d:Landroid/app/NotificationManager;

.field private e:Ljava/lang/reflect/Method;

.field private f:Ljava/lang/reflect/Method;

.field private g:Ljava/lang/reflect/Method;

.field private h:[Ljava/lang/Object;

.field private i:[Ljava/lang/Object;

.field private j:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 17
    new-array v0, v3, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v2

    sput-object v0, Lccc71/utils/android/ccc71_service;->a:[Ljava/lang/Class;

    .line 18
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v2

    const-class v1, Landroid/app/Notification;

    aput-object v1, v0, v3

    sput-object v0, Lccc71/utils/android/ccc71_service;->b:[Ljava/lang/Class;

    .line 19
    new-array v0, v3, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v2

    sput-object v0, Lccc71/utils/android/ccc71_service;->c:[Ljava/lang/Class;

    .line 15
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 15
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 25
    new-array v0, v1, [Ljava/lang/Object;

    iput-object v0, p0, Lccc71/utils/android/ccc71_service;->h:[Ljava/lang/Object;

    .line 26
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lccc71/utils/android/ccc71_service;->i:[Ljava/lang/Object;

    .line 27
    new-array v0, v1, [Ljava/lang/Object;

    iput-object v0, p0, Lccc71/utils/android/ccc71_service;->j:[Ljava/lang/Object;

    .line 15
    return-void
.end method

.method private a(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 60
    :try_start_0
    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :goto_0
    return-void

    .line 64
    :catch_0
    move-exception v0

    const-string v0, "process_monitor_widget"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to invoke method: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 91
    iget-object v0, p0, Lccc71/utils/android/ccc71_service;->g:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lccc71/utils/android/ccc71_service;->j:[Ljava/lang/Object;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v1, v0, v2

    .line 94
    iget-object v0, p0, Lccc71/utils/android/ccc71_service;->g:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lccc71/utils/android/ccc71_service;->j:[Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lccc71/utils/android/ccc71_service;->a(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    .line 104
    :goto_0
    return-void

    .line 101
    :cond_0
    iget-object v0, p0, Lccc71/utils/android/ccc71_service;->d:Landroid/app/NotificationManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 102
    iget-object v0, p0, Lccc71/utils/android/ccc71_service;->h:[Ljava/lang/Object;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v1, v0, v2

    .line 103
    iget-object v0, p0, Lccc71/utils/android/ccc71_service;->e:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lccc71/utils/android/ccc71_service;->h:[Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lccc71/utils/android/ccc71_service;->a(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final a(Landroid/app/Notification;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 72
    iget-object v0, p0, Lccc71/utils/android/ccc71_service;->f:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lccc71/utils/android/ccc71_service;->i:[Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    .line 75
    iget-object v0, p0, Lccc71/utils/android/ccc71_service;->i:[Ljava/lang/Object;

    aput-object p1, v0, v2

    .line 76
    iget-object v0, p0, Lccc71/utils/android/ccc71_service;->f:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lccc71/utils/android/ccc71_service;->i:[Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lccc71/utils/android/ccc71_service;->a(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    .line 85
    :goto_0
    return-void

    .line 82
    :cond_0
    iget-object v0, p0, Lccc71/utils/android/ccc71_service;->h:[Ljava/lang/Object;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v1, v0, v3

    .line 83
    iget-object v0, p0, Lccc71/utils/android/ccc71_service;->e:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lccc71/utils/android/ccc71_service;->h:[Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lccc71/utils/android/ccc71_service;->a(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    .line 84
    iget-object v0, p0, Lccc71/utils/android/ccc71_service;->d:Landroid/app/NotificationManager;

    invoke-virtual {v0, v2, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter

    .prologue
    .line 109
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 32
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 34
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lccc71/utils/android/ccc71_service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lccc71/utils/android/ccc71_service;->d:Landroid/app/NotificationManager;

    .line 37
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "startForeground"

    sget-object v2, Lccc71/utils/android/ccc71_service;->b:[Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lccc71/utils/android/ccc71_service;->f:Ljava/lang/reflect/Method;

    .line 38
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "stopForeground"

    sget-object v2, Lccc71/utils/android/ccc71_service;->c:[Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lccc71/utils/android/ccc71_service;->g:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "setForeground"

    sget-object v2, Lccc71/utils/android/ccc71_service;->a:[Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lccc71/utils/android/ccc71_service;->e:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    .line 54
    :goto_1
    return-void

    .line 42
    :catch_0
    move-exception v0

    const-string v0, "process_monitor_widget"

    const-string v1, "Running on an older platform"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lccc71/utils/android/ccc71_service;->g:Ljava/lang/reflect/Method;

    iput-object v0, p0, Lccc71/utils/android/ccc71_service;->f:Ljava/lang/reflect/Method;

    goto :goto_0

    .line 52
    :catch_1
    move-exception v0

    const-string v0, "process_monitor_widget"

    const-string v1, "Cannot find startForeground or setForeground!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
