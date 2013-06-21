.class final Lcom/rubycell/pianisthd/p;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/rubycell/pianisthd/DoubleRowActivity;


# direct methods
.method constructor <init>(Lcom/rubycell/pianisthd/DoubleRowActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/rubycell/pianisthd/p;->a:Lcom/rubycell/pianisthd/DoubleRowActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    const-string v0, "Change instrument"

    invoke-static {v0}, Lcom/rubycell/adcenter/a;->a(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/rubycell/pianisthd/p;->a:Lcom/rubycell/pianisthd/DoubleRowActivity;

    iget-object v1, v1, Lcom/rubycell/pianisthd/DoubleRowActivity;->y:Landroid/content/Context;

    const-class v2, Lcom/rubycell/pianisthd/InstrumentActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "target"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/rubycell/pianisthd/p;->a:Lcom/rubycell/pianisthd/DoubleRowActivity;

    invoke-virtual {v1, v0}, Lcom/rubycell/pianisthd/DoubleRowActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
