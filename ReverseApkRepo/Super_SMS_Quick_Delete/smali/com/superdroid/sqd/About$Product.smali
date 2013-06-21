.class Lcom/superdroid/sqd/About$Product;
.super Ljava/lang/Object;
.source "About.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/superdroid/sqd/About;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Product"
.end annotation


# instance fields
.field private _description:Ljava/lang/String;

.field private _logoResId:I

.field private _name:Ljava/lang/String;

.field private _packageName:Ljava/lang/String;

.field final synthetic this$0:Lcom/superdroid/sqd/About;


# direct methods
.method public constructor <init>(Lcom/superdroid/sqd/About;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "logoResId"
    .parameter "name"
    .parameter "description"
    .parameter "packageName"

    .prologue
    .line 127
    iput-object p1, p0, Lcom/superdroid/sqd/About$Product;->this$0:Lcom/superdroid/sqd/About;

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    iput p2, p0, Lcom/superdroid/sqd/About$Product;->_logoResId:I

    .line 124
    iput-object p3, p0, Lcom/superdroid/sqd/About$Product;->_name:Ljava/lang/String;

    .line 125
    iput-object p4, p0, Lcom/superdroid/sqd/About$Product;->_description:Ljava/lang/String;

    .line 126
    iput-object p5, p0, Lcom/superdroid/sqd/About$Product;->_packageName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/superdroid/sqd/About$Product;->_description:Ljava/lang/String;

    return-object v0
.end method

.method public getLogoResId()I
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lcom/superdroid/sqd/About$Product;->_logoResId:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/superdroid/sqd/About$Product;->_name:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/superdroid/sqd/About$Product;->_packageName:Ljava/lang/String;

    return-object v0
.end method
