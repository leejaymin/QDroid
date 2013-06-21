.class public final Lname/kunes/android/a/f;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;ILandroid/graphics/drawable/Drawable;)V
    .locals 2

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lname/kunes/android/widget/AccessibleImageButton;

    if-eqz v1, :cond_0

    check-cast v0, Lname/kunes/android/widget/AccessibleImageButton;

    invoke-virtual {v0, p2}, Lname/kunes/android/widget/AccessibleImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-static {v0}, Lname/kunes/android/a/a;->a(Landroid/widget/ImageView;)V

    :cond_0
    return-void
.end method

.method public static a(Landroid/app/Activity;ILandroid/view/View$OnClickListener;)V
    .locals 2

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lname/kunes/android/a/e;

    invoke-direct {v1, p0, p2}, Lname/kunes/android/a/e;-><init>(Landroid/app/Activity;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static a(Landroid/app/Activity;ILname/kunes/android/launcher/a/o;)V
    .locals 2

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-interface {p2}, Lname/kunes/android/launcher/a/o;->b()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {p0, p1, v1}, Lname/kunes/android/a/f;->a(Landroid/app/Activity;ILandroid/graphics/drawable/Drawable;)V

    new-instance v1, Lname/kunes/android/a/d;

    invoke-direct {v1, p2}, Lname/kunes/android/a/d;-><init>(Lname/kunes/android/launcher/a/o;)V

    invoke-static {p0, p1, v1}, Lname/kunes/android/a/f;->a(Landroid/app/Activity;ILandroid/view/View$OnClickListener;)V

    invoke-interface {p2}, Lname/kunes/android/launcher/a/o;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method
