.class public abstract Lccc71/utils/a/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lccc71/utils/a/k;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    sput-object v0, Lccc71/utils/a/k;->a:Lccc71/utils/a/k;

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

.method public static a()Lccc71/utils/a/k;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lccc71/utils/a/k;->a:Lccc71/utils/a/k;

    if-eqz v0, :cond_0

    .line 60
    sget-object v0, Lccc71/utils/a/k;->a:Lccc71/utils/a/k;

    .line 91
    :goto_0
    return-object v0

    .line 62
    :cond_0
    const/16 v0, 0x10

    invoke-static {v0}, Lccc71/utils/ag;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    new-instance v0, Lccc71/utils/a/e;

    invoke-direct {v0}, Lccc71/utils/a/e;-><init>()V

    sput-object v0, Lccc71/utils/a/k;->a:Lccc71/utils/a/k;

    .line 66
    :cond_1
    const/16 v0, 0xb

    invoke-static {v0}, Lccc71/utils/ag;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 68
    new-instance v0, Lccc71/utils/a/d;

    invoke-direct {v0}, Lccc71/utils/a/d;-><init>()V

    sput-object v0, Lccc71/utils/a/k;->a:Lccc71/utils/a/k;

    .line 91
    :goto_1
    sget-object v0, Lccc71/utils/a/k;->a:Lccc71/utils/a/k;

    goto :goto_0

    .line 70
    :cond_2
    const/16 v0, 0x9

    invoke-static {v0}, Lccc71/utils/ag;->a(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 72
    new-instance v0, Lccc71/utils/a/j;

    invoke-direct {v0}, Lccc71/utils/a/j;-><init>()V

    sput-object v0, Lccc71/utils/a/k;->a:Lccc71/utils/a/k;

    goto :goto_1

    .line 74
    :cond_3
    const/4 v0, 0x7

    invoke-static {v0}, Lccc71/utils/ag;->a(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 76
    new-instance v0, Lccc71/utils/a/i;

    invoke-direct {v0}, Lccc71/utils/a/i;-><init>()V

    sput-object v0, Lccc71/utils/a/k;->a:Lccc71/utils/a/k;

    goto :goto_1

    .line 78
    :cond_4
    const/4 v0, 0x5

    invoke-static {v0}, Lccc71/utils/ag;->a(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 80
    new-instance v0, Lccc71/utils/a/h;

    invoke-direct {v0}, Lccc71/utils/a/h;-><init>()V

    sput-object v0, Lccc71/utils/a/k;->a:Lccc71/utils/a/k;

    goto :goto_1

    .line 82
    :cond_5
    const/4 v0, 0x4

    invoke-static {v0}, Lccc71/utils/ag;->a(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 84
    new-instance v0, Lccc71/utils/a/g;

    invoke-direct {v0}, Lccc71/utils/a/g;-><init>()V

    sput-object v0, Lccc71/utils/a/k;->a:Lccc71/utils/a/k;

    goto :goto_1

    .line 88
    :cond_6
    new-instance v0, Lccc71/utils/a/f;

    invoke-direct {v0}, Lccc71/utils/a/f;-><init>()V

    sput-object v0, Lccc71/utils/a/k;->a:Lccc71/utils/a/k;

    goto :goto_1
.end method


# virtual methods
.method public abstract a(Landroid/app/Activity;Landroid/app/PendingIntent;Landroid/content/Intent;)V
.end method

.method public abstract a(Landroid/content/SharedPreferences$Editor;)V
.end method

.method public abstract a(Landroid/widget/RemoteViews;I)V
.end method

.method public abstract a(Landroid/widget/RemoteViews;ILandroid/widget/RemoteViews;)V
.end method

.method public abstract a(Landroid/content/Context;)Z
.end method

.method public abstract b(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public abstract c(Landroid/content/Context;)Z
.end method

.method public abstract d(Landroid/content/Context;)J
.end method