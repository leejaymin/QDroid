.class public Lcom/feelingk/lguiab/vo/AuthAllInfo;
.super Lcom/feelingk/lguiab/vo/MessageInfo;
.source "AuthAllInfo.java"


# instance fields
.field private productList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/feelingk/lguiab/vo/ProductItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private tot:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/feelingk/lguiab/vo/MessageInfo;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lcom/feelingk/lguiab/vo/AuthAllInfo;->tot:I

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/feelingk/lguiab/vo/AuthAllInfo;->productList:Ljava/util/List;

    .line 10
    return-void
.end method


# virtual methods
.method public getProductList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/feelingk/lguiab/vo/ProductItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 27
    iget-object v0, p0, Lcom/feelingk/lguiab/vo/AuthAllInfo;->productList:Ljava/util/List;

    return-object v0
.end method

.method public getTot()I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lcom/feelingk/lguiab/vo/AuthAllInfo;->tot:I

    return v0
.end method

.method public setProductList(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/feelingk/lguiab/vo/ProductItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p1, productList:Ljava/util/List;,"Ljava/util/List<Lcom/feelingk/lguiab/vo/ProductItemInfo;>;"
    iput-object p1, p0, Lcom/feelingk/lguiab/vo/AuthAllInfo;->productList:Ljava/util/List;

    .line 32
    return-void
.end method

.method public setTot(I)V
    .locals 0
    .parameter "tot"

    .prologue
    .line 23
    iput p1, p0, Lcom/feelingk/lguiab/vo/AuthAllInfo;->tot:I

    .line 24
    return-void
.end method
