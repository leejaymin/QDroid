.class public Lorg/cocos2d/c/b;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/cocos2d/i/a;


# static fields
.field static final synthetic b:Z


# instance fields
.field a:Z

.field private c:Lorg/cocos2d/i/a;

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/cocos2d/c/b;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/cocos2d/c/b;->b:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/cocos2d/i/a;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lorg/cocos2d/c/b;->b:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Key delegate may not be nil"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lorg/cocos2d/c/b;->c:Lorg/cocos2d/i/a;

    iput-boolean v1, p0, Lorg/cocos2d/c/b;->a:Z

    iput v1, p0, Lorg/cocos2d/c/b;->d:I

    return-void
.end method


# virtual methods
.method public final a()Lorg/cocos2d/i/a;
    .locals 1

    iget-object v0, p0, Lorg/cocos2d/c/b;->c:Lorg/cocos2d/i/a;

    return-object v0
.end method

.method public final a(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lorg/cocos2d/c/b;->c:Lorg/cocos2d/i/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cocos2d/c/b;->c:Lorg/cocos2d/i/a;

    invoke-interface {v0, p1, p2}, Lorg/cocos2d/i/a;->a(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lorg/cocos2d/c/b;->d:I

    return v0
.end method

.method public final b(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lorg/cocos2d/c/b;->c:Lorg/cocos2d/i/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cocos2d/c/b;->c:Lorg/cocos2d/i/a;

    invoke-interface {v0, p1, p2}, Lorg/cocos2d/i/a;->b(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
