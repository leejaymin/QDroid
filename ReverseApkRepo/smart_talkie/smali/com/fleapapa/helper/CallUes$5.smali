.class Lcom/fleapapa/helper/CallUes$5;
.super Ljava/lang/Object;
.source "CallUes.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fleapapa/helper/CallUes;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemLongClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fleapapa/helper/CallUes;


# direct methods
.method constructor <init>(Lcom/fleapapa/helper/CallUes;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fleapapa/helper/CallUes$5;->this$0:Lcom/fleapapa/helper/CallUes;

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 8
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 146
    sget-object v2, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/fleapapa/helper/CallUes$5;->this$0:Lcom/fleapapa/helper/CallUes;

    #getter for: Lcom/fleapapa/helper/CallUes;->WHO:Ljava/lang/String;
    invoke-static {v4}, Lcom/fleapapa/helper/CallUes;->access$0(Lcom/fleapapa/helper/CallUes;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " start long click"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-object v2, p0, Lcom/fleapapa/helper/CallUes$5;->this$0:Lcom/fleapapa/helper/CallUes;

    iput-boolean v7, v2, Lcom/fleapapa/helper/CallUes;->longClicking:Z

    .line 149
    iget-object v2, p0, Lcom/fleapapa/helper/CallUes$5;->this$0:Lcom/fleapapa/helper/CallUes;

    iget-object v2, v2, Lcom/fleapapa/helper/CallUes;->badapter:Lcom/fleapapa/helper/CallUes$BuddyAdapter;

    invoke-virtual {v2, p3}, Lcom/fleapapa/helper/CallUes$BuddyAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fleapapa/helper/CallPapa$UE;

    .line 150
    .local v1, ue:Lcom/fleapapa/helper/CallPapa$UE;
    iput-boolean v7, v1, Lcom/fleapapa/helper/CallPapa$UE;->selected:Z

    .line 151
    const v2, 0x7f08000e

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 153
    iget-object v2, p0, Lcom/fleapapa/helper/CallUes$5;->this$0:Lcom/fleapapa/helper/CallUes;

    iget-object v2, v2, Lcom/fleapapa/helper/CallUes;->call:Lcom/fleapapa/helper/CallPapa$Call;

    if-nez v2, :cond_2

    .line 155
    sget-object v2, Lcom/fleapapa/util/My;->papa:Lcom/fleapapa/helper/CallPapa;

    iget-object v2, v2, Lcom/fleapapa/helper/CallPapa;->calls:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_4

    .line 158
    iget-object v2, p0, Lcom/fleapapa/helper/CallUes$5;->this$0:Lcom/fleapapa/helper/CallUes;

    iget-object v2, v2, Lcom/fleapapa/helper/CallUes;->call:Lcom/fleapapa/helper/CallPapa$Call;

    if-nez v2, :cond_1

    .line 159
    iget-object v2, p0, Lcom/fleapapa/helper/CallUes$5;->this$0:Lcom/fleapapa/helper/CallUes;

    sget-object v3, Lcom/fleapapa/util/My;->papa:Lcom/fleapapa/helper/CallPapa;

    sget-object v4, Lcom/fleapapa/util/My;->papa:Lcom/fleapapa/helper/CallPapa;

    invoke-virtual {v4, v6}, Lcom/fleapapa/helper/CallPapa;->newCall(Z)Lcom/fleapapa/helper/CallPapa$Call;

    move-result-object v4

    iput-object v4, v3, Lcom/fleapapa/helper/CallPapa;->acall:Lcom/fleapapa/helper/CallPapa$Call;

    iput-object v4, v2, Lcom/fleapapa/helper/CallUes;->call:Lcom/fleapapa/helper/CallPapa$Call;

    .line 160
    :cond_1
    iget-object v2, p0, Lcom/fleapapa/helper/CallUes$5;->this$0:Lcom/fleapapa/helper/CallUes;

    iget-object v2, v2, Lcom/fleapapa/helper/CallUes;->call:Lcom/fleapapa/helper/CallPapa$Call;

    new-instance v3, Lcom/fleapapa/helper/CallUes$5$1;

    invoke-direct {v3, p0}, Lcom/fleapapa/helper/CallUes$5$1;-><init>(Lcom/fleapapa/helper/CallUes$5;)V

    invoke-virtual {v2, v3}, Lcom/fleapapa/helper/CallPapa$Call;->setCallback(Lcom/fleapapa/helper/CallPapa$Callback;)V

    .line 170
    :cond_2
    iget-object v2, p0, Lcom/fleapapa/helper/CallUes$5;->this$0:Lcom/fleapapa/helper/CallUes;

    iget-object v2, v2, Lcom/fleapapa/helper/CallUes;->call:Lcom/fleapapa/helper/CallPapa$Call;

    iput-boolean v7, v2, Lcom/fleapapa/helper/CallPapa$Call;->foreground:Z

    .line 172
    iget-object v2, p0, Lcom/fleapapa/helper/CallUes$5;->this$0:Lcom/fleapapa/helper/CallUes;

    iget-object v2, v2, Lcom/fleapapa/helper/CallUes;->call:Lcom/fleapapa/helper/CallPapa$Call;

    iget-object v2, v2, Lcom/fleapapa/helper/CallPapa$Call;->ues:Ljava/util/concurrent/ConcurrentHashMap;

    iget v3, v1, Lcom/fleapapa/helper/CallPapa$UE;->uid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/fleapapa/helper/CallUes$5;->this$0:Lcom/fleapapa/helper/CallUes;

    iget-object v2, v2, Lcom/fleapapa/helper/CallUes;->call:Lcom/fleapapa/helper/CallPapa$Call;

    iget-object v2, v2, Lcom/fleapapa/helper/CallPapa$Call;->ons:Landroid/util/SparseBooleanArray;

    iget v3, v1, Lcom/fleapapa/helper/CallPapa$UE;->uid:I

    invoke-virtual {v2, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-nez v2, :cond_5

    .line 173
    :cond_3
    iget-object v2, p0, Lcom/fleapapa/helper/CallUes$5;->this$0:Lcom/fleapapa/helper/CallUes;

    iget-object v2, v2, Lcom/fleapapa/helper/CallUes;->call:Lcom/fleapapa/helper/CallPapa$Call;

    iget-object v2, v2, Lcom/fleapapa/helper/CallPapa$Call;->ues:Ljava/util/concurrent/ConcurrentHashMap;

    iget v3, v1, Lcom/fleapapa/helper/CallPapa$UE;->uid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    iget-object v2, p0, Lcom/fleapapa/helper/CallUes$5;->this$0:Lcom/fleapapa/helper/CallUes;

    sget-object v3, Lcom/fleapapa/helper/CallUes;->handler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/fleapapa/helper/CallUes$5;->this$0:Lcom/fleapapa/helper/CallUes;

    iget-object v4, v4, Lcom/fleapapa/helper/CallUes;->call:Lcom/fleapapa/helper/CallPapa$Call;

    invoke-static {v2, v3, v4}, Lcom/fleapapa/helper/CallMan;->invite(Landroid/content/Context;Landroid/os/Handler;Lcom/fleapapa/helper/CallPapa$Call;)V

    .line 176
    iget-object v2, p0, Lcom/fleapapa/helper/CallUes$5;->this$0:Lcom/fleapapa/helper/CallUes;

    const v3, 0x7f080059

    invoke-virtual {v2, v3}, Lcom/fleapapa/helper/CallUes;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 177
    iget-object v3, p0, Lcom/fleapapa/helper/CallUes$5;->this$0:Lcom/fleapapa/helper/CallUes;

    const v4, 0x7f0600e4

    invoke-virtual {v3, v4}, Lcom/fleapapa/helper/CallUes;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, v1, Lcom/fleapapa/helper/CallPapa$UE;->name:Ljava/lang/String;

    aput-object v5, v4, v6

    iget-object v5, v1, Lcom/fleapapa/helper/CallPapa$UE;->user:Ljava/lang/String;

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 176
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    :goto_1
    return v6

    .line 155
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fleapapa/helper/CallPapa$Call;

    .line 156
    .local v0, c:Lcom/fleapapa/helper/CallPapa$Call;
    iget-object v3, v0, Lcom/fleapapa/helper/CallPapa$Call;->ues:Ljava/util/concurrent/ConcurrentHashMap;

    iget v4, v1, Lcom/fleapapa/helper/CallPapa$UE;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 157
    iget-object v3, p0, Lcom/fleapapa/helper/CallUes$5;->this$0:Lcom/fleapapa/helper/CallUes;

    iput-object v0, v3, Lcom/fleapapa/helper/CallUes;->call:Lcom/fleapapa/helper/CallPapa$Call;

    goto/16 :goto_0

    .line 180
    .end local v0           #c:Lcom/fleapapa/helper/CallPapa$Call;
    :cond_5
    iget-object v2, p0, Lcom/fleapapa/helper/CallUes$5;->this$0:Lcom/fleapapa/helper/CallUes;

    iget-object v2, v2, Lcom/fleapapa/helper/CallUes;->call:Lcom/fleapapa/helper/CallPapa$Call;

    invoke-virtual {v2}, Lcom/fleapapa/helper/CallPapa$Call;->startRecorder()V

    goto :goto_1
.end method
