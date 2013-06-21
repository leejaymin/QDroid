.class final Lname/kunes/android/launcher/j;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field private synthetic a:Lname/kunes/android/launcher/p;


# direct methods
.method constructor <init>(Lname/kunes/android/launcher/p;)V
    .locals 0

    iput-object p1, p0, Lname/kunes/android/launcher/j;->a:Lname/kunes/android/launcher/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 1

    if-nez p2, :cond_0

    iget-object v0, p0, Lname/kunes/android/launcher/j;->a:Lname/kunes/android/launcher/p;

    invoke-virtual {v0}, Lname/kunes/android/launcher/p;->c()V

    :cond_0
    return-void
.end method
