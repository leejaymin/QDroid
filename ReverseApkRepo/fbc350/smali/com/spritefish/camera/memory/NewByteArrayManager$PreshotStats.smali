.class public Lcom/spritefish/camera/memory/NewByteArrayManager$PreshotStats;
.super Ljava/lang/Object;
.source "NewByteArrayManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spritefish/camera/memory/NewByteArrayManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PreshotStats"
.end annotation


# instance fields
.field public milliseconds:J

.field public shots:J

.field final synthetic this$0:Lcom/spritefish/camera/memory/NewByteArrayManager;


# direct methods
.method public constructor <init>(Lcom/spritefish/camera/memory/NewByteArrayManager;)V
    .locals 2
    .parameter

    .prologue
    const-wide/16 v0, 0x0

    .line 29
    iput-object p1, p0, Lcom/spritefish/camera/memory/NewByteArrayManager$PreshotStats;->this$0:Lcom/spritefish/camera/memory/NewByteArrayManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-wide v0, p0, Lcom/spritefish/camera/memory/NewByteArrayManager$PreshotStats;->shots:J

    .line 31
    iput-wide v0, p0, Lcom/spritefish/camera/memory/NewByteArrayManager$PreshotStats;->milliseconds:J

    return-void
.end method
