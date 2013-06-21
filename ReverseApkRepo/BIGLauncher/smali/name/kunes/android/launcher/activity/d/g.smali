.class final Lname/kunes/android/launcher/activity/d/g;
.super Landroid/widget/ArrayAdapter;


# instance fields
.field private final synthetic a:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/List;Landroid/app/Activity;)V
    .locals 1

    iput-object p3, p0, Lname/kunes/android/launcher/activity/d/g;->a:Landroid/app/Activity;

    const v0, 0x7f030006

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lname/kunes/android/launcher/activity/d/g;->a:Landroid/app/Activity;

    if-nez p1, :cond_0

    const/16 v0, 0x8

    :goto_0
    invoke-static {v2, v0}, Lname/kunes/android/launcher/n;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v1, v0}, Lname/kunes/android/b/i;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-object v1

    :cond_0
    const/16 v0, 0x9

    goto :goto_0
.end method
