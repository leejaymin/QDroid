.class public Lorg/mozilla/javascript/ObjToIntMap$Iterator;
.super Ljava/lang/Object;
.source "ObjToIntMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/javascript/ObjToIntMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Iterator"
.end annotation


# instance fields
.field private cursor:I

.field private keys:[Ljava/lang/Object;

.field master:Lorg/mozilla/javascript/ObjToIntMap;

.field private remaining:I

.field private values:[I


# direct methods
.method constructor <init>(Lorg/mozilla/javascript/ObjToIntMap;)V
    .locals 0
    .parameter "master"

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lorg/mozilla/javascript/ObjToIntMap$Iterator;->master:Lorg/mozilla/javascript/ObjToIntMap;

    .line 69
    return-void
.end method


# virtual methods
.method public done()Z
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lorg/mozilla/javascript/ObjToIntMap$Iterator;->remaining:I

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 104
    iget-object v1, p0, Lorg/mozilla/javascript/ObjToIntMap$Iterator;->keys:[Ljava/lang/Object;

    iget v2, p0, Lorg/mozilla/javascript/ObjToIntMap$Iterator;->cursor:I

    aget-object v0, v1, v2

    .line 105
    .local v0, key:Ljava/lang/Object;
    sget-object v1, Lorg/mozilla/javascript/UniqueTag;->NULL_VALUE:Lorg/mozilla/javascript/UniqueTag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 106
    .end local v0           #key:Ljava/lang/Object;
    :cond_0
    return-object v0
.end method

.method public getValue()I
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lorg/mozilla/javascript/ObjToIntMap$Iterator;->values:[I

    iget v1, p0, Lorg/mozilla/javascript/ObjToIntMap$Iterator;->cursor:I

    aget v0, v0, v1

    return v0
.end method

.method final init([Ljava/lang/Object;[II)V
    .locals 1
    .parameter "keys"
    .parameter "values"
    .parameter "keyCount"

    .prologue
    .line 72
    iput-object p1, p0, Lorg/mozilla/javascript/ObjToIntMap$Iterator;->keys:[Ljava/lang/Object;

    .line 73
    iput-object p2, p0, Lorg/mozilla/javascript/ObjToIntMap$Iterator;->values:[I

    .line 74
    const/4 v0, -0x1

    iput v0, p0, Lorg/mozilla/javascript/ObjToIntMap$Iterator;->cursor:I

    .line 75
    iput p3, p0, Lorg/mozilla/javascript/ObjToIntMap$Iterator;->remaining:I

    .line 76
    return-void
.end method

.method public next()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 88
    iget v1, p0, Lorg/mozilla/javascript/ObjToIntMap$Iterator;->remaining:I

    if-ne v1, v2, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 89
    :cond_0
    iget v1, p0, Lorg/mozilla/javascript/ObjToIntMap$Iterator;->remaining:I

    if-nez v1, :cond_1

    .line 90
    iput v2, p0, Lorg/mozilla/javascript/ObjToIntMap$Iterator;->remaining:I

    .line 91
    iput v2, p0, Lorg/mozilla/javascript/ObjToIntMap$Iterator;->cursor:I

    .line 101
    :goto_0
    return-void

    .line 93
    :cond_1
    iget v1, p0, Lorg/mozilla/javascript/ObjToIntMap$Iterator;->cursor:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/mozilla/javascript/ObjToIntMap$Iterator;->cursor:I

    .line 94
    :goto_1
    iget-object v1, p0, Lorg/mozilla/javascript/ObjToIntMap$Iterator;->keys:[Ljava/lang/Object;

    iget v2, p0, Lorg/mozilla/javascript/ObjToIntMap$Iterator;->cursor:I

    aget-object v0, v1, v2

    .line 95
    .local v0, key:Ljava/lang/Object;
    if-eqz v0, :cond_2

    invoke-static {}, Lorg/mozilla/javascript/ObjToIntMap;->access$000()Ljava/lang/Object;

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 96
    iget v1, p0, Lorg/mozilla/javascript/ObjToIntMap$Iterator;->remaining:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p0, Lorg/mozilla/javascript/ObjToIntMap$Iterator;->remaining:I

    goto :goto_0

    .line 93
    :cond_2
    iget v1, p0, Lorg/mozilla/javascript/ObjToIntMap$Iterator;->cursor:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/mozilla/javascript/ObjToIntMap$Iterator;->cursor:I

    goto :goto_1
.end method

.method public setValue(I)V
    .locals 2
    .parameter "value"

    .prologue
    .line 114
    iget-object v0, p0, Lorg/mozilla/javascript/ObjToIntMap$Iterator;->values:[I

    iget v1, p0, Lorg/mozilla/javascript/ObjToIntMap$Iterator;->cursor:I

    aput p1, v0, v1

    .line 115
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lorg/mozilla/javascript/ObjToIntMap$Iterator;->master:Lorg/mozilla/javascript/ObjToIntMap;

    invoke-virtual {v0, p0}, Lorg/mozilla/javascript/ObjToIntMap;->initIterator(Lorg/mozilla/javascript/ObjToIntMap$Iterator;)V

    .line 80
    invoke-virtual {p0}, Lorg/mozilla/javascript/ObjToIntMap$Iterator;->next()V

    .line 81
    return-void
.end method
