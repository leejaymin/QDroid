.class public Lexam/Output/CustomFont$MyView;
.super Landroid/view/View;
.source "CustomFont.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexam/Output/CustomFont;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "MyView"
.end annotation


# instance fields
.field final synthetic this$0:Lexam/Output/CustomFont;


# direct methods
.method public constructor <init>(Lexam/Output/CustomFont;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 21
    iput-object p1, p0, Lexam/Output/CustomFont$MyView;->this$0:Lexam/Output/CustomFont;

    .line 22
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 23
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    .line 26
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 27
    .local v0, Pnt:Landroid/graphics/Paint;
    const/4 v2, -0x1

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 28
    const-string v1, "Custom Font Test"

    .line 30
    .local v1, str:Ljava/lang/String;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 31
    iget-object v2, p0, Lexam/Output/CustomFont$MyView;->this$0:Lexam/Output/CustomFont;

    iget-object v2, v2, Lexam/Output/CustomFont;->mFont:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 32
    const/high16 v2, 0x41f0

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 33
    const/high16 v2, 0x4120

    const/high16 v3, 0x4220

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 34
    return-void
.end method
