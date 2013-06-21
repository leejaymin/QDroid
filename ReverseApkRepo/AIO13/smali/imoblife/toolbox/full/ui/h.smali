.class final Limoblife/toolbox/full/ui/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Limoblife/toolbox/full/ui/AAdvancedSetting;


# direct methods
.method constructor <init>(Limoblife/toolbox/full/ui/AAdvancedSetting;)V
    .locals 0

    iput-object p1, p0, Limoblife/toolbox/full/ui/h;->a:Limoblife/toolbox/full/ui/AAdvancedSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    packed-switch p2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Limoblife/toolbox/full/ui/h;->a:Limoblife/toolbox/full/ui/AAdvancedSetting;

    invoke-static {v0}, Limoblife/toolbox/full/ui/AAdvancedSetting;->a(Limoblife/toolbox/full/ui/AAdvancedSetting;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "mode_threshold_optimize"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Limoblife/toolbox/full/ui/h;->a:Limoblife/toolbox/full/ui/AAdvancedSetting;

    invoke-static {v0}, Limoblife/toolbox/full/ui/AAdvancedSetting;->e(Limoblife/toolbox/full/ui/AAdvancedSetting;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Limoblife/toolbox/full/ui/h;->a:Limoblife/toolbox/full/ui/AAdvancedSetting;

    invoke-static {v0}, Limoblife/toolbox/full/ui/AAdvancedSetting;->a(Limoblife/toolbox/full/ui/AAdvancedSetting;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "mode_threshold_optimize"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Limoblife/toolbox/full/ui/h;->a:Limoblife/toolbox/full/ui/AAdvancedSetting;

    invoke-static {v0}, Limoblife/toolbox/full/ui/AAdvancedSetting;->f(Limoblife/toolbox/full/ui/AAdvancedSetting;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Limoblife/toolbox/full/ui/h;->a:Limoblife/toolbox/full/ui/AAdvancedSetting;

    invoke-static {v0}, Limoblife/toolbox/full/ui/AAdvancedSetting;->a(Limoblife/toolbox/full/ui/AAdvancedSetting;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "mode_threshold_optimize"

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Limoblife/toolbox/full/ui/h;->a:Limoblife/toolbox/full/ui/AAdvancedSetting;

    invoke-static {v0}, Limoblife/toolbox/full/ui/AAdvancedSetting;->f(Limoblife/toolbox/full/ui/AAdvancedSetting;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Limoblife/toolbox/full/ui/h;->a:Limoblife/toolbox/full/ui/AAdvancedSetting;

    invoke-static {v0}, Limoblife/toolbox/full/ui/AAdvancedSetting;->a(Limoblife/toolbox/full/ui/AAdvancedSetting;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "mode_threshold_optimize"

    const/4 v2, 0x3

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Limoblife/toolbox/full/ui/h;->a:Limoblife/toolbox/full/ui/AAdvancedSetting;

    invoke-static {v0}, Limoblife/toolbox/full/ui/AAdvancedSetting;->f(Limoblife/toolbox/full/ui/AAdvancedSetting;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Limoblife/toolbox/full/ui/h;->a:Limoblife/toolbox/full/ui/AAdvancedSetting;

    invoke-static {v0}, Limoblife/toolbox/full/ui/AAdvancedSetting;->a(Limoblife/toolbox/full/ui/AAdvancedSetting;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "mode_threshold_optimize"

    const/4 v2, 0x4

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Limoblife/toolbox/full/ui/h;->a:Limoblife/toolbox/full/ui/AAdvancedSetting;

    invoke-static {v0}, Limoblife/toolbox/full/ui/AAdvancedSetting;->f(Limoblife/toolbox/full/ui/AAdvancedSetting;)V

    goto/16 :goto_0

    :pswitch_5
    iget-object v0, p0, Limoblife/toolbox/full/ui/h;->a:Limoblife/toolbox/full/ui/AAdvancedSetting;

    invoke-static {v0}, Limoblife/toolbox/full/ui/AAdvancedSetting;->a(Limoblife/toolbox/full/ui/AAdvancedSetting;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "mode_threshold_optimize"

    const/4 v2, 0x5

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Limoblife/toolbox/full/ui/h;->a:Limoblife/toolbox/full/ui/AAdvancedSetting;

    invoke-static {v0}, Limoblife/toolbox/full/ui/AAdvancedSetting;->f(Limoblife/toolbox/full/ui/AAdvancedSetting;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
