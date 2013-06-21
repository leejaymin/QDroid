.class final Lcom/rubycell/pianisthd/ui/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/rubycell/pianisthd/ui/OneRowKeyboard;


# direct methods
.method constructor <init>(Lcom/rubycell/pianisthd/ui/OneRowKeyboard;)V
    .locals 0

    iput-object p1, p0, Lcom/rubycell/pianisthd/ui/c;->a:Lcom/rubycell/pianisthd/ui/OneRowKeyboard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/c;->a:Lcom/rubycell/pianisthd/ui/OneRowKeyboard;

    iget-object v0, v0, Lcom/rubycell/pianisthd/ui/OneRowKeyboard;->a:Landroid/content/Context;

    check-cast v0, Lcom/rubycell/pianisthd/SingleRowActivity;

    invoke-virtual {v0}, Lcom/rubycell/pianisthd/SingleRowActivity;->a()V

    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/c;->a:Lcom/rubycell/pianisthd/ui/OneRowKeyboard;

    iget-object v0, v0, Lcom/rubycell/pianisthd/ui/OneRowKeyboard;->a:Landroid/content/Context;

    const-string v1, " The End "

    const/16 v2, 0x96

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
