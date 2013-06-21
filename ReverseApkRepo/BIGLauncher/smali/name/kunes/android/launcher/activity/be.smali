.class final Lname/kunes/android/launcher/activity/be;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lname/kunes/android/launcher/activity/bv;

.field private final synthetic b:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lname/kunes/android/launcher/activity/bv;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lname/kunes/android/launcher/activity/be;->a:Lname/kunes/android/launcher/activity/bv;

    iput-object p2, p0, Lname/kunes/android/launcher/activity/be;->b:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 8

    const/16 v7, 0x8

    iget-object v0, p0, Lname/kunes/android/launcher/activity/be;->b:Landroid/app/Activity;

    invoke-static {v0}, Lname/kunes/android/launcher/a/g;->b(Landroid/app/Activity;)I

    move-result v1

    invoke-static {v0}, Lname/kunes/android/launcher/a/g;->a(Landroid/app/Activity;)I

    move-result v2

    new-instance v3, Lname/kunes/android/launcher/c/e;

    invoke-direct {v3, v0}, Lname/kunes/android/launcher/c/e;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v3, v1, v7}, Lname/kunes/android/launcher/c/e;->c(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget v4, Lname/kunes/android/launcher/activity/ScreensSetupActivity;->a:I

    if-ne v1, v4, :cond_0

    const-string v0, "functionality-application"

    :cond_0
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "functionality-screen-goto"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "next"

    aput-object v6, v4, v5

    invoke-static {v4}, Lname/kunes/android/launcher/a/f;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v7, v4}, Lname/kunes/android/launcher/c/e;->b(IILjava/lang/String;)V

    invoke-virtual {v3, v2, v7, v0}, Lname/kunes/android/launcher/c/e;->b(IILjava/lang/String;)V

    iget-object v0, p0, Lname/kunes/android/launcher/activity/be;->a:Lname/kunes/android/launcher/activity/bv;

    iget-object v0, v0, Lname/kunes/android/launcher/activity/bv;->a:Lname/kunes/android/launcher/activity/ScreensSetupActivity;

    invoke-static {v0}, Lname/kunes/android/launcher/activity/ScreensSetupActivity;->a(Lname/kunes/android/launcher/activity/ScreensSetupActivity;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    return-void
.end method
