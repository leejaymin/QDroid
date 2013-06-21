.class public final Lname/kunes/android/a/g;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/content/res/Resources;

.field private final c:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lname/kunes/android/widget/AccessibleListItem;

    invoke-direct {v0, p1}, Lname/kunes/android/widget/AccessibleListItem;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lname/kunes/android/a/g;->c:Landroid/widget/TextView;

    iput-object p1, p0, Lname/kunes/android/a/g;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lname/kunes/android/a/g;->b:Landroid/content/res/Resources;

    iget-object v0, p0, Lname/kunes/android/a/g;->c:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lname/kunes/android/launcher/n;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p1, v2}, Lname/kunes/android/launcher/n;->a(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v0, ""

    invoke-virtual {p0, v0}, Lname/kunes/android/a/g;->a(Ljava/lang/String;)Lname/kunes/android/a/g;

    return-void
.end method


# virtual methods
.method public final a()Lname/kunes/android/a/g;
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lname/kunes/android/a/g;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lname/kunes/android/a/g;->c:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lname/kunes/android/a/g;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lname/kunes/android/a/g;->a:Landroid/content/Context;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lname/kunes/android/launcher/n;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lname/kunes/android/a/g;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lname/kunes/android/a/g;->a:Landroid/content/Context;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lname/kunes/android/launcher/n;->a(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-object p0
.end method

.method public final a(Landroid/graphics/drawable/Drawable;)Lname/kunes/android/a/g;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lname/kunes/android/a/g;->a:Landroid/content/Context;

    invoke-static {p1, v0}, Lname/kunes/android/a/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)V

    iget-object v0, p0, Lname/kunes/android/a/g;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-object p0
.end method

.method public final a(Landroid/view/View$OnClickListener;)Lname/kunes/android/a/g;
    .locals 1

    iget-object v0, p0, Lname/kunes/android/a/g;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lname/kunes/android/a/g;
    .locals 1

    iget-object v0, p0, Lname/kunes/android/a/g;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lname/kunes/android/a/g;->c:Landroid/widget/TextView;

    invoke-static {v0}, Lname/kunes/android/a/a;->a(Landroid/view/View;)V

    return-object p0
.end method

.method public final b()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lname/kunes/android/a/g;->c:Landroid/widget/TextView;

    return-object v0
.end method
