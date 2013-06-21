.class final Lname/kunes/android/launcher/activity/d/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic a:Landroid/widget/EditText;

.field private final synthetic b:Lname/kunes/android/launcher/c/d;

.field private final synthetic c:Ljava/lang/Runnable;

.field private final synthetic d:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/widget/EditText;Lname/kunes/android/launcher/c/d;Ljava/lang/Runnable;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lname/kunes/android/launcher/activity/d/b;->a:Landroid/widget/EditText;

    iput-object p2, p0, Lname/kunes/android/launcher/activity/d/b;->b:Lname/kunes/android/launcher/c/d;

    iput-object p3, p0, Lname/kunes/android/launcher/activity/d/b;->c:Ljava/lang/Runnable;

    iput-object p4, p0, Lname/kunes/android/launcher/activity/d/b;->d:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lname/kunes/android/launcher/activity/d/b;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lname/kunes/android/launcher/activity/d/b;->b:Lname/kunes/android/launcher/c/d;

    invoke-virtual {v1}, Lname/kunes/android/launcher/c/d;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "rehcnualgib"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lname/kunes/android/launcher/activity/d/b;->c:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lname/kunes/android/launcher/activity/d/b;->d:Landroid/app/Activity;

    const v1, 0x7f0600cc

    invoke-static {v0, v1}, Lname/kunes/android/a/c;->a(Landroid/content/Context;I)V

    goto :goto_0
.end method
