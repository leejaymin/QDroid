.class public Lcom/madvil/core/BillboardChart;
.super Ljava/lang/Object;
.source "BillboardChart.java"


# instance fields
.field private fileName:Ljava/lang/String;

.field private link:Ljava/lang/String;

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/madvil/core/BillboardChart;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/madvil/core/BillboardChart;->link:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/madvil/core/BillboardChart;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0
    .parameter "fileName"

    .prologue
    .line 26
    iput-object p1, p0, Lcom/madvil/core/BillboardChart;->fileName:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public setLink(Ljava/lang/String;)V
    .locals 0
    .parameter "link"

    .prologue
    .line 18
    iput-object p1, p0, Lcom/madvil/core/BillboardChart;->link:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 10
    iput-object p1, p0, Lcom/madvil/core/BillboardChart;->name:Ljava/lang/String;

    .line 11
    return-void
.end method
