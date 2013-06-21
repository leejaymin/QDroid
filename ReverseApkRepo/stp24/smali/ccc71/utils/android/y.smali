.class public abstract Lccc71/utils/android/y;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lccc71/utils/android/y;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    sput-object v0, Lccc71/utils/android/y;->a:Lccc71/utils/android/y;

    .line 17
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lccc71/utils/android/y;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lccc71/utils/android/y;->a:Lccc71/utils/android/y;

    if-eqz v0, :cond_0

    .line 60
    sget-object v0, Lccc71/utils/android/y;->a:Lccc71/utils/android/y;

    .line 91
    :goto_0
    return-object v0

    .line 62
    :cond_0
    const/16 v0, 0x10

    invoke-static {v0}, Lccc71/utils/ac;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    new-instance v0, Lccc71/utils/android/s;

    invoke-direct {v0}, Lccc71/utils/android/s;-><init>()V

    sput-object v0, Lccc71/utils/android/y;->a:Lccc71/utils/android/y;

    .line 66
    :cond_1
    const/16 v0, 0xb

    invoke-static {v0}, Lccc71/utils/ac;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 68
    new-instance v0, Lccc71/utils/android/r;

    invoke-direct {v0}, Lccc71/utils/android/r;-><init>()V

    sput-object v0, Lccc71/utils/android/y;->a:Lccc71/utils/android/y;

    .line 91
    :goto_1
    sget-object v0, Lccc71/utils/android/y;->a:Lccc71/utils/android/y;

    goto :goto_0

    .line 70
    :cond_2
    const/16 v0, 0x9

    invoke-static {v0}, Lccc71/utils/ac;->a(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 72
    new-instance v0, Lccc71/utils/android/x;

    invoke-direct {v0}, Lccc71/utils/android/x;-><init>()V

    sput-object v0, Lccc71/utils/android/y;->a:Lccc71/utils/android/y;

    goto :goto_1

    .line 74
    :cond_3
    const/4 v0, 0x7

    invoke-static {v0}, Lccc71/utils/ac;->a(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 76
    new-instance v0, Lccc71/utils/android/w;

    invoke-direct {v0}, Lccc71/utils/android/w;-><init>()V

    sput-object v0, Lccc71/utils/android/y;->a:Lccc71/utils/android/y;

    goto :goto_1

    .line 78
    :cond_4
    const/4 v0, 0x5

    invoke-static {v0}, Lccc71/utils/ac;->a(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 80
    new-instance v0, Lccc71/utils/android/v;

    invoke-direct {v0}, Lccc71/utils/android/v;-><init>()V

    sput-object v0, Lccc71/utils/android/y;->a:Lccc71/utils/android/y;

    goto :goto_1

    .line 82
    :cond_5
    const/4 v0, 0x4

    invoke-static {v0}, Lccc71/utils/ac;->a(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 84
    new-instance v0, Lccc71/utils/android/u;

    invoke-direct {v0}, Lccc71/utils/android/u;-><init>()V

    sput-object v0, Lccc71/utils/android/y;->a:Lccc71/utils/android/y;

    goto :goto_1

    .line 88
    :cond_6
    new-instance v0, Lccc71/utils/android/t;

    invoke-direct {v0}, Lccc71/utils/android/t;-><init>()V

    sput-object v0, Lccc71/utils/android/y;->a:Lccc71/utils/android/y;

    goto :goto_1
.end method


# virtual methods
.method public abstract a(Landroid/app/ActivityManager$RunningServiceInfo;)I
.end method

.method public abstract a(Landroid/content/Context;I)I
.end method

.method public abstract a(Landroid/app/Activity;)V
.end method

.method public abstract a(Landroid/app/Activity;Landroid/app/PendingIntent;Landroid/content/Intent;)V
.end method

.method public abstract a(Landroid/content/Context;Ljava/lang/String;)V
.end method

.method public abstract a(Landroid/content/SharedPreferences$Editor;)V
.end method

.method public abstract a(Landroid/widget/RemoteViews;I)V
.end method

.method public abstract a(Landroid/widget/RemoteViews;ILandroid/widget/RemoteViews;)V
.end method

.method public abstract a(Landroid/content/Context;)Z
.end method

.method public abstract a(Ljava/io/File;)Z
.end method

.method public abstract b(Landroid/content/Context;)I
.end method

.method public abstract c(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public abstract d(Landroid/content/Context;)Z
.end method
