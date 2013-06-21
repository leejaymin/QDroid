.class public Lcom/google/devtools/simple/runtime/components/android/HorizontalArrangement;
.super Lcom/google/devtools/simple/runtime/components/android/HVArrangement;
.source "HorizontalArrangement.java"


# annotations
.annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerComponent;
    category = .enum Lcom/google/devtools/simple/common/ComponentCategory;->ARRANGEMENTS:Lcom/google/devtools/simple/common/ComponentCategory;
    description = "<p>A formatting element in which to place components that should be displayed from left to right.  If you wish to have components displayed one over another, use <code>VerticalArrangement</code> instead.</p>"
    version = 0x1
.end annotation

.annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleObject;
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;)V
    .locals 1
    .parameter "container"

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/devtools/simple/runtime/components/android/HVArrangement;-><init>(Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;I)V

    .line 26
    return-void
.end method
