.class public abstract Lcom/google/devtools/simple/runtime/components/android/ButtonBase;
.super Lcom/google/devtools/simple/runtime/components/android/AndroidViewComponent;
.source "ButtonBase.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/devtools/simple/runtime/annotations/UsesPermissions;
    permissionNames = "android.permission.INTERNET"
.end annotation


# instance fields
.field private alignment:I

.field private backgroundColor:I

.field private bold:Z

.field private defaultButtonDrawable:Landroid/graphics/drawable/Drawable;

.field private defaultColorStateList:Landroid/content/res/ColorStateList;

.field private fontTypeface:I

.field private imagePath:Ljava/lang/String;

.field private italic:Z

.field private textColor:I

.field private final view:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;)V
    .locals 6
    .parameter "container"

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    const-string v5, ""

    .line 72
    invoke-direct {p0, p1}, Lcom/google/devtools/simple/runtime/components/android/AndroidViewComponent;-><init>(Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;)V

    .line 58
    const-string v0, ""

    iput-object v5, p0, Lcom/google/devtools/simple/runtime/components/android/ButtonBase;->imagePath:Ljava/lang/String;

    .line 73
    new-instance v0, Landroid/widget/Button;

    invoke-interface {p1}, Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/ButtonBase;->view:Landroid/widget/Button;

    .line 74
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/ButtonBase;->view:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/ButtonBase;->defaultButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 75
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/ButtonBase;->view:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/ButtonBase;->defaultColorStateList:Landroid/content/res/ColorStateList;

    .line 78
    invoke-interface {p1, p0}, Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;->$add(Lcom/google/devtools/simple/runtime/components/android/AndroidViewComponent;)V

    .line 81
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/ButtonBase;->view:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/ButtonBase;->view:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 85
    invoke-virtual {p0, v2}, Lcom/google/devtools/simple/runtime/components/android/ButtonBase;->Alignment(I)V

    .line 90
    invoke-virtual {p0, v4}, Lcom/google/devtools/simple/runtime/components/android/ButtonBase;->BackgroundColor(I)V

    .line 91
    invoke-virtual {p0, v2}, Lcom/google/devtools/simple/runtime/components/android/ButtonBase;->Enabled(Z)V

    .line 92
    iput v4, p0, Lcom/google/devtools/simple/runtime/components/android/ButtonBase;->fontTypeface:I

    .line 93
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/ButtonBase;->view:Landroid/widget/Button;

    iget v1, p0, Lcom/google/devtools/simple/runtime/components/android/ButtonBase;->fontTypeface:I

    iget-boolean v2, p0, Lcom/google/devtools/simple/runtime/components/android/ButtonBase;->bold:Z

    iget-boolean v3, p0, Lcom/google/devtools/simple/runtime/components/android/ButtonBase;->italic:Z

    invoke-static {v0, v1, v2, v3}, Lcom/google/devtools/simple/runtime/components/android/util/TextViewUtil;->setFontTypeface(Landroid/widget/TextView;IZZ)V

    .line 94
    const/high16 v0, 0x4160

    invoke-virtual {p0, v0}, Lcom/google/devtools/simple/runtime/components/android/ButtonBase;->FontSize(F)V

    .line 95
    const-string v0, ""

    invoke-virtual {p0, v5}, Lcom/google/devtools/simple/runtime/components/android/ButtonBase;->Text(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0, v4}, Lcom/google/devtools/simple/runtime/components/android/ButtonBase;->TextColor(I)V

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
    .line 143
    iget v0, p0, Lcom/google/devtools/simple/runtime/components/android/ButtonBase;->alignment:I

    return v0
.end method

.method public Alignment(I)V
    .locals 2
    .parameter "alignment"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerProperty;
        defaultValue = "1"
        editorType = "textalignment"
    .end annotation

    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .prologue
    .line 159
    iput p1, p0, Lcom/google/devtools/simple/runtime/components/android/ButtonBase;->alignment:I

    .line 160
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/ButtonBase;->view:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/google/devtools/simple/runtime/components/android/util/TextViewUtil;->setAlignment(Landroid/widget/TextView;IZ)V

    .line 161
    return-void
.end method

