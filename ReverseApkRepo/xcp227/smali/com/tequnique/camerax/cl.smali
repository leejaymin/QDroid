.class final Lcom/tequnique/camerax/cl;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/tequnique/camerax/ck;


# direct methods
.method constructor <init>(Lcom/tequnique/camerax/ck;)V
    .locals 0

    iput-object p1, p0, Lcom/tequnique/camerax/cl;->a:Lcom/tequnique/camerax/ck;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/tequnique/camerax/cl;->a:Lcom/tequnique/camerax/ck;

    invoke-static {v0}, Lcom/tequnique/camerax/ck;->a(Lcom/tequnique/camerax/ck;)Lcom/tequnique/camerax/cj;

    move-result-object v0

    iget-object v0, v0, Lcom/tequnique/camerax/cj;->b:Lcom/tequnique/camerax/WebuploaderActivity;

    invoke-static {v0}, Lcom/tequnique/camerax/WebuploaderActivity;->b(Lcom/tequnique/camerax/WebuploaderActivity;)Lcom/tequnique/camerax/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tequnique/camerax/a/a;->d()V

    return-void
.end method
