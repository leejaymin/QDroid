.class public Lorg/tf/ui/NotFocusableListView;
.super Landroid/widget/ListView;
.source "NotFocusableListView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 28
    invoke-virtual {p0, v0}, Lorg/tf/ui/NotFocusableListView;->setFocusable(Z)V

    .line 29
    invoke-virtual {p0, v0}, Lorg/tf/ui/NotFocusableListView;->setFocusableInTouchMode(Z)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attributes"

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    invoke-virtual {p0, v0}, Lorg/tf/ui/NotFocusableListView;->setFocusable(Z)V

    .line 35
    invoke-virtual {p0, v0}, Lorg/tf/ui/NotFocusableListView;->setFocusableInTouchMode(Z)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attributes"
    .parameter "style"

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    invoke-virtual {p0, v0}, Lorg/tf/ui/NotFocusableListView;->setFocusable(Z)V

    .line 41
    invoke-virtual {p0, v0}, Lorg/tf/ui/NotFocusableListView;->setFocusableInTouchMode(Z)V

    .line 42
    return-void
.end method
