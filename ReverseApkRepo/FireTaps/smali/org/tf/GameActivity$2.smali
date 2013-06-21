.class Lorg/tf/GameActivity$2;
.super Ljava/lang/Object;
.source "GameActivity.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/tf/GameActivity;->addGLView()V
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
    iput-object p1, p0, Lorg/tf/GameActivity$2;->this$0:Lorg/tf/GameActivity;

    .line 597
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1
    .parameter "gl"

    .prologue
    .line 606
    iget-object v0, p0, Lorg/tf/GameActivity$2;->this$0:Lorg/tf/GameActivity;

    #getter for: Lorg/tf/GameActivity;->m_fpsTimer:Lorg/tf/util/GameFPSTimer;
    invoke-static {v0}, Lorg/tf/GameActivity;->access$18(Lorg/tf/GameActivity;)Lorg/tf/util/GameFPSTimer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/tf/util/GameFPSTimer;->onBeforeRender()V

    .line 607
    iget-object v0, p0, Lorg/tf/GameActivity$2;->this$0:Lorg/tf/GameActivity;

    #calls: Lorg/tf/GameActivity;->onStageGLRender(Ljavax/microedition/khronos/opengles/GL10;)V
    invoke-static {v0, p1}, Lorg/tf/GameActivity;->access$19(Lorg/tf/GameActivity;Ljavax/microedition/khronos/opengles/GL10;)V

    .line 608
    iget-object v0, p0, Lorg/tf/GameActivity$2;->this$0:Lorg/tf/GameActivity;

    #getter for: Lorg/tf/GameActivity;->m_fpsTimer:Lorg/tf/util/GameFPSTimer;
    invoke-static {v0}, Lorg/tf/GameActivity;->access$18(Lorg/tf/GameActivity;)Lorg/tf/util/GameFPSTimer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/tf/util/GameFPSTimer;->onAfterRender()V

    .line 609
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 1
    .parameter "gl"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 603
    iget-object v0, p0, Lorg/tf/GameActivity$2;->this$0:Lorg/tf/GameActivity;

    #calls: Lorg/tf/GameActivity;->onStageGLChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    invoke-static {v0, p1, p2, p3}, Lorg/tf/GameActivity;->access$17(Lorg/tf/GameActivity;Ljavax/microedition/khronos/opengles/GL10;II)V

    .line 604
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 1
    .parameter "gl"
    .parameter "config"

    .prologue
    .line 599
    iget-object v0, p0, Lorg/tf/GameActivity$2;->this$0:Lorg/tf/GameActivity;

    #calls: Lorg/tf/GameActivity;->attachGLCrashHandler()V
    invoke-static {v0}, Lorg/tf/GameActivity;->access$15(Lorg/tf/GameActivity;)V

    .line 600
    iget-object v0, p0, Lorg/tf/GameActivity$2;->this$0:Lorg/tf/GameActivity;

    #calls: Lorg/tf/GameActivity;->onStageGLCreated(Ljavax/microedition/khronos/opengles/GL10;)V
    invoke-static {v0, p1}, Lorg/tf/GameActivity;->access$16(Lorg/tf/GameActivity;Ljavax/microedition/khronos/opengles/GL10;)V

    .line 601
    return-void
.end method
