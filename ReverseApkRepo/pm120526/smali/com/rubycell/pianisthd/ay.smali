.class final Lcom/rubycell/pianisthd/ay;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/rubycell/pianisthd/SingleRowActivity;


# direct methods
.method constructor <init>(Lcom/rubycell/pianisthd/SingleRowActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/rubycell/pianisthd/ay;->a:Lcom/rubycell/pianisthd/SingleRowActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/rubycell/pianisthd/ay;->a:Lcom/rubycell/pianisthd/SingleRowActivity;

    const-class v2, Lcom/rubycell/pianisthd/StartupActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/rubycell/pianisthd/ay;->a:Lcom/rubycell/pianisthd/SingleRowActivity;

    invoke-virtual {v1, v0}, Lcom/rubycell/pianisthd/SingleRowActivity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/ay;->a:Lcom/rubycell/pianisthd/SingleRowActivity;

    invoke-virtual {v0}, Lcom/rubycell/pianisthd/SingleRowActivity;->finish()V

    return-void
.end method
