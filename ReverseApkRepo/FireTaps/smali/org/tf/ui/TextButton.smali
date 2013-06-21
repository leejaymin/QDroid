.class Lorg/tf/ui/TextButton;
.super Landroid/widget/Button;
.source "TextButton.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 30
    invoke-direct {p0}, Lorg/tf/ui/TextButton;->setup()V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    invoke-direct {p0}, Lorg/tf/ui/TextButton;->setup()V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    invoke-direct {p0}, Lorg/tf/ui/TextButton;->setup()V

    .line 41
    return-void
.end method

.method private setup()V
    .locals 1

    .prologue
    .line 46
    invoke-static {}, Lorg/tf/Config;->getDefaultTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/tf/ui/TextButton;->setTypeface(Landroid/graphics/Typeface;)V

    .line 49
    return-void
.end method
