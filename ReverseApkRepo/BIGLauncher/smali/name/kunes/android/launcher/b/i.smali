.class public final Lname/kunes/android/launcher/b/i;
.super Ljava/lang/Object;


# static fields
.field private static a:Z

.field private static final b:Landroid/content/BroadcastReceiver;

.field private static final c:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lname/kunes/android/launcher/b/i;->a:Z

    new-instance v0, Lname/kunes/android/launcher/b/h;

    invoke-direct {v0}, Lname/kunes/android/launcher/b/h;-><init>()V

    sput-object v0, Lname/kunes/android/launcher/b/i;->b:Landroid/content/BroadcastReceiver;

    new-instance v0, Lname/kunes/android/launcher/b/g;

    invoke-direct {v0}, Lname/kunes/android/launcher/b/g;-><init>()V

    sput-object v0, Lname/kunes/android/launcher/b/i;->c:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static varargs a([Ljava/lang/String;)Landroid/content/IntentFilter;
    .locals 4

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    array-length v2, p0

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_0

    const-string v0, "package"

    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const-string v0, "file"

    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    return-object v1

    :cond_0
    aget-object v3, p0, v0

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    sget-boolean v0, Lname/kunes/android/launcher/b/i;->a:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Lname/kunes/android/launcher/b/m;->a(Landroid/content/Context;)V

    sput-boolean v4, Lname/kunes/android/launcher/b/i;->a:Z

    :cond_0
    sget-object v0, Lname/kunes/android/launcher/b/i;->b:Landroid/content/BroadcastReceiver;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "android.intent.action.PACKAGE_ADDED"

    aput-object v2, v1, v5

    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    aput-object v2, v1, v4

    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    aput-object v2, v1, v6

    const-string v2, "android.intent.action.MEDIA_EJECT"

    aput-object v2, v1, v7

    const-string v2, "android.intent.action.MEDIA_REMOVED"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "android.intent.action.MEDIA_UNMOUNTED"

    aput-object v3, v1, v2

    invoke-static {v1}, Lname/kunes/android/launcher/b/i;->a([Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    sget-object v0, Lname/kunes/android/launcher/b/i;->c:Landroid/content/BroadcastReceiver;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    aput-object v2, v1, v5

    const-string v2, "android.intent.action.MEDIA_BAD_REMOVAL"

    aput-object v2, v1, v4

    const-string v2, "android.intent.action.MEDIA_CHECKING"

    aput-object v2, v1, v6

    const-string v2, "android.intent.action.MEDIA_UNMOUNTABLE"

    aput-object v2, v1, v7

    const-string v2, "android.intent.action.MEDIA_SCANNER_FINISHED"

    aput-object v2, v1, v8

    invoke-static {v1}, Lname/kunes/android/launcher/b/i;->a([Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public static b(Landroid/app/Activity;)V
    .locals 1

    sget-object v0, Lname/kunes/android/launcher/b/i;->b:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    sget-object v0, Lname/kunes/android/launcher/b/i;->c:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
