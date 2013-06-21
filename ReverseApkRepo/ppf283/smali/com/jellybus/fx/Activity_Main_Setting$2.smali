.class Lcom/jellybus/fx/Activity_Main_Setting$2;
.super Ljava/lang/Object;
.source "Activity_Main_Setting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jellybus/fx/Activity_Main_Setting;->folderDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jellybus/fx/Activity_Main_Setting;


# direct methods
.method constructor <init>(Lcom/jellybus/fx/Activity_Main_Setting;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jellybus/fx/Activity_Main_Setting$2;->this$0:Lcom/jellybus/fx/Activity_Main_Setting;

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 163
    packed-switch p2, :pswitch_data_0

    .line 179
    :goto_0
    return-void

    .line 166
    :pswitch_0
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main_Setting$2;->this$0:Lcom/jellybus/fx/Activity_Main_Setting;

    #setter for: Lcom/jellybus/fx/Activity_Main_Setting;->current_folder:I
    invoke-static {v0, v2}, Lcom/jellybus/fx/Activity_Main_Setting;->access$4(Lcom/jellybus/fx/Activity_Main_Setting;I)V

    .line 167
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main_Setting$2;->this$0:Lcom/jellybus/fx/Activity_Main_Setting;

    #getter for: Lcom/jellybus/fx/Activity_Main_Setting;->editor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v0}, Lcom/jellybus/fx/Activity_Main_Setting;->access$5(Lcom/jellybus/fx/Activity_Main_Setting;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "isFxFolder"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 168
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main_Setting$2;->this$0:Lcom/jellybus/fx/Activity_Main_Setting;

    #getter for: Lcom/jellybus/fx/Activity_Main_Setting;->editor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v0}, Lcom/jellybus/fx/Activity_Main_Setting;->access$5(Lcom/jellybus/fx/Activity_Main_Setting;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 169
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    .line 173
    :pswitch_1
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main_Setting$2;->this$0:Lcom/jellybus/fx/Activity_Main_Setting;

    #setter for: Lcom/jellybus/fx/Activity_Main_Setting;->current_folder:I
    invoke-static {v0, v3}, Lcom/jellybus/fx/Activity_Main_Setting;->access$4(Lcom/jellybus/fx/Activity_Main_Setting;I)V

    .line 174
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main_Setting$2;->this$0:Lcom/jellybus/fx/Activity_Main_Setting;

    #getter for: Lcom/jellybus/fx/Activity_Main_Setting;->editor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v0}, Lcom/jellybus/fx/Activity_Main_Setting;->access$5(Lcom/jellybus/fx/Activity_Main_Setting;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "isFxFolder"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 175
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main_Setting$2;->this$0:Lcom/jellybus/fx/Activity_Main_Setting;

    #getter for: Lcom/jellybus/fx/Activity_Main_Setting;->editor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v0}, Lcom/jellybus/fx/Activity_Main_Setting;->access$5(Lcom/jellybus/fx/Activity_Main_Setting;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 176
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    .line 163
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
