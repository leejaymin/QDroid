.class public Lcom/feelingk/lguiab/vo/UseItemInfo;
.super Lcom/feelingk/lguiab/vo/MessageInfo;
.source "UseItemInfo.java"


# instance fields
.field private cnt:Ljava/lang/String;

.field private pid:Ljava/lang/String;

.field private productName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/feelingk/lguiab/vo/MessageInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public getCnt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/feelingk/lguiab/vo/UseItemInfo;->cnt:Ljava/lang/String;

    return-object v0
.end method

.method public getPid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/feelingk/lguiab/vo/UseItemInfo;->pid:Ljava/lang/String;

    return-object v0
.end method

.method public getProductName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/feelingk/lguiab/vo/UseItemInfo;->productName:Ljava/lang/String;

    return-object v0
.end method

.method public setCnt(Ljava/lang/String;)V
    .locals 0
    .parameter "cnt"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/feelingk/lguiab/vo/UseItemInfo;->cnt:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setPid(Ljava/lang/String;)V
    .locals 0
    .parameter "pid"

    .prologue
    .line 23
    iput-object p1, p0, Lcom/feelingk/lguiab/vo/UseItemInfo;->pid:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public setProductName(Ljava/lang/String;)V
    .locals 0
    .parameter "productName"

    .prologue
    .line 29
    iput-object p1, p0, Lcom/feelingk/lguiab/vo/UseItemInfo;->productName:Ljava/lang/String;

    .line 30
    return-void
.end method
