.class public Lexam/Draw/SaveCanvas$MyView;
.super Landroid/view/View;
.source "SaveCanvas.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexam/Draw/SaveCanvas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "MyView"
.end annotation


# instance fields
.field final synthetic this$0:Lexam/Draw/SaveCanvas;


# direct methods
.method public constructor <init>(Lexam/Draw/SaveCanvas;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 16
    iput-object p1, p0, Lexam/Draw/SaveCanvas$MyView;->this$0:Lexam/Draw/SaveCanvas;

    .line 17
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 18
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    const/high16 v6, 0x42c8

    const/high16 v3, 0x4248

    const/high16 v1, 0x4120

    .line 21
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 22
    .local v5, Pnt:Landroid/graphics/Paint;
    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 24
    const/16 v0, -0x100

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    move-object v0, p1

    move v2, v1

    move v4, v3

    .line 25
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 27
    const v0, -0xff0100

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 28
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 29
    const/4 v0, 0x0

    invoke-virtual {p1, v6, v0}, Landroid/graphics/Canvas;->translate(FF)V

    move-object v0, p1

    move v2, v1

    move v4, v3

    .line 30
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 32
    const v0, -0xffff01

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 33
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 34
    invoke-virtual {p1, v6, v6}, Landroid/graphics/Canvas;->translate(FF)V

    move-object v0, p1

    move v2, v1

    move v4, v3

    .line 35
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 36
    return-void
.end method
