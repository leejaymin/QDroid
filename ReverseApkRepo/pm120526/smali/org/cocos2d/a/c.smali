.class final Lorg/cocos2d/a/c;
.super Ljava/lang/Object;


# instance fields
.field final a:Ljava/util/ArrayList;

.field b:Lorg/cocos2d/g/i;

.field c:I

.field d:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/cocos2d/a/c;->c:I

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/cocos2d/a/c;->a:Ljava/util/ArrayList;

    return-void
.end method
