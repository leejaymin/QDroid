.class Lcom/garageapps/android/spacetracks/mainRenderer$1;
.super Ljava/lang/Object;
.source "mainRenderer.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$EGLConfigChooser;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/garageapps/android/spacetracks/mainRenderer;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/garageapps/android/spacetracks/mainRenderer;


# direct methods
.method constructor <init>(Lcom/garageapps/android/spacetracks/mainRenderer;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/garageapps/android/spacetracks/mainRenderer$1;->this$0:Lcom/garageapps/android/spacetracks/mainRenderer;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 6
    .parameter "egl"
    .parameter "display"

    .prologue
    const/4 v4, 0x1

    .line 34
    const/4 v0, 0x3

    new-array v2, v0, [I

    fill-array-data v2, :array_0

    .line 46
    .local v2, attributes:[I
    new-array v3, v4, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 47
    .local v3, configs:[Ljavax/microedition/khronos/egl/EGLConfig;
    new-array v5, v4, [I

    .local v5, result:[I
    move-object v0, p1

    move-object v1, p2

    .line 48
    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 49
    const/4 v0, 0x0

    aget-object v0, v3, v0

    return-object v0

    .line 34
    :array_0
    .array-data 0x4
        0x25t 0x30t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x38t 0x30t 0x0t 0x0t
    .end array-data
.end method
