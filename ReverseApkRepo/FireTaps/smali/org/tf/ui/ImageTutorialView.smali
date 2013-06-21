.class public Lorg/tf/ui/ImageTutorialView;
.super Landroid/widget/ViewSwitcher;
.source "ImageTutorialView.java"

# interfaces
.implements Landroid/widget/ViewSwitcher$ViewFactory;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TUTORIAL:[I = null

.field private static final TUTORIAL_LENGTH:I = 0x8


# instance fields
.field private m_position:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 86
    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/tf/ui/ImageTutorialView;->TUTORIAL:[I

    .line 30
    return-void

    .line 86
    :array_0
    .array-data 0x4
        0x1bt 0x0t 0x2t 0x7ft
        0x19t 0x0t 0x6t 0x7ft
        0x1ct 0x0t 0x2t 0x7ft
        0x1at 0x0t 0x6t 0x7ft
        0x1dt 0x0t 0x2t 0x7ft
        0x1bt 0x0t 0x6t 0x7ft
        0x1et 0x0t 0x2t 0x7ft
        0x1ct 0x0t 0x6t 0x7ft
        0x1ft 0x0t 0x2t 0x7ft
        0x1dt 0x0t 0x6t 0x7ft
        0x20t 0x0t 0x2t 0x7ft
        0x1et 0x0t 0x6t 0x7ft
        0x21t 0x0t 0x2t 0x7ft
        0x1ft 0x0t 0x6t 0x7ft
        0x22t 0x0t 0x2t 0x7ft
        0x20t 0x0t 0x6t 0x7ft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/tf/ui/ImageTutorialView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attributes"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Landroid/widget/ViewSwitcher;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    invoke-virtual {p0}, Lorg/tf/ui/ImageTutorialView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f04000e

    invoke-virtual {p0, v0, v1}, Lorg/tf/ui/ImageTutorialView;->setInAnimation(Landroid/content/Context;I)V

    .line 42
    invoke-virtual {p0}, Lorg/tf/ui/ImageTutorialView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f04000f

    invoke-virtual {p0, v0, v1}, Lorg/tf/ui/ImageTutorialView;->setOutAnimation(Landroid/content/Context;I)V

    .line 43
    invoke-virtual {p0, p0}, Lorg/tf/ui/ImageTutorialView;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Lorg/tf/ui/ImageTutorialView;->m_position:I

    .line 45
    invoke-direct {p0}, Lorg/tf/ui/ImageTutorialView;->advance()V

    .line 46
    return-void
.end method

.method private advance()V
    .locals 3

    .prologue
    .line 65
    iget v1, p0, Lorg/tf/ui/ImageTutorialView;->m_position:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/tf/ui/ImageTutorialView;->m_position:I

    .line 66
    iget v1, p0, Lorg/tf/ui/ImageTutorialView;->m_position:I

    const/16 v2, 0x8

    if-lt v1, v2, :cond_0

    .line 67
    const/4 v1, 0x0

    iput v1, p0, Lorg/tf/ui/ImageTutorialView;->m_position:I

    .line 69
    :cond_0
    invoke-virtual {p0}, Lorg/tf/ui/ImageTutorialView;->getNextView()Landroid/view/View;

    move-result-object v0

    .line 70
    .local v0, view:Landroid/view/View;
    invoke-direct {p0, v0}, Lorg/tf/ui/ImageTutorialView;->setup(Landroid/view/View;)V

    .line 71
    invoke-virtual {p0}, Lorg/tf/ui/ImageTutorialView;->showNext()V

    .line 72
    return-void
.end method

.method private setup(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 75
    const v2, 0x7f0c0022

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 76
    .local v0, image:Landroid/widget/ImageView;
    sget-object v2, Lorg/tf/ui/ImageTutorialView;->TUTORIAL:[I

    iget v3, p0, Lorg/tf/ui/ImageTutorialView;->m_position:I

    mul-int/lit8 v3, v3, 0x2

    aget v2, v2, v3

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 78
    const v2, 0x7f0c0015

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 79
    .local v1, text:Landroid/widget/TextView;
    sget-object v2, Lorg/tf/ui/ImageTutorialView;->TUTORIAL:[I

    iget v3, p0, Lorg/tf/ui/ImageTutorialView;->m_position:I

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x1

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 80
    return-void
.end method


# virtual methods
.method public makeView()Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 51
    invoke-virtual {p0}, Lorg/tf/ui/ImageTutorialView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 52
    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 51
    check-cast v0, Landroid/view/LayoutInflater;

    .line 53
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f03000e

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 54
    .local v1, view:Landroid/view/View;
    const v2, 0x7f0c0022

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 56
    invoke-direct {v2, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 55
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 57
    return-object v1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 61
    invoke-direct {p0}, Lorg/tf/ui/ImageTutorialView;->advance()V

    .line 62
    return-void
.end method
