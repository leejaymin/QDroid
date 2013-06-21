.class public Lcom/wolfram/android/alpha/view/FlowLayout$LayoutParams;
.super Landroid/view/ViewGroup$LayoutParams;
.source "FlowLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wolfram/android/alpha/view/FlowLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public final horizontal_spacing:I

.field public final vertical_spacing:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .parameter "horizontal_spacing"
    .parameter "vertical_spacing"

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 40
    iput p1, p0, Lcom/wolfram/android/alpha/view/FlowLayout$LayoutParams;->horizontal_spacing:I

    .line 41
    iput p2, p0, Lcom/wolfram/android/alpha/view/FlowLayout$LayoutParams;->vertical_spacing:I

    .line 42
    return-void
.end method
