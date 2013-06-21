.class final Lcom/tequnique/camerax/cr;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/tequnique/camerax/cp;


# direct methods
.method constructor <init>(Lcom/tequnique/camerax/cp;)V
    .locals 0

    iput-object p1, p0, Lcom/tequnique/camerax/cr;->a:Lcom/tequnique/camerax/cp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/tequnique/camerax/cr;->a:Lcom/tequnique/camerax/cp;

    invoke-static {v0}, Lcom/tequnique/camerax/cp;->a(Lcom/tequnique/camerax/cp;)Lcom/tequnique/camerax/cj;

    move-result-object v0

    iget-object v0, v0, Lcom/tequnique/camerax/cj;->b:Lcom/tequnique/camerax/WebuploaderActivity;

    invoke-virtual {v0}, Lcom/tequnique/camerax/WebuploaderActivity;->a()V

    return-void
.end method
