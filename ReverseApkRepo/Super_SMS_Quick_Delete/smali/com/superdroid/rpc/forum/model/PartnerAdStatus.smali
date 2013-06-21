.class public Lcom/superdroid/rpc/forum/model/PartnerAdStatus;
.super Ljava/lang/Object;
.source "PartnerAdStatus.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x47eb7079a1bd578cL


# instance fields
.field protected _click:I

.field protected _date:Ljava/util/Date;

.field protected _id:J

.field protected _impression:I

.field protected _isParnter:Z

.field protected _partnerID:J

.field protected _request:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method public constructor <init>(JJLjava/util/Date;IIIZ)V
    .locals 0
    .parameter "id"
    .parameter "partnerID"
    .parameter "date"
    .parameter "request"
    .parameter "impression"
    .parameter "click"
    .parameter "isPartner"

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-wide p1, p0, Lcom/superdroid/rpc/forum/model/PartnerAdStatus;->_id:J

    .line 40
    iput-wide p3, p0, Lcom/superdroid/rpc/forum/model/PartnerAdStatus;->_partnerID:J

    .line 41
    iput-object p5, p0, Lcom/superdroid/rpc/forum/model/PartnerAdStatus;->_date:Ljava/util/Date;

    .line 42
    iput p6, p0, Lcom/superdroid/rpc/forum/model/PartnerAdStatus;->_request:I

    .line 43
    iput p7, p0, Lcom/superdroid/rpc/forum/model/PartnerAdStatus;->_impression:I

    .line 44
    iput p8, p0, Lcom/superdroid/rpc/forum/model/PartnerAdStatus;->_click:I

    .line 45
    iput-boolean p9, p0, Lcom/superdroid/rpc/forum/model/PartnerAdStatus;->_isParnter:Z

    .line 46
    return-void
.end method


# virtual methods
.method public getClick()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/superdroid/rpc/forum/model/PartnerAdStatus;->_click:I

    return v0
.end method

.method public getDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/superdroid/rpc/forum/model/PartnerAdStatus;->_date:Ljava/util/Date;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 49
    iget-wide v0, p0, Lcom/superdroid/rpc/forum/model/PartnerAdStatus;->_id:J

    return-wide v0
.end method

.method public getImpression()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/superdroid/rpc/forum/model/PartnerAdStatus;->_impression:I

    return v0
.end method

.method public getPartnerID()J
    .locals 2

    .prologue
    .line 57
    iget-wide v0, p0, Lcom/superdroid/rpc/forum/model/PartnerAdStatus;->_partnerID:J

    return-wide v0
.end method

.method public getRequest()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/superdroid/rpc/forum/model/PartnerAdStatus;->_request:I

    return v0
.end method

.method public isParnter()Z
    .locals 1

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/superdroid/rpc/forum/model/PartnerAdStatus;->_isParnter:Z

    return v0
.end method

.method public setClick(I)V
    .locals 0
    .parameter "click"

    .prologue
    .line 93
    iput p1, p0, Lcom/superdroid/rpc/forum/model/PartnerAdStatus;->_click:I

    .line 94
    return-void
.end method

.method public setDate(Ljava/util/Date;)V
    .locals 0
    .parameter "date"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/superdroid/rpc/forum/model/PartnerAdStatus;->_date:Ljava/util/Date;

    .line 70
    return-void
.end method

.method public setId(J)V
    .locals 0
    .parameter "id"

    .prologue
    .line 53
    iput-wide p1, p0, Lcom/superdroid/rpc/forum/model/PartnerAdStatus;->_id:J

    .line 54
    return-void
.end method

.method public setImpression(I)V
    .locals 0
    .parameter "impression"

    .prologue
    .line 85
    iput p1, p0, Lcom/superdroid/rpc/forum/model/PartnerAdStatus;->_impression:I

    .line 86
    return-void
.end method

.method public setIsParnter(Z)V
    .locals 0
    .parameter "isParnter"

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/superdroid/rpc/forum/model/PartnerAdStatus;->_isParnter:Z

    .line 102
    return-void
.end method

.method public setPartnerID(J)V
    .locals 0
    .parameter "partnerID"

    .prologue
    .line 61
    iput-wide p1, p0, Lcom/superdroid/rpc/forum/model/PartnerAdStatus;->_partnerID:J

    .line 62
    return-void
.end method

.method public setRequest(I)V
    .locals 0
    .parameter "request"

    .prologue
    .line 77
    iput p1, p0, Lcom/superdroid/rpc/forum/model/PartnerAdStatus;->_request:I

    .line 78
    return-void
.end method
