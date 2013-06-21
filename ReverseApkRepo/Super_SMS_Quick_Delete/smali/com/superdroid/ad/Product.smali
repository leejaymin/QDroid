.class public Lcom/superdroid/ad/Product;
.super Ljava/lang/Object;
.source "Product.java"


# instance fields
.field private _description:Ljava/lang/String;

.field private _logoResId:I

.field private _name:Ljava/lang/String;

.field private _packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;IIII)V
    .locals 1
    .parameter "ctx"
    .parameter "logoResId"
    .parameter "name"
    .parameter "description"
    .parameter "packageName"

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p2, p0, Lcom/superdroid/ad/Product;->_logoResId:I

    .line 14
    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/superdroid/ad/Product;->_name:Ljava/lang/String;

    .line 15
    invoke-virtual {p1, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/superdroid/ad/Product;->_description:Ljava/lang/String;

    .line 16
    invoke-virtual {p1, p5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/superdroid/ad/Product;->_packageName:Ljava/lang/String;

    .line 17
    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/superdroid/ad/Product;->_description:Ljava/lang/String;

    return-object v0
.end method

.method public getLogoResId()I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/superdroid/ad/Product;->_logoResId:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/superdroid/ad/Product;->_name:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/superdroid/ad/Product;->_packageName:Ljava/lang/String;

    return-object v0
.end method
