.class public final Lccc71/a/h;
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

    sput v0, Lccc71/a/h;->a:I

    .line 3
    return-void
.end method

.method public static a()Z
    .locals 2

    .prologue
    .line 19
    sget v0, Lccc71/a/h;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lccc71/a/h;->a:I

    :cond_0
    sget v0, Lccc71/a/h;->a:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 20
    const/4 v0, 0x1

    .line 22
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
