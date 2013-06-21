.class public Lkr/co/medinbiz/dto/VideoList;
.super Ljava/lang/Object;
.source "VideoList.java"


# instance fields
.field private diffcount:Ljava/lang/String;

.field private result:Ljava/lang/String;

.field private totalmovie:Ljava/lang/String;

.field private totalpage:Ljava/lang/String;

.field private ultras:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lkr/co/medinbiz/dto/Ultra;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDiffcount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lkr/co/medinbiz/dto/VideoList;->diffcount:Ljava/lang/String;

    return-object v0
.end method

.method public getResult()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lkr/co/medinbiz/dto/VideoList;->result:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalmovie()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lkr/co/medinbiz/dto/VideoList;->totalmovie:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalpage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lkr/co/medinbiz/dto/VideoList;->totalpage:Ljava/lang/String;

    return-object v0
.end method

.method public getUltras()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lkr/co/medinbiz/dto/Ultra;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    iget-object v0, p0, Lkr/co/medinbiz/dto/VideoList;->ultras:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setDiffcount(Ljava/lang/String;)V
    .locals 0
    .parameter "diffcount"

    .prologue
    .line 43
    iput-object p1, p0, Lkr/co/medinbiz/dto/VideoList;->diffcount:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setResult(Ljava/lang/String;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 18
    iput-object p1, p0, Lkr/co/medinbiz/dto/VideoList;->result:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public setTotalmovie(Ljava/lang/String;)V
    .locals 0
    .parameter "totalmovie"

    .prologue
    .line 35
    iput-object p1, p0, Lkr/co/medinbiz/dto/VideoList;->totalmovie:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setTotalpage(Ljava/lang/String;)V
    .locals 0
    .parameter "totalpage"

    .prologue
    .line 27
    iput-object p1, p0, Lkr/co/medinbiz/dto/VideoList;->totalpage:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public setUltras(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lkr/co/medinbiz/dto/Ultra;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p1, ultras:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lkr/co/medinbiz/dto/Ultra;>;"
    iput-object p1, p0, Lkr/co/medinbiz/dto/VideoList;->ultras:Ljava/util/ArrayList;

    .line 52
    return-void
.end method
