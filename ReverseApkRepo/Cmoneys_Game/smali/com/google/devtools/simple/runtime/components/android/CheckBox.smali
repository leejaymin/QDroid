.class public final Lcom/google/devtools/simple/runtime/components/android/CheckBox;
.super Lcom/google/devtools/simple/runtime/components/android/AndroidViewComponent;
.source "CheckBox.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerComponent;
    category = .enum Lcom/google/devtools/simple/common/ComponentCategory;->BASIC:Lcom/google/devtools/simple/common/ComponentCategory;
    description = "Checkbox that raises an event when the user clicks on it. There are many properties affecting its appearance that can be set in the Designer or Blocks Editor."
    version = 0x1
.end annotation

.annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleObject;
.end annotation


# instance fields
.field private backgroundColor:I

.field private bold:Z

.field private fontTypeface:I

.field private italic:Z

.field private textColor:I

.field private final view:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>(Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;)V
    .locals 5
    .parameter "container"

    .prologue
    const/4 v4, 0x0

    .line 61
    invoke-direct {p0, p1}, Lcom/google/devtools/simple/runtime/components/android/AndroidViewComponent;-><init>(Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;)V

    .line 62
    new-instance v0, Landroid/widget/CheckBox;

    invoke-interface {p1}, Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/CheckBox;->view:Landroid/widget/CheckBox;

    .line 65
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/CheckBox;->view:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 66
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/CheckBox;->view:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 69
    invoke-interface {p1, p0}, Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;->$add(Lcom/google/devtools/simple/runtime/components/android/AndroidViewComponent;)V

    .line 70
    const v0, 0xffffff

    invoke-virtual {p0, v0}, Lcom/google/devtools/simple/runtime/components/android/CheckBox;->BackgroundColor(I)V

    .line 71
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/devtools/simple/runtime/components/android/CheckBox;->Enabled(Z)V

    .line 72
    iput v4, p0, Lcom/google/devtools/simple/runtime/components/android/CheckBox;->fontTypeface:I

    .line 73
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/CheckBox;->view:Landroid/widget/CheckBox;

    iget v1, p0, Lcom/google/devtools/simple/runtime/components/android/CheckBox;->fontTypeface:I

    iget-boolean v2, p0, Lcom/google/devtools/simple/runtime/components/android/CheckBox;->bold:Z

    iget-boolean v3, p0, Lcom/google/devtools/simple/runtime/components/android/CheckBox;->italic:Z

    invoke-static {v0, v1, v2, v3}, Lcom/google/devtools/simple/runtime/components/android/util/TextViewUtil;->setFontTypeface(Landroid/widget/TextView;IZZ)V

    .line 74
    const/high16 v0, 0x4160

    invoke-virtual {p0, v0}, Lcom/google/devtools/simple/runtime/components/android/CheckBox;->FontSize(F)V

    .line 75
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/google/devtools/simple/runtime/components/android/CheckBox;->Text(Ljava/lang/String;)V

    .line 76
    const/high16 v0, -0x100

    invoke-virtual {p0, v0}, Lcom/google/devtools/simple/runtime/components/android/CheckBox;->TextColor(I)V

    .line 77
    invoke-virtual {p0, v4}, Lcom/google/devtools/simple/runtime/components/android/CheckBox;->Value(Z)V

    .line 78
    return-void
.end method


# virtual methods
.method public BackgroundColor()I
    .locals 1
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->APPEARANCE:Lcom/google/devtools/simple/common/PropertyCategory;
    .end annotation

    .prologue
    .line 127
    iget v0, p0, Lcom/google/devtools/simple/runtime/components/android/CheckBox;->backgroundColor:I

    return v0
.end method

.method public BackgroundColor(I)V
    .locals 2
    .parameter "argb"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerProperty;
        defaultValue = "&H00FFFFFF"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 140
    iput p1, p0, Lcom/google/devtools/simple/runtime/components/android/CheckBox;->backgroundColor:I

    .line 141
    if-eqz p1, :cond_0

    .line 142
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/CheckBox;->view:Landroid/widget/CheckBox;

    invoke-static {v0, p1}, Lcom/google/devtools/simple/runtime/components/android/util/TextViewUtil;->setBackgroundColor(Landroid/widget/TextView;I)V

    .line 146
    :goto_0
    return-void

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/CheckBox;->view:Landroid/widget/CheckBox;

    const v1, 0xffffff

    invoke-static {v0, v1}, Lcom/google/devtools/simple/runtime/components/android/util/TextViewUtil;->setBackgroundColor(Landroid/widget/TextView;I)V

    goto :goto_0
