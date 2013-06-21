.class public final Lccc71/bmw/lib/aj;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:I

.field public static b:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 5
    const/16 v0, 0x428

    sput v0, Lccc71/bmw/lib/aj;->a:I

    .line 14
    const/4 v0, 0x6

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 15
    sget v2, Lccc71/bmw/lib/g;->aT:I

    aput v2, v0, v1

    const/4 v1, 0x1

    .line 16
    sget v2, Lccc71/bmw/lib/g;->aS:I

    aput v2, v0, v1

    const/4 v1, 0x2

    .line 17
    sget v2, Lccc71/bmw/lib/g;->aV:I

    aput v2, v0, v1

    const/4 v1, 0x3

    .line 18
    sget v2, Lccc71/bmw/lib/g;->aW:I

    aput v2, v0, v1

    const/4 v1, 0x4

    .line 19
    sget v2, Lccc71/bmw/lib/g;->aR:I

    aput v2, v0, v1

    const/4 v1, 0x5

    .line 20
    sget v2, Lccc71/bmw/lib/g;->aU:I

    aput v2, v0, v1

    .line 13
    sput-object v0, Lccc71/bmw/lib/aj;->b:[I

    .line 3
    return-void
.end method
