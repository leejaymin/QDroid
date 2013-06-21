.class public final Lccc71/utils/ag;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 5
    const/4 v0, -0x1

    sput v0, Lccc71/utils/ag;->a:I

    .line 3
    return-void
.end method

.method public static a()I
    .locals 2

    .prologue
    .line 10
    sget v0, Lccc71/utils/ag;->a:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 11
    sget v0, Lccc71/utils/ag;->a:I

    .line 15
    :goto_0
    return v0

    .line 13
    :cond_0
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 14
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lccc71/utils/ag;->a:I

    .line 15
    :cond_1
    sget v0, Lccc71/utils/ag;->a:I

    goto :goto_0
.end method

.method public static a(I)Z
    .locals 1
    .parameter

    .prologue
    .line 20
    invoke-static {}, Lccc71/utils/ag;->a()I

    move-result v0

    if-lt v0, p0, :cond_0

    .line 21
    const/4 v0, 0x1

    .line 23
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
