.class final Lname/kunes/android/launcher/activity/d/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic a:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lname/kunes/android/launcher/activity/d/d;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v1, p0, Lname/kunes/android/launcher/activity/d/d;->a:Landroid/app/Activity;

    if-nez p2, :cond_0

    invoke-static {}, Lname/kunes/android/launcher/activity/d/a;->a()Landroid/view/MenuItem;

    move-result-object v0

    :goto_0
    invoke-static {v1, v0}, Lname/kunes/android/launcher/activity/d/a;->a(Landroid/app/Activity;Landroid/view/MenuItem;)Z

    return-void

    :cond_0
    invoke-static {}, Lname/kunes/android/launcher/activity/d/a;->b()Landroid/view/MenuItem;

    move-result-object v0

    goto :goto_0
.end method
