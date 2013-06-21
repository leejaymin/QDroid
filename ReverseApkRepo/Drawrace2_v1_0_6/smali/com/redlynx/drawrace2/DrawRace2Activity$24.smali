.class Lcom/redlynx/drawrace2/DrawRace2Activity$24;
.super Ljava/lang/Object;
.source "DrawRace2Activity.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/redlynx/drawrace2/DrawRace2Activity;->createTempGLView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/redlynx/drawrace2/DrawRace2Activity;


# direct methods
.method constructor <init>(Lcom/redlynx/drawrace2/DrawRace2Activity;)V
    .locals 0
    .parameter

    .prologue
    .line 580
    iput-object p1, p0, Lcom/redlynx/drawrace2/DrawRace2Activity$24;->this$0:Lcom/redlynx/drawrace2/DrawRace2Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 2
    .parameter "gl"

    .prologue
    const/4 v1, 0x0

    .line 593
    const/high16 v0, 0x3f80

    invoke-interface {p1, v1, v1, v1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glClearColor(FFFF)V

    .line 594
    const/16 v0, 0x4000

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glClear(I)V

    .line 595
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 0
    .parameter "gl"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 589
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 1
    .parameter "gl"
    .parameter "config"

    .prologue
    .line 584
    iget-object v0, p0, Lcom/redlynx/drawrace2/DrawRace2Activity$24;->this$0:Lcom/redlynx/drawrace2/DrawRace2Activity;

    invoke-virtual {v0, p1}, Lcom/redlynx/drawrace2/DrawRace2Activity;->startDownloadActivity(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 585
    return-void
.end method