.end method

.method public Changed()V
    .locals 2
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerEvent;
    .end annotation

    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 97
    const-string v0, "Changed"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/devtools/simple/runtime/events/EventDispatcher;->dispatchEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 98
    return-void
.end method

.method public Enabled(Z)V
    .locals 1
    .parameter "enabled"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 168
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/CheckBox;->view:Landroid/widget/CheckBox;

    invoke-static {v0, p1}, Lcom/google/devtools/simple/runtime/components/android/util/TextViewUtil;->setEnabled(Landroid/widget/TextView;Z)V

    .line 169
    return-void
.end method

.method public Enabled()Z
    .locals 1
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->BEHAVIOR:Lcom/google/devtools/simple/common/PropertyCategory;
    .end annotation

    .prologue
    .line 156
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/CheckBox;->view:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public FontBold(Z)V
    .locals 3
    .parameter "bold"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .prologue
    .line 196
    iput-boolean p1, p0, Lcom/google/devtools/simple/runtime/components/android/CheckBox;->bold:Z

    .line 197
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/CheckBox;->view:Landroid/widget/CheckBox;

    iget v1, p0, Lcom/google/devtools/simple/runtime/components/android/CheckBox;->fontTypeface:I

    iget-boolean v2, p0, Lcom/google/devtools/simple/runtime/components/android/CheckBox;->italic:Z

    invoke-static {v0, v1, p1, v2}, Lcom/google/devtools/simple/runtime/components/android/util/TextViewUtil;->setFontTypeface(Landroid/widget/TextView;IZZ)V

    .line 198
    return-void
.end method

.method public FontBold()Z
    .locals 1
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->APPEARANCE:Lcom/google/devtools/simple/common/PropertyCategory;
        userVisible = false
    .end annotation

    .prologue
    .line 182
    iget-boolean v0, p0, Lcom/google/devtools/simple/runtime/components/android/CheckBox;->bold:Z

    return v0
.end method

.method public FontItalic(Z)V
    .locals 3
    .parameter "italic"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .prologue
    .line 225
    iput-boolean p1, p0, Lcom/google/devtools/simple/runtime/components/android/CheckBox;->italic:Z

    .line 226
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/CheckBox;->view:Landroid/widget/CheckBox;

    iget v1, p0, Lcom/google/devtools/simple/runtime/components/android/CheckBox;->fontTypeface:I

    iget-boolean v2, p0, Lcom/google/devtools/simple/runtime/components/android/CheckBox;->bold:Z

    invoke-static {v0, v1, v2, p1}, Lcom/google/devtools/simple/runtime/components/android/util/TextViewUtil;->setFontTypeface(Landroid/widget/TextView;IZZ)V

    .line 227
    return-void
.end method

.method public FontItalic()Z
    .locals 1
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->APPEARANCE:Lcom/google/devtools/simple/common/PropertyCategory;
        userVisible = false
    .end annotation

    .prologue
    .line 211
    iget-boolean v0, p0, Lcom/google/devtools/simple/runtime/components/android/CheckBox;->italic:Z

    return v0
.end method

.method public FontSize()F
    .locals 1
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->APPEARANCE:Lcom/google/devtools/simple/common/PropertyCategory;
        userVisible = false
    .end annotation

    .prologue
    .line 238
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/CheckBox;->view:Landroid/widget/CheckBox;

    invoke-static {v0}, Lcom/google/devtools/simple/runtime/components/android/util/TextViewUtil;->getFontSize(Landroid/widget/TextView;)F

    move-result v0

    return v0
.end method

.method public FontSize(F)V
    .locals 1
    .parameter "size"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerProperty;
        defaultValue = "14.0"
        editorType = "float"
    .end annotation

    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .prologue
    .line 251
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/CheckBox;->view:Landroid/widget/CheckBox;

    invoke-static {v0, p1}, Lcom/google/devtools/simple/runtime/components/android/util/TextViewUtil;->setFontSize(Landroid/widget/TextView;F)V

    .line 252
    return-void
.end method

.method public FontTypeface()I
    .locals 1
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->APPEARANCE:Lcom/google/devtools/simple/common/PropertyCategory;
        userVisible = false
    .end annotation

    .prologue
    .line 267
    iget v0, p0, Lcom/google/devtools/simple/runtime/components/android/CheckBox;->fontTypeface:I

    return v0
