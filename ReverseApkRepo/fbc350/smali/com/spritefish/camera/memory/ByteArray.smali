.class public Lcom/spritefish/camera/memory/ByteArray;
.super Ljava/lang/Object;
.source "ByteArray.java"


# instance fields
.field private bami:Lcom/spritefish/camera/memory/BAMInterface;

.field private burstId:J

.field private cameraId:I

.field private id:I

.field private rotation:Lcom/spritefish/camera/RotationManager$Rotation;

.field private tag:Ljava/lang/String;

.field private thumbnail:[I

.field private timestamp:J


# direct methods
.method public constructor <init>(ILcom/spritefish/camera/memory/BAMInterface;I)V
    .locals 1
    .parameter "id"
    .parameter "bami"
    .parameter "thumbSize"

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput p1, p0, Lcom/spritefish/camera/memory/ByteArray;->id:I

    .line 39
    iput-object p2, p0, Lcom/spritefish/camera/memory/ByteArray;->bami:Lcom/spritefish/camera/memory/BAMInterface;

    .line 40
    new-array v0, p3, [I

    iput-object v0, p0, Lcom/spritefish/camera/memory/ByteArray;->thumbnail:[I

    .line 42
    return-void
.end method


# virtual methods
.method public getBurstId()J
    .locals 2

    .prologue
    .line 24
    iget-wide v0, p0, Lcom/spritefish/camera/memory/ByteArray;->burstId:J

    return-wide v0
.end method

.method public getCameraId()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/spritefish/camera/memory/ByteArray;->cameraId:I

    return v0
.end method

.method public getData()[B
    .locals 3

    .prologue
    .line 55
    iget-object v0, p0, Lcom/spritefish/camera/memory/ByteArray;->bami:Lcom/spritefish/camera/memory/BAMInterface;

    iget v1, p0, Lcom/spritefish/camera/memory/ByteArray;->id:I

    iget-object v2, p0, Lcom/spritefish/camera/memory/ByteArray;->bami:Lcom/spritefish/camera/memory/BAMInterface;

    invoke-interface {v2}, Lcom/spritefish/camera/memory/BAMInterface;->getCopyBuffer()[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/spritefish/camera/memory/BAMInterface;->getData(I[B)[B

    move-result-object v0

    return-object v0
.end method

.method public getRotation()Lcom/spritefish/camera/RotationManager$Rotation;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/spritefish/camera/memory/ByteArray;->rotation:Lcom/spritefish/camera/RotationManager$Rotation;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/spritefish/camera/memory/ByteArray;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnailPixels()[I
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/spritefish/camera/memory/ByteArray;->thumbnail:[I

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/spritefish/camera/memory/ByteArray;->timestamp:J

    return-wide v0
.end method

.method public putData([B)V
    .locals 2
    .parameter "data"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/spritefish/camera/memory/ByteArray;->bami:Lcom/spritefish/camera/memory/BAMInterface;

    iget v1, p0, Lcom/spritefish/camera/memory/ByteArray;->id:I

    invoke-interface {v0, v1, p1}, Lcom/spritefish/camera/memory/BAMInterface;->putData(I[B)V

    .line 52
    return-void
.end method

.method public release()V
    .locals 0

    .prologue
    .line 47
    return-void
.end method

.method public setBurstId(J)V
    .locals 0
    .parameter "burstId"

    .prologue
    .line 28
    iput-wide p1, p0, Lcom/spritefish/camera/memory/ByteArray;->burstId:J

    .line 29
    return-void
.end method

.method public setCameraId(I)V
    .locals 0
    .parameter "cameraId"

    .prologue
    .line 76
    iput p1, p0, Lcom/spritefish/camera/memory/ByteArray;->cameraId:I

    .line 77
    return-void
.end method

.method public setOrientation(Lcom/spritefish/camera/RotationManager$Rotation;)V
    .locals 0
    .parameter "rotation"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/spritefish/camera/memory/ByteArray;->rotation:Lcom/spritefish/camera/RotationManager$Rotation;

    .line 69
    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0
    .parameter "tag"

    .prologue
    .line 19
    iput-object p1, p0, Lcom/spritefish/camera/memory/ByteArray;->tag:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public setTimestamp(J)V
    .locals 0
    .parameter "timestamp"

    .prologue
    .line 63
    iput-wide p1, p0, Lcom/spritefish/camera/memory/ByteArray;->timestamp:J

    .line 64
    return-void
.end method
