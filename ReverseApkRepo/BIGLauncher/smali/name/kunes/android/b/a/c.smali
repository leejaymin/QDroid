.class final Lname/kunes/android/b/a/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lname/kunes/android/b/a/a;


# direct methods
.method constructor <init>(Lname/kunes/android/b/a/a;)V
    .locals 0

    iput-object p1, p0, Lname/kunes/android/b/a/c;->a:Lname/kunes/android/b/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    new-instance v0, Lname/kunes/android/f/a;

    iget-object v1, p0, Lname/kunes/android/b/a/c;->a:Lname/kunes/android/b/a/a;

    invoke-static {v1}, Lname/kunes/android/b/a/a;->a(Lname/kunes/android/b/a/a;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lname/kunes/android/f/a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lname/kunes/android/f/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lname/kunes/android/b/a/c;->a:Lname/kunes/android/b/a/a;

    invoke-static {v0}, Lname/kunes/android/b/a/a;->b(Lname/kunes/android/b/a/a;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lname/kunes/android/b/a/c;->a:Lname/kunes/android/b/a/a;

    invoke-static {v1}, Lname/kunes/android/b/a/a;->a(Lname/kunes/android/b/a/a;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.INSERT_OR_EDIT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v3, "vnd.android.cursor.item/contact"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "phone"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v0, v2}, Lname/kunes/android/h/b;->a(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method
