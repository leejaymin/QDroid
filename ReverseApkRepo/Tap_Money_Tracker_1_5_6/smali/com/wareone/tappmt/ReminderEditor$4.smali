.class Lcom/wareone/tappmt/ReminderEditor$4;
.super Ljava/lang/Object;
.source "ReminderEditor.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wareone/tappmt/ReminderEditor;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemSelectedListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wareone/tappmt/ReminderEditor;


# direct methods
.method constructor <init>(Lcom/wareone/tappmt/ReminderEditor;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/wareone/tappmt/ReminderEditor$4;->this$0:Lcom/wareone/tappmt/ReminderEditor;

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 10
    .parameter
    .parameter "v"
    .parameter "pos"
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
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v8, 0x1

    const/4 v7, -0x1

    const/4 v6, 0x0

    const-string v9, "_id"

    const-string v5, "mode"

    .line 229
    invoke-static {}, Lcom/wareone/tappmt/ReminderEditor;->access$4()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Mode -> onItemSelected"

    invoke-static {v3, v4}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    iget-object v3, p0, Lcom/wareone/tappmt/ReminderEditor$4;->this$0:Lcom/wareone/tappmt/ReminderEditor;

    const v4, 0x7f0c0021

    invoke-virtual {v3, v4}, Lcom/wareone/tappmt/ReminderEditor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 232
    .local v0, btn_category:Landroid/widget/Button;
    iget-object v3, p0, Lcom/wareone/tappmt/ReminderEditor$4;->this$0:Lcom/wareone/tappmt/ReminderEditor;

    const v4, 0x7f0c0020

    invoke-virtual {v3, v4}, Lcom/wareone/tappmt/ReminderEditor;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 233
    .local v2, tv_category:Landroid/widget/TextView;
    iget-object v3, p0, Lcom/wareone/tappmt/ReminderEditor$4;->this$0:Lcom/wareone/tappmt/ReminderEditor;

    const v4, 0x7f0c0022

    invoke-virtual {v3, v4}, Lcom/wareone/tappmt/ReminderEditor;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 234
    .local v1, tv_account:Landroid/widget/TextView;
    packed-switch p3, :pswitch_data_0

    .line 267
    .end local p0
    :cond_0
    :goto_0
    return-void

    .line 236
    .restart local p0
    :pswitch_0
    iget-object v3, p0, Lcom/wareone/tappmt/ReminderEditor$4;->this$0:Lcom/wareone/tappmt/ReminderEditor;

    #getter for: Lcom/wareone/tappmt/ReminderEditor;->m_values:Landroid/content/ContentValues;
    invoke-static {v3}, Lcom/wareone/tappmt/ReminderEditor;->access$0(Lcom/wareone/tappmt/ReminderEditor;)Landroid/content/ContentValues;

    move-result-object v3

    const-string v4, "mode"

    invoke-virtual {v3, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v3, v7, :cond_0

    .line 237
    iget-object v3, p0, Lcom/wareone/tappmt/ReminderEditor$4;->this$0:Lcom/wareone/tappmt/ReminderEditor;

    #getter for: Lcom/wareone/tappmt/ReminderEditor;->m_values:Landroid/content/ContentValues;
    invoke-static {v3}, Lcom/wareone/tappmt/ReminderEditor;->access$0(Lcom/wareone/tappmt/ReminderEditor;)Landroid/content/ContentValues;

    move-result-object v3

    const-string v4, "mode"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 238
    iget-object v3, p0, Lcom/wareone/tappmt/ReminderEditor$4;->this$0:Lcom/wareone/tappmt/ReminderEditor;

    #calls: Lcom/wareone/tappmt/ReminderEditor;->_loadCategories(I)V
    invoke-static {v3, v7}, Lcom/wareone/tappmt/ReminderEditor;->access$5(Lcom/wareone/tappmt/ReminderEditor;I)V

    .line 239
    iget-object v3, p0, Lcom/wareone/tappmt/ReminderEditor$4;->this$0:Lcom/wareone/tappmt/ReminderEditor;

    #getter for: Lcom/wareone/tappmt/ReminderEditor;->m_values:Landroid/content/ContentValues;
    invoke-static {v3}, Lcom/wareone/tappmt/ReminderEditor;->access$0(Lcom/wareone/tappmt/ReminderEditor;)Landroid/content/ContentValues;

    move-result-object v3

    const-string v4, "category"

    invoke-static {}, Lcom/wareone/tappmt/ReminderEditor;->access$6()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/util/Map;

    const-string v5, "_id"

    invoke-interface {p0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v3, v4, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    invoke-static {}, Lcom/wareone/tappmt/ReminderEditor;->access$6()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    const-string v3, "acc_name"

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 241
    const v3, 0x7f0900f6

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 242
    const v3, 0x7f0900f7

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 246
    .restart local p0
    :pswitch_1
    iget-object v3, p0, Lcom/wareone/tappmt/ReminderEditor$4;->this$0:Lcom/wareone/tappmt/ReminderEditor;

    #getter for: Lcom/wareone/tappmt/ReminderEditor;->m_values:Landroid/content/ContentValues;
    invoke-static {v3}, Lcom/wareone/tappmt/ReminderEditor;->access$0(Lcom/wareone/tappmt/ReminderEditor;)Landroid/content/ContentValues;

    move-result-object v3

    const-string v4, "mode"

    invoke-virtual {v3, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v3, v8, :cond_0

    .line 247
    iget-object v3, p0, Lcom/wareone/tappmt/ReminderEditor$4;->this$0:Lcom/wareone/tappmt/ReminderEditor;

    #getter for: Lcom/wareone/tappmt/ReminderEditor;->m_values:Landroid/content/ContentValues;
    invoke-static {v3}, Lcom/wareone/tappmt/ReminderEditor;->access$0(Lcom/wareone/tappmt/ReminderEditor;)Landroid/content/ContentValues;

    move-result-object v3

    const-string v4, "mode"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 248
    iget-object v3, p0, Lcom/wareone/tappmt/ReminderEditor$4;->this$0:Lcom/wareone/tappmt/ReminderEditor;

    #calls: Lcom/wareone/tappmt/ReminderEditor;->_loadCategories(I)V
    invoke-static {v3, v8}, Lcom/wareone/tappmt/ReminderEditor;->access$5(Lcom/wareone/tappmt/ReminderEditor;I)V

    .line 249
    iget-object v3, p0, Lcom/wareone/tappmt/ReminderEditor$4;->this$0:Lcom/wareone/tappmt/ReminderEditor;

    #getter for: Lcom/wareone/tappmt/ReminderEditor;->m_values:Landroid/content/ContentValues;
    invoke-static {v3}, Lcom/wareone/tappmt/ReminderEditor;->access$0(Lcom/wareone/tappmt/ReminderEditor;)Landroid/content/ContentValues;

    move-result-object v3

    const-string v4, "category"

    invoke-static {}, Lcom/wareone/tappmt/ReminderEditor;->access$6()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/util/Map;

    const-string v5, "_id"

    invoke-interface {p0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v3, v4, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    invoke-static {}, Lcom/wareone/tappmt/ReminderEditor;->access$6()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    const-string v3, "acc_name"

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 251
    const v3, 0x7f0900f6

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 252
    const v3, 0x7f0900f7

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 256
    .restart local p0
    :pswitch_2
    iget-object v3, p0, Lcom/wareone/tappmt/ReminderEditor$4;->this$0:Lcom/wareone/tappmt/ReminderEditor;

    #getter for: Lcom/wareone/tappmt/ReminderEditor;->m_values:Landroid/content/ContentValues;
    invoke-static {v3}, Lcom/wareone/tappmt/ReminderEditor;->access$0(Lcom/wareone/tappmt/ReminderEditor;)Landroid/content/ContentValues;

    move-result-object v3

    const-string v4, "mode"

    invoke-virtual {v3, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_0

    .line 257
    iget-object v3, p0, Lcom/wareone/tappmt/ReminderEditor$4;->this$0:Lcom/wareone/tappmt/ReminderEditor;

    #getter for: Lcom/wareone/tappmt/ReminderEditor;->m_values:Landroid/content/ContentValues;
    invoke-static {v3}, Lcom/wareone/tappmt/ReminderEditor;->access$0(Lcom/wareone/tappmt/ReminderEditor;)Landroid/content/ContentValues;

    move-result-object v3

    const-string v4, "mode"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 258
    iget-object v3, p0, Lcom/wareone/tappmt/ReminderEditor$4;->this$0:Lcom/wareone/tappmt/ReminderEditor;

    #calls: Lcom/wareone/tappmt/ReminderEditor;->_loadCategories(I)V
    invoke-static {v3, v6}, Lcom/wareone/tappmt/ReminderEditor;->access$5(Lcom/wareone/tappmt/ReminderEditor;I)V

    .line 259
    iget-object v3, p0, Lcom/wareone/tappmt/ReminderEditor$4;->this$0:Lcom/wareone/tappmt/ReminderEditor;

    #getter for: Lcom/wareone/tappmt/ReminderEditor;->m_values:Landroid/content/ContentValues;
    invoke-static {v3}, Lcom/wareone/tappmt/ReminderEditor;->access$0(Lcom/wareone/tappmt/ReminderEditor;)Landroid/content/ContentValues;

    move-result-object v3

    const-string v4, "category"

    invoke-static {}, Lcom/wareone/tappmt/ReminderEditor;->access$6()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/util/Map;

    const-string v5, "_id"

    invoke-interface {p0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v3, v4, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    invoke-static {}, Lcom/wareone/tappmt/ReminderEditor;->access$6()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    const-string v3, "acc_name"

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 261
    const v3, 0x7f090059

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 262
    const v3, 0x7f09005a

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 234
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 273
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method
