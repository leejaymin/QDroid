.class public final Lcom/google/devtools/simple/runtime/components/android/Button;
.super Lcom/google/devtools/simple/runtime/components/android/ButtonBase;
.source "Button.java"


# annotations
.annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerComponent;
    category = .enum Lcom/google/devtools/simple/common/ComponentCategory;->BASIC:Lcom/google/devtools/simple/common/ComponentCategory;
    description = "Button with the ability to detect clicks.  Many aspects of its appearance can be changed, as well as whether it is clickable (<code>Enabled</code>), can be changed in the Designer or in the Blocks Editor."
    version = 0x1
.end annotation

.annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleObject;
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;)V
    .locals 0
    .parameter "container"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/google/devtools/simple/runtime/components/android/ButtonBase;-><init>(Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;)V

    .line 36
    return-void
.end method


# virtual methods
.method public Click()V
    .locals 2
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerEvent;
    .end annotation

    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 50
    const-string v0, "Click"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/devtools/simple/runtime/events/EventDispatcher;->dispatchEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    return-void
.end method

.method public click()V
    .locals 0

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/components/android/Button;->Click()V

    .line 42
    return-void
.end method
