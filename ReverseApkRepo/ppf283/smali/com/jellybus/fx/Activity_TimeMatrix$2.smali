.class Lcom/jellybus/fx/Activity_TimeMatrix$2;
.super Ljava/lang/Object;
.source "Activity_TimeMatrix.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jellybus/fx/Activity_TimeMatrix;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jellybus/fx/Activity_TimeMatrix;


# direct methods
.method constructor <init>(Lcom/jellybus/fx/Activity_TimeMatrix;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jellybus/fx/Activity_TimeMatrix$2;->this$0:Lcom/jellybus/fx/Activity_TimeMatrix;

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 12
    .parameter "v"

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    .line 197
    iget-object v7, p0, Lcom/jellybus/fx/Activity_TimeMatrix$2;->this$0:Lcom/jellybus/fx/Activity_TimeMatrix;

    #getter for: Lcom/jellybus/fx/Activity_TimeMatrix;->time_controller:Lcom/jellybus/fx_sub/TimeControllView;
    invoke-static {v7}, Lcom/jellybus/fx/Activity_TimeMatrix;->access$0(Lcom/jellybus/fx/Activity_TimeMatrix;)Lcom/jellybus/fx_sub/TimeControllView;

    move-result-object v7

    iget v7, v7, Lcom/jellybus/fx_sub/TimeControllView;->current_year:I

    div-int/lit8 v2, v7, 0xa

    .line 198
    .local v2, flurry_year:I
    mul-int/lit8 v2, v2, 0xa

    .line 199
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 200
    .local v1, flurry_value:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v7, "TimeMatrix value"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    const-string v7, "TimeMatrix"

    invoke-static {v7, v1}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 205
    iget-object v7, p0, Lcom/jellybus/fx/Activity_TimeMatrix$2;->this$0:Lcom/jellybus/fx/Activity_TimeMatrix;

    #getter for: Lcom/jellybus/fx/Activity_TimeMatrix;->time_filter_layout:Landroid/widget/LinearLayout;
    invoke-static {v7}, Lcom/jellybus/fx/Activity_TimeMatrix;->access$19(Lcom/jellybus/fx/Activity_TimeMatrix;)Landroid/widget/LinearLayout;

    move-result-object v7

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 207
    invoke-static {}, Lcom/jellybus/fx/Juliet;->changeThumbPreviewIndex()V

    .line 208
    invoke-static {}, Lcom/jellybus/fx/Juliet;->removeThumnailIndex()V

    .line 209
    iget-object v7, p0, Lcom/jellybus/fx/Activity_TimeMatrix$2;->this$0:Lcom/jellybus/fx/Activity_TimeMatrix;

    #calls: Lcom/jellybus/fx/Activity_TimeMatrix;->removeBitmap()V
    invoke-static {v7}, Lcom/jellybus/fx/Activity_TimeMatrix;->access$20(Lcom/jellybus/fx/Activity_TimeMatrix;)V

    .line 211
    const/4 v0, 0x0

    .line 212
    .local v0, filterID:I
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v7

    const v8, 0x7f0600f9

    if-ne v7, v8, :cond_1

    .line 213
    iget-object v7, p0, Lcom/jellybus/fx/Activity_TimeMatrix$2;->this$0:Lcom/jellybus/fx/Activity_TimeMatrix;

    #getter for: Lcom/jellybus/fx/Activity_TimeMatrix;->year_list:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/jellybus/fx/Activity_TimeMatrix;->access$15(Lcom/jellybus/fx/Activity_TimeMatrix;)Ljava/util/ArrayList;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 220
    :cond_0
    :goto_0
    new-instance v4, Landroid/content/Intent;

    iget-object v7, p0, Lcom/jellybus/fx/Activity_TimeMatrix$2;->this$0:Lcom/jellybus/fx/Activity_TimeMatrix;

    invoke-virtual {v7}, Lcom/jellybus/fx/Activity_TimeMatrix;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/jellybus/fx/Activity_Filter;

    invoke-direct {v4, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 221
    .local v4, intent_filter:Landroid/content/Intent;
    const-string v7, "filterID"

    invoke-virtual {v4, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 222
    const-string v7, "matrix"

    const-string v8, "matrix"

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 223
    iget-object v7, p0, Lcom/jellybus/fx/Activity_TimeMatrix$2;->this$0:Lcom/jellybus/fx/Activity_TimeMatrix;

    #getter for: Lcom/jellybus/fx/Activity_TimeMatrix;->time_controller:Lcom/jellybus/fx_sub/TimeControllView;
    invoke-static {v7}, Lcom/jellybus/fx/Activity_TimeMatrix;->access$0(Lcom/jellybus/fx/Activity_TimeMatrix;)Lcom/jellybus/fx_sub/TimeControllView;

    move-result-object v7

    iget v5, v7, Lcom/jellybus/fx_sub/TimeControllView;->line_y:F

    .line 224
    .local v5, line:F
    const-string v7, "line_y"

    invoke-virtual {v4, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 226
    iget-object v7, p0, Lcom/jellybus/fx/Activity_TimeMatrix$2;->this$0:Lcom/jellybus/fx/Activity_TimeMatrix;

    #getter for: Lcom/jellybus/fx/Activity_TimeMatrix;->year_list:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/jellybus/fx/Activity_TimeMatrix;->access$15(Lcom/jellybus/fx/Activity_TimeMatrix;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-le v7, v11, :cond_3

    .line 227
    const/4 v7, 0x3

    new-array v6, v7, [I

    .line 230
    .local v6, list:[I
    :goto_1
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    array-length v7, v6

    if-lt v3, v7, :cond_4

    .line 233
    iget-object v7, p0, Lcom/jellybus/fx/Activity_TimeMatrix$2;->this$0:Lcom/jellybus/fx/Activity_TimeMatrix;

    #getter for: Lcom/jellybus/fx/Activity_TimeMatrix;->year_list:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/jellybus/fx/Activity_TimeMatrix;->access$15(Lcom/jellybus/fx/Activity_TimeMatrix;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 234
    const-string v7, "list"

    invoke-virtual {v4, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 235
    iget-object v7, p0, Lcom/jellybus/fx/Activity_TimeMatrix$2;->this$0:Lcom/jellybus/fx/Activity_TimeMatrix;

    invoke-virtual {v7, v4}, Lcom/jellybus/fx/Activity_TimeMatrix;->startActivity(Landroid/content/Intent;)V

    .line 236
    iget-object v7, p0, Lcom/jellybus/fx/Activity_TimeMatrix$2;->this$0:Lcom/jellybus/fx/Activity_TimeMatrix;

    invoke-virtual {v7}, Lcom/jellybus/fx/Activity_TimeMatrix;->finish()V

    .line 237
    iget-object v7, p0, Lcom/jellybus/fx/Activity_TimeMatrix$2;->this$0:Lcom/jellybus/fx/Activity_TimeMatrix;

    const/high16 v8, 0x10a

    const v9, 0x10a0001

    invoke-virtual {v7, v8, v9}, Lcom/jellybus/fx/Activity_TimeMatrix;->overridePendingTransition(II)V

    .line 238
    return-void

    .line 214
    .end local v3           #i:I
    .end local v4           #intent_filter:Landroid/content/Intent;
    .end local v5           #line:F
    .end local v6           #list:[I
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v7

    const v8, 0x7f0600fa

    if-ne v7, v8, :cond_2

    .line 215
    iget-object v7, p0, Lcom/jellybus/fx/Activity_TimeMatrix$2;->this$0:Lcom/jellybus/fx/Activity_TimeMatrix;

    #getter for: Lcom/jellybus/fx/Activity_TimeMatrix;->year_list:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/jellybus/fx/Activity_TimeMatrix;->access$15(Lcom/jellybus/fx/Activity_TimeMatrix;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 216
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v7

    const v8, 0x7f0600fb

    if-ne v7, v8, :cond_0

    .line 217
    iget-object v7, p0, Lcom/jellybus/fx/Activity_TimeMatrix$2;->this$0:Lcom/jellybus/fx/Activity_TimeMatrix;

    #getter for: Lcom/jellybus/fx/Activity_TimeMatrix;->year_list:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/jellybus/fx/Activity_TimeMatrix;->access$15(Lcom/jellybus/fx/Activity_TimeMatrix;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto/16 :goto_0

    .line 229
    .restart local v4       #intent_filter:Landroid/content/Intent;
    .restart local v5       #line:F
    :cond_3
    new-array v6, v10, [I

    .restart local v6       #list:[I
    goto :goto_1

    .line 231
    .restart local v3       #i:I
    :cond_4
    iget-object v7, p0, Lcom/jellybus/fx/Activity_TimeMatrix$2;->this$0:Lcom/jellybus/fx/Activity_TimeMatrix;

    #getter for: Lcom/jellybus/fx/Activity_TimeMatrix;->year_list:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/jellybus/fx/Activity_TimeMatrix;->access$15(Lcom/jellybus/fx/Activity_TimeMatrix;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aput v7, v6, v3

    .line 230
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method
