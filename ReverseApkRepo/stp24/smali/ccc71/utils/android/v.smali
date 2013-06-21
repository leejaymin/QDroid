.class public Lccc71/utils/android/v;
.super Lccc71/utils/android/u;
.source "SourceFile"


# static fields
.field private static a:Landroid/app/ActivityManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lccc71/utils/android/u;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/ActivityManager$RunningServiceInfo;)I
    .locals 1
    .parameter

    .prologue
    .line 43
    iget v0, p1, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    return v0
.end method

.method public final a(Landroid/content/Context;I)I
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 17
    sget-object v0, Lccc71/utils/android/v;->a:Landroid/app/ActivityManager;

    if-nez v0, :cond_0

    .line 18
    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    sput-object v0, Lccc71/utils/android/v;->a:Landroid/app/ActivityManager;

    .line 20
    :cond_0
    sget-object v0, Lccc71/utils/android/v;->a:Landroid/app/ActivityManager;

    new-array v2, v3, [I

    aput p2, v2, v1

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object v0

    .line 21
    if-eqz v0, :cond_1

    array-length v2, v0

    if-eq v2, v3, :cond_2

    :cond_1
    move v0, v1

    .line 24
    :goto_0
    return v0

    :cond_2
    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateDirty()I

    move-result v0

    goto :goto_0
.end method
