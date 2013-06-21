.class public final Lccc71/utils/a/o;
.super Lccc71/utils/a/l;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lccc71/utils/a/l;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/widget/TabWidget;)I
    .locals 1
    .parameter

    .prologue
    .line 19
    const/4 v0, 0x0

    return v0
.end method

.method public final a(Landroid/content/Context;Landroid/widget/TabHost$TabSpec;Landroid/view/View;II)Landroid/widget/TabHost$TabSpec;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 13
    invoke-virtual {p1, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    return-object v0
.end method
