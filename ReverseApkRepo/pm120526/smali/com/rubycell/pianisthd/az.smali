.class final Lcom/rubycell/pianisthd/az;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/rubycell/pianisthd/SingleRowActivity;


# direct methods
.method constructor <init>(Lcom/rubycell/pianisthd/SingleRowActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/rubycell/pianisthd/az;->a:Lcom/rubycell/pianisthd/SingleRowActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/rubycell/pianisthd/az;->a:Lcom/rubycell/pianisthd/SingleRowActivity;

    invoke-virtual {v0}, Lcom/rubycell/pianisthd/SingleRowActivity;->finish()V

    return-void
.end method
