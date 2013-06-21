.class public Lcom/mosaicture/view/CheckableLinearLayout;
.super Landroid/widget/LinearLayout;

# interfaces
.implements Landroid/widget/Checkable;


# instance fields
.field private a:Z

.field private b:Landroid/graphics/drawable/Drawable;

.field private c:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mosaicture/view/CheckableLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f010001

    invoke-direct {p0, p1, p2, v0}, Lcom/mosaicture/view/CheckableLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mosaicture/view/CheckableLinearLayout;->a:Z

    sget-object v0, Lcom/mosaicture/b;->b:[I

    const v1, 0x7f080011

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/mosaicture/view/CheckableLinearLayout;->b:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/mosaicture/view/CheckableLinearLayout;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/mosaicture/view/CheckableLinearLayout;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mosaicture/view/CheckableLinearLayout;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/mosaicture/view/CheckableLinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/mosaicture/view/CheckableLinearLayout;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/mosaicture/view/CheckableLinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private a()V
    .locals 1

    invoke-virtual {p0}, Lcom/mosaicture/view/CheckableLinearLayout;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mosaicture/view/CheckableLinearLayout;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/mosaicture/view/CheckableLinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/mosaicture/view/CheckableLinearLayout;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/mosaicture/view/CheckableLinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mosaicture/view/CheckableLinearLayout;->a:Z

    return v0
.end method

.method public setChecked(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mosaicture/view/CheckableLinearLayout;->a:Z

    invoke-direct {p0}, Lcom/mosaicture/view/CheckableLinearLayout;->a()V

    return-void
.end method

.method public toggle()V
    .locals 1

    iget-boolean v0, p0, Lcom/mosaicture/view/CheckableLinearLayout;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/mosaicture/view/CheckableLinearLayout;->a:Z

    invoke-direct {p0}, Lcom/mosaicture/view/CheckableLinearLayout;->a()V

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
