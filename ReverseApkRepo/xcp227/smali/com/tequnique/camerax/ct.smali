.class final Lcom/tequnique/camerax/ct;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/tequnique/camerax/cs;

.field private final synthetic b:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/tequnique/camerax/cs;Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lcom/tequnique/camerax/ct;->a:Lcom/tequnique/camerax/cs;

    iput-object p2, p0, Lcom/tequnique/camerax/ct;->b:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/tequnique/camerax/ct;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tequnique/camerax/ct;->a:Lcom/tequnique/camerax/cs;

    iget-object v1, v1, Lcom/tequnique/camerax/cs;->a:Lcom/tequnique/camerax/cp;

    invoke-static {v1}, Lcom/tequnique/camerax/cp;->a(Lcom/tequnique/camerax/cp;)Lcom/tequnique/camerax/cj;

    move-result-object v1

    iget-object v1, v1, Lcom/tequnique/camerax/cj;->b:Lcom/tequnique/camerax/WebuploaderActivity;

    invoke-static {v1}, Lcom/tequnique/camerax/WebuploaderActivity;->b(Lcom/tequnique/camerax/WebuploaderActivity;)Lcom/tequnique/camerax/a/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tequnique/camerax/a/a;->c(Ljava/lang/String;)V

    return-void
.end method
