.class final Lcom/tequnique/camerax/dc;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/tequnique/camerax/db;


# direct methods
.method constructor <init>(Lcom/tequnique/camerax/db;)V
    .locals 0

    iput-object p1, p0, Lcom/tequnique/camerax/dc;->a:Lcom/tequnique/camerax/db;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/tequnique/camerax/dc;->a:Lcom/tequnique/camerax/db;

    invoke-static {v0}, Lcom/tequnique/camerax/db;->a(Lcom/tequnique/camerax/db;)Lcom/tequnique/camerax/cj;

    move-result-object v0

    iget-object v0, v0, Lcom/tequnique/camerax/cj;->b:Lcom/tequnique/camerax/WebuploaderActivity;

    invoke-virtual {v0}, Lcom/tequnique/camerax/WebuploaderActivity;->a()V

    return-void
.end method
