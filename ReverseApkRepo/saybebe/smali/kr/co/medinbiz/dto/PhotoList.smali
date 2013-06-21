.class public Lkr/co/medinbiz/dto/PhotoList;
.super Ljava/lang/Object;
.source "PhotoList.java"


# instance fields
.field private result:Ljava/lang/String;

.field private totalpage:Ljava/lang/String;

.field private totalphoto:Ljava/lang/String;

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
.method public getResult()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lkr/co/medinbiz/dto/PhotoList;->result:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalpage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lkr/co/medinbiz/dto/PhotoList;->totalpage:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalphoto()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lkr/co/medinbiz/dto/PhotoList;->totalphoto:Ljava/lang/String;

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
    .line 36
    iget-object v0, p0, Lkr/co/medinbiz/dto/PhotoList;->ultras:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setResult(Ljava/lang/String;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 16
    iput-object p1, p0, Lkr/co/medinbiz/dto/PhotoList;->result:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public setTotalpage(Ljava/lang/String;)V
    .locals 0
    .parameter "totalpage"

    .prologue
    .line 24
    iput-object p1, p0, Lkr/co/medinbiz/dto/PhotoList;->totalpage:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public setTotalphoto(Ljava/lang/String;)V
    .locals 0
    .parameter "totalphoto"

    .prologue
    .line 32
    iput-object p1, p0, Lkr/co/medinbiz/dto/PhotoList;->totalphoto:Ljava/lang/String;

    .line 33
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
    .line 40
    .local p1, ultras:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lkr/co/medinbiz/dto/Ultra;>;"
    iput-object p1, p0, Lkr/co/medinbiz/dto/PhotoList;->ultras:Ljava/util/ArrayList;

    .line 41
    return-void
.end method
