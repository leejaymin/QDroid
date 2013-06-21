.class public Lcom/spritefish/fastburstcamera/db/dao/Picture;
.super Ljava/lang/Object;
.source "Picture.java"


# instance fields
.field private burstId:J

.field private id:J

.field private path:Ljava/lang/String;

.field private timestamp:J


# direct methods
.method public constructor <init>(JLjava/lang/String;JJ)V
    .locals 0
    .parameter "id"
    .parameter "path"
    .parameter "burstId"
    .parameter "timestamp"

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-wide p1, p0, Lcom/spritefish/fastburstcamera/db/dao/Picture;->id:J

    .line 12
    iput-object p3, p0, Lcom/spritefish/fastburstcamera/db/dao/Picture;->path:Ljava/lang/String;

    .line 13
    iput-wide p4, p0, Lcom/spritefish/fastburstcamera/db/dao/Picture;->burstId:J

    .line 14
    iput-wide p6, p0, Lcom/spritefish/fastburstcamera/db/dao/Picture;->timestamp:J

    .line 15
    return-void
.end method


# virtual methods
.method public getBurstId()J
    .locals 2

    .prologue
    .line 26
    iget-wide v0, p0, Lcom/spritefish/fastburstcamera/db/dao/Picture;->burstId:J

    return-wide v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 18
    iget-wide v0, p0, Lcom/spritefish/fastburstcamera/db/dao/Picture;->id:J

    return-wide v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/db/dao/Picture;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 30
    iget-wide v0, p0, Lcom/spritefish/fastburstcamera/db/dao/Picture;->timestamp:J

    return-wide v0
.end method
