.class final Limoblife/toolbox/full/ui/az;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Limoblife/toolbox/full/ui/ax;

.field private final synthetic b:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Limoblife/toolbox/full/ui/ax;Landroid/content/SharedPreferences;)V
    .locals 0

    iput-object p1, p0, Limoblife/toolbox/full/ui/az;->a:Limoblife/toolbox/full/ui/ax;

    iput-object p2, p0, Limoblife/toolbox/full/ui/az;->b:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    packed-switch p2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Limoblife/toolbox/full/ui/az;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "sort_type"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Limoblife/toolbox/full/ui/az;->a:Limoblife/toolbox/full/ui/ax;

    invoke-static {v0}, Limoblife/toolbox/full/ui/ax;->j(Limoblife/toolbox/full/ui/ax;)Limoblife/toolbox/full/ui/bd;

    move-result-object v0

    invoke-virtual {v0, v2}, Limoblife/toolbox/full/ui/bd;->a(I)V

    iget-object v0, p0, Limoblife/toolbox/full/ui/az;->a:Limoblife/toolbox/full/ui/ax;

    invoke-static {v0}, Limoblife/toolbox/full/ui/ax;->j(Limoblife/toolbox/full/ui/ax;)Limoblife/toolbox/full/ui/bd;

    move-result-object v0

    invoke-virtual {v0}, Limoblife/toolbox/full/ui/bd;->b()V

    iget-object v0, p0, Limoblife/toolbox/full/ui/az;->a:Limoblife/toolbox/full/ui/ax;

    invoke-static {v0}, Limoblife/toolbox/full/ui/ax;->k(Limoblife/toolbox/full/ui/ax;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Limoblife/toolbox/full/ui/az;->a:Limoblife/toolbox/full/ui/ax;

    const v2, 0x7f0700d7

    invoke-virtual {v1, v2}, Limoblife/toolbox/full/ui/ax;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Limoblife/toolbox/full/ui/az;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "sort_type"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Limoblife/toolbox/full/ui/az;->a:Limoblife/toolbox/full/ui/ax;

    invoke-static {v0}, Limoblife/toolbox/full/ui/ax;->j(Limoblife/toolbox/full/ui/ax;)Limoblife/toolbox/full/ui/bd;

    move-result-object v0

    invoke-virtual {v0, v3}, Limoblife/toolbox/full/ui/bd;->a(I)V

    iget-object v0, p0, Limoblife/toolbox/full/ui/az;->a:Limoblife/toolbox/full/ui/ax;

    invoke-static {v0}, Limoblife/toolbox/full/ui/ax;->j(Limoblife/toolbox/full/ui/ax;)Limoblife/toolbox/full/ui/bd;

    move-result-object v0

    invoke-virtual {v0}, Limoblife/toolbox/full/ui/bd;->b()V

    iget-object v0, p0, Limoblife/toolbox/full/ui/az;->a:Limoblife/toolbox/full/ui/ax;

    invoke-static {v0}, Limoblife/toolbox/full/ui/ax;->k(Limoblife/toolbox/full/ui/ax;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Limoblife/toolbox/full/ui/az;->a:Limoblife/toolbox/full/ui/ax;

    const v2, 0x7f0700d8

    invoke-virtual {v1, v2}, Limoblife/toolbox/full/ui/ax;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Limoblife/toolbox/full/ui/az;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "sort_type"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Limoblife/toolbox/full/ui/az;->a:Limoblife/toolbox/full/ui/ax;

    invoke-static {v0}, Limoblife/toolbox/full/ui/ax;->j(Limoblife/toolbox/full/ui/ax;)Limoblife/toolbox/full/ui/bd;

    move-result-object v0

    invoke-virtual {v0, v4}, Limoblife/toolbox/full/ui/bd;->a(I)V

    iget-object v0, p0, Limoblife/toolbox/full/ui/az;->a:Limoblife/toolbox/full/ui/ax;

    invoke-static {v0}, Limoblife/toolbox/full/ui/ax;->j(Limoblife/toolbox/full/ui/ax;)Limoblife/toolbox/full/ui/bd;

    move-result-object v0

    invoke-virtual {v0}, Limoblife/toolbox/full/ui/bd;->b()V

    iget-object v0, p0, Limoblife/toolbox/full/ui/az;->a:Limoblife/toolbox/full/ui/ax;

    invoke-static {v0}, Limoblife/toolbox/full/ui/ax;->k(Limoblife/toolbox/full/ui/ax;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Limoblife/toolbox/full/ui/az;->a:Limoblife/toolbox/full/ui/ax;

    const v2, 0x7f0700d9

    invoke-virtual {v1, v2}, Limoblife/toolbox/full/ui/ax;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