.end method

.method public FontTypeface(I)V
    .locals 4
    .parameter "typeface"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "typeface"
    .end annotation

    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .prologue
    .line 284
    iput p1, p0, Lcom/google/devtools/simple/runtime/components/android/CheckBox;->fontTypeface:I

    .line 285
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/CheckBox;->view:Landroid/widget/CheckBox;

    iget v1, p0, Lcom/google/devtools/simple/runtime/components/android/CheckBox;->fontTypeface:I

    iget-boolean v2, p0, Lcom/google/devtools/simple/runtime/components/android/CheckBox;->bold:Z

    iget-boolean v3, p0, Lcom/google/devtools/simple/runtime/components/android/CheckBox;->italic:Z

    invoke-static {v0, v1, v2, v3}, Lcom/google/devtools/simple/runtime/components/android/util/TextViewUtil;->setFontTypeface(Landroid/widget/TextView;IZZ)V

    .line 286
    return-void
.end method

.method public GotFocus()V
    .locals 2
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerEvent;
    .end annotation

    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 106
    const-string v0, "GotFocus"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/devtools/simple/runtime/events/EventDispatcher;->dispatchEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 107
    return-void
.end method

.method public Initialize()V
    .locals 0

    .prologue
    .line 89
    return-void
.end method

.method public LostFocus()V
    .locals 2
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerEvent;
    .end annotation

    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 115
    const-string v0, "LostFocus"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/devtools/simple/runtime/events/EventDispatcher;->dispatchEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 116
    return-void
.end method

.method public Text()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->APPEARANCE:Lcom/google/devtools/simple/common/PropertyCategory;
    .end annotation

    .prologue
    .line 296
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/CheckBox;->view:Landroid/widget/CheckBox;

    invoke-static {v0}, Lcom/google/devtools/simple/runtime/components/android/util/TextViewUtil;->getText(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Text(Ljava/lang/String;)V
    .locals 1
    .parameter "text"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerProperty;
        defaultValue = "\"\""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 308
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/CheckBox;->view:Landroid/widget/CheckBox;

    invoke-static {v0, p1}, Lcom/google/devtools/simple/runtime/components/android/util/TextViewUtil;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 309
    return-void
.end method

.method public TextColor()I
    .locals 1
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->APPEARANCE:Lcom/google/devtools/simple/common/PropertyCategory;
    .end annotation

    .prologue
    .line 320
    iget v0, p0, Lcom/google/devtools/simple/runtime/components/android/CheckBox;->textColor:I

    return v0
.end method

.method public TextColor(I)V
    .locals 2
    .parameter "argb"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerProperty;
        defaultValue = "&HFF000000"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .prologue
    .line 334
    iput p1, p0, Lcom/google/devtools/simple/runtime/components/android/CheckBox;->textColor:I

    .line 335
    if-eqz p1, :cond_0

    .line 336
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/CheckBox;->view:Landroid/widget/CheckBox;

    invoke-static {v0, p1}, Lcom/google/devtools/simple/runtime/components/android/util/TextViewUtil;->setTextColor(Landroid/widget/TextView;I)V

    .line 340
    :goto_0
    return-void

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/CheckBox;->view:Landroid/widget/CheckBox;

    const/high16 v1, -0x100

    invoke-static {v0, v1}, Lcom/google/devtools/simple/runtime/components/android/util/TextViewUtil;->setTextColor(Landroid/widget/TextView;I)V

    goto :goto_0
.end method

.method public Value(Z)V
    .locals 1
    .parameter "value"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 362
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/CheckBox;->view:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 363
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/CheckBox;->view:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->invalidate()V

    .line 364
    return-void
.end method

.method public Value()Z
    .locals 1
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->BEHAVIOR:Lcom/google/devtools/simple/common/PropertyCategory;
    .end annotation

    .prologue
    .line 350
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/CheckBox;->view:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/CheckBox;->view:Landroid/widget/CheckBox;

    return-object v0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 369
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/components/android/CheckBox;->Changed()V

    .line 370
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0
    .parameter "previouslyFocused"
    .parameter "gainFocus"

    .prologue
    .line 375
    if-eqz p2, :cond_0

    .line 376
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/components/android/CheckBox;->GotFocus()V

    .line 380
    :goto_0
    return-void

    .line 378
    :cond_0
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/components/android/CheckBox;->LostFocus()V

    goto :goto_0
.end method
