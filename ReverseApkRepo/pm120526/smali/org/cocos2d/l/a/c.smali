.class final Lorg/cocos2d/l/a/c;
.super Ljava/lang/ThreadLocal;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic initialValue()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lorg/cocos2d/l/a/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/cocos2d/l/a/b;-><init>(B)V

    return-object v0
.end method
