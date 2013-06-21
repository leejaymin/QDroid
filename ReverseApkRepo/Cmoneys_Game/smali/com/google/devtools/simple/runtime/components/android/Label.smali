.class public final Lcom/google/devtools/simple/runtime/components/android/Label;
.super Lcom/google/devtools/simple/runtime/components/android/AndroidViewComponent;
.source "Label.java"


# annotations
.annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerComponent;
    category = .enum Lcom/google/devtools/simple/common/ComponentCategory;->BASIC:Lcom/google/devtools/simple/common/ComponentCategory;
    description = "A Label displays a piece of text, which is specified through the <code>Text</code> property.  Other properties, all of which can be set in the Designer or Blocks Editor, control the appearance and placement of the text."
    version = 0x1
.end annotation

.annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleObject;
.end annotation


# instance fields
.field private alignment:I

.field private backgroundColor:I

.field private bold:Z

.field private fontTypeface:I

.field private italic:Z

.field private textColor:I

.field private final view:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;)V
    .locals 4
    .parameter "container"

    .prologue
    const/4 v2, 0x0

    .line 58
    invoke-direct {p0, p1}, Lcom/google/devtools/simple/runtime/components/android/AndroidViewComponent;-><init>(Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;)V

    .line 59
    new-instance v0, Landroid/widget/TextView;

    invoke-interface {p1}, Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Label;->view:Landroid/widget/TextView;

    .line 62
    invoke-interface {p1, p0}, Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;->$add(Lcom/google/devtools/simple/runtime/components/android/AndroidViewComponent;)V

    .line 65
    invoke-virtual {p0, v2}, Lcom/google/devtools/simple/runtime/components/android/Label;->Alignment(I)V

    .line 66
    const v0, 0xffffff

    invoke-virtual {p0, v0}, Lcom/google/devtools/simple/runtime/components/android/Label;->BackgroundColor(I)V

    .line 67
    iput v2, p0, Lcom/google/devtools/simple/runtime/components/android/Label;->fontTypeface:I

    .line 68
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Label;->view:Landroid/widget/TextView;

    iget v1, p0, Lcom/google/devtools/simple/runtime/components/android/Label;->fontTypeface:I

    iget-boolean v2, p0, Lcom/google/devtools/simple/runtime/components/android/Label;->bold:Z

    iget-boolean v3, p0, Lcom/google/devtools/simple/runtime/components/android/Label;->italic:Z

    invoke-static {v0, v1, v2, v3}, Lcom/google/devtools/simple/runtime/components/android/util/TextViewUtil;->setFontTypeface(Landroid/widget/TextView;IZZ)V

    .line 69
    const/high16 v0, 0x4160

    invoke-virtual {p0, v0}, Lcom/google/devtools/simple/runtime/components/android/Label;->FontSize(F)V

    .line 70
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/google/devtools/simple/runtime/components/android/Label;->Text(Ljava/lang/String;)V

    .line 71
    const/high16 v0, -0x100

    invoke-virtual {p0, v0}, Lcom/google/devtools/simple/runtime/components/android/Label;->TextColor(I)V

    .line 72
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
    .line 98
    iget v0, p0, Lcom/google/devtools/simple/runtime/components/android/Label;->alignment:I

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
    .line 115
    iput p1, p0, Lcom/google/devtools/simple/runtime/components/android/Label;->alignment:I

    .line 116
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Label;->view:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/google/devtools/simple/runtime/components/android/util/TextViewUtil;->setAlignment(Landroid/widget/TextView;IZ)V

    .line 117
    return-void
.end method

.method public BackgroundColor()I
    .locals 1
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->APPEARANCE:Lcom/google/devtools/simple/common/PropertyCategory;
    .end annotation

    .prologue
    .line 128
    iget v0, p0, Lcom/google/devtools/simple/runtime/components/android/Label;->backgroundColor:I

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
    .line 141
    iput p1, p0, Lcom/google/devtools/simple/runtime/components/android/Label;->backgroundColor:I

    .line 142
    if-eqz p1, :cond_0

    .line 143
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Label;->view:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/google/devtools/simple/runtime/components/android/util/TextViewUtil;->setBackgroundColor(Landroid/widget/TextView;I)V

    .line 147
    :goto_0
    return-void

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Label;->view:Landroid/widget/TextView;

    const v1, 0xffffff

    invoke-static {v0, v1}, Lcom/google/devtools/simple/runtime/components/android/util/TextViewUtil;->setBackgroundColor(Landroid/widget/TextView;I)V

    goto :goto_0
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
    .line 174
    iput-boolean p1, p0, Lcom/google/devtools/simple/runtime/components/android/Label;->bold:Z

    .line 175
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Label;->view:Landroid/widget/TextView;

    iget v1, p0, Lcom/google/devtools/simple/runtime/components/android/Label;->fontTypeface:I

    iget-boolean v2, p0, Lcom/google/devtools/simple/runtime/components/android/Label;->italic:Z

    invoke-static {v0, v1, p1, v2}, Lcom/google/devtools/simple/runtime/components/android/util/TextViewUtil;->setFontTypeface(Landroid/widget/TextView;IZZ)V

    .line 176
    return-void
