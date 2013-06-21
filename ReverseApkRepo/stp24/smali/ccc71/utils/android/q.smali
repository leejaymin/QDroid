.class public final Lccc71/utils/android/q;
.super Lccc71/utils/android/o;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/app/ActivityManager;)V
    .locals 0
    .parameter

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lccc71/utils/android/o;-><init>(Landroid/app/ActivityManager;)V

    .line 10
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 17
    :try_start_0
    iget-object v0, p0, Lccc71/utils/android/q;->a:Landroid/app/ActivityManager;

    invoke-virtual {v0, p1}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 21
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method
