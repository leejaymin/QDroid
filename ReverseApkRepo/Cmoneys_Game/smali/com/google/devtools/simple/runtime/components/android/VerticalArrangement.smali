.class public Lcom/google/devtools/simple/runtime/components/android/VerticalArrangement;
.super Lcom/google/devtools/simple/runtime/components/android/HVArrangement;
.source "VerticalArrangement.java"


# annotations
.annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerComponent;
    category = .enum Lcom/google/devtools/simple/common/ComponentCategory;->ARRANGEMENTS:Lcom/google/devtools/simple/common/ComponentCategory;
    description = "<p>A formatting element in which to place components that should be displayed one below another.  (The first child component is stored on top, the second beneath it, etc.)  If you wish to have components displayed next to one another, use <code>HorizontalArrangement</code> instead.</p>"
    version = 0x1
.end annotation

.annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleObject;
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;)V
    .locals 1
    .parameter "container"

    .prologue
    .line 28
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/devtools/simple/runtime/components/android/HVArrangement;-><init>(Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;I)V

    .line 29
    return-void
.end method
