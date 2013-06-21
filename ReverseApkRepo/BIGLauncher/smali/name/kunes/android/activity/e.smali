.class final Lname/kunes/android/activity/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private synthetic a:Lname/kunes/android/activity/SearchScrollListActivity;


# direct methods
.method constructor <init>(Lname/kunes/android/activity/SearchScrollListActivity;)V
    .locals 0

    iput-object p1, p0, Lname/kunes/android/activity/e;->a:Lname/kunes/android/activity/SearchScrollListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    iget-object v0, p0, Lname/kunes/android/activity/e;->a:Lname/kunes/android/activity/SearchScrollListActivity;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lname/kunes/android/activity/SearchScrollListActivity;->a_(Ljava/lang/String;)V

    return-void
.end method
