.class final Lname/kunes/android/b/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lname/kunes/android/b/g;


# direct methods
.method constructor <init>(Lname/kunes/android/b/g;)V
    .locals 0

    iput-object p1, p0, Lname/kunes/android/b/c;->a:Lname/kunes/android/b/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    const/4 v2, 0x0

    :goto_0
    invoke-static {}, Lname/kunes/android/b/g;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lname/kunes/android/b/f;->b()Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Stack;->firstElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lname/kunes/android/b/b;

    invoke-static {}, Lname/kunes/android/b/f;->b()Ljava/util/Stack;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z

    iget-object v1, v0, Lname/kunes/android/b/b;->a:Landroid/widget/TextView;

    iget-object v0, v0, Lname/kunes/android/b/b;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
