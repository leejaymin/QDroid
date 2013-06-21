.class public abstract Lcom/stickycoding/rokon/ObjectPool;
.super Ljava/lang/Object;
.source "ObjectPool.java"


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final DEFAULT_SIZE:I = 0x20


# instance fields
.field private mAvailable:Lcom/stickycoding/rokon/FixedSizeArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/stickycoding/rokon/FixedSizeArray",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/stickycoding/rokon/ObjectPool;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/stickycoding/rokon/ObjectPool;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lcom/stickycoding/rokon/ObjectPool;->setSize(I)V

    .line 37
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-direct {p0, p1}, Lcom/stickycoding/rokon/ObjectPool;->setSize(I)V

    .line 42
    return-void
.end method

.method private setSize(I)V
    .locals 2
    .parameter "size"

    .prologue
    .line 63
    iput p1, p0, Lcom/stickycoding/rokon/ObjectPool;->mSize:I

    .line 64
    new-instance v0, Lcom/stickycoding/rokon/FixedSizeArray;

    iget v1, p0, Lcom/stickycoding/rokon/ObjectPool;->mSize:I

    invoke-direct {v0, v1}, Lcom/stickycoding/rokon/FixedSizeArray;-><init>(I)V

    iput-object v0, p0, Lcom/stickycoding/rokon/ObjectPool;->mAvailable:Lcom/stickycoding/rokon/FixedSizeArray;

    .line 66
    invoke-virtual {p0}, Lcom/stickycoding/rokon/ObjectPool;->fill()V

    .line 67
    return-void
.end method


# virtual methods
.method protected allocate()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 46
    iget-object v1, p0, Lcom/stickycoding/rokon/ObjectPool;->mAvailable:Lcom/stickycoding/rokon/FixedSizeArray;

    invoke-virtual {v1}, Lcom/stickycoding/rokon/FixedSizeArray;->removeLast()Ljava/lang/Object;

    move-result-object v0

    .line 47
    .local v0, result:Ljava/lang/Object;
    sget-boolean v1, Lcom/stickycoding/rokon/ObjectPool;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Object pool of type "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 48
    const-string v3, " exhausted!!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 49
    :cond_0
    return-object v0
.end method

.method protected abstract fill()V
.end method

.method public getAllocatedCount()I
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/stickycoding/rokon/ObjectPool;->mAvailable:Lcom/stickycoding/rokon/FixedSizeArray;

    invoke-virtual {v0}, Lcom/stickycoding/rokon/FixedSizeArray;->getCapacity()I

    move-result v0

    iget-object v1, p0, Lcom/stickycoding/rokon/ObjectPool;->mAvailable:Lcom/stickycoding/rokon/FixedSizeArray;

    invoke-virtual {v1}, Lcom/stickycoding/rokon/FixedSizeArray;->getCount()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method protected getAvailable()Lcom/stickycoding/rokon/FixedSizeArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/stickycoding/rokon/FixedSizeArray",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 72
    iget-object v0, p0, Lcom/stickycoding/rokon/ObjectPool;->mAvailable:Lcom/stickycoding/rokon/FixedSizeArray;

    return-object v0
.end method

.method protected getSize()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/stickycoding/rokon/ObjectPool;->mSize:I

    return v0
.end method

.method public release(Ljava/lang/Object;)V
    .locals 1
    .parameter "entry"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/stickycoding/rokon/ObjectPool;->mAvailable:Lcom/stickycoding/rokon/FixedSizeArray;

    invoke-virtual {v0, p1}, Lcom/stickycoding/rokon/FixedSizeArray;->add(Ljava/lang/Object;)V

    .line 55
    return-void
.end method
