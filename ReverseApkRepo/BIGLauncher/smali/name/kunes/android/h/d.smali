.class public final Lname/kunes/android/h/d;
.super Ljava/lang/Object;


# static fields
.field private static final a:[Ljava/lang/String;

.field private static final b:[Ljava/lang/String;

.field private static final c:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.android.alarmclock/com.android.alarmclock.AlarmClock"

    aput-object v1, v0, v3

    const-string v1, "com.htc.android.worldclock/com.htc.android.worldclock.WorldClockTabControl"

    aput-object v1, v0, v4

    const-string v1, "com.android.deskclock/com.android.deskclock.AlarmClock"

    aput-object v1, v0, v5

    const-string v1, "com.google.android.deskclock/com.android.deskclock.DeskClock"

    aput-object v1, v0, v6

    const-string v1, "com.motorola.blur.alarmclock/com.motorola.blur.alarmclock.AlarmClock"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "com.sec.android.app.clockpackage/com.sec.android.app.clockpackage.ClockPackage"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "zte.com.cn.alarmclock/zte.com.cn.alarmclock.AlarmClock"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.lge.clock/com.lge.clock.Clock"

    aput-object v2, v0, v1

    sput-object v0, Lname/kunes/android/h/d;->a:[Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.htc.album/com.htc.album.AlbumTabSwitchActivity"

    aput-object v1, v0, v3

    const-string v1, "com.htc.album/com.htc.album.AlbumMain.ActivityMainCarousel"

    aput-object v1, v0, v4

    const-string v1, "com.htc.album/com.htc.album.AlbumMain.ActivityMainDropList"

    aput-object v1, v0, v5

    const-string v1, "com.android.gallery3d/com.android.gallery3d.app.Gallery"

    aput-object v1, v0, v6

    const-string v1, "com.android.sec.gallery3d/com.android.sec.gallery3d.app.Gallery"

    aput-object v1, v0, v7

    sput-object v0, Lname/kunes/android/h/d;->b:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "com.android.contacts/com.sec.android.app.contacts.PhoneBookTopMenuActivity"

    aput-object v1, v0, v3

    sput-object v0, Lname/kunes/android/h/d;->c:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Landroid/content/pm/PackageManager;)Landroid/content/Intent;
    .locals 1

    sget-object v0, Lname/kunes/android/h/d;->a:[Ljava/lang/String;

    invoke-static {p0, v0}, Lname/kunes/android/h/d;->a(Landroid/content/pm/PackageManager;[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/content/pm/PackageManager;[Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    array-length v2, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v2, :cond_1

    const/4 v0, 0x0

    :cond_0
    return-object v0

    :cond_1
    aget-object v0, p1, v1

    invoke-static {p0, v0}, Lname/kunes/android/c/l;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v0}, Lname/kunes/android/h/a;->a(Landroid/content/pm/ActivityInfo;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method static b(Landroid/content/pm/PackageManager;)Landroid/content/Intent;
    .locals 1

    sget-object v0, Lname/kunes/android/h/d;->b:[Ljava/lang/String;

    invoke-static {p0, v0}, Lname/kunes/android/h/d;->a(Landroid/content/pm/PackageManager;[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method
