.class public abstract Lcom/google/devtools/simple/runtime/components/android/TextBoxBase;
.super Lcom/google/devtools/simple/runtime/components/android/AndroidViewComponent;
.source "TextBoxBase.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleObject;
.end annotation


# instance fields
.field private alignment:I

.field private backgroundColor:I

.field private bold:Z

.field private defaultTextBoxDrawable:Landroid/graphics/drawable/Drawable;

.field private fontTypeface:I

.field private hint:Ljava/lang/String;

.field private italic:Z

.field private textColor:I

.field protected final view:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;Landroid/widget/EditText;)V
    .locals 5
    .parameter "container"
    .parameter "textview"

    .prologue
    const/4 v1, 0x0

    const-string v4, ""

    .line 68
    invoke-direct {p0, p1}, Lcom/google/devtools/simple/runtime/components/android/AndroidViewComponent;-><init>(Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;)V

    .line 69
    iput-object p2, p0, Lcom/google/devtools/simple/runtime/components/android/TextBoxBase;->view:Landroid/widget/EditText;

    .line 72
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/TextBoxBase;->view:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 74
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/TextBoxBase;->view:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/TextBoxBase;->defaultTextBoxDrawable:Landroid/graphics/drawable/Drawable;

    .line 82
    invoke-interface {p1, p0}, Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;->$add(Lcom/google/devtools/simple/runtime/components/android/AndroidViewComponent;)V

    .line 84
    const/16 v0, 0xa0

    invoke-interface {p1, p0, v0}, Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;->setChildWidth(Lcom/google/devtools/simple/runtime/components/android/AndroidViewComponent;I)V

    .line 86
    invoke-virtual {p0, v1}, Lcom/google/devtools/simple/runtime/components/android/TextBoxBase;->Alignment(I)V

    .line 95
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/devtools/simple/runtime/components/android/TextBoxBase;->Enabled(Z)V

    .line 96
    iput v1, p0, Lcom/google/devtools/simple/runtime/components/android/TextBoxBase;->fontTypeface:I

    .line 97
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/TextBoxBase;->view:Landroid/widget/EditText;

    iget v1, p0, Lcom/google/devtools/simple/runtime/components/android/TextBoxBase;->fontTypeface:I

    iget-boolean v2, p0, Lcom/google/devtools/simple/runtime/components/android/TextBoxBase;->bold:Z

    iget-boolean v3, p0, Lcom/google/devtools/simple/runtime/components/android/TextBoxBase;->italic:Z

    invoke-static {v0, v1, v2, v3}, Lcom/google/devtools/simple/runtime/components/android/util/TextViewUtil;->setFontTypeface(Landroid/widget/TextView;IZZ)V

    .line 98
    const/high16 v0, 0x4160

    invoke-virtual {p0, v0}, Lcom/google/devtools/simple/runtime/components/android/TextBoxBase;->FontSize(F)V

    .line 99
    const-string v0, ""

    invoke-virtual {p0, v4}, Lcom/google/devtools/simple/runtime/components/android/TextBoxBase;->Hint(Ljava/lang/String;)V

    .line 100
    const-string v0, ""

    invoke-virtual {p0, v4}, Lcom/google/devtools/simple/runtime/components/android/TextBoxBase;->Text(Ljava/lang/String;)V

    .line 101
    const/high16 v0, -0x100

    invoke-virtual {p0, v0}, Lcom/google/devtools/simple/runtime/components/android/TextBoxBase;->TextColor(I)V

    .line 102
    return-void
.end method


# virtual methods
.method public Alignment()I
    .locals 1
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->APPEARANCE:Lcom/google/devtools/simple/common/PropertyCategory;
        description = "Whether the text should be left justified, centered, or right justified.  By default, text is left justified."
        userVisible = false
    .end annotation

    .prologue
    .line 158
    iget v0, p0, Lcom/google/devtools/simple/runtime/components/android/TextBoxBase;->alignment:I

    return v0
.end method

.method public Alignment(I)V
    .locals 2
    .parameter "alignment"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "textalignment"
    .end annotation

    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .prologue
    .line 175
    iput p1, p0, Lcom/google/devtools/simple/runtime/components/android/TextBoxBase;->alignment:I

    .line 176
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/TextBoxBase;->view:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/google/devtools/simple/runtime/components/android/util/TextViewUtil;->setAlignment(Landroid/widget/TextView;IZ)V

    .line 177
    return-void
.end method

.method public BackgroundColor()I
    .locals 1
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->APPEARANCE:Lcom/google/devtools/simple/common/PropertyCategory;
        description = "The background color of the input box.  You can choose a color by name in the Designer or in the Blocks Editor.  The default background color is \'default\' (shaded 3-D look)."
    .end annotation

    .prologue
    .line 191
    iget v0, p0, Lcom/google/devtools/simple/runtime/components/android/TextBoxBase;->backgroundColor:I

    return v0
