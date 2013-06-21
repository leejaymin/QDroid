.class final Lcom/tequnique/camerax/at;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/tequnique/camerax/as;


# direct methods
.method constructor <init>(Lcom/tequnique/camerax/as;)V
    .locals 0

    iput-object p1, p0, Lcom/tequnique/camerax/at;->a:Lcom/tequnique/camerax/as;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "http://market.android.com/details?id=com.tequnique.camerax"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/tequnique/camerax/at;->a:Lcom/tequnique/camerax/as;

    invoke-static {v1}, Lcom/tequnique/camerax/as;->a(Lcom/tequnique/camerax/as;)Lcom/tequnique/camerax/ar;

    move-result-object v1

    iget-object v1, v1, Lcom/tequnique/camerax/ar;->a:Lcom/tequnique/camerax/CameraProActivity;

    invoke-virtual {v1, v0}, Lcom/tequnique/camerax/CameraProActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
