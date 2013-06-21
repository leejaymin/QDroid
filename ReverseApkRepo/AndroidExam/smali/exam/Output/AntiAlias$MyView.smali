.class public Lexam/Output/AntiAlias$MyView;
.super Landroid/view/View;
.source "AntiAlias.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexam/Output/AntiAlias;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "MyView"
.end annotation


# instance fields
.field final synthetic this$0:Lexam/Output/AntiAlias;


# direct methods
.method public constructor <init>(Lexam/Output/AntiAlias;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 17
    iput-object p1, p0, Lexam/Output/AntiAlias$MyView;->this$0:Lexam/Output/AntiAlias;

    .line 18
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 19
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    const/high16 v6, 0x42dc

    const/high16 v5, 0x42c8

    const/high16 v4, 0x4120

    .line 22
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 23
    .local v0, Pnt:Landroid/graphics/Paint;
    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 24
    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 25
    const/high16 v1, 0x41f0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 28
    new-instance v1, Landroid/graphics/RectF;

    const/high16 v2, 0x4270

    invoke-direct {v1, v4, v4, v5, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 29
    const-string v1, "Text"

    const/high16 v2, 0x4220

    invoke-virtual {p1, v1, v6, v2, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 32
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 33
    new-instance v1, Landroid/graphics/RectF;

    const/high16 v2, 0x428c

    const/high16 v3, 0x42f0

    invoke-direct {v1, v4, v2, v5, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 34
    const-string v1, "Text"

    invoke-virtual {p1, v1, v6, v5, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 35
    return-void
.end method