.end method

.method public BackgroundColor(I)V
    .locals 2
    .parameter "argb"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerProperty;
        defaultValue = "&H00000000"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 204
    iput p1, p0, Lcom/google/devtools/simple/runtime/components/android/TextBoxBase;->backgroundColor:I

    .line 205
    if-eqz p1, :cond_0

    .line 206
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/TextBoxBase;->view:Landroid/widget/EditText;

    invoke-static {v0, p1}, Lcom/google/devtools/simple/runtime/components/android/util/TextViewUtil;->setBackgroundColor(Landroid/widget/TextView;I)V

    .line 210
    :goto_0
    return-void

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/TextBoxBase;->view:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/TextBoxBase;->defaultTextBoxDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1}, Lcom/google/devtools/simple/runtime/components/android/util/ViewUtil;->setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
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
    .line 234
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/TextBoxBase;->view:Landroid/widget/EditText;

    invoke-static {v0, p1}, Lcom/google/devtools/simple/runtime/components/android/util/TextViewUtil;->setEnabled(Landroid/widget/TextView;Z)V

    .line 235
    return-void
.end method

.method public Enabled()Z
    .locals 1
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->BEHAVIOR:Lcom/google/devtools/simple/common/PropertyCategory;
        description = "Whether the user can enter text into this input box.  By default, this is true."
    .end annotation

    .prologue
    .line 222
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/TextBoxBase;->view:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/google/devtools/simple/runtime/components/android/util/TextViewUtil;->isEnabled(Landroid/widget/TextView;)Z

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
    .line 264
    iput-boolean p1, p0, Lcom/google/devtools/simple/runtime/components/android/TextBoxBase;->bold:Z

    .line 265
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/TextBoxBase;->view:Landroid/widget/EditText;

    iget v1, p0, Lcom/google/devtools/simple/runtime/components/android/TextBoxBase;->fontTypeface:I

    iget-boolean v2, p0, Lcom/google/devtools/simple/runtime/components/android/TextBoxBase;->italic:Z

    invoke-static {v0, v1, p1, v2}, Lcom/google/devtools/simple/runtime/components/android/util/TextViewUtil;->setFontTypeface(Landroid/widget/TextView;IZZ)V

    .line 266
    return-void
.end method

.method public FontBold()Z
    .locals 1
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->APPEARANCE:Lcom/google/devtools/simple/common/PropertyCategory;
        description = "Whether the font for the text should be bold.  By default, it is not."
        userVisible = false
    .end annotation

    .prologue
    .line 250
    iget-boolean v0, p0, Lcom/google/devtools/simple/runtime/components/android/TextBoxBase;->bold:Z

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
    .line 294
    iput-boolean p1, p0, Lcom/google/devtools/simple/runtime/components/android/TextBoxBase;->italic:Z

    .line 295
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/TextBoxBase;->view:Landroid/widget/EditText;

    iget v1, p0, Lcom/google/devtools/simple/runtime/components/android/TextBoxBase;->fontTypeface:I

    iget-boolean v2, p0, Lcom/google/devtools/simple/runtime/components/android/TextBoxBase;->bold:Z

    invoke-static {v0, v1, v2, p1}, Lcom/google/devtools/simple/runtime/components/android/util/TextViewUtil;->setFontTypeface(Landroid/widget/TextView;IZZ)V

    .line 296
    return-void
.end method

.method public FontItalic()Z
    .locals 1
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->APPEARANCE:Lcom/google/devtools/simple/common/PropertyCategory;
        description = "Whether the text should appear in italics.  By default, it does not."
        userVisible = false
    .end annotation

    .prologue
    .line 281
    iget-boolean v0, p0, Lcom/google/devtools/simple/runtime/components/android/TextBoxBase;->italic:Z

    return v0
.end method

.method public FontSize()F
    .locals 1
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->APPEARANCE:Lcom/google/devtools/simple/common/PropertyCategory;
        description = "The font size for the text.  By default, it is 14.0 points."
        userVisible = false
    .end annotation

    .prologue
    .line 310
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/TextBoxBase;->view:Landroid/widget/EditText;

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
    .line 323
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/TextBoxBase;->view:Landroid/widget/EditText;

    invoke-static {v0, p1}, Lcom/google/devtools/simple/runtime/components/android/util/TextViewUtil;->setFontSize(Landroid/widget/TextView;F)V

    .line 324
    return-void
.end method

