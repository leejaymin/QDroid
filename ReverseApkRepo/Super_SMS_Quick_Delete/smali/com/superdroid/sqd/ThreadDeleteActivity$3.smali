.class Lcom/superdroid/sqd/ThreadDeleteActivity$3;
.super Ljava/lang/Object;
.source "ThreadDeleteActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/superdroid/sqd/ThreadDeleteActivity;->deleteThreads()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/superdroid/sqd/ThreadDeleteActivity;


# direct methods
.method constructor <init>(Lcom/superdroid/sqd/ThreadDeleteActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/superdroid/sqd/ThreadDeleteActivity$3;->this$0:Lcom/superdroid/sqd/ThreadDeleteActivity;

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 202
    iget-object v4, p0, Lcom/superdroid/sqd/ThreadDeleteActivity$3;->this$0:Lcom/superdroid/sqd/ThreadDeleteActivity;

    #getter for: Lcom/superdroid/sqd/ThreadDeleteActivity;->_mapCheckBoxStatus:Ljava/util/Map;
    invoke-static {v4}, Lcom/superdroid/sqd/ThreadDeleteActivity;->access$6(Lcom/superdroid/sqd/ThreadDeleteActivity;)Ljava/util/Map;

    move-result-object v4

    .line 203
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    .line 204
    .local v3, setEntry:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Boolean;>;>;"
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 205
    .local v2, listIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 211
    iget-object v4, p0, Lcom/superdroid/sqd/ThreadDeleteActivity$3;->this$0:Lcom/superdroid/sqd/ThreadDeleteActivity;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    #setter for: Lcom/superdroid/sqd/ThreadDeleteActivity;->_count:I
    invoke-static {v4, v5}, Lcom/superdroid/sqd/ThreadDeleteActivity;->access$7(Lcom/superdroid/sqd/ThreadDeleteActivity;I)V

    .line 212
    iget-object v4, p0, Lcom/superdroid/sqd/ThreadDeleteActivity$3;->this$0:Lcom/superdroid/sqd/ThreadDeleteActivity;

    const/4 v5, 0x1

    #calls: Lcom/superdroid/sqd/ThreadDeleteActivity;->sendMessage(I)V
    invoke-static {v4, v5}, Lcom/superdroid/sqd/ThreadDeleteActivity;->access$5(Lcom/superdroid/sqd/ThreadDeleteActivity;I)V

    .line 214
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 220
    return-void

    .line 205
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 206
    .local v0, data:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 207
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 214
    .end local v0           #data:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 215
    .local v1, deleteId:Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-long v5, v5

    iget-object v7, p0, Lcom/superdroid/sqd/ThreadDeleteActivity$3;->this$0:Lcom/superdroid/sqd/ThreadDeleteActivity;

    iget-object v7, v7, Lcom/superdroid/sqd/ThreadDeleteActivity;->_queryHandle:Lcom/superdroid/sqd/util/BackgroundQueryHandler;

    invoke-static {v5, v6, v7}, Lcom/superdroid/sqd/util/SqdUtil;->markAsRead(JLcom/superdroid/sqd/util/BackgroundQueryHandler;)V

    .line 216
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-long v5, v5

    iget-object v7, p0, Lcom/superdroid/sqd/ThreadDeleteActivity$3;->this$0:Lcom/superdroid/sqd/ThreadDeleteActivity;

    iget-object v7, v7, Lcom/superdroid/sqd/ThreadDeleteActivity;->_queryHandle:Lcom/superdroid/sqd/util/BackgroundQueryHandler;

    invoke-static {v5, v6, v7}, Lcom/superdroid/sqd/util/SqdUtil;->deleteOneThread(JLcom/superdroid/sqd/util/BackgroundQueryHandler;)V

    .line 218
    iget-object v5, p0, Lcom/superdroid/sqd/ThreadDeleteActivity$3;->this$0:Lcom/superdroid/sqd/ThreadDeleteActivity;

    #getter for: Lcom/superdroid/sqd/ThreadDeleteActivity;->_mapCheckBoxStatus:Ljava/util/Map;
    invoke-static {v5}, Lcom/superdroid/sqd/ThreadDeleteActivity;->access$6(Lcom/superdroid/sqd/ThreadDeleteActivity;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method
