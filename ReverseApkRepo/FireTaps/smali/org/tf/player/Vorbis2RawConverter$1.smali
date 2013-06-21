.class Lorg/tf/player/Vorbis2RawConverter$1;
.super Ljava/lang/Thread;
.source "Vorbis2RawConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/tf/player/Vorbis2RawConverter;->startThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/tf/player/Vorbis2RawConverter;


# direct methods
.method constructor <init>(Lorg/tf/player/Vorbis2RawConverter;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/tf/player/Vorbis2RawConverter$1;->this$0:Lorg/tf/player/Vorbis2RawConverter;

    .line 126
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lorg/tf/player/Vorbis2RawConverter$1;->this$0:Lorg/tf/player/Vorbis2RawConverter;

    #calls: Lorg/tf/player/Vorbis2RawConverter;->threadRun()V
    invoke-static {v0}, Lorg/tf/player/Vorbis2RawConverter;->access$0(Lorg/tf/player/Vorbis2RawConverter;)V

    .line 129
    return-void
.end method
