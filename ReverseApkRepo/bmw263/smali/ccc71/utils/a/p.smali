.class public abstract Lccc71/utils/a/p;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lccc71/utils/a/p;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    sput-object v0, Lccc71/utils/a/p;->a:Lccc71/utils/a/p;

    .line 6
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lccc71/utils/a/p;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lccc71/utils/a/p;->a:Lccc71/utils/a/p;

    if-eqz v0, :cond_0

    .line 21
    sget-object v0, Lccc71/utils/a/p;->a:Lccc71/utils/a/p;

    .line 32
    :goto_0
    return-object v0

    .line 23
    :cond_0
    const/4 v0, 0x5

    invoke-static {v0}, Lccc71/utils/ag;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 25
    new-instance v0, Lccc71/utils/a/q;

    invoke-direct {v0}, Lccc71/utils/a/q;-><init>()V

    sput-object v0, Lccc71/utils/a/p;->a:Lccc71/utils/a/p;

    .line 32
    :goto_1
    sget-object v0, Lccc71/utils/a/p;->a:Lccc71/utils/a/p;

    goto :goto_0

    .line 29
    :cond_1
    new-instance v0, Lccc71/utils/a/r;

    invoke-direct {v0}, Lccc71/utils/a/r;-><init>()V

    sput-object v0, Lccc71/utils/a/p;->a:Lccc71/utils/a/p;

    goto :goto_1
.end method


# virtual methods
.method public abstract a(Landroid/view/MotionEvent;)F
.end method

.method public abstract b(Landroid/view/MotionEvent;)I
.end method

.method public abstract c(Landroid/view/MotionEvent;)V
.end method

.method public abstract d(Landroid/view/MotionEvent;)V
.end method
