.class public Lexam/Draw/Xfer$MyView;
.super Landroid/view/View;
.source "Xfer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexam/Draw/Xfer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "MyView"
.end annotation


# instance fields
.field final synthetic this$0:Lexam/Draw/Xfer;


# direct methods
.method public constructor <init>(Lexam/Draw/Xfer;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 16
    iput-object p1, p0, Lexam/Draw/Xfer$MyView;->this$0:Lexam/Draw/Xfer;

    .line 17
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 18
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    const/high16 v3, 0x4348

    const/high16 v1, 0x42c8

    .line 21
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 22
    .local v5, Pnt:Landroid/graphics/Paint;
    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 24
    const/high16 v0, -0x1

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 25
    const/high16 v0, 0x42a0

    invoke-virtual {p1, v1, v1, v0, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 27
    new-instance v0, Landroid/graphics/PixelXorXfermode;

    const/high16 v2, -0x100

    invoke-direct {v0, v2}, Landroid/graphics/PixelXorXfermode;-><init>(I)V

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 29
    const v0, -0xffff01

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    move-object v0, p1

    move v2, v1

    move v4, v3

    .line 30
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 31
    return-void
.end method
