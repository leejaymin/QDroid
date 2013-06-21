.class public Lccc71/utils/android/w;
.super Lccc71/utils/android/v;
.source "SourceFile"


# static fields
.field protected static a:Landroid/os/PowerManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lccc71/utils/android/v;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/widget/RemoteViews;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 14
    invoke-virtual {p1, p2}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    .line 15
    return-void
.end method

.method public final a(Landroid/widget/RemoteViews;ILandroid/widget/RemoteViews;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 20
    invoke-virtual {p1, p2, p3}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    .line 21
    return-void
.end method

.method public final d(Landroid/content/Context;)Z
    .locals 1
    .parameter

    .prologue
    .line 28
    sget-object v0, Lccc71/utils/android/w;->a:Landroid/os/PowerManager;

    if-nez v0, :cond_0

    .line 29
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    sput-object v0, Lccc71/utils/android/w;->a:Landroid/os/PowerManager;

    .line 31
    :cond_0
    sget-object v0, Lccc71/utils/android/w;->a:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    return v0
.end method
