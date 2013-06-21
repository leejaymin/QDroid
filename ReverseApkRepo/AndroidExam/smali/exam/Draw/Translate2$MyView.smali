.class public Lexam/Draw/Translate2$MyView;
.super Landroid/view/View;
.source "Translate2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexam/Draw/Translate2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "MyView"
.end annotation


# instance fields
.field final synthetic this$0:Lexam/Draw/Translate2;


# direct methods
.method public constructor <init>(Lexam/Draw/Translate2;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 16
    iput-object p1, p0, Lexam/Draw/Translate2$MyView;->this$0:Lexam/Draw/Translate2;

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
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 21
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 22
    .local v0, Pnt:Landroid/graphics/Paint;
    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 24
    const/4 v4, -0x1

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 25
    const/4 v4, 0x6

    new-array v1, v4, [Ljava/lang/String;

    const-string v4, "One"

    aput-object v4, v1, v3

    const-string v4, "Two"

    aput-object v4, v1, v5

    const/4 v4, 0x2

    const-string v5, "Three"

    aput-object v5, v1, v4

    const/4 v4, 0x3

    const-string v5, "Four"

    aput-object v5, v1, v4

    const/4 v4, 0x4

    const-string v5, "Five"

    aput-object v5, v1, v4

    const/4 v4, 0x5

    const-string v5, "Six"

    aput-object v5, v1, v4

    .line 27
    .local v1, arStr:[Ljava/lang/String;
    array-length v4, v1

    :goto_0
    if-lt v3, v4, :cond_0

    .line 31
    return-void

    .line 27
    :cond_0
    aget-object v2, v1, v3

    .line 28
    .local v2, s:Ljava/lang/String;
    const/high16 v5, 0x4120

    const/high16 v6, 0x41a0

    invoke-virtual {p1, v2, v5, v6, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 29
    const/4 v5, 0x0

    const/high16 v6, 0x41f0

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 27
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method