.method public FontTypeface()I
    .locals 1
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->APPEARANCE:Lcom/google/devtools/simple/common/PropertyCategory;
        description = "The font for the text.  The value can be changed in the Designer."
        userVisible = false
    .end annotation

    .prologue
    .line 341
    iget v0, p0, Lcom/google/devtools/simple/runtime/components/android/TextBoxBase;->fontTypeface:I

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
    .line 358
    iput p1, p0, Lcom/google/devtools/simple/runtime/components/android/TextBoxBase;->fontTypeface:I

    .line 359
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/TextBoxBase;->view:Landroid/widget/EditText;

    iget v1, p0, Lcom/google/devtools/simple/runtime/components/android/TextBoxBase;->fontTypeface:I

    iget-boolean v2, p0, Lcom/google/devtools/simple/runtime/components/android/TextBoxBase;->bold:Z

    iget-boolean v3, p0, Lcom/google/devtools/simple/runtime/components/android/TextBoxBase;->italic:Z

    invoke-static {v0, v1, v2, v3}, Lcom/google/devtools/simple/runtime/components/android/util/TextViewUtil;->setFontTypeface(Landroid/widget/TextView;IZZ)V

    .line 360
    return-void
.end method

.method public GotFocus()V
    .locals 2
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerEvent;
    .end annotation

    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 119
    const-string v0, "GotFocus"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/devtools/simple/runtime/events/EventDispatcher;->dispatchEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 120
    return-void
.end method

.method public Hint()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->APPEARANCE:Lcom/google/devtools/simple/common/PropertyCategory;
        description = "Text that should appear faintly in the input box to provide a hint as to what the user should enter.  This can only be seen if the <code>Text</code> property is empty."
    .end annotation

    .prologue
    .line 373
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/TextBoxBase;->hint:Ljava/lang/String;

    return-object v0
.end method

.method public Hint(Ljava/lang/String;)V
    .locals 1
    .parameter "hint"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerProperty;
        defaultValue = "\"\""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 385
    iput-object p1, p0, Lcom/google/devtools/simple/runtime/components/android/TextBoxBase;->hint:Ljava/lang/String;

    .line 386
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/TextBoxBase;->view:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 387
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/TextBoxBase;->view:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->invalidate()V

    .line 388
    return-void
.end method

.method public Initialize()V
    .locals 0

    .prologue
    .line 110
    return-void
.end method

.method public LostFocus()V
    .locals 2
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerEvent;
    .end annotation

    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 129
    const-string v0, "LostFocus"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/devtools/simple/runtime/events/EventDispatcher;->dispatchEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 130
    return-void
.end method

.method public Text()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->BEHAVIOR:Lcom/google/devtools/simple/common/PropertyCategory;
    .end annotation

    .prologue
    .line 397
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/TextBoxBase;->view:Landroid/widget/EditText;

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
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->BEHAVIOR:Lcom/google/devtools/simple/common/PropertyCategory;
        description = "The text in the input box, which can be set by the programmer in the Designer or Blocks Editor, or it can be entered by the user (unless the <code>Enabled</code> property is false)."
    .end annotation

    .prologue
    .line 414
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/TextBoxBase;->view:Landroid/widget/EditText;

    invoke-static {v0, p1}, Lcom/google/devtools/simple/runtime/components/android/util/TextViewUtil;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 415
    return-void
.end method

.method public TextColor()I
    .locals 1
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->APPEARANCE:Lcom/google/devtools/simple/common/PropertyCategory;
        description = "The color for the text.  You can choose a color by name in the Designer or in the Blocks Editor.  The default text color is black."
    .end annotation

    .prologue
    .line 429
    iget v0, p0, Lcom/google/devtools/simple/runtime/components/android/TextBoxBase;->textColor:I

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
    .end annotation

    .prologue
    .line 442
    iput p1, p0, Lcom/google/devtools/simple/runtime/components/android/TextBoxBase;->textColor:I

    .line 443
    if-eqz p1, :cond_0

    .line 444
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/TextBoxBase;->view:Landroid/widget/EditText;

    invoke-static {v0, p1}, Lcom/google/devtools/simple/runtime/components/android/util/TextViewUtil;->setTextColor(Landroid/widget/TextView;I)V

    .line 448
    :goto_0
    return-void

    .line 446
    :cond_0
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/TextBoxBase;->view:Landroid/widget/EditText;

    const/high16 v1, -0x100

    invoke-static {v0, v1}, Lcom/google/devtools/simple/runtime/components/android/util/TextViewUtil;->setTextColor(Landroid/widget/TextView;I)V

    goto :goto_0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/TextBoxBase;->view:Landroid/widget/EditText;

    return-object v0
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0
    .parameter "previouslyFocused"
    .parameter "gainFocus"

    .prologue
    .line 454
    if-eqz p2, :cond_0

    .line 460
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/components/android/TextBoxBase;->GotFocus()V

    .line 464
    :goto_0
    return-void

    .line 462
    :cond_0
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/components/android/TextBoxBase;->LostFocus()V

    goto :goto_0
.end method
