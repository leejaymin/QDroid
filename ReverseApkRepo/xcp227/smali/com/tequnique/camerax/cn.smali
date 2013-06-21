.class final Lcom/tequnique/camerax/cn;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/tequnique/camerax/ck;

.field private final synthetic b:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/tequnique/camerax/ck;Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lcom/tequnique/camerax/cn;->a:Lcom/tequnique/camerax/ck;

    iput-object p2, p0, Lcom/tequnique/camerax/cn;->b:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/16 v3, 0x78

    iget-object v0, p0, Lcom/tequnique/camerax/cn;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tequnique/camerax/cn;->a:Lcom/tequnique/camerax/ck;

    invoke-static {v1}, Lcom/tequnique/camerax/ck;->a(Lcom/tequnique/camerax/ck;)Lcom/tequnique/camerax/cj;

    move-result-object v1

    iget-object v1, v1, Lcom/tequnique/camerax/cj;->a:Lcom/tequnique/camerax/ch;

    sget-object v2, Lcom/tequnique/camerax/ch;->d:Lcom/tequnique/camerax/ch;

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v3, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lcom/tequnique/camerax/cn;->a:Lcom/tequnique/camerax/ck;

    invoke-static {v1}, Lcom/tequnique/camerax/ck;->a(Lcom/tequnique/camerax/ck;)Lcom/tequnique/camerax/cj;

    move-result-object v1

    iget-object v1, v1, Lcom/tequnique/camerax/cj;->b:Lcom/tequnique/camerax/WebuploaderActivity;

    invoke-static {v1}, Lcom/tequnique/camerax/WebuploaderActivity;->b(Lcom/tequnique/camerax/WebuploaderActivity;)Lcom/tequnique/camerax/a/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tequnique/camerax/a/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tequnique/camerax/cn;->a:Lcom/tequnique/camerax/ck;

    invoke-static {v0}, Lcom/tequnique/camerax/ck;->a(Lcom/tequnique/camerax/ck;)Lcom/tequnique/camerax/cj;

    move-result-object v0

    iget-object v0, v0, Lcom/tequnique/camerax/cj;->b:Lcom/tequnique/camerax/WebuploaderActivity;

    invoke-static {v0}, Lcom/tequnique/camerax/WebuploaderActivity;->b(Lcom/tequnique/camerax/WebuploaderActivity;)Lcom/tequnique/camerax/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/tequnique/camerax/cn;->a:Lcom/tequnique/camerax/ck;

    invoke-static {v1}, Lcom/tequnique/camerax/ck;->a(Lcom/tequnique/camerax/ck;)Lcom/tequnique/camerax/cj;

    move-result-object v1

    iget-object v1, v1, Lcom/tequnique/camerax/cj;->b:Lcom/tequnique/camerax/WebuploaderActivity;

    invoke-static {v1}, Lcom/tequnique/camerax/WebuploaderActivity;->d(Lcom/tequnique/camerax/WebuploaderActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tequnique/camerax/a/a;->d(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/tequnique/camerax/cn;->a:Lcom/tequnique/camerax/ck;

    invoke-static {v1}, Lcom/tequnique/camerax/ck;->a(Lcom/tequnique/camerax/ck;)Lcom/tequnique/camerax/cj;

    move-result-object v1

    iget-object v1, v1, Lcom/tequnique/camerax/cj;->b:Lcom/tequnique/camerax/WebuploaderActivity;

    invoke-static {v1}, Lcom/tequnique/camerax/WebuploaderActivity;->b(Lcom/tequnique/camerax/WebuploaderActivity;)Lcom/tequnique/camerax/a/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tequnique/camerax/a/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tequnique/camerax/cn;->a:Lcom/tequnique/camerax/ck;

    invoke-static {v0}, Lcom/tequnique/camerax/ck;->a(Lcom/tequnique/camerax/ck;)Lcom/tequnique/camerax/cj;

    move-result-object v0

    iget-object v0, v0, Lcom/tequnique/camerax/cj;->b:Lcom/tequnique/camerax/WebuploaderActivity;

    invoke-static {v0}, Lcom/tequnique/camerax/WebuploaderActivity;->b(Lcom/tequnique/camerax/WebuploaderActivity;)Lcom/tequnique/camerax/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tequnique/camerax/a/a;->f()V

    goto :goto_0
.end method
