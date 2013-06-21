.class public Lorg/jibx/runtime/impl/BackFillHolder;
.super Ljava/lang/Object;
.source "BackFillHolder.java"


# instance fields
.field private m_class:Ljava/lang/String;

.field private m_list:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lorg/jibx/runtime/impl/BackFillHolder;->m_class:Ljava/lang/String;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jibx/runtime/impl/BackFillHolder;->m_list:Ljava/util/ArrayList;

    .line 58
    return-void
.end method


# virtual methods
.method public addBackFill(Lorg/jibx/runtime/impl/BackFillReference;)V
    .locals 1
    .parameter "ref"

    .prologue
    .line 69
    iget-object v0, p0, Lorg/jibx/runtime/impl/BackFillHolder;->m_list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    return-void
.end method

.method public defineValue(Ljava/lang/Object;)V
    .locals 3
    .parameter "obj"

    .prologue
    .line 81
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lorg/jibx/runtime/impl/BackFillHolder;->m_list:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 82
    iget-object v2, p0, Lorg/jibx/runtime/impl/BackFillHolder;->m_list:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jibx/runtime/impl/BackFillReference;

    .line 83
    .local v1, ref:Lorg/jibx/runtime/impl/BackFillReference;
    invoke-interface {v1, p1}, Lorg/jibx/runtime/impl/BackFillReference;->backfill(Ljava/lang/Object;)V

    .line 81
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 85
    .end local v1           #ref:Lorg/jibx/runtime/impl/BackFillReference;
    :cond_0
    return-void
.end method

.method public getExpectedClass()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lorg/jibx/runtime/impl/BackFillHolder;->m_class:Ljava/lang/String;

    return-object v0
.end method
