.class public final Lccc71/utils/phone/a/b;
.super Lccc71/utils/phone/a/i;
.source "SourceFile"


# static fields
.field private static a:[I

.field private static g:Landroid/location/LocationManager;

.field private static h:Lccc71/utils/phone/a/b;

.field private static i:Landroid/location/GpsStatus$Listener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 15
    const/4 v0, 0x6

    new-array v0, v0, [I

    const/4 v1, 0x1

    const v2, -0xff5600

    aput v2, v0, v1

    const/4 v1, 0x2

    const v2, -0x774478

    aput v2, v0, v1

    const/4 v1, 0x3

    const v2, -0xff7800

    aput v2, v0, v1

    const/4 v1, 0x4

    const v2, -0xffab00

    aput v2, v0, v1

    const/4 v1, 0x5

    const v2, -0xbb44bc

    aput v2, v0, v1

    sput-object v0, Lccc71/utils/phone/a/b;->a:[I

    .line 31
    new-instance v0, Lccc71/utils/phone/a/c;

    invoke-direct {v0}, Lccc71/utils/phone/a/c;-><init>()V

    sput-object v0, Lccc71/utils/phone/a/b;->i:Landroid/location/GpsStatus$Listener;

    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 23
    const/16 v0, -0x85

    invoke-direct {p0, p1, v0, p2}, Lccc71/utils/phone/a/i;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 25
    sput-object p0, Lccc71/utils/phone/a/b;->h:Lccc71/utils/phone/a/b;

    .line 26
    return-void
.end method

.method public static a(I)I
    .locals 1
    .parameter

    .prologue
    .line 18
    sget-object v0, Lccc71/utils/phone/a/b;->a:[I

    aget v0, v0, p0

    return v0
.end method

.method static synthetic a()Lccc71/utils/phone/a/b;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lccc71/utils/phone/a/b;->h:Lccc71/utils/phone/a/b;

    return-object v0
.end method

.method static synthetic b()Landroid/location/LocationManager;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lccc71/utils/phone/a/b;->g:Landroid/location/LocationManager;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 83
    sget-object v0, Lccc71/utils/phone/a/b;->g:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    .line 84
    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    sput-object v0, Lccc71/utils/phone/a/b;->g:Landroid/location/LocationManager;

    .line 86
    :cond_0
    sget-object v0, Lccc71/utils/phone/a/b;->g:Landroid/location/LocationManager;

    sget-object v1, Lccc71/utils/phone/a/b;->i:Landroid/location/GpsStatus$Listener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->addGpsStatusListener(Landroid/location/GpsStatus$Listener;)Z

    .line 88
    const-string v0, "process_monitor_widget"

    const-string v1, "Registered GPS listener"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    return-void
.end method

.method public final b(I)I
    .locals 1
    .parameter

    .prologue
    .line 105
    add-int/lit8 v0, p1, 0x3

    return v0
.end method

.method public final b(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 94
    sget-object v0, Lccc71/utils/phone/a/b;->g:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    .line 95
    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    sput-object v0, Lccc71/utils/phone/a/b;->g:Landroid/location/LocationManager;

    .line 97
    :cond_0
    sget-object v0, Lccc71/utils/phone/a/b;->g:Landroid/location/LocationManager;

    sget-object v1, Lccc71/utils/phone/a/b;->i:Landroid/location/GpsStatus$Listener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeGpsStatusListener(Landroid/location/GpsStatus$Listener;)V

    .line 98
    const-string v0, "process_monitor_widget"

    const-string v1, "Unregistered GPS listener"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    return-void
.end method
