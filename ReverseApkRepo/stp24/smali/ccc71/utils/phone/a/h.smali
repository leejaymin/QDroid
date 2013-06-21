.class public final Lccc71/utils/phone/a/h;
.super Lccc71/utils/phone/a/i;
.source "SourceFile"


# static fields
.field private static a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const v3, -0x777800

    .line 8
    const/4 v0, 0x4

    new-array v0, v0, [I

    const/4 v1, 0x1

    const v2, -0x444500

    aput v2, v0, v1

    const/4 v1, 0x2

    aput v3, v0, v1

    const/4 v1, 0x3

    aput v3, v0, v1

    sput-object v0, Lccc71/utils/phone/a/h;->a:[I

    .line 6
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 16
    const/16 v0, -0x80

    invoke-direct {p0, p1, v0, p2}, Lccc71/utils/phone/a/i;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 17
    return-void
.end method

.method public static a(I)I
    .locals 1
    .parameter

    .prologue
    .line 11
    sget-object v0, Lccc71/utils/phone/a/h;->a:[I

    aget v0, v0, p0

    return v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 22
    sput-object p0, Lccc71/utils/phone/receivers/ccc71_screen_receiver;->a:Lccc71/utils/phone/a/h;

    .line 23
    invoke-static {p1}, Lccc71/utils/phone/receivers/ccc71_screen_receiver;->a(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lccc71/utils/phone/a/h;->e:I

    .line 24
    invoke-static {p1}, Lccc71/utils/phone/receivers/ccc71_screen_receiver;->b(Landroid/content/Context;)V

    .line 25
    return-void
.end method

.method public final b(I)I
    .locals 1
    .parameter

    .prologue
    .line 37
    add-int/lit8 v0, p1, 0x2

    return v0
.end method

.method public final b(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 30
    invoke-static {p1}, Lccc71/utils/phone/receivers/ccc71_screen_receiver;->c(Landroid/content/Context;)V

    .line 31
    const/4 v0, 0x0

    sput-object v0, Lccc71/utils/phone/receivers/ccc71_screen_receiver;->a:Lccc71/utils/phone/a/h;

    .line 32
    return-void
.end method
