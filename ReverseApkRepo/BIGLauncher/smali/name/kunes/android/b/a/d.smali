.class final Lname/kunes/android/b/a/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lname/kunes/android/b/a/e;


# direct methods
.method constructor <init>(Lname/kunes/android/b/a/e;)V
    .locals 0

    iput-object p1, p0, Lname/kunes/android/b/a/d;->a:Lname/kunes/android/b/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lname/kunes/android/b/a/d;->a:Lname/kunes/android/b/a/e;

    invoke-static {v0}, Lname/kunes/android/b/a/e;->a(Lname/kunes/android/b/a/e;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lname/kunes/android/b/a/d;->a:Lname/kunes/android/b/a/e;

    invoke-static {v1}, Lname/kunes/android/b/a/e;->b(Lname/kunes/android/b/a/e;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lname/kunes/android/h/e;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
