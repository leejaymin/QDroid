.class Lorg/tf/GameActivity$1;
.super Ljava/lang/Object;
.source "GameActivity.java"

# interfaces
.implements Lorg/tf/stage/Stage$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/tf/GameActivity;->onStageGLCreated(Ljavax/microedition/khronos/opengles/GL10;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/tf/GameActivity;


# direct methods
.method constructor <init>(Lorg/tf/GameActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/tf/GameActivity$1;->this$0:Lorg/tf/GameActivity;

    .line 343
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished(Lorg/tf/stage/Stage$FinalScore;)V
    .locals 2
    .parameter "info"

    .prologue
    .line 345
    iget-object v0, p0, Lorg/tf/GameActivity$1;->this$0:Lorg/tf/GameActivity;

    const/4 v1, 0x4

    #calls: Lorg/tf/GameActivity;->sendMessage(ILjava/lang/Object;)V
    invoke-static {v0, v1, p1}, Lorg/tf/GameActivity;->access$14(Lorg/tf/GameActivity;ILjava/lang/Object;)V

    .line 346
    return-void
.end method
