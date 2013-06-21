.class public Lcom/google/devtools/simple/runtime/components/android/ListPicker;
.super Lcom/google/devtools/simple/runtime/components/android/ButtonBase;
.source "ListPicker.java"

# interfaces
.implements Lcom/google/devtools/simple/runtime/components/android/ActivityResultListener;
.implements Lcom/google/devtools/simple/runtime/components/android/Deleteable;


# annotations
.annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerComponent;
    category = .enum Lcom/google/devtools/simple/common/ComponentCategory;->BASIC:Lcom/google/devtools/simple/common/ComponentCategory;
    description = "<p>A button that, when clicked on, displays a list of texts for the user to choose among. The texts can be specified through the Designer or Blocks Editor by setting the <code>ElementsFromString</code> property to their string-separated concatenation (for example, <em>choice 1, choice 2, choice 3</em>) or by setting the <code>Elements</code> property to a List in the Blocks editor.</p><p>Other properties affect the appearance of the button (<code>Alignment</code>, <code>BackgroundColor</code>, etc.) and whether it can be clicked on (<code>Enabled</code>).</p>"
    version = 0x1
.end annotation

.annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleObject;
.end annotation


# static fields
.field static final LIST_ACTIVITY_ARG_NAME:Ljava/lang/String;

.field private static final LIST_ACTIVITY_CLASS:Ljava/lang/String;

.field static final LIST_ACTIVITY_RESULT_NAME:Ljava/lang/String;


# instance fields
.field private final container:Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;

.field private items:Lcom/google/devtools/simple/runtime/components/util/YailList;

.field private requestCode:I

.field private selection:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 42
    const-class v0, Lcom/google/devtools/simple/runtime/components/android/ListPickerActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/devtools/simple/runtime/components/android/ListPicker;->LIST_ACTIVITY_CLASS:Ljava/lang/String;

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/google/devtools/simple/runtime/components/android/ListPicker;->LIST_ACTIVITY_CLASS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".list"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/devtools/simple/runtime/components/android/ListPicker;->LIST_ACTIVITY_ARG_NAME:Ljava/lang/String;

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/google/devtools/simple/runtime/components/android/ListPicker;->LIST_ACTIVITY_CLASS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".selection"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/devtools/simple/runtime/components/android/ListPicker;->LIST_ACTIVITY_RESULT_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;)V
    .locals 1
    .parameter "container"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/google/devtools/simple/runtime/components/android/ButtonBase;-><init>(Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;)V

    .line 62
    iput-object p1, p0, Lcom/google/devtools/simple/runtime/components/android/ListPicker;->container:Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;

    .line 63
    new-instance v0, Lcom/google/devtools/simple/runtime/components/util/YailList;

    invoke-direct {v0}, Lcom/google/devtools/simple/runtime/components/util/YailList;-><init>()V

    iput-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/ListPicker;->items:Lcom/google/devtools/simple/runtime/components/util/YailList;

    .line 64
    const-string v0, ""

    iput-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/ListPicker;->selection:Ljava/lang/String;

    .line 65
    return-void
.end method


# virtual methods
.method public AfterPicking()V
    .locals 2
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerEvent;
    .end annotation

    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 185
    const-string v0, "AfterPicking"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/devtools/simple/runtime/events/EventDispatcher;->dispatchEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 186
    return-void
.end method

.method public BeforePicking()V
    .locals 2
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerEvent;
    .end annotation

    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 175
    const-string v0, "BeforePicking"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/devtools/simple/runtime/events/EventDispatcher;->dispatchEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 176
    return-void
.end method

.method public Elements()Lcom/google/devtools/simple/runtime/components/util/YailList;
    .locals 1
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->BEHAVIOR:Lcom/google/devtools/simple/common/PropertyCategory;
    .end annotation

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/ListPicker;->items:Lcom/google/devtools/simple/runtime/components/util/YailList;

    return-object v0
.end method