.method public BackgroundColor()I
    .locals 1
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->APPEARANCE:Lcom/google/devtools/simple/common/PropertyCategory;
    .end annotation

    .prologue
    .line 208
    iget v0, p0, Lcom/google/devtools/simple/runtime/components/android/ButtonBase;->backgroundColor:I

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
    .line 221
    iput p1, p0, Lcom/google/devtools/simple/runtime/components/android/ButtonBase;->backgroundColor:I

    .line 222
    if-eqz p1, :cond_0

    .line 223
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/ButtonBase;->view:Landroid/widget/Button;

    invoke-static {v0, p1}, Lcom/google/devtools/simple/runtime/components/android/util/TextViewUtil;->setBackgroundColor(Landroid/widget/TextView;I)V

    .line 227
    :goto_0
    return-void

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/ButtonBase;->view:Landroid/widget/Button;

    iget-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/ButtonBase;->defaultButtonDrawable:Landroid/graphics/drawable/Drawable;

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
    .line 249
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/ButtonBase;->view:Landroid/widget/Button;

    invoke-static {v0, p1}, Lcom/google/devtools/simple/runtime/components/android/util/TextViewUtil;->setEnabled(Landroid/widget/TextView;Z)V

    .line 250
    return-void
.end method

.method public Enabled()Z
    .locals 1
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->BEHAVIOR:Lcom/google/devtools/simple/common/PropertyCategory;
    .end annotation

    .prologue
    .line 237
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/ButtonBase;->view:Landroid/widget/Button;

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
    .line 277
    iput-boolean p1, p0, Lcom/google/devtools/simple/runtime/components/android/ButtonBase;->bold:Z

    .line 278
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/ButtonBase;->view:Landroid/widget/Button;

    iget v1, p0, Lcom/google/devtools/simple/runtime/components/android/ButtonBase;->fontTypeface:I

    iget-boolean v2, p0, Lcom/google/devtools/simple/runtime/components/android/ButtonBase;->italic:Z

    invoke-static {v0, v1, p1, v2}, Lcom/google/devtools/simple/runtime/components/android/util/TextViewUtil;->setFontTypeface(Landroid/widget/TextView;IZZ)V

    .line 279
    return-void
.end method

.method public FontBold()Z
    .locals 1
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->APPEARANCE:Lcom/google/devtools/simple/common/PropertyCategory;
        userVisible = false
    .end annotation

    .prologue
    .line 263
    iget-boolean v0, p0, Lcom/google/devtools/simple/runtime/components/android/ButtonBase;->bold:Z

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
    .line 306
    iput-boolean p1, p0, Lcom/google/devtools/simple/runtime/components/android/ButtonBase;->italic:Z

    .line 307
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/ButtonBase;->view:Landroid/widget/Button;

    iget v1, p0, Lcom/google/devtools/simple/runtime/components/android/ButtonBase;->fontTypeface:I

    iget-boolean v2, p0, Lcom/google/devtools/simple/runtime/components/android/ButtonBase;->bold:Z

    invoke-static {v0, v1, v2, p1}, Lcom/google/devtools/simple/runtime/components/android/util/TextViewUtil;->setFontTypeface(Landroid/widget/TextView;IZZ)V

    .line 308
    return-void
.end method

.method public FontItalic()Z
    .locals 1
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->APPEARANCE:Lcom/google/devtools/simple/common/PropertyCategory;
        userVisible = false
    .end annotation

    .prologue
    .line 292
    iget-boolean v0, p0, Lcom/google/devtools/simple/runtime/components/android/ButtonBase;->italic:Z

    return v0
.end method

.method public FontSize()F
    .locals 1
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->APPEARANCE:Lcom/google/devtools/simple/common/PropertyCategory;
        userVisible = false
    .end annotation

    .prologue
    .line 319
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/ButtonBase;->view:Landroid/widget/Button;

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
    .line 332
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/ButtonBase;->view:Landroid/widget/Button;

    invoke-static {v0, p1}, Lcom/google/devtools/simple/runtime/components/android/util/TextViewUtil;->setFontSize(Landroid/widget/TextView;F)V

    .line 333
    return-void
.end method

.method public FontTypeface()I
    .locals 1
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->APPEARANCE:Lcom/google/devtools/simple/common/PropertyCategory;
        userVisible = false
    .end annotation

    .prologue
    .line 348
    iget v0, p0, Lcom/google/devtools/simple/runtime/components/android/ButtonBase;->fontTypeface:I

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
    .line 365
    iput p1, p0, Lcom/google/devtools/simple/runtime/components/android/ButtonBase;->fontTypeface:I

    .line 366
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/ButtonBase;->view:Landroid/widget/Button;

    iget v1, p0, Lcom/google/devtools/simple/runtime/components/android/ButtonBase;->fontTypeface:I

    iget-boolean v2, p0, Lcom/google/devtools/simple/runtime/components/android/ButtonBase;->bold:Z

    iget-boolean v3, p0, Lcom/google/devtools/simple/runtime/components/android/ButtonBase;->italic:Z

    invoke-static {v0, v1, v2, v3}, Lcom/google/devtools/simple/runtime/components/android/util/TextViewUtil;->setFontTypeface(Landroid/widget/TextView;IZZ)V

    .line 367
    return-void
