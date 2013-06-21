.class public final Lccc71/pmw/b/n;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static a:[I

.field private static b:Landroid/telephony/TelephonyManager;

.field private static c:[I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 16
    const/4 v0, 0x0

    sput-object v0, Lccc71/pmw/b/n;->b:Landroid/telephony/TelephonyManager;

    .line 64
    const/4 v0, 0x7

    new-array v0, v0, [I

    const v1, -0xff5600

    aput v1, v0, v3

    const v1, -0xff8900

    aput v1, v0, v4

    .line 65
    const v1, -0xffff56

    aput v1, v0, v5

    const v1, -0xffff89

    aput v1, v0, v6

    const/4 v1, 0x5

    const v2, -0xff5556

    aput v2, v0, v1

    const/4 v1, 0x6

    const v2, -0xff8889

    aput v2, v0, v1

    .line 64
    sput-object v0, Lccc71/pmw/b/n;->c:[I

    .line 73
    new-array v0, v6, [I

    const v1, -0xffff01

    aput v1, v0, v3

    const v1, -0xffffbc

    aput v1, v0, v4

    const v1, -0xffff78

    aput v1, v0, v5

    sput-object v0, Lccc71/pmw/b/n;->a:[I

    .line 14
    return-void
.end method

.method public static a(II)I
    .locals 2
    .parameter
    .parameter

    .prologue
    const/16 v1, 0x3e8

    const/4 v0, 0x0

    .line 20
    packed-switch p0, :pswitch_data_0

    .line 50
    :cond_0
    :goto_0
    return v0

    .line 23
    :pswitch_0
    invoke-static {p1}, Lccc71/utils/phone/a/h;->a(I)I

    move-result v0

    goto :goto_0

    .line 26
    :pswitch_1
    invoke-static {p1}, Lccc71/utils/phone/a/a;->a(I)I

    move-result v0

    goto :goto_0

    .line 29
    :pswitch_2
    invoke-static {p1}, Lccc71/utils/phone/a/d;->a(I)I

    move-result v0

    goto :goto_0

    .line 32
    :pswitch_3
    if-ltz p1, :cond_1

    sget-object v1, Lccc71/pmw/b/n;->a:[I

    array-length v1, v1

    if-ge p1, v1, :cond_1

    sget-object v0, Lccc71/pmw/b/n;->a:[I

    aget v0, v0, p1

    goto :goto_0

    :cond_1
    sget-object v1, Lccc71/pmw/b/n;->a:[I

    aget v0, v1, v0

    goto :goto_0

    .line 35
    :pswitch_4
    invoke-static {p1}, Lccc71/utils/phone/a/b;->a(I)I

    move-result v0

    goto :goto_0

    .line 38
    :pswitch_5
    invoke-static {p1}, Lccc71/utils/phone/a/e;->a(I)I

    move-result v0

    goto :goto_0

    .line 41
    :pswitch_6
    invoke-static {p1}, Lccc71/utils/phone/a/j;->a(I)I

    move-result v0

    goto :goto_0

    .line 44
    :pswitch_7
    if-ltz p1, :cond_2

    sget-object v1, Lccc71/pmw/b/n;->c:[I

    array-length v1, v1

    if-ge p1, v1, :cond_2

    sget-object v0, Lccc71/pmw/b/n;->c:[I

    aget v0, v0, p1

    goto :goto_0

    :cond_2
    sget-object v1, Lccc71/pmw/b/n;->c:[I

    aget v0, v1, v0

    goto :goto_0

    .line 47
    :pswitch_8
    if-gez p1, :cond_4

    move p1, v0

    :cond_3
    :goto_1
    mul-int/lit8 v1, p1, 0x7f

    div-int/lit16 v1, v1, 0x3e8

    if-eqz v1, :cond_0

    shl-int/lit8 v0, v1, 0x18

    const v1, 0x60cccc00

    add-int/2addr v0, v1

    goto :goto_0

    :cond_4
    if-le p1, v1, :cond_3

    move p1, v1

    goto :goto_1

    .line 20
    nop

    :pswitch_data_0
    .packed-switch -0x88
        :pswitch_8
        :pswitch_7
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_5
        :pswitch_1
        :pswitch_6
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;)I
    .locals 1
    .parameter

    .prologue
    .line 82
    sget-object v0, Lccc71/pmw/b/n;->b:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    .line 83
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    sput-object v0, Lccc71/pmw/b/n;->b:Landroid/telephony/TelephonyManager;

    .line 84
    :cond_0
    sget-object v0, Lccc71/pmw/b/n;->b:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 95
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 88
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 90
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 92
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 84
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
