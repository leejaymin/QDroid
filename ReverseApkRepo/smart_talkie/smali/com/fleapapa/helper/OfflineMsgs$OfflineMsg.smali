.class public Lcom/fleapapa/helper/OfflineMsgs$OfflineMsg;
.super Ljava/lang/Object;
.source "OfflineMsgs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fleapapa/helper/OfflineMsgs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OfflineMsg"
.end annotation


# instance fields
.field bix:I

.field burst:Lcom/fleapapa/helper/CallPapa$Burst;

.field cid:I

.field deleted:Z

.field error:Z

.field kbits:Ljava/util/BitSet;

.field len:I

.field mid:I

.field msg:Ljava/lang/String;

.field nkbit:I

.field shown:Z

.field stime:J

.field type:B

.field uid:I


# direct methods
.method public constructor <init>(IILjava/lang/String;JIIBI)V
    .locals 2
    .parameter "mid"
    .parameter "uid"
    .parameter "msg"
    .parameter "stime"
    .parameter "cid"
    .parameter "bix"
    .parameter "type"
    .parameter "len"

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput p1, p0, Lcom/fleapapa/helper/OfflineMsgs$OfflineMsg;->mid:I

    .line 127
    iput p2, p0, Lcom/fleapapa/helper/OfflineMsgs$OfflineMsg;->uid:I

    .line 128
    iput-object p3, p0, Lcom/fleapapa/helper/OfflineMsgs$OfflineMsg;->msg:Ljava/lang/String;

    .line 129
    iput p6, p0, Lcom/fleapapa/helper/OfflineMsgs$OfflineMsg;->cid:I

    .line 131
    if-eqz p6, :cond_0

    .line 132
    iput p7, p0, Lcom/fleapapa/helper/OfflineMsgs$OfflineMsg;->bix:I

    .line 133
    iput-wide p4, p0, Lcom/fleapapa/helper/OfflineMsgs$OfflineMsg;->stime:J

    .line 134
    iput-byte p8, p0, Lcom/fleapapa/helper/OfflineMsgs$OfflineMsg;->type:B

    .line 135
    iput p9, p0, Lcom/fleapapa/helper/OfflineMsgs$OfflineMsg;->len:I

    .line 136
    add-int/lit16 v0, p9, 0x400

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    div-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/fleapapa/helper/OfflineMsgs$OfflineMsg;->nkbit:I

    .line 137
    new-instance v0, Ljava/util/BitSet;

    iget v1, p0, Lcom/fleapapa/helper/OfflineMsgs$OfflineMsg;->nkbit:I

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/fleapapa/helper/OfflineMsgs$OfflineMsg;->kbits:Ljava/util/BitSet;

    .line 139
    :cond_0
    return-void
.end method


# virtual methods
.method public loaded()Z
    .locals 2

    .prologue
    .line 141
    iget v0, p0, Lcom/fleapapa/helper/OfflineMsgs$OfflineMsg;->cid:I

    if-eqz v0, :cond_0

    .line 142
    iget-boolean v0, p0, Lcom/fleapapa/helper/OfflineMsgs$OfflineMsg;->error:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/fleapapa/helper/OfflineMsgs$OfflineMsg;->deleted:Z

    if-nez v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/fleapapa/helper/OfflineMsgs$OfflineMsg;->kbits:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    iget v1, p0, Lcom/fleapapa/helper/OfflineMsgs$OfflineMsg;->nkbit:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    .line 141
    goto :goto_0
.end method
