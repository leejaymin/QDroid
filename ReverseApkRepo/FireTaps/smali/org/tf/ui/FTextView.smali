.class public Lorg/tf/ui/FTextView;
.super Landroid/widget/TextView;
.source "FTextView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 31
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/tf/ui/FTextView;->setupTypeface(Landroid/util/AttributeSet;I)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attributes"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lorg/tf/ui/FTextView;->setupTypeface(Landroid/util/AttributeSet;I)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attributes"
    .parameter "style"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    invoke-direct {p0, p2, p3}, Lorg/tf/ui/FTextView;->setupTypeface(Landroid/util/AttributeSet;I)V

    .line 42
    return-void
.end method

.method private setupTypeface(Landroid/util/AttributeSet;I)V
    .locals 5
    .parameter "attributes"
    .parameter "style"

    .prologue
    const/4 v4, 0x0

    .line 47
    const/4 v1, 0x0

    .line 48
    .local v1, fireTypeface:Z
    if-eqz p1, :cond_0

    .line 49
    invoke-virtual {p0}, Lorg/tf/ui/FTextView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 51
    sget-object v3, Lorg/tf/R$styleable;->FTextView:[I

    .line 49
    invoke-virtual {v2, p1, v3, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 53
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 54
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 56
    .end local v0           #a:Landroid/content/res/TypedArray;
    :cond_0
    if-eqz v1, :cond_1

    .line 57
    invoke-static {}, Lorg/tf/Config;->getFireTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/tf/ui/FTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 61
    :goto_0
    return-void

    .line 59
    :cond_1
    invoke-static {}, Lorg/tf/Config;->getDefaultTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/tf/ui/FTextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0
.end method
