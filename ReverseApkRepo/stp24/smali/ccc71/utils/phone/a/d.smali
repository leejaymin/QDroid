.class public final Lccc71/utils/phone/a/d;
.super Lccc71/utils/phone/a/f;
.source "SourceFile"


# static fields
.field static a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 9
    const/4 v0, 0x6

    new-array v0, v0, [I

    const/4 v1, 0x1

    const v2, -0xff5600

    aput v2, v0, v1

    const/4 v1, 0x2

    const v2, -0x555600

    aput v2, v0, v1

    const/4 v1, 0x3

    const v2, -0xff7800

    aput v2, v0, v1

    const/4 v1, 0x4

    const v2, -0xffab00

    aput v2, v0, v1

    const/4 v1, 0x5

    const v2, -0xaa5600

    aput v2, v0, v1

    sput-object v0, Lccc71/utils/phone/a/d;->a:[I

    .line 7
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 17
    const/16 v0, -0x84

    invoke-direct {p0, p1, v0, p2}, Lccc71/utils/phone/a/f;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 18
    return-void
.end method

.method public static a(I)I
    .locals 1
    .parameter

    .prologue
    .line 12
    sget-object v0, Lccc71/utils/phone/a/d;->a:[I

    aget v0, v0, p0

    return v0
.end method


# virtual methods
.method public final a(Landroid/telephony/ServiceState;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    return-void
.end method

.method public final b(I)I
    .locals 1
    .parameter

    .prologue
    .line 40
    add-int/lit8 v0, p1, 0x3

    return v0
.end method

.method public final c(I)V
    .locals 1
    .parameter

    .prologue
    .line 23
    packed-switch p1, :pswitch_data_0

    .line 35
    :goto_0
    return-void

    .line 26
    :pswitch_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lccc71/utils/phone/a/d;->d(I)V

    goto :goto_0

    .line 29
    :pswitch_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lccc71/utils/phone/a/d;->d(I)V

    goto :goto_0

    .line 32
    :pswitch_2
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lccc71/utils/phone/a/d;->d(I)V

    goto :goto_0

    .line 23
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
