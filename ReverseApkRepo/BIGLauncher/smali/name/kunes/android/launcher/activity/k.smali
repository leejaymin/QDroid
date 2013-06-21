.class final Lname/kunes/android/launcher/activity/k;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lname/kunes/android/launcher/activity/ContactActivity;


# direct methods
.method constructor <init>(Lname/kunes/android/launcher/activity/ContactActivity;)V
    .locals 0

    iput-object p1, p0, Lname/kunes/android/launcher/activity/k;->a:Lname/kunes/android/launcher/activity/ContactActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lname/kunes/android/launcher/activity/k;->a:Lname/kunes/android/launcher/activity/ContactActivity;

    sget-object v1, Lname/kunes/android/launcher/activity/ContactActivity;->a:Ljava/lang/String;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.EDIT"

    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-static {v0, v2}, Lname/kunes/android/h/b;->a(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
