.class public final Lccc71/utils/a/n;
.super Lccc71/utils/a/l;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lccc71/utils/a/l;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/widget/TabWidget;)I
    .locals 1
    .parameter

    .prologue
    .line 26
    invoke-virtual {p1}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v0

    return v0
.end method

.method public final a(Landroid/content/Context;Landroid/widget/TabHost$TabSpec;Landroid/view/View;II)Landroid/widget/TabHost$TabSpec;
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 18
    invoke-virtual {p2, p3}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    .line 20
    return-object p2
.end method
