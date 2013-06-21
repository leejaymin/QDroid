.class Lorg/tf/player/PCMPlayer$1;
.super Ljava/lang/Thread;
.source "PCMPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/tf/player/PCMPlayer;->startThreads()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/tf/player/PCMPlayer;


# direct methods
.method constructor <init>(Lorg/tf/player/PCMPlayer;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "$anonymous0"

    .prologue
    .line 1
    iput-object p1, p0, Lorg/tf/player/PCMPlayer$1;->this$0:Lorg/tf/player/PCMPlayer;

    .line 407
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lorg/tf/player/PCMPlayer$1;->this$0:Lorg/tf/player/PCMPlayer;

    #calls: Lorg/tf/player/PCMPlayer;->readerThreadRun()V
    invoke-static {v0}, Lorg/tf/player/PCMPlayer;->access$0(Lorg/tf/player/PCMPlayer;)V

    .line 410
    return-void
.end method
