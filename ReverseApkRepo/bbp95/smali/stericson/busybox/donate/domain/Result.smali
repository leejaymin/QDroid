.class public Lstericson/busybox/donate/domain/Result;
.super Ljava/lang/Object;
.source "Result.java"


# instance fields
.field private error:Ljava/lang/String;

.field private itemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lstericson/busybox/donate/domain/Item;",
            ">;"
        }
    .end annotation
.end field

.field private locations:[Ljava/lang/String;

.field private message:Ljava/lang/String;

.field private space:F

.field private success:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput-boolean v0, p0, Lstericson/busybox/donate/domain/Result;->success:Z

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lstericson/busybox/donate/domain/Result;->itemList:Ljava/util/List;

    .line 12
    const/high16 v0, -0x4080

    iput v0, p0, Lstericson/busybox/donate/domain/Result;->space:F

    .line 6
    return-void
.end method


# virtual methods
.method public getError()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lstericson/busybox/donate/domain/Result;->error:Ljava/lang/String;

    return-object v0
.end method

.method public getItemList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lstericson/busybox/donate/domain/Item;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Lstericson/busybox/donate/domain/Result;->itemList:Ljava/util/List;

    return-object v0
.end method

.method public getLocations()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lstericson/busybox/donate/domain/Result;->locations:[Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lstericson/busybox/donate/domain/Result;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getSpace()F
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lstericson/busybox/donate/domain/Result;->space:F

    return v0
.end method

.method public isSuccess()Z
    .locals 1

    .prologue
    .line 27
    iget-boolean v0, p0, Lstericson/busybox/donate/domain/Result;->success:Z

    return v0
.end method

.method public setError(Ljava/lang/String;)V
    .locals 0
    .parameter "error"

    .prologue
    .line 32
    iput-object p1, p0, Lstericson/busybox/donate/domain/Result;->error:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setItemList(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lstericson/busybox/donate/domain/Item;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 17
    .local p1, itemList:Ljava/util/List;,"Ljava/util/List<Lstericson/busybox/donate/domain/Item;>;"
    iput-object p1, p0, Lstericson/busybox/donate/domain/Result;->itemList:Ljava/util/List;

    .line 18
    return-void
.end method

.method public setLocations([Ljava/lang/String;)V
    .locals 0
    .parameter "locations"

    .prologue
    .line 72
    iput-object p1, p0, Lstericson/busybox/donate/domain/Result;->locations:[Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 52
    iput-object p1, p0, Lstericson/busybox/donate/domain/Result;->message:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setSpace(F)V
    .locals 0
    .parameter "f"

    .prologue
    .line 62
    iput p1, p0, Lstericson/busybox/donate/domain/Result;->space:F

    .line 63
    return-void
.end method

.method public setSuccess(Z)V
    .locals 0
    .parameter "success"

    .prologue
    .line 22
    iput-boolean p1, p0, Lstericson/busybox/donate/domain/Result;->success:Z

    .line 23
    return-void
.end method
