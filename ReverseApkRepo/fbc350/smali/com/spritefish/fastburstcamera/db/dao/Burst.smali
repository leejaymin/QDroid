.class public Lcom/spritefish/fastburstcamera/db/dao/Burst;
.super Ljava/lang/Object;
.source "Burst.java"


# instance fields
.field id:J

.field pictures:J

.field timestamp:J


# direct methods
.method public constructor <init>(JJJ)V
    .locals 0
    .parameter "id"
    .parameter "timestamp"
    .parameter "pictures"

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-wide p1, p0, Lcom/spritefish/fastburstcamera/db/dao/Burst;->id:J

    .line 14
    iput-wide p3, p0, Lcom/spritefish/fastburstcamera/db/dao/Burst;->timestamp:J

    .line 15
    iput-wide p5, p0, Lcom/spritefish/fastburstcamera/db/dao/Burst;->pictures:J

    .line 16
    return-void
.end method


# virtual methods
.method public getId()J
    .locals 2

    .prologue
    .line 9
    iget-wide v0, p0, Lcom/spritefish/fastburstcamera/db/dao/Burst;->id:J

    return-wide v0
.end method

.method public getNumberOfPictures()J
    .locals 2

    .prologue
    .line 22
    iget-wide v0, p0, Lcom/spritefish/fastburstcamera/db/dao/Burst;->pictures:J

    return-wide v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 26
    iget-wide v0, p0, Lcom/spritefish/fastburstcamera/db/dao/Burst;->timestamp:J

    return-wide v0
.end method

.method public setPictures(J)V
    .locals 0
    .parameter "pictures"

    .prologue
    .line 19
    iput-wide p1, p0, Lcom/spritefish/fastburstcamera/db/dao/Burst;->pictures:J

    .line 20
    return-void
.end method