.method public Elements(Lcom/google/devtools/simple/runtime/components/util/YailList;)V
    .locals 5
    .parameter "itemList"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 105
    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/components/util/YailList;->toStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 106
    .local v1, objects:[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 107
    aget-object v2, v1, v0

    instance-of v2, v2, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 108
    new-instance v2, Lcom/google/devtools/simple/runtime/errors/YailRuntimeError;

    const-string v3, "Items passed to ListPicker must be Strings"

    const-string v4, "Error"

    invoke-direct {v2, v3, v4}, Lcom/google/devtools/simple/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    .line 106
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 111
    :cond_1
    iput-object p1, p0, Lcom/google/devtools/simple/runtime/components/android/ListPicker;->items:Lcom/google/devtools/simple/runtime/components/util/YailList;

    .line 112
    return-void
.end method

.method public ElementsFromString(Ljava/lang/String;)V
    .locals 1
    .parameter "itemstring"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerProperty;
        defaultValue = "\"\""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->BEHAVIOR:Lcom/google/devtools/simple/common/PropertyCategory;
    .end annotation

    .prologue
    .line 128
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 129
    new-instance v0, Lcom/google/devtools/simple/runtime/components/util/YailList;

    invoke-direct {v0}, Lcom/google/devtools/simple/runtime/components/util/YailList;-><init>()V

    iput-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/ListPicker;->items:Lcom/google/devtools/simple/runtime/components/util/YailList;

    .line 133
    :goto_0
    return-void

    .line 131
    :cond_0
    const-string v0, " *, *"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/devtools/simple/runtime/components/util/YailList;->makeList([Ljava/lang/Object;)Lcom/google/devtools/simple/runtime/components/util/YailList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/ListPicker;->items:Lcom/google/devtools/simple/runtime/components/util/YailList;

    goto :goto_0
.end method

.method public Selection()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->BEHAVIOR:Lcom/google/devtools/simple/common/PropertyCategory;
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/ListPicker;->selection:Ljava/lang/String;

    return-object v0
.end method

.method public Selection(Ljava/lang/String;)V
    .locals 0
    .parameter "value"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerProperty;
        defaultValue = "\"\""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 83
    iput-object p1, p0, Lcom/google/devtools/simple/runtime/components/android/ListPicker;->selection:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public click()V
    .locals 3

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/components/android/ListPicker;->BeforePicking()V

    .line 138
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 139
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/ListPicker;->container:Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;

    invoke-interface {v1}, Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Lcom/google/devtools/simple/runtime/components/android/ListPicker;->LIST_ACTIVITY_CLASS:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 140
    sget-object v1, Lcom/google/devtools/simple/runtime/components/android/ListPicker;->LIST_ACTIVITY_ARG_NAME:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/devtools/simple/runtime/components/android/ListPicker;->items:Lcom/google/devtools/simple/runtime/components/util/YailList;

    invoke-virtual {v2}, Lcom/google/devtools/simple/runtime/components/util/YailList;->toStringArray()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    iget v1, p0, Lcom/google/devtools/simple/runtime/components/android/ListPicker;->requestCode:I

    if-nez v1, :cond_0

    .line 142
    iget-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/ListPicker;->container:Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;

    invoke-interface {v1}, Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;->$form()Lcom/google/devtools/simple/runtime/components/android/Form;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/devtools/simple/runtime/components/android/Form;->registerForActivityResult(Lcom/google/devtools/simple/runtime/components/android/ActivityResultListener;)I

    move-result v1

    iput v1, p0, Lcom/google/devtools/simple/runtime/components/android/ListPicker;->requestCode:I

    .line 144
    :cond_0
    iget-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/ListPicker;->container:Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;

    invoke-interface {v1}, Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    iget v2, p0, Lcom/google/devtools/simple/runtime/components/android/ListPicker;->requestCode:I

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 145
    return-void
.end method

.method public onDelete()V
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/ListPicker;->container:Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;

    invoke-interface {v0}, Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;->$form()Lcom/google/devtools/simple/runtime/components/android/Form;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/devtools/simple/runtime/components/android/Form;->unregisterForActivityResult(Lcom/google/devtools/simple/runtime/components/android/ActivityResultListener;)V

    .line 193
    return-void
.end method

.method public resultReturned(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 156
    const-string v0, "ListPicker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Returning result. Request code = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", result code = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget v0, p0, Lcom/google/devtools/simple/runtime/components/android/ListPicker;->requestCode:I

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 159
    sget-object v0, Lcom/google/devtools/simple/runtime/components/android/ListPicker;->LIST_ACTIVITY_RESULT_NAME:Ljava/lang/String;

    invoke-virtual {p3, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 160
    sget-object v0, Lcom/google/devtools/simple/runtime/components/android/ListPicker;->LIST_ACTIVITY_RESULT_NAME:Ljava/lang/String;

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/ListPicker;->selection:Ljava/lang/String;

    .line 164
    :goto_0
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/components/android/ListPicker;->AfterPicking()V

    .line 166
    :cond_0
    return-void

    .line 162
    :cond_1
    const-string v0, ""

    iput-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/ListPicker;->selection:Ljava/lang/String;

    goto :goto_0
.end method
