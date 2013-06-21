.class public final Lcom/google/devtools/simple/runtime/components/android/PasswordTextBox;
.super Lcom/google/devtools/simple/runtime/components/android/AndroidViewComponent;
.source "PasswordTextBox.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerComponent;
    category = .enum Lcom/google/devtools/simple/common/ComponentCategory;->BASIC:Lcom/google/devtools/simple/common/ComponentCategory;
    description = "<p>A box for entering passwords.  This is the same as the ordinary <code>TextBox</code> component except this does not display the characters typed by the user.</p><p>The value of the text in the box can be found or set through the <code>Text</code> property. If blank, the <code>Hint</code> property, which appears as faint text in the box, can provide the user with guidance as to what to type.</p> <p>Text boxes are usually used with the <code>Button</code> component, with the user clicking on the button when text entry is complete.</p>"
    version = 0x1
.end annotation

.annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleObject;
.end annotation


# instance fields
.field private alignment:I

.field private backgroundColor:I

.field private bold:Z

.field private fontTypeface:I

.field private hint:Ljava/lang/String;

.field private italic:Z

.field private textColor:I

.field private final view:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;)V
    .locals 5
    .parameter "container"

    .prologue
    const/4 v2, 0x0

    const-string v4, ""

    .line 73
    invoke-direct {p0, p1}, Lcom/google/devtools/simple/runtime/components/android/AndroidViewComponent;-><init>(Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;)V

    .line 74
    new-instance v0, Landroid/widget/EditText;

    invoke-interface {p1}, Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/PasswordTextBox;->view:Landroid/widget/EditText;

    .line 77
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/PasswordTextBox;->view:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 80
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/PasswordTextBox;->view:Landroid/widget/EditText;

    new-instance v1, Landroid/text/method/PasswordTransformationMethod;

    invoke-direct {v1}, Landroid/text/method/PasswordTransformationMethod;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 83
    invoke-interface {p1, p0}, Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;->$add(Lcom/google/devtools/simple/runtime/components/android/AndroidViewComponent;)V

    .line 85
    const/16 v0, 0xa0

    invoke-interface {p1, p0, v0}, Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;->setChildWidth(Lcom/google/devtools/simple/runtime/components/android/AndroidViewComponent;I)V

    .line 88
    invoke-virtual {p0, v2}, Lcom/google/devtools/simple/runtime/components/android/PasswordTextBox;->Alignment(I)V

    .line 89
    const v0, 0xffffff

    invoke-virtual {p0, v0}, Lcom/google/devtools/simple/runtime/components/android/PasswordTextBox;->BackgroundColor(I)V

    .line 90
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/devtools/simple/runtime/components/android/PasswordTextBox;->Enabled(Z)V

    .line 91
    iput v2, p0, Lcom/google/devtools/simple/runtime/components/android/PasswordTextBox;->fontTypeface:I

    .line 92
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/PasswordTextBox;->view:Landroid/widget/EditText;

    iget v1, p0, Lcom/google/devtools/simple/runtime/components/android/PasswordTextBox;->fontTypeface:I

    iget-boolean v2, p0, Lcom/google/devtools/simple/runtime/components/android/PasswordTextBox;->bold:Z

    iget-boolean v3, p0, Lcom/google/devtools/simple/runtime/components/android/PasswordTextBox;->italic:Z

    invoke-static {v0, v1, v2, v3}, Lcom/google/devtools/simple/runtime/components/android/util/TextViewUtil;->setFontTypeface(Landroid/widget/TextView;IZZ)V

    .line 93
    const/high16 v0, 0x4160

    invoke-virtual {p0, v0}, Lcom/google/devtools/simple/runtime/components/android/PasswordTextBox;->FontSize(F)V

    .line 94
    const-string v0, ""

    invoke-virtual {p0, v4}, Lcom/google/devtools/simple/runtime/components/android/PasswordTextBox;->Hint(Ljava/lang/String;)V

    .line 95
    const-string v0, ""

    invoke-virtual {p0, v4}, Lcom/google/devtools/simple/runtime/components/android/PasswordTextBox;->Text(Ljava/lang/String;)V

    .line 96
    const/high16 v0, -0x100

    invoke-virtual {p0, v0}, Lcom/google/devtools/simple/runtime/components/android/PasswordTextBox;->TextColor(I)V

    .line 97
    return-void
.end method


