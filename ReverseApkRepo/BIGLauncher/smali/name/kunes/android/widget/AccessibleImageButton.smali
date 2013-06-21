.class public Lname/kunes/android/widget/AccessibleImageButton;
.super Landroid/widget/ImageButton;


# instance fields
.field private final a:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-static {p1}, Lname/kunes/android/widget/AccessibleImageButton;->a(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lname/kunes/android/widget/AccessibleImageButton;->a:Landroid/view/View;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-static {p1}, Lname/kunes/android/widget/AccessibleImageButton;->a(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lname/kunes/android/widget/AccessibleImageButton;->a:Landroid/view/View;

    return-void
.end method

.method private static a(Landroid/content/Context;)Landroid/view/View;
    .locals 1

    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    new-instance v0, Lname/kunes/android/launcher/c/d;

    invoke-virtual {p0}, Lname/kunes/android/widget/AccessibleImageButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lname/kunes/android/launcher/c/d;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lname/kunes/android/launcher/c/d;->X()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lname/kunes/android/widget/AccessibleImageButton;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lname/kunes/android/widget/AccessibleImageButton;->a:Landroid/view/View;

    invoke-virtual {p0}, Lname/kunes/android/widget/AccessibleImageButton;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lname/kunes/android/widget/AccessibleImageButton;->a:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0
.end method
