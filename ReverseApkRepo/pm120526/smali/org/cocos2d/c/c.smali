.class public final Lorg/cocos2d/c/c;
.super Lorg/cocos2d/c/i;


# instance fields
.field a:Z

.field private d:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lorg/cocos2d/i/d;)V
    .locals 1

    const v0, -0x7fffffff

    invoke-direct {p0, p1, v0}, Lorg/cocos2d/c/i;-><init>(Lorg/cocos2d/i/d;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/cocos2d/c/c;->a:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/cocos2d/c/c;->d:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method final a(I)V
    .locals 2

    iget-object v0, p0, Lorg/cocos2d/c/c;->d:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/cocos2d/c/c;->d:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method final b(I)V
    .locals 2

    iget-object v0, p0, Lorg/cocos2d/c/c;->d:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lorg/cocos2d/c/c;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method final c(I)Z
    .locals 2

    iget-object v0, p0, Lorg/cocos2d/c/c;->d:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
