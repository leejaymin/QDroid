.class final Lname/kunes/android/launcher/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field private synthetic a:Lname/kunes/android/launcher/p;


# direct methods
.method constructor <init>(Lname/kunes/android/launcher/p;)V
    .locals 0

    iput-object p1, p0, Lname/kunes/android/launcher/i;->a:Lname/kunes/android/launcher/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 1

    iget-object v0, p0, Lname/kunes/android/launcher/i;->a:Lname/kunes/android/launcher/p;

    invoke-static {v0}, Lname/kunes/android/launcher/p;->c(Lname/kunes/android/launcher/p;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lname/kunes/android/launcher/i;->a:Lname/kunes/android/launcher/p;

    invoke-static {v0, p2}, Lname/kunes/android/launcher/p;->a(Lname/kunes/android/launcher/p;I)V

    :cond_0
    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method
