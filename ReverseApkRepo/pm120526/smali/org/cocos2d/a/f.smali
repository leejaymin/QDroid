.class final Lorg/cocos2d/a/f;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/util/ArrayList;

.field b:Ljava/lang/Object;

.field c:Ljava/util/ArrayList;

.field d:Lorg/cocos2d/a/g;

.field e:I

.field f:Lorg/cocos2d/a/h;

.field g:Z

.field h:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lorg/cocos2d/a/f;-><init>()V

    return-void
.end method


# virtual methods
.method final a(Z)V
    .locals 1

    iput-boolean p1, p0, Lorg/cocos2d/a/f;->h:Z

    iget-object v0, p0, Lorg/cocos2d/a/f;->d:Lorg/cocos2d/a/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cocos2d/a/f;->d:Lorg/cocos2d/a/g;

    iput-boolean p1, v0, Lorg/cocos2d/a/g;->e:Z

    :cond_0
    return-void
.end method