# virtual methods
.method public Alignment()I
    .locals 1
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->APPEARANCE:Lcom/google/devtools/simple/common/PropertyCategory;
        userVisible = false
    .end annotation

    .prologue
    .line 141
    iget v0, p0, Lcom/google/devtools/simple/runtime/components/android/PasswordTextBox;->alignment:I

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
    .line 158
    iput p1, p0, Lcom/google/devtools/simple/runtime/components/android/PasswordTextBox;->alignment:I

    .line 159
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/PasswordTextBox;->view:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/google/devtools/simple/runtime/components/android/util/TextViewUtil;->setAlignment(Landroid/widget/TextView;IZ)V

    .line 160
    return-void
.end method

.method public BackgroundColor()I
    .locals 1
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->APPEARANCE:Lcom/google/devtools/simple/common/PropertyCategory;
    .end annotation

    .prologue
    .line 171
    iget v0, p0, Lcom/google/devtools/simple/runtime/components/android/PasswordTextBox;->backgroundColor:I

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
    .line 184
    iput p1, p0, Lcom/google/devtools/simple/runtime/components/android/PasswordTextBox;->backgroundColor:I

    .line 185
    if-eqz p1, :cond_0

    .line 186
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/PasswordTextBox;->view:Landroid/widget/EditText;

    invoke-static {v0, p1}, Lcom/google/devtools/simple/runtime/components/android/util/TextViewUtil;->setBackgroundColor(Landroid/widget/TextView;I)V

    .line 190
    :goto_0
    return-void

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/PasswordTextBox;->view:Landroid/widget/EditText;

    const v1, 0xffffff

    invoke-static {v0, v1}, Lcom/google/devtools/simple/runtime/components/android/util/TextViewUtil;->setBackgroundColor(Landroid/widget/TextView;I)V

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
    .line 212
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/PasswordTextBox;->view:Landroid/widget/EditText;

    invoke-static {v0, p1}, Lcom/google/devtools/simple/runtime/components/android/util/TextViewUtil;->setEnabled(Landroid/widget/TextView;Z)V

    .line 213
    return-void
.end method

.method public Enabled()Z
    .locals 1
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->BEHAVIOR:Lcom/google/devtools/simple/common/PropertyCategory;
    .end annotation

    .prologue
    .line 200
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/PasswordTextBox;->view:Landroid/widget/EditText;

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
    .line 240
    iput-boolean p1, p0, Lcom/google/devtools/simple/runtime/components/android/PasswordTextBox;->bold:Z

    .line 241
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/PasswordTextBox;->view:Landroid/widget/EditText;

    iget v1, p0, Lcom/google/devtools/simple/runtime/components/android/PasswordTextBox;->fontTypeface:I

    iget-boolean v2, p0, Lcom/google/devtools/simple/runtime/components/android/PasswordTextBox;->italic:Z

    invoke-static {v0, v1, p1, v2}, Lcom/google/devtools/simple/runtime/components/android/util/TextViewUtil;->setFontTypeface(Landroid/widget/TextView;IZZ)V

    .line 242
    return-void
.end method

.method public FontBold()Z
    .locals 1
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->APPEARANCE:Lcom/google/devtools/simple/common/PropertyCategory;
        userVisible = false
    .end annotation

    .prologue
    .line 226
    iget-boolean v0, p0, Lcom/google/devtools/simple/runtime/components/android/PasswordTextBox;->bold:Z

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
    .line 268
    iput-boolean p1, p0, Lcom/google/devtools/simple/runtime/components/android/PasswordTextBox;->italic:Z

    .line 269
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/PasswordTextBox;->view:Landroid/widget/EditText;

    iget v1, p0, Lcom/google/devtools/simple/runtime/components/android/PasswordTextBox;->fontTypeface:I

    iget-boolean v2, p0, Lcom/google/devtools/simple/runtime/components/android/PasswordTextBox;->bold:Z

    invoke-static {v0, v1, v2, p1}, Lcom/google/devtools/simple/runtime/components/android/util/TextViewUtil;->setFontTypeface(Landroid/widget/TextView;IZZ)V

    .line 270
    return-void
.end method

.method public FontItalic()Z
    .locals 1
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->APPEARANCE:Lcom/google/devtools/simple/common/PropertyCategory;
        userVisible = false
    .end annotation

    .prologue
    .line 255
    iget-boolean v0, p0, Lcom/google/devtools/simple/runtime/components/android/PasswordTextBox;->italic:Z

    return v0
.end method

.method public FontSize()F
    .locals 1
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->APPEARANCE:Lcom/google/devtools/simple/common/PropertyCategory;
        userVisible = false
    .end annotation

    .prologue
    .line 281
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/PasswordTextBox;->view:Landroid/widget/EditText;

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
    .line 294
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/PasswordTextBox;->view:Landroid/widget/EditText;

    invoke-static {v0, p1}, Lcom/google/devtools/simple/runtime/components/android/util/TextViewUtil;->setFontSize(Landroid/widget/TextView;F)V

    .line 295
    return-void
