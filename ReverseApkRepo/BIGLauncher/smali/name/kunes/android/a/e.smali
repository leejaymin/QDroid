.class final Lname/kunes/android/a/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic a:Landroid/app/Activity;

.field private final synthetic b:Landroid/view/View$OnClickListener;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lname/kunes/android/a/e;->a:Landroid/app/Activity;

    iput-object p2, p0, Lname/kunes/android/a/e;->b:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    new-instance v0, Lname/kunes/android/launcher/c/d;

    iget-object v1, p0, Lname/kunes/android/a/e;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lname/kunes/android/launcher/c/d;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lname/kunes/android/launcher/c/d;->E()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lname/kunes/android/launcher/h;->a(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lname/kunes/android/a/e;->b:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    return-void
.end method
