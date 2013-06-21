.class public Lcom/superdroid/sqd/About;
.super Landroid/app/Activity;
.source "About.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/superdroid/sqd/About$Product;,
        Lcom/superdroid/sqd/About$ProductAdapter;
    }
.end annotation


# instance fields
.field private _products:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/superdroid/sqd/About$Product;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/superdroid/sqd/About;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/superdroid/sqd/About;->_products:Ljava/util/ArrayList;

    return-object v0
.end method

.method private initButton()V
    .locals 2

    .prologue
    .line 39
    const v1, 0x7f060001

    invoke-virtual {p0, v1}, Lcom/superdroid/sqd/About;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 40
    .local v0, okButton:Landroid/widget/Button;
    new-instance v1, Lcom/superdroid/sqd/About$1;

    invoke-direct {v1, p0}, Lcom/superdroid/sqd/About$1;-><init>(Lcom/superdroid/sqd/About;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    return-void
.end method

.method private initListView()V
    .locals 3

    .prologue
    .line 48
    new-instance v0, Lcom/superdroid/sqd/About$ProductAdapter;

    iget-object v2, p0, Lcom/superdroid/sqd/About;->_products:Ljava/util/ArrayList;

    invoke-direct {v0, p0, p0, v2}, Lcom/superdroid/sqd/About$ProductAdapter;-><init>(Lcom/superdroid/sqd/About;Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 49
    .local v0, adapter:Lcom/superdroid/sqd/About$ProductAdapter;
    const/high16 v2, 0x7f06

    invoke-virtual {p0, v2}, Lcom/superdroid/sqd/About;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 50
    .local v1, productList:Landroid/widget/ListView;
    new-instance v2, Lcom/superdroid/sqd/About$2;

    invoke-direct {v2, p0}, Lcom/superdroid/sqd/About$2;-><init>(Lcom/superdroid/sqd/About;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 59
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 60
    return-void
.end method

.method private initProducts()V
    .locals 13

    .prologue
    .line 63
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/superdroid/sqd/About;->_products:Ljava/util/ArrayList;

    .line 64
    new-instance v0, Lcom/superdroid/sqd/About$Product;

    const v2, 0x7f020010

    .line 65
    const v8, 0x7f040023

    invoke-virtual {p0, v8}, Lcom/superdroid/sqd/About;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 66
    const v8, 0x7f040024

    invoke-virtual {p0, v8}, Lcom/superdroid/sqd/About;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 67
    const v8, 0x7f040025

    invoke-virtual {p0, v8}, Lcom/superdroid/sqd/About;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    .line 64
    invoke-direct/range {v0 .. v5}, Lcom/superdroid/sqd/About$Product;-><init>(Lcom/superdroid/sqd/About;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .local v0, stl:Lcom/superdroid/sqd/About$Product;
    new-instance v1, Lcom/superdroid/sqd/About$Product;

    const v3, 0x7f02000d

    .line 70
    const v8, 0x7f040020

    invoke-virtual {p0, v8}, Lcom/superdroid/sqd/About;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v8, 0x7f040021

    invoke-virtual {p0, v8}, Lcom/superdroid/sqd/About;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 71
    const v8, 0x7f040022

    invoke-virtual {p0, v8}, Lcom/superdroid/sqd/About;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v2, p0

    .line 69
    invoke-direct/range {v1 .. v6}, Lcom/superdroid/sqd/About$Product;-><init>(Lcom/superdroid/sqd/About;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .local v1, spc:Lcom/superdroid/sqd/About$Product;
    new-instance v2, Lcom/superdroid/sqd/About$Product;

    const v4, 0x7f02000a

    .line 74
    const v8, 0x7f040029

    invoke-virtual {p0, v8}, Lcom/superdroid/sqd/About;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v8, 0x7f04002a

    invoke-virtual {p0, v8}, Lcom/superdroid/sqd/About;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 75
    const v8, 0x7f04002b

    invoke-virtual {p0, v8}, Lcom/superdroid/sqd/About;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v3, p0

    .line 73
    invoke-direct/range {v2 .. v7}, Lcom/superdroid/sqd/About$Product;-><init>(Lcom/superdroid/sqd/About;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .local v2, scf:Lcom/superdroid/sqd/About$Product;
    new-instance v3, Lcom/superdroid/sqd/About$Product;

    const v5, 0x7f020007

    .line 78
    const v8, 0x7f04002c

    invoke-virtual {p0, v8}, Lcom/superdroid/sqd/About;->getString(I)Ljava/lang/String;

    move-result-object v6

    const v8, 0x7f04002d

    invoke-virtual {p0, v8}, Lcom/superdroid/sqd/About;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 79
    const v8, 0x7f04002e

    invoke-virtual {p0, v8}, Lcom/superdroid/sqd/About;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object v4, p0

    .line 77
    invoke-direct/range {v3 .. v8}, Lcom/superdroid/sqd/About$Product;-><init>(Lcom/superdroid/sqd/About;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .local v3, aqd:Lcom/superdroid/sqd/About$Product;
    new-instance v4, Lcom/superdroid/sqd/About$Product;

    const v6, 0x7f02000f

    .line 82
    const v8, 0x7f04002f

    invoke-virtual {p0, v8}, Lcom/superdroid/sqd/About;->getString(I)Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f040030

    invoke-virtual {p0, v8}, Lcom/superdroid/sqd/About;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 83
    const v9, 0x7f040031

    invoke-virtual {p0, v9}, Lcom/superdroid/sqd/About;->getString(I)Ljava/lang/String;

    move-result-object v9

    move-object v5, p0

    .line 81
    invoke-direct/range {v4 .. v9}, Lcom/superdroid/sqd/About$Product;-><init>(Lcom/superdroid/sqd/About;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .local v4, ssf:Lcom/superdroid/sqd/About$Product;
    new-instance v5, Lcom/superdroid/sqd/About$Product;

    const v7, 0x7f02000c

    .line 92
    const v8, 0x7f040038

    invoke-virtual {p0, v8}, Lcom/superdroid/sqd/About;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 93
    const v9, 0x7f040039

    invoke-virtual {p0, v9}, Lcom/superdroid/sqd/About;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 94
    const v10, 0x7f04003a

    invoke-virtual {p0, v10}, Lcom/superdroid/sqd/About;->getString(I)Ljava/lang/String;

    move-result-object v10

    move-object v6, p0

    .line 91
    invoke-direct/range {v5 .. v10}, Lcom/superdroid/sqd/About$Product;-><init>(Lcom/superdroid/sqd/About;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .local v5, security:Lcom/superdroid/sqd/About$Product;
    new-instance v6, Lcom/superdroid/sqd/About$Product;

    const v8, 0x7f02000b

    .line 97
    const v9, 0x7f040035

    invoke-virtual {p0, v9}, Lcom/superdroid/sqd/About;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 98
    const v10, 0x7f040036

    invoke-virtual {p0, v10}, Lcom/superdroid/sqd/About;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 99
    const v11, 0x7f040037

    invoke-virtual {p0, v11}, Lcom/superdroid/sqd/About;->getString(I)Ljava/lang/String;

    move-result-object v11

    move-object v7, p0

    .line 96
    invoke-direct/range {v6 .. v11}, Lcom/superdroid/sqd/About$Product;-><init>(Lcom/superdroid/sqd/About;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .local v6, sclf:Lcom/superdroid/sqd/About$Product;
    new-instance v7, Lcom/superdroid/sqd/About$Product;

    const v9, 0x7f020009

    .line 102
    const v8, 0x7f040026

    invoke-virtual {p0, v8}, Lcom/superdroid/sqd/About;->getString(I)Ljava/lang/String;

    move-result-object v10

    const v8, 0x7f040027

    invoke-virtual {p0, v8}, Lcom/superdroid/sqd/About;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 103
    const v8, 0x7f040028

    invoke-virtual {p0, v8}, Lcom/superdroid/sqd/About;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object v8, p0

    .line 101
    invoke-direct/range {v7 .. v12}, Lcom/superdroid/sqd/About$Product;-><init>(Lcom/superdroid/sqd/About;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    .local v7, nba:Lcom/superdroid/sqd/About$Product;
    iget-object v8, p0, Lcom/superdroid/sqd/About;->_products:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    iget-object v8, p0, Lcom/superdroid/sqd/About;->_products:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    iget-object v8, p0, Lcom/superdroid/sqd/About;->_products:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    iget-object v8, p0, Lcom/superdroid/sqd/About;->_products:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    iget-object v8, p0, Lcom/superdroid/sqd/About;->_products:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    iget-object v8, p0, Lcom/superdroid/sqd/About;->_products:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    iget-object v8, p0, Lcom/superdroid/sqd/About;->_products:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    iget-object v8, p0, Lcom/superdroid/sqd/About;->_products:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 28
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    const/high16 v2, 0x7f04

    invoke-virtual {p0, v2}, Lcom/superdroid/sqd/About;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 30
    const v2, 0x7f040001

    invoke-virtual {p0, v2}, Lcom/superdroid/sqd/About;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 31
    .local v0, title:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/superdroid/sqd/About;->setTitle(Ljava/lang/CharSequence;)V

    .line 32
    const/high16 v1, 0x7f03

    invoke-virtual {p0, v1}, Lcom/superdroid/sqd/About;->setContentView(I)V

    .line 33
    invoke-direct {p0}, Lcom/superdroid/sqd/About;->initProducts()V

    .line 34
    invoke-direct {p0}, Lcom/superdroid/sqd/About;->initListView()V

    .line 35
    invoke-direct {p0}, Lcom/superdroid/sqd/About;->initButton()V

    .line 36
    return-void
.end method
