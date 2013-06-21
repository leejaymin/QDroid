.class public final Limoblife/toolbox/full/h/a;
.super Ljava/lang/Object;


# static fields
.field public static final a:[[Ljava/lang/String;

.field private static b:Limoblife/toolbox/full/h/a;


# instance fields
.field private c:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v0, 0x11

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "Samsung Keypad"

    aput-object v2, v1, v4

    const-string v2, "com.samsung.sec.android.inputmethod.axt9"

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "Dialer"

    aput-object v2, v1, v4

    const-string v2, "com.android.phone"

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "Call"

    aput-object v2, v1, v4

    const-string v2, "com.sec.android.app.dialertop"

    aput-object v2, v1, v5

    aput-object v1, v0, v6

    const/4 v1, 0x3

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Android system"

    aput-object v3, v2, v4

    const-string v3, "android"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Internet"

    aput-object v3, v2, v4

    const-string v3, "com.android.browser"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "SMS Message"

    aput-object v3, v2, v4

    const-string v3, "com.sec.mms"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ARMService"

    aput-object v3, v2, v4

    const-string v3, "com.skt.skaf.OA00018282"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "com.android.alarmclock"

    aput-object v3, v2, v4

    const-string v3, "com.android.alarmclock"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "com.sec.android.app.clockpackage"

    aput-object v3, v2, v4

    const-string v3, "com.sec.android.app.clockpackage"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "com.android.mms"

    aput-object v3, v2, v4

    const-string v3, "com.android.mms"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Android keyboard"

    aput-object v3, v2, v4

    const-string v3, "com.android.inputmethod.latin"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Dialer Storage"

    aput-object v3, v2, v4

    const-string v3, "com.android.providers.telephony"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "com.spritemobile.backup.semc"

    aput-object v3, v2, v4

    const-string v3, "com.spritemobile.backup.semc"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "imoblife.toolbox.full"

    aput-object v3, v2, v4

    const-string v3, "imoblife.toolbox.full"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "imoblife.memorybooster.lite"

    aput-object v3, v2, v4

    const-string v3, "imoblife.memorybooster.lite"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Show Me Widget"

    aput-object v3, v2, v4

    const-string v3, "com.htc.rosiewidgets.showme"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Show Me"

    aput-object v3, v2, v4

    const-string v3, "com.htc.showme"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    sput-object v0, Limoblife/toolbox/full/h/a;->a:[[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Limoblife/toolbox/full/h/a;->c:Landroid/content/Context;

    return-void
.end method

.method public static a(Landroid/content/Context;)Limoblife/toolbox/full/h/a;
    .locals 1

    sget-object v0, Limoblife/toolbox/full/h/a;->b:Limoblife/toolbox/full/h/a;

    if-nez v0, :cond_0

    new-instance v0, Limoblife/toolbox/full/h/a;

    invoke-direct {v0, p0}, Limoblife/toolbox/full/h/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Limoblife/toolbox/full/h/a;->b:Limoblife/toolbox/full/h/a;

    :cond_0
    sget-object v0, Limoblife/toolbox/full/h/a;->b:Limoblife/toolbox/full/h/a;

    return-object v0
.end method

.method private d()V
    .locals 7

    const/4 v0, 0x0

    iget-object v1, p0, Limoblife/toolbox/full/h/a;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v2, Limoblife/toolbox/full/c/a;

    iget-object v3, p0, Limoblife/toolbox/full/h/a;->c:Landroid/content/Context;

    invoke-direct {v2, v3}, Limoblife/toolbox/full/c/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Limoblife/toolbox/full/c/a;->a()Limoblife/toolbox/full/c/a;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.launcher.action.UNINSTALL_SHORTCUT"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3, v0}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    invoke-virtual {v2}, Limoblife/toolbox/full/c/a;->b()V

    return-void

    :cond_0
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v2, v4, v0}, Limoblife/toolbox/full/c/a;->a(Ljava/lang/String;Ljava/lang/String;)J

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "-W- restoreShortcut(): + "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 7

    const/4 v6, 0x1

    const/4 v1, 0x0

    new-instance v2, Limoblife/toolbox/full/c/a;

    iget-object v0, p0, Limoblife/toolbox/full/h/a;->c:Landroid/content/Context;

    invoke-direct {v2, v0}, Limoblife/toolbox/full/c/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Limoblife/toolbox/full/c/a;->a()Limoblife/toolbox/full/c/a;

    invoke-virtual {v2}, Limoblife/toolbox/full/c/a;->c()Z

    move v0, v1

    :goto_0
    sget-object v3, Limoblife/toolbox/full/h/a;->a:[[Ljava/lang/String;

    array-length v3, v3

    if-lt v0, v3, :cond_0

    invoke-virtual {v2}, Limoblife/toolbox/full/c/a;->b()V

    invoke-direct {p0}, Limoblife/toolbox/full/h/a;->d()V

    return-void

    :cond_0
    sget-object v3, Limoblife/toolbox/full/h/a;->a:[[Ljava/lang/String;

    aget-object v3, v3, v0

    aget-object v3, v3, v1

    sget-object v4, Limoblife/toolbox/full/h/a;->a:[[Ljava/lang/String;

    aget-object v4, v4, v0

    aget-object v4, v4, v6

    invoke-virtual {v2, v3, v4}, Limoblife/toolbox/full/c/a;->a(Ljava/lang/String;Ljava/lang/String;)J

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "-W- restoreString(): + "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Limoblife/toolbox/full/h/a;->a:[[Ljava/lang/String;

    aget-object v5, v5, v0

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final b()Z
    .locals 3

    iget-object v0, p0, Limoblife/toolbox/full/h/a;->c:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "whitelist_initialized"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final c()V
    .locals 3

    iget-object v0, p0, Limoblife/toolbox/full/h/a;->c:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "whitelist_initialized"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
