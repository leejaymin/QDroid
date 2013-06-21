.class public Lexam/Draw/ComposeSdr$MyView;
.super Landroid/view/View;
.source "ComposeSdr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexam/Draw/ComposeSdr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "MyView"
.end annotation


# instance fields
.field final synthetic this$0:Lexam/Draw/ComposeSdr;


# direct methods
.method public constructor <init>(Lexam/Draw/ComposeSdr;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 18
    iput-object p1, p0, Lexam/Draw/ComposeSdr$MyView;->this$0:Lexam/Draw/ComposeSdr;

    .line 19
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 20
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .parameter "canvas"

    .prologue
    const/high16 v3, 0x43a0

    const/4 v1, 0x0

    .line 23
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    .line 24
    .local v8, Pnt:Landroid/graphics/Paint;
    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 26
    invoke-virtual {p0}, Lexam/Draw/ComposeSdr$MyView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 27
    const v2, 0x7f02000b

    .line 26
    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 29
    .local v9, clover:Landroid/graphics/Bitmap;
    new-instance v10, Landroid/graphics/ComposeShader;

    .line 30
    new-instance v11, Landroid/graphics/BitmapShader;

    sget-object v0, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-direct {v11, v9, v0, v2}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 31
    new-instance v0, Landroid/graphics/LinearGradient;

    const/4 v5, 0x0

    const/high16 v6, -0x100

    sget-object v7, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v4, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 32
    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->DARKEN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 29
    invoke-direct {v10, v11, v0, v2}, Landroid/graphics/ComposeShader;-><init>(Landroid/graphics/Shader;Landroid/graphics/Shader;Landroid/graphics/Xfermode;)V

    .line 33
    .local v10, comp:Landroid/graphics/ComposeShader;
    invoke-virtual {v8, v10}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 34
    const/high16 v4, 0x4348

    move-object v0, p1

    move v2, v1

    move-object v5, v8

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 35
    return-void
.end method