.end method

.method public GotFocus()V
    .locals 2
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerEvent;
    .end annotation

    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 117
    const-string v0, "GotFocus"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/devtools/simple/runtime/events/EventDispatcher;->dispatchEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 118
    return-void
.end method

.method public Image()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->APPEARANCE:Lcom/google/devtools/simple/common/PropertyCategory;
    .end annotation

    .prologue
    .line 171
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/ButtonBase;->imagePath:Ljava/lang/String;

    return-object v0
.end method

.method public Image(Ljava/lang/String;)V
    .locals 5
    .parameter "path"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerProperty;
        defaultValue = "\"\""
        editorType = "asset"
    .end annotation

    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 186
    if-nez p1, :cond_0

    const-string v2, ""

    :goto_0
    iput-object v2, p0, Lcom/google/devtools/simple/runtime/components/android/ButtonBase;->imagePath:Ljava/lang/String;

    .line 190
    :try_start_0
    iget-object v2, p0, Lcom/google/devtools/simple/runtime/components/android/ButtonBase;->container:Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;

    invoke-interface {v2}, Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;->$form()Lcom/google/devtools/simple/runtime/components/android/Form;

    move-result-object v2

    iget-object v3, p0, Lcom/google/devtools/simple/runtime/components/android/ButtonBase;->imagePath:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/devtools/simple/runtime/components/android/util/MediaUtil;->getDrawable(Lcom/google/devtools/simple/runtime/components/android/Form;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 196
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    :goto_1
    iget-object v2, p0, Lcom/google/devtools/simple/runtime/components/android/ButtonBase;->view:Landroid/widget/Button;

    invoke-static {v2, v0}, Lcom/google/devtools/simple/runtime/components/android/util/ViewUtil;->setBackgroundImage(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 197
    return-void

    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    :cond_0
    move-object v2, p1

    .line 186
    goto :goto_0

    .line 191
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 192
    .local v1, ioe:Ljava/io/IOException;
    const-string v2, "ButtonBase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to load "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/devtools/simple/runtime/components/android/ButtonBase;->imagePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    const/4 v0, 0x0

    .restart local v0       #drawable:Landroid/graphics/drawable/Drawable;
    goto :goto_1
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
    .line 127
    const-string v0, "LostFocus"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/devtools/simple/runtime/events/EventDispatcher;->dispatchEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 128
    return-void
.end method

.method public Text()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->APPEARANCE:Lcom/google/devtools/simple/common/PropertyCategory;
    .end annotation

    .prologue
    .line 377
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/ButtonBase;->view:Landroid/widget/Button;

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
    .line 389
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/ButtonBase;->view:Landroid/widget/Button;

    invoke-static {v0, p1}, Lcom/google/devtools/simple/runtime/components/android/util/TextViewUtil;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 390
    return-void
.end method

.method public TextColor()I
    .locals 1
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->APPEARANCE:Lcom/google/devtools/simple/common/PropertyCategory;
    .end annotation

    .prologue
    .line 401
    iget v0, p0, Lcom/google/devtools/simple/runtime/components/android/ButtonBase;->textColor:I

    return v0
.end method

.method public TextColor(I)V
    .locals 2
    .parameter "argb"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerProperty;
        defaultValue = "&H00000000"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 415
    iput p1, p0, Lcom/google/devtools/simple/runtime/components/android/ButtonBase;->textColor:I

    .line 416
    if-eqz p1, :cond_0

    .line 417
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/ButtonBase;->view:Landroid/widget/Button;

    invoke-static {v0, p1}, Lcom/google/devtools/simple/runtime/components/android/util/TextViewUtil;->setTextColor(Landroid/widget/TextView;I)V

    .line 421
    :goto_0
    return-void

    .line 419
    :cond_0
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/ButtonBase;->view:Landroid/widget/Button;

    iget-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/ButtonBase;->defaultColorStateList:Landroid/content/res/ColorStateList;

    invoke-static {v0, v1}, Lcom/google/devtools/simple/runtime/components/android/util/TextViewUtil;->setTextColors(Landroid/widget/TextView;Landroid/content/res/ColorStateList;)V

    goto :goto_0
.end method

.method public abstract click()V
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/ButtonBase;->view:Landroid/widget/Button;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 429
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/components/android/ButtonBase;->click()V

    .line 430
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0
    .parameter "previouslyFocused"
    .parameter "gainFocus"

    .prologue
    .line 436
    if-eqz p2, :cond_0

    .line 437
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/components/android/ButtonBase;->GotFocus()V

    .line 441
    :goto_0
    return-void

    .line 439
    :cond_0
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/components/android/ButtonBase;->LostFocus()V

    goto :goto_0
.end method
