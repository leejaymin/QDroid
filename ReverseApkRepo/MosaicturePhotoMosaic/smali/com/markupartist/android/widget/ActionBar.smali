.class public Lcom/markupartist/android/widget/ActionBar;
.super Landroid/widget/RelativeLayout;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/view/LayoutInflater;

.field private b:Landroid/widget/RelativeLayout;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/view/View;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/LinearLayout;

.field private g:Landroid/widget/ImageButton;

.field private h:Landroid/widget/RelativeLayout;

.field private i:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/markupartist/android/widget/ActionBar;->a:Landroid/view/LayoutInflater;

    iget-object v0, p0, Lcom/markupartist/android/widget/ActionBar;->a:Landroid/view/LayoutInflater;

    sget v1, Lcom/markupartist/android/widget/a/c;->a:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/markupartist/android/widget/ActionBar;->b:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/markupartist/android/widget/ActionBar;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/markupartist/android/widget/ActionBar;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/markupartist/android/widget/ActionBar;->b:Landroid/widget/RelativeLayout;

    sget v1, Lcom/markupartist/android/widget/a/b;->e:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/markupartist/android/widget/ActionBar;->c:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/markupartist/android/widget/ActionBar;->b:Landroid/widget/RelativeLayout;

    sget v1, Lcom/markupartist/android/widget/a/b;->b:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/markupartist/android/widget/ActionBar;->h:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/markupartist/android/widget/ActionBar;->b:Landroid/widget/RelativeLayout;

    sget v1, Lcom/markupartist/android/widget/a/b;->c:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/markupartist/android/widget/ActionBar;->g:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/markupartist/android/widget/ActionBar;->b:Landroid/widget/RelativeLayout;

    sget v1, Lcom/markupartist/android/widget/a/b;->d:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/markupartist/android/widget/ActionBar;->d:Landroid/view/View;

    iget-object v0, p0, Lcom/markupartist/android/widget/ActionBar;->b:Landroid/widget/RelativeLayout;

    sget v1, Lcom/markupartist/android/widget/a/b;->h:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/markupartist/android/widget/ActionBar;->e:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/markupartist/android/widget/ActionBar;->b:Landroid/widget/RelativeLayout;

    sget v1, Lcom/markupartist/android/widget/a/b;->a:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/markupartist/android/widget/ActionBar;->f:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/markupartist/android/widget/ActionBar;->b:Landroid/widget/RelativeLayout;

    sget v1, Lcom/markupartist/android/widget/a/b;->g:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/markupartist/android/widget/ActionBar;->i:Landroid/widget/ProgressBar;

    sget-object v0, Lcom/markupartist/android/widget/a/e;->a:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/markupartist/android/widget/ActionBar;->e:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/markupartist/android/widget/ActionBar;->e:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/markupartist/android/widget/ActionBar;->e:Landroid/widget/TextView;

    const v1, -0x777778

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/markupartist/android/widget/b;)V
    .locals 2

    iget-object v0, p0, Lcom/markupartist/android/widget/ActionBar;->g:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/markupartist/android/widget/ActionBar;->g:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/markupartist/android/widget/ActionBar;->g:Landroid/widget/ImageButton;

    invoke-interface {p1}, Lcom/markupartist/android/widget/b;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v0, p0, Lcom/markupartist/android/widget/ActionBar;->h:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/markupartist/android/widget/ActionBar;->c:Landroid/widget/ImageView;

    const v1, 0x7f02001e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/markupartist/android/widget/ActionBar;->c:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/markupartist/android/widget/ActionBar;->h:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method public final b(Lcom/markupartist/android/widget/b;)V
    .locals 6

    iget-object v0, p0, Lcom/markupartist/android/widget/ActionBar;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    iget-object v2, p0, Lcom/markupartist/android/widget/ActionBar;->f:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/markupartist/android/widget/ActionBar;->a:Landroid/view/LayoutInflater;

    sget v3, Lcom/markupartist/android/widget/a/c;->b:I

    iget-object v4, p0, Lcom/markupartist/android/widget/ActionBar;->f:Landroid/widget/LinearLayout;

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    sget v0, Lcom/markupartist/android/widget/a/b;->f:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    invoke-interface {p1}, Lcom/markupartist/android/widget/b;->a()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setImageResource(I)V

    invoke-virtual {v3, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2, v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    return-void
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lcom/markupartist/android/widget/ActionBar;->d:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Lcom/markupartist/android/widget/ActionBar;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/markupartist/android/widget/b;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/markupartist/android/widget/b;

    invoke-interface {v0}, Lcom/markupartist/android/widget/b;->b()V

    :cond_0
    return-void
.end method