.end method

.method public FontBold()Z
    .locals 1
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->APPEARANCE:Lcom/google/devtools/simple/common/PropertyCategory;
        userVisible = false
    .end annotation

    .prologue
    .line 160
    iget-boolean v0, p0, Lcom/google/devtools/simple/runtime/components/android/Label;->bold:Z

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
    .line 203
    iput-boolean p1, p0, Lcom/google/devtools/simple/runtime/components/android/Label;->italic:Z

    .line 204
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Label;->view:Landroid/widget/TextView;

    iget v1, p0, Lcom/google/devtools/simple/runtime/components/android/Label;->fontTypeface:I

    iget-boolean v2, p0, Lcom/google/devtools/simple/runtime/components/android/Label;->bold:Z

    invoke-static {v0, v1, v2, p1}, Lcom/google/devtools/simple/runtime/components/android/util/TextViewUtil;->setFontTypeface(Landroid/widget/TextView;IZZ)V

    .line 205
    return-void
.end method

.method public FontItalic()Z
    .locals 1
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->APPEARANCE:Lcom/google/devtools/simple/common/PropertyCategory;
        userVisible = false
    .end annotation

    .prologue
    .line 189
    iget-boolean v0, p0, Lcom/google/devtools/simple/runtime/components/android/Label;->italic:Z

    return v0
.end method

.method public FontSize()F
    .locals 1
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->APPEARANCE:Lcom/google/devtools/simple/common/PropertyCategory;
        userVisible = false
    .end annotation

    .prologue
    .line 216
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Label;->view:Landroid/widget/TextView;

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
    .line 229
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Label;->view:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/google/devtools/simple/runtime/components/android/util/TextViewUtil;->setFontSize(Landroid/widget/TextView;F)V

    .line 230
    return-void
.end method

.method public FontTypeface()I
    .locals 1
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->APPEARANCE:Lcom/google/devtools/simple/common/PropertyCategory;
        userVisible = false
    .end annotation

    .prologue
    .line 245
    iget v0, p0, Lcom/google/devtools/simple/runtime/components/android/Label;->fontTypeface:I

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
    .line 262
    iput p1, p0, Lcom/google/devtools/simple/runtime/components/android/Label;->fontTypeface:I

    .line 263
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Label;->view:Landroid/widget/TextView;

    iget v1, p0, Lcom/google/devtools/simple/runtime/components/android/Label;->fontTypeface:I

    iget-boolean v2, p0, Lcom/google/devtools/simple/runtime/components/android/Label;->bold:Z

    iget-boolean v3, p0, Lcom/google/devtools/simple/runtime/components/android/Label;->italic:Z

    invoke-static {v0, v1, v2, v3}, Lcom/google/devtools/simple/runtime/components/android/util/TextViewUtil;->setFontTypeface(Landroid/widget/TextView;IZZ)V

    .line 264
    return-void
.end method

.method public Initialize()V
    .locals 0

    .prologue
    .line 83
    return-void
.end method

.method public Text()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->APPEARANCE:Lcom/google/devtools/simple/common/PropertyCategory;
    .end annotation

    .prologue
    .line 274
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Label;->view:Landroid/widget/TextView;

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
    .line 286
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Label;->view:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/google/devtools/simple/runtime/components/android/util/TextViewUtil;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 287
    return-void
.end method

.method public TextColor()I
    .locals 1
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->APPEARANCE:Lcom/google/devtools/simple/common/PropertyCategory;
    .end annotation

    .prologue
    .line 298
    iget v0, p0, Lcom/google/devtools/simple/runtime/components/android/Label;->textColor:I

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
    .line 311
    iput p1, p0, Lcom/google/devtools/simple/runtime/components/android/Label;->textColor:I

    .line 312
    if-eqz p1, :cond_0

    .line 313
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Label;->view:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/google/devtools/simple/runtime/components/android/util/TextViewUtil;->setTextColor(Landroid/widget/TextView;I)V

    .line 317
    :goto_0
    return-void

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Label;->view:Landroid/widget/TextView;

    const/high16 v1, -0x100

    invoke-static {v0, v1}, Lcom/google/devtools/simple/runtime/components/android/util/TextViewUtil;->setTextColor(Landroid/widget/TextView;I)V

    goto :goto_0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Label;->view:Landroid/widget/TextView;

    return-object v0
.end method
