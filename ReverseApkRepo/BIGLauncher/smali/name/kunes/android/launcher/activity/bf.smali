.class final Lname/kunes/android/launcher/activity/bf;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lname/kunes/android/launcher/activity/w;

.field private final synthetic b:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lname/kunes/android/launcher/activity/w;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lname/kunes/android/launcher/activity/bf;->a:Lname/kunes/android/launcher/activity/w;

    iput-object p2, p0, Lname/kunes/android/launcher/activity/bf;->b:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    const/16 v6, 0x8

    iget-object v1, p0, Lname/kunes/android/launcher/activity/bf;->b:Landroid/app/Activity;

    iget-object v0, p0, Lname/kunes/android/launcher/activity/bf;->a:Lname/kunes/android/launcher/activity/w;

    iget-object v0, v0, Lname/kunes/android/launcher/activity/w;->a:Lname/kunes/android/launcher/activity/ScreenAppearanceActivity;

    invoke-static {v0}, Lname/kunes/android/launcher/activity/ScreenAppearanceActivity;->a(Lname/kunes/android/launcher/activity/ScreenAppearanceActivity;)I

    move-result v2

    new-instance v3, Lname/kunes/android/launcher/c/e;

    invoke-direct {v3, v1}, Lname/kunes/android/launcher/c/e;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v3}, Lname/kunes/android/launcher/c/e;->a()Ljava/util/LinkedHashSet;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v3, v0}, Lname/kunes/android/launcher/c/e;->a(Ljava/util/LinkedHashSet;)V

    sget-object v0, Lname/kunes/android/launcher/b/q;->g:Lname/kunes/android/launcher/b/n;

    invoke-virtual {v0, v2}, Lname/kunes/android/launcher/b/n;->a(I)V

    const-string v0, ""

    invoke-virtual {v3, v2, v0}, Lname/kunes/android/launcher/c/e;->c(ILjava/lang/String;)V

    const-string v0, ""

    invoke-virtual {v3, v2, v0}, Lname/kunes/android/launcher/c/e;->a(ILjava/lang/String;)V

    const-string v0, ""

    invoke-virtual {v3, v2, v0}, Lname/kunes/android/launcher/c/e;->b(ILjava/lang/String;)V

    const/4 v0, 0x1

    :goto_0
    if-le v0, v6, :cond_1

    new-instance v0, Lname/kunes/android/launcher/c/e;

    invoke-direct {v0, v1}, Lname/kunes/android/launcher/c/e;-><init>(Landroid/app/Activity;)V

    invoke-static {v1}, Lname/kunes/android/launcher/a/g;->b(Landroid/app/Activity;)I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0, v1}, Lname/kunes/android/launcher/c/e;->g(Landroid/app/Activity;)Lname/kunes/android/launcher/a/o;

    move-result-object v1

    instance-of v1, v1, Lname/kunes/android/launcher/a/c;

    if-eqz v1, :cond_0

    sget v1, Lname/kunes/android/launcher/activity/ScreensSetupActivity;->a:I

    const-string v2, "functionality-application"

    invoke-virtual {v0, v1, v6, v2}, Lname/kunes/android/launcher/c/e;->b(IILjava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lname/kunes/android/launcher/activity/bf;->a:Lname/kunes/android/launcher/activity/w;

    iget-object v0, v0, Lname/kunes/android/launcher/activity/w;->a:Lname/kunes/android/launcher/activity/ScreenAppearanceActivity;

    invoke-virtual {v0}, Lname/kunes/android/launcher/activity/ScreenAppearanceActivity;->finish()V

    return-void

    :cond_1
    const-string v4, ""

    invoke-virtual {v3, v2, v0, v4}, Lname/kunes/android/launcher/c/e;->b(IILjava/lang/String;)V

    const-string v4, ""

    invoke-virtual {v3, v2, v0, v4}, Lname/kunes/android/launcher/c/e;->a(IILjava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
