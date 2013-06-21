.class public Lorg/cocos2d/c/i;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/cocos2d/i/d;


# static fields
.field static final synthetic c:Z


# instance fields
.field private a:Lorg/cocos2d/i/d;

.field b:I

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/cocos2d/c/i;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/cocos2d/c/i;->c:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/cocos2d/i/d;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lorg/cocos2d/c/i;->c:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Touch delegate may not be nil"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lorg/cocos2d/c/i;->a:Lorg/cocos2d/i/d;

    iput p2, p0, Lorg/cocos2d/c/i;->d:I

    sget-object v0, Lorg/cocos2d/c/h;->a:Lorg/cocos2d/c/h;

    invoke-virtual {v0}, Lorg/cocos2d/c/h;->a()I

    move-result v0

    iput v0, p0, Lorg/cocos2d/c/i;->b:I

    return-void
.end method


# virtual methods
.method public final a()Lorg/cocos2d/i/d;
    .locals 1

    iget-object v0, p0, Lorg/cocos2d/c/i;->a:Lorg/cocos2d/i/d;

    return-object v0
.end method

.method public final a(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lorg/cocos2d/c/i;->a:Lorg/cocos2d/i/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cocos2d/c/i;->a:Lorg/cocos2d/i/d;

    invoke-interface {v0, p1}, Lorg/cocos2d/i/d;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lorg/cocos2d/c/i;->d:I

    return v0
.end method

.method public final b(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lorg/cocos2d/c/i;->a:Lorg/cocos2d/i/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cocos2d/c/i;->a:Lorg/cocos2d/i/d;

    invoke-interface {v0, p1}, Lorg/cocos2d/i/d;->b(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lorg/cocos2d/c/i;->a:Lorg/cocos2d/i/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cocos2d/c/i;->a:Lorg/cocos2d/i/d;

    invoke-interface {v0, p1}, Lorg/cocos2d/i/d;->c(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lorg/cocos2d/c/i;->a:Lorg/cocos2d/i/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cocos2d/c/i;->a:Lorg/cocos2d/i/d;

    invoke-interface {v0, p1}, Lorg/cocos2d/i/d;->d(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
