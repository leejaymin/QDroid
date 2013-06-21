.class Lorg/tf/util/AssetExtractor$1;
.super Ljava/lang/Thread;
.source "AssetExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/tf/util/AssetExtractor;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/tf/util/AssetExtractor;


# direct methods
.method constructor <init>(Lorg/tf/util/AssetExtractor;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/tf/util/AssetExtractor$1;->this$0:Lorg/tf/util/AssetExtractor;

    .line 54
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lorg/tf/util/AssetExtractor$1;->this$0:Lorg/tf/util/AssetExtractor;

    #calls: Lorg/tf/util/AssetExtractor;->threadRun()V
    invoke-static {v0}, Lorg/tf/util/AssetExtractor;->access$0(Lorg/tf/util/AssetExtractor;)V

    .line 57
    return-void
.end method
