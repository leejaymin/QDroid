.class Lcom/wareone/tappmt/Settings$1;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wareone/tappmt/Settings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wareone/tappmt/Settings;


# direct methods
.method constructor <init>(Lcom/wareone/tappmt/Settings;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/wareone/tappmt/Settings$1;->this$0:Lcom/wareone/tappmt/Settings;

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter "v"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 137
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v0, 0x0

    .line 138
    .local v0, intent:Landroid/content/Intent;
    packed-switch p3, :pswitch_data_0

    .line 170
    :goto_0
    if-eqz v0, :cond_0

    .line 171
    iget-object v1, p0, Lcom/wareone/tappmt/Settings$1;->this$0:Lcom/wareone/tappmt/Settings;

    invoke-virtual {v1, v0}, Lcom/wareone/tappmt/Settings;->startActivity(Landroid/content/Intent;)V

    .line 176
    :cond_0
    return-void

    .line 141
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/wareone/tappmt/Settings$1;->this$0:Lcom/wareone/tappmt/Settings;

    const-class v2, Lcom/wareone/tappmt/TapPMTPrefs;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 142
    .restart local v0       #intent:Landroid/content/Intent;
    goto :goto_0

    .line 144
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/wareone/tappmt/Settings$1;->this$0:Lcom/wareone/tappmt/Settings;

    const-class v2, Lcom/wareone/tappmt/Reminder;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 145
    .restart local v0       #intent:Landroid/content/Intent;
    goto :goto_0

    .line 147
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/wareone/tappmt/Settings$1;->this$0:Lcom/wareone/tappmt/Settings;

    const-class v2, Lcom/wareone/tappmt/Template;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 148
    .restart local v0       #intent:Landroid/content/Intent;
    goto :goto_0

    .line 150
    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/wareone/tappmt/Settings$1;->this$0:Lcom/wareone/tappmt/Settings;

    const-class v2, Lcom/wareone/tappmt/Accounts;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 151
    .restart local v0       #intent:Landroid/content/Intent;
    goto :goto_0

    .line 153
    :pswitch_4
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/wareone/tappmt/Settings$1;->this$0:Lcom/wareone/tappmt/Settings;

    const-class v2, Lcom/wareone/tappmt/Category;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 154
    .restart local v0       #intent:Landroid/content/Intent;
    goto :goto_0

    .line 156
    :pswitch_5
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/wareone/tappmt/Settings$1;->this$0:Lcom/wareone/tappmt/Settings;

    const-class v2, Lcom/wareone/tappmt/Payees;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 157
    .restart local v0       #intent:Landroid/content/Intent;
    goto :goto_0

    .line 159
    :pswitch_6
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/wareone/tappmt/Settings$1;->this$0:Lcom/wareone/tappmt/Settings;

    const-class v2, Lcom/wareone/tappmt/Groups;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 160
    .restart local v0       #intent:Landroid/content/Intent;
    goto :goto_0

    .line 162
    :pswitch_7
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/wareone/tappmt/Settings$1;->this$0:Lcom/wareone/tappmt/Settings;

    const-class v2, Lcom/wareone/tappmt/Currency;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 163
    .restart local v0       #intent:Landroid/content/Intent;
    goto :goto_0

    .line 165
    :pswitch_8
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/wareone/tappmt/Settings$1;->this$0:Lcom/wareone/tappmt/Settings;

    const-class v2, Lcom/wareone/tappmt/Security;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .restart local v0       #intent:Landroid/content/Intent;
    goto :goto_0

    .line 138
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
