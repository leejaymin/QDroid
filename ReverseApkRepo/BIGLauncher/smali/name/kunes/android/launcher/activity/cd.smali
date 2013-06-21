.class final Lname/kunes/android/launcher/activity/cd;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lname/kunes/android/launcher/activity/aa;

.field private final synthetic b:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lname/kunes/android/launcher/activity/aa;Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lname/kunes/android/launcher/activity/cd;->a:Lname/kunes/android/launcher/activity/aa;

    iput-object p2, p0, Lname/kunes/android/launcher/activity/cd;->b:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v0, p0, Lname/kunes/android/launcher/activity/cd;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "data-name"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    invoke-static {v1}, Lname/kunes/android/launcher/a/f;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lname/kunes/android/launcher/activity/cd;->a:Lname/kunes/android/launcher/activity/aa;

    iget-object v1, v1, Lname/kunes/android/launcher/activity/aa;->a:Lname/kunes/android/launcher/activity/ScreenAppearanceActivity;

    invoke-static {v1}, Lname/kunes/android/launcher/activity/ScreenAppearanceActivity;->b(Lname/kunes/android/launcher/activity/ScreenAppearanceActivity;)Lname/kunes/android/launcher/c/e;

    move-result-object v1

    iget-object v2, p0, Lname/kunes/android/launcher/activity/cd;->a:Lname/kunes/android/launcher/activity/aa;

    iget-object v2, v2, Lname/kunes/android/launcher/activity/aa;->a:Lname/kunes/android/launcher/activity/ScreenAppearanceActivity;

    invoke-static {v2}, Lname/kunes/android/launcher/activity/ScreenAppearanceActivity;->a(Lname/kunes/android/launcher/activity/ScreenAppearanceActivity;)I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lname/kunes/android/launcher/c/e;->b(ILjava/lang/String;)V

    iget-object v0, p0, Lname/kunes/android/launcher/activity/cd;->a:Lname/kunes/android/launcher/activity/aa;

    iget-object v0, v0, Lname/kunes/android/launcher/activity/aa;->a:Lname/kunes/android/launcher/activity/ScreenAppearanceActivity;

    invoke-static {v0}, Lname/kunes/android/launcher/activity/ScreenAppearanceActivity;->c(Lname/kunes/android/launcher/activity/ScreenAppearanceActivity;)V

    return-void
.end method
