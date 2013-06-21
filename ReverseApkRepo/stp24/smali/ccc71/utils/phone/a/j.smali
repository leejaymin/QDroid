.class public final Lccc71/utils/phone/a/j;
.super Lccc71/utils/phone/a/i;
.source "SourceFile"


# static fields
.field private static a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 8
    const/4 v0, 0x6

    new-array v0, v0, [I

    const/4 v1, 0x1

    const v2, -0xffff01

    aput v2, v0, v1

    const/4 v1, 0x2

    const v2, -0x7f7f01

    aput v2, v0, v1

    const/4 v1, 0x3

    .line 9
    const v2, -0xffff78

    aput v2, v0, v1

    const/4 v1, 0x4

    const v2, -0xffff56

    aput v2, v0, v1

    const/4 v1, 0x5

    const v2, -0xbfbf01

    aput v2, v0, v1

    .line 8
    sput-object v0, Lccc71/utils/phone/a/j;->a:[I

    .line 6
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 17
    const/16 v0, -0x81

    invoke-direct {p0, p1, v0, p2}, Lccc71/utils/phone/a/i;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 18
    return-void
.end method

.method public static a(I)I
    .locals 1
    .parameter

    .prologue
    .line 12
    sget-object v0, Lccc71/utils/phone/a/j;->a:[I

    aget v0, v0, p0

    return v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 27
    :try_start_0
    invoke-static {p1}, Lccc71/utils/phone/receivers/ccc71_wifi_receiver;->a(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lccc71/utils/phone/a/j;->e:I

    .line 28
    invoke-static {p1}, Lccc71/utils/phone/receivers/ccc71_wifi_receiver;->b(Landroid/content/Context;)V

    .line 29
    sput-object p0, Lccc71/utils/phone/receivers/ccc71_wifi_receiver;->a:Lccc71/utils/phone/a/j;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final b(I)I
    .locals 1
    .parameter

    .prologue
    .line 46
    add-int/lit8 v0, p1, 0x3

    return v0
.end method

.method public final b(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 39
    invoke-static {p1}, Lccc71/utils/phone/receivers/ccc71_wifi_receiver;->c(Landroid/content/Context;)V

    .line 40
    const/4 v0, 0x0

    sput-object v0, Lccc71/utils/phone/receivers/ccc71_wifi_receiver;->a:Lccc71/utils/phone/a/j;

    .line 41
    return-void
.end method
