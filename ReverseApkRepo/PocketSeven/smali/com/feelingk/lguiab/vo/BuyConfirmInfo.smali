.class public Lcom/feelingk/lguiab/vo/BuyConfirmInfo;
.super Lcom/feelingk/lguiab/vo/MessageInfo;
.source "BuyConfirmInfo.java"


# instance fields
.field private prodcutItem:Lcom/feelingk/lguiab/vo/ProductItemInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/feelingk/lguiab/vo/MessageInfo;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/feelingk/lguiab/vo/BuyConfirmInfo;->prodcutItem:Lcom/feelingk/lguiab/vo/ProductItemInfo;

    .line 8
    return-void
.end method


# virtual methods
.method public getProdcutItem()Lcom/feelingk/lguiab/vo/ProductItemInfo;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/feelingk/lguiab/vo/BuyConfirmInfo;->prodcutItem:Lcom/feelingk/lguiab/vo/ProductItemInfo;

    return-object v0
.end method

.method public setProdcutItem(Lcom/feelingk/lguiab/vo/ProductItemInfo;)V
    .locals 0
    .parameter "prodcutItem"

    .prologue
    .line 18
    iput-object p1, p0, Lcom/feelingk/lguiab/vo/BuyConfirmInfo;->prodcutItem:Lcom/feelingk/lguiab/vo/ProductItemInfo;

    .line 19
    return-void
.end method
