.class public Lcom/stickycoding/rokon/Background;
.super Ljava/lang/Object;
.source "Background.java"


# instance fields
.field public parentScene:Lcom/stickycoding/rokon/Scene;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getParentScene()Lcom/stickycoding/rokon/Scene;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/stickycoding/rokon/Background;->parentScene:Lcom/stickycoding/rokon/Scene;

    return-object v0
.end method

.method public onDraw(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 0
    .parameter "gl"

    .prologue
    .line 23
    invoke-static {p1}, Lcom/stickycoding/rokon/Window;->setDefault(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 24
    return-void
.end method
