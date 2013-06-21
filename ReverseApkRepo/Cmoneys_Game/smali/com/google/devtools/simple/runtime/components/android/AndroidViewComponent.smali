.class public abstract Lcom/google/devtools/simple/runtime/components/android/AndroidViewComponent;
.super Lcom/google/devtools/simple/runtime/components/VisibleComponent;
.source "AndroidViewComponent.java"


# annotations
.annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleObject;
.end annotation


# instance fields
.field private column:I

.field protected final container:Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;

.field private lastSetHeight:I

.field private lastSetWidth:I

.field private row:I


# direct methods
.method protected constructor <init>(Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;)V
    .locals 2
    .parameter "container"

    .prologue
    const/4 v1, -0x1

    const/4 v0, -0x3

    .line 38
    invoke-direct {p0}, Lcom/google/devtools/simple/runtime/components/VisibleComponent;-><init>()V

    .line 27
    iput v0, p0, Lcom/google/devtools/simple/runtime/components/android/AndroidViewComponent;->lastSetWidth:I

    .line 28
    iput v0, p0, Lcom/google/devtools/simple/runtime/components/android/AndroidViewComponent;->lastSetHeight:I

    .line 30
    iput v1, p0, Lcom/google/devtools/simple/runtime/components/android/AndroidViewComponent;->column:I

    .line 31
    iput v1, p0, Lcom/google/devtools/simple/runtime/components/android/AndroidViewComponent;->row:I

    .line 39
    iput-object p1, p0, Lcom/google/devtools/simple/runtime/components/android/AndroidViewComponent;->container:Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;

    .line 40
    return-void
.end method


# virtual methods
.method public Column()I
    .locals 1
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .prologue
    .line 150
    iget v0, p0, Lcom/google/devtools/simple/runtime/components/android/AndroidViewComponent;->column:I

    return v0
.end method

.method public Column(I)V
    .locals 0
    .parameter "column"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .prologue
    .line 160
    iput p1, p0, Lcom/google/devtools/simple/runtime/components/android/AndroidViewComponent;->column:I

    .line 161
    return-void
.end method

.method public CopyHeight(Lcom/google/devtools/simple/runtime/components/android/AndroidViewComponent;)V
    .locals 1
    .parameter "sourceComponent"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimplePropertyCopier;
    .end annotation

    .prologue
    .line 140
    iget v0, p1, Lcom/google/devtools/simple/runtime/components/android/AndroidViewComponent;->lastSetHeight:I

    invoke-virtual {p0, v0}, Lcom/google/devtools/simple/runtime/components/android/AndroidViewComponent;->Height(I)V

    .line 141
    return-void
.end method

.method public CopyWidth(Lcom/google/devtools/simple/runtime/components/android/AndroidViewComponent;)V
    .locals 1
    .parameter "sourceComponent"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimplePropertyCopier;
    .end annotation

    .prologue
    .line 103
    iget v0, p1, Lcom/google/devtools/simple/runtime/components/android/AndroidViewComponent;->lastSetWidth:I

    invoke-virtual {p0, v0}, Lcom/google/devtools/simple/runtime/components/android/AndroidViewComponent;->Width(I)V

    .line 104
    return-void
.end method

.method public Height()I
    .locals 1
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/components/android/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0
.end method

.method public Height(I)V
    .locals 1
    .parameter "height"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 125
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/AndroidViewComponent;->container:Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;

    invoke-interface {v0, p0, p1}, Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;->setChildHeight(Lcom/google/devtools/simple/runtime/components/android/AndroidViewComponent;I)V

    .line 126
    iput p1, p0, Lcom/google/devtools/simple/runtime/components/android/AndroidViewComponent;->lastSetHeight:I

    .line 127
    return-void
.end method

.method public Row()I
    .locals 1
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .prologue
    .line 170
    iget v0, p0, Lcom/google/devtools/simple/runtime/components/android/AndroidViewComponent;->row:I

    return v0
.end method

.method public Row(I)V
    .locals 0
    .parameter "row"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .prologue
    .line 180
    iput p1, p0, Lcom/google/devtools/simple/runtime/components/android/AndroidViewComponent;->row:I

    .line 181
    return-void
.end method

.method public Visible(Z)V
    .locals 2
    .parameter "visible"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/components/android/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 67
    return-void

    .line 66
    :cond_0
    const/16 v1, 0x8

    goto :goto_0
.end method

.method public Visible()Z
    .locals 1
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->APPEARANCE:Lcom/google/devtools/simple/common/PropertyCategory;
        description = "Whether the component is visible"
    .end annotation

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/components/android/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public Width()I
    .locals 1
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/components/android/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    return v0
.end method

.method public Width(I)V
    .locals 1
    .parameter "width"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/AndroidViewComponent;->container:Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;

    invoke-interface {v0, p0, p1}, Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;->setChildWidth(Lcom/google/devtools/simple/runtime/components/android/AndroidViewComponent;I)V

    .line 89
    iput p1, p0, Lcom/google/devtools/simple/runtime/components/android/AndroidViewComponent;->lastSetWidth:I

    .line 90
    return-void
.end method

.method public abstract getView()Landroid/view/View;
.end method
