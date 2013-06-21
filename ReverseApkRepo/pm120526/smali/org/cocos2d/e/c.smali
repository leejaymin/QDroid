.class public Lorg/cocos2d/e/c;
.super Lorg/cocos2d/e/b;


# static fields
.field static final synthetic a:Z


# instance fields
.field private b:Ljava/util/ArrayList;

.field private c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/cocos2d/e/c;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/cocos2d/e/c;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private varargs constructor <init>([Lorg/cocos2d/e/b;)V
    .locals 2

    invoke-direct {p0}, Lorg/cocos2d/e/b;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/cocos2d/e/c;->b:Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/cocos2d/e/c;->b:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v0, 0x0

    iput v0, p0, Lorg/cocos2d/e/c;->c:I

    iget-object v0, p0, Lorg/cocos2d/e/c;->b:Ljava/util/ArrayList;

    iget v1, p0, Lorg/cocos2d/e/c;->c:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/g/i;

    invoke-virtual {p0, v0}, Lorg/cocos2d/e/c;->a(Lorg/cocos2d/g/i;)Lorg/cocos2d/g/i;

    return-void
.end method

.method public static varargs a([Lorg/cocos2d/e/b;)Lorg/cocos2d/e/c;
    .locals 1

    new-instance v0, Lorg/cocos2d/e/c;

    invoke-direct {v0, p0}, Lorg/cocos2d/e/c;-><init>([Lorg/cocos2d/e/b;)V

    return-object v0
.end method
