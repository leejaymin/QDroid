.class Lorg/tf/SongFinishedActivity$1;
.super Ljava/lang/Object;
.source "SongFinishedActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/tf/SongFinishedActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/tf/SongFinishedActivity;


# direct methods
.method constructor <init>(Lorg/tf/SongFinishedActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/tf/SongFinishedActivity$1;->this$0:Lorg/tf/SongFinishedActivity;

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lorg/tf/SongFinishedActivity$1;->this$0:Lorg/tf/SongFinishedActivity;

    #calls: Lorg/tf/SongFinishedActivity;->stepScoreAnimation()V
    invoke-static {v0}, Lorg/tf/SongFinishedActivity;->access$0(Lorg/tf/SongFinishedActivity;)V

    .line 142
    return-void
.end method
