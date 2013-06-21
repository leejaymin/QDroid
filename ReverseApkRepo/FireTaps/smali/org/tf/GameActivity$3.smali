.class Lorg/tf/GameActivity$3;
.super Ljava/lang/Object;
.source "GameActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/tf/GameActivity;->destroyGL()V
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
    iput-object p1, p0, Lorg/tf/GameActivity$3;->this$0:Lorg/tf/GameActivity;

    .line 625
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 627
    iget-object v0, p0, Lorg/tf/GameActivity$3;->this$0:Lorg/tf/GameActivity;

    #getter for: Lorg/tf/GameActivity;->m_glView:Landroid/opengl/GLSurfaceView;
    invoke-static {v0}, Lorg/tf/GameActivity;->access$20(Lorg/tf/GameActivity;)Landroid/opengl/GLSurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->onPause()V

    .line 628
    iget-object v0, p0, Lorg/tf/GameActivity$3;->this$0:Lorg/tf/GameActivity;

    #calls: Lorg/tf/GameActivity;->onStageGLDestroyed()V
    invoke-static {v0}, Lorg/tf/GameActivity;->access$21(Lorg/tf/GameActivity;)V

    .line 629
    iget-object v0, p0, Lorg/tf/GameActivity$3;->this$0:Lorg/tf/GameActivity;

    #getter for: Lorg/tf/GameActivity;->m_glEventProcessedEvent:Ljava/lang/Object;
    invoke-static {v0}, Lorg/tf/GameActivity;->access$11(Lorg/tf/GameActivity;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lskiba/util/Simply;->notify(Ljava/lang/Object;)V

    .line 630
    return-void
.end method
