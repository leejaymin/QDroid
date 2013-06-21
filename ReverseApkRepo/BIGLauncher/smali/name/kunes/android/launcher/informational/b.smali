.class final Lname/kunes/android/launcher/informational/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lname/kunes/android/launcher/informational/NagActivity;


# direct methods
.method constructor <init>(Lname/kunes/android/launcher/informational/NagActivity;)V
    .locals 0

    iput-object p1, p0, Lname/kunes/android/launcher/informational/b;->a:Lname/kunes/android/launcher/informational/NagActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lname/kunes/android/launcher/informational/b;->a:Lname/kunes/android/launcher/informational/NagActivity;

    invoke-static {v0}, Lname/kunes/android/h/e;->b(Landroid/content/Context;)V

    iget-object v0, p0, Lname/kunes/android/launcher/informational/b;->a:Lname/kunes/android/launcher/informational/NagActivity;

    invoke-virtual {v0}, Lname/kunes/android/launcher/informational/NagActivity;->finish()V

    return-void
.end method
