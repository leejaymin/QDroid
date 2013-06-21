.class public final Lccc71/utils/phone/a/e;
.super Lccc71/utils/phone/a/f;
.source "SourceFile"


# static fields
.field private static a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const v3, -0xffab00

    .line 8
    const/16 v0, 0x8

    new-array v0, v0, [I

    const/4 v1, 0x1

    const v2, -0xff7800

    aput v2, v0, v1

    const/4 v1, 0x2

    const v2, -0x77bc00

    aput v2, v0, v1

    const/4 v1, 0x3

    const v2, -0xff5600

    aput v2, v0, v1

    const/4 v1, 0x4

    .line 9
    aput v3, v0, v1

    const/4 v1, 0x5

    aput v3, v0, v1

    const/4 v1, 0x6

    const v2, -0xbb9a00

    aput v2, v0, v1

    const/4 v1, 0x7

    const v2, -0xbb8900

    aput v2, v0, v1

    .line 8
    sput-object v0, Lccc71/utils/phone/a/e;->a:[I

    .line 6
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 17
    const/16 v0, -0x83

    invoke-direct {p0, p1, v0, p2}, Lccc71/utils/phone/a/f;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 18
    return-void
.end method

.method public static a(I)I
    .locals 1
    .parameter

    .prologue
    .line 12
    sget-object v0, Lccc71/utils/phone/a/e;->a:[I

    aget v0, v0, p0

    return v0
.end method


# virtual methods
.method public final a(Landroid/telephony/ServiceState;)V
    .locals 1
    .parameter

    .prologue
    .line 23
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 38
    :goto_0
    return-void

    .line 26
    :pswitch_0
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lccc71/utils/phone/a/e;->d(I)V

    goto :goto_0

    .line 29
    :pswitch_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lccc71/utils/phone/a/e;->d(I)V

    goto :goto_0

    .line 32
    :pswitch_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lccc71/utils/phone/a/e;->d(I)V

    goto :goto_0

    .line 35
    :pswitch_3
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lccc71/utils/phone/a/e;->d(I)V

    goto :goto_0

    .line 23
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public final b(I)I
    .locals 1
    .parameter

    .prologue
    .line 43
    add-int/lit8 v0, p1, 0x4

    return v0
.end method

.method public final c(I)V
    .locals 0
    .parameter

    .prologue
    .line 47
    return-void
.end method