.end method

.method public FontTypeface()I
    .locals 1
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->APPEARANCE:Lcom/google/devtools/simple/common/PropertyCategory;
        userVisible = false
    .end annotation

    .prologue
    .line 310
    iget v0, p0, Lcom/google/devtools/simple/runtime/components/android/PasswordTextBox;->fontTypeface:I

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
    .line 327
    iput p1, p0, Lcom/google/devtools/simple/runtime/components/android/PasswordTextBox;->fontTypeface:I

    .line 328
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/PasswordTextBox;->view:Landroid/widget/EditText;

    iget v1, p0, Lcom/google/devtools/simple/runtime/components/android/PasswordTextBox;->fontTypeface:I

    iget-boolean v2, p0, Lcom/google/devtools/simple/runtime/components/android/PasswordTextBox;->bold:Z

    iget-boolean v3, p0, Lcom/google/devtools/simple/runtime/components/android/PasswordTextBox;->italic:Z

    invoke-static {v0, v1, v2, v3}, Lcom/google/devtools/simple/runtime/components/android/util/TextViewUtil;->setFontTypeface(Landroid/widget/TextView;IZZ)V

    .line 329
    return-void
.end method

.method public GotFocus()V
    .locals 2
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerEvent;
    .end annotation

    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 116
    const-string v0, "GotFocus"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/devtools/simple/runtime/events/EventDispatcher;->dispatchEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 117
    return-void
.end method

.method public Hint()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->APPEARANCE:Lcom/google/devtools/simple/common/PropertyCategory;
    .end annotation

    .prologue
    .line 339
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/PasswordTextBox;->hint:Ljava/lang/String;

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
    .line 351
    iput-object p1, p0, Lcom/google/devtools/simple/runtime/components/android/PasswordTextBox;->hint:Ljava/lang/String;

    .line 352
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/PasswordTextBox;->view:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 353
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/PasswordTextBox;->view:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->invalidate()V

    .line 354
    return-void
.end method

.method public Initialize()V
    .locals 0

    .prologue
    .line 108
    return-void
.end method

.method public LostFocus()V
    .locals 2
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerEvent;
    .end annotation

    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 125
    const-string v0, "LostFocus"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/devtools/simple/runtime/events/EventDispatcher;->dispatchEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 126
    return-void
.end method

.method public Text()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->BEHAVIOR:Lcom/google/devtools/simple/common/PropertyCategory;
    .end annotation

    .prologue
    .line 364
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/PasswordTextBox;->view:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/google/devtools/simple/runtime/components/android/util/TextViewUtil;->getText(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Text(Ljava/lang/String;)V
    .locals 1
    .parameter "text"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 374
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/PasswordTextBox;->view:Landroid/widget/EditText;

    invoke-static {v0, p1}, Lcom/google/devtools/simple/runtime/components/android/util/TextViewUtil;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 375
    return-void
.end method

.method public TextColor()I
    .locals 1
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->APPEARANCE:Lcom/google/devtools/simple/common/PropertyCategory;
    .end annotation

    .prologue
    .line 386
    iget v0, p0, Lcom/google/devtools/simple/runtime/components/android/PasswordTextBox;->textColor:I

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
    .line 399
    iput p1, p0, Lcom/google/devtools/simple/runtime/components/android/PasswordTextBox;->textColor:I

    .line 400
    if-eqz p1, :cond_0

    .line 401
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/PasswordTextBox;->view:Landroid/widget/EditText;

    invoke-static {v0, p1}, Lcom/google/devtools/simple/runtime/components/android/util/TextViewUtil;->setTextColor(Landroid/widget/TextView;I)V

    .line 405
    :goto_0
    return-void

    .line 403
    :cond_0
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/PasswordTextBox;->view:Landroid/widget/EditText;

    const/high16 v1, -0x100

    invoke-static {v0, v1}, Lcom/google/devtools/simple/runtime/components/android/util/TextViewUtil;->setTextColor(Landroid/widget/TextView;I)V

    goto :goto_0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/PasswordTextBox;->view:Landroid/widget/EditText;

    return-object v0
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0
    .parameter "previouslyFocused"
    .parameter "gainFocus"

    .prologue
    .line 410
    if-eqz p2, :cond_0

    .line 411
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/components/android/PasswordTextBox;->GotFocus()V

    .line 415
    :goto_0
    return-void

    .line 413
    :cond_0
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/components/android/PasswordTextBox;->LostFocus()V

    goto :goto_0
.end method
